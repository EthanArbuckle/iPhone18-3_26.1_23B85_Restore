@interface QLCacheFragHandler
+ (void)initialize;
- (BOOL)canFindHoleForLen:(unint64_t)len;
- (BOOL)checkConsistency;
- (BOOL)checkHolesLenConsistency;
- (BOOL)save;
- (QLCacheFragHandler)initWithCacheThread:(id)thread;
- (QLCacheFragHandler)initWithDictionary:(id)dictionary cacheThread:(id)thread;
- (QLCacheFragHandler)initWithFilePath:(id)path cacheThread:(id)thread;
- (QLCacheFragHandler)initWithHolePositions:(id)positions holeLengths:(id)lengths totalLength:(int64_t)length holesLength:(int64_t)holesLength cacheThread:(id)thread;
- (_QLCacheThread)cacheThread;
- (float)frag;
- (id)dataToSave;
- (id)lastHole;
- (unint64_t)allocateSpaceForLength:(unint64_t)length added:(BOOL *)added;
- (void)_insertHoleInRanks:(id)ranks;
- (void)_removeHoleFromRanks:(id)ranks;
- (void)assertSpaceIsRetainedAtPos:(unint64_t)pos withLen:(unint64_t)len;
- (void)clear;
- (void)compact;
- (void)releaseSpaceAtPos:(unint64_t)pos withLen:(unint64_t)len;
- (void)save;
- (void)truncateFromPosition:(unint64_t)position;
- (void)truncateUselessSpaceAtEndOfFile;
@end

@implementation QLCacheFragHandler

- (BOOL)save
{
  if (!self->_isDirty)
  {
    return 1;
  }

  if (self->_needsCompact)
  {
    v3 = _log_1();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(QLCacheFragHandler *)v3 save:v4];
    }

    [(QLCacheFragHandler *)self compact];
    v11 = _log_1();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(QLCacheFragHandler *)v11 save:v12];
    }
  }

  dataToSave = [(QLCacheFragHandler *)self dataToSave];
  v25 = 0;
  v20 = [MEMORY[0x277CCAC58] dataWithPropertyList:dataToSave format:200 options:0 error:&v25];
  v21 = v25;
  if (v20)
  {
    v22 = [v20 writeToFile:self->_path atomically:1];
  }

  else
  {
    v23 = _log_1();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(QLCacheFragHandler *)v21 save];
    }

    v22 = 0;
  }

  self->_isDirty = 0;

  return v22;
}

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___QLCacheFragHandler;
  objc_msgSendSuper2(&v2, sel_initialize);
  if (initialize_onceToken != -1)
  {
    +[QLCacheFragHandler initialize];
  }
}

uint64_t __32__QLCacheFragHandler_initialize__block_invoke()
{
  result = QLCacheInDebugMode();
  _debugCacheFragHandler = result;
  return result;
}

- (QLCacheFragHandler)initWithHolePositions:(id)positions holeLengths:(id)lengths totalLength:(int64_t)length holesLength:(int64_t)holesLength cacheThread:(id)thread
{
  positionsCopy = positions;
  lengthsCopy = lengths;
  threadCopy = thread;
  v32.receiver = self;
  v32.super_class = QLCacheFragHandler;
  v15 = [(QLCacheFragHandler *)&v32 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_cacheThread, threadCopy);
    v17 = 20;
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:20];
    do
    {
      v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
      [v18 addObject:v19];

      --v17;
    }

    while (v17);
    objc_storeStrong(&v16->_sizeRanks, v18);
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedByStart = v16->_orderedByStart;
    v16->_orderedByStart = v20;

    if (positionsCopy && lengthsCopy)
    {
      v30 = threadCopy;
      holesLengthCopy = holesLength;
      v22 = [positionsCopy count];
      if (v22)
      {
        v23 = v22;
        for (i = 0; i != v23; ++i)
        {
          v25 = [positionsCopy objectAtIndex:i];
          integerValue = [v25 integerValue];
          v27 = [lengthsCopy objectAtIndex:i];
          v28 = +[QLCacheHole holeWithLocation:length:](QLCacheHole, "holeWithLocation:length:", integerValue, [v27 integerValue]);

          [(NSMutableArray *)v16->_orderedByStart addObject:v28];
          [(QLCacheFragHandler *)v16 _insertHoleInRanks:v28];
        }
      }

      v16->_totalLen = length;
      v16->_holesLen = holesLengthCopy;
      v16->_isDirty = 0;
      threadCopy = v30;
    }

    else
    {
      v16->_totalLen = 0;
      v16->_holesLen = 0;
      v16->_isDirty = 1;
    }
  }

  return v16;
}

- (QLCacheFragHandler)initWithFilePath:(id)path cacheThread:(id)thread
{
  pathCopy = path;
  v7 = MEMORY[0x277CBEAC0];
  threadCopy = thread;
  v9 = [v7 dictionaryWithContentsOfFile:pathCopy];
  v10 = [(QLCacheFragHandler *)self initWithDictionary:v9 cacheThread:threadCopy];

  if (v10)
  {
    v11 = [pathCopy copy];
    path = v10->_path;
    v10->_path = v11;
  }

  return v10;
}

- (QLCacheFragHandler)initWithDictionary:(id)dictionary cacheThread:(id)thread
{
  threadCopy = thread;
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    dictionary = [dictionaryCopy objectForKey:@"orderedHolesPos"];
    v8 = [dictionaryCopy objectForKey:@"orderedHolesLen"];
    v9 = [dictionaryCopy objectForKey:@"totalLen"];
    longLongValue = [v9 longLongValue];

    v11 = [dictionaryCopy objectForKey:@"holesLen"];

    longLongValue2 = [v11 longLongValue];
  }

  else
  {
    v8 = 0;
    longLongValue = 0;
    longLongValue2 = 0;
  }

  v13 = [(QLCacheFragHandler *)self initWithHolePositions:dictionary holeLengths:v8 totalLength:longLongValue holesLength:longLongValue2 cacheThread:threadCopy];

  return v13;
}

- (QLCacheFragHandler)initWithCacheThread:(id)thread
{
  result = [(QLCacheFragHandler *)self initWithHolePositions:0 holeLengths:0 totalLength:0 holesLength:0 cacheThread:thread];
  if (result)
  {
    result->_isDirty = 0;
  }

  return result;
}

- (void)_removeHoleFromRanks:(id)ranks
{
  ranksCopy = ranks;
  v4 = [ranksCopy length];
  v5 = 64 - __clz(v4);
  if (v5 >= 0x13)
  {
    v5 = 19;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSArray *)self->_sizeRanks objectAtIndexedSubscript:v6];
  v8 = v7;
  if (_debugCacheFragHandler == 1)
  {
    v9 = [v7 indexOfObject:ranksCopy];
    if (v9 + 1 < [v8 count])
    {
      [v8 indexOfObject:ranksCopy inRange:{v9 + 1, objc_msgSend(v8, "count") + ~v9}];
    }
  }

  [v8 removeObject:ranksCopy];
}

- (void)_insertHoleInRanks:(id)ranks
{
  ranksCopy = ranks;
  v4 = [ranksCopy length];
  v5 = v4;
  v6 = 64 - __clz(v4);
  if (v6 >= 0x13)
  {
    v6 = 19;
  }

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSArray *)self->_sizeRanks objectAtIndexedSubscript:v7];
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    while (1)
    {
      v12 = [v8 objectAtIndex:v11];
      v13 = [v12 length];

      if (v5 >= v13)
      {
        break;
      }

      if (v10 == ++v11)
      {
        v11 = v10;
        break;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  [v8 insertObject:ranksCopy atIndex:v11];
}

- (void)clear
{
  for (i = 0; i != 20; ++i)
  {
    v4 = [(NSArray *)self->_sizeRanks objectAtIndexedSubscript:i];
    [v4 removeAllObjects];
  }

  [(NSMutableArray *)self->_orderedByStart removeAllObjects];
  self->_totalLen = 0;
  self->_holesLen = 0;
  self->_isDirty = 1;
}

- (unint64_t)allocateSpaceForLength:(unint64_t)length added:(BOOL *)added
{
  v7 = 0;
  v8 = 64 - __clz(length);
  if (v8 >= 0x13)
  {
    v8 = 19;
  }

  if (length)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  while (1)
  {
    v10 = v7;
    v7 = [(NSArray *)self->_sizeRanks objectAtIndexedSubscript:v9];

    v11 = [v7 count];
    if (v11)
    {
      v12 = v11;
      v13 = [v7 objectAtIndexedSubscript:0];
      v14 = [v13 length];

      if (v14 >= length)
      {
        break;
      }
    }

    if (v9++ >= 0x13)
    {
      totalLen = 0;
      v17 = 1;
      if (!added)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v19 = v12 - 1;
  v20 = [v7 objectAtIndex:v12 - 1];
  v21 = [v20 length];

  if (v21 <= length)
  {
    if (v19 < 2)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        v23 = [v7 objectAtIndex:((v19 + v22) / 2)];
        v24 = [v23 length];

        if (v24 <= length)
        {
          v25 = ((v19 + v22) / 2);
        }

        else
        {
          v25 = v19;
        }

        if (v24 < length)
        {
          v19 = ((v19 + v22) / 2);
        }

        else
        {
          v22 = ((v19 + v22) / 2);
          v19 = v25;
        }
      }

      while (v19 - v22 > 1);
    }

    v26 = [v7 objectAtIndex:v22];
    [v26 length];

    v27 = [v7 objectAtIndex:v19];
    v28 = [v27 length];

    if (v28 < length)
    {
      v19 = v22;
    }
  }

  v29 = [v7 objectAtIndex:v19];
  [v7 removeObject:v29];
  v30 = [v29 length];
  totalLen = [v29 location];
  if (v30 <= length)
  {
    [(NSMutableArray *)self->_orderedByStart removeObject:v29];
  }

  else
  {
    [v29 setLocation:totalLen + length length:{objc_msgSend(v29, "length") - length}];
    [(QLCacheFragHandler *)self _insertHoleInRanks:v29];
  }

  v17 = 0;
  if (added)
  {
LABEL_11:
    *added = v17;
  }

LABEL_12:
  if (v17)
  {
    totalLen = self->_totalLen;
    self->_totalLen = totalLen + length;
  }

  else
  {
    self->_holesLen -= length;
  }

  self->_isDirty = 1;
  if (_debugCacheFragHandler == 1)
  {
    [(QLCacheFragHandler *)self assertSpaceIsRetainedAtPos:totalLen withLen:length];
    [(QLCacheFragHandler *)self checkHolesLenConsistency];
  }

  return totalLen;
}

- (void)releaseSpaceAtPos:(unint64_t)pos withLen:(unint64_t)len
{
  if (_debugCacheFragHandler == 1)
  {
    [(QLCacheFragHandler *)self assertSpaceIsRetainedAtPos:pos withLen:len];
  }

  v7 = [(NSMutableArray *)self->_orderedByStart count];
  v8 = v7;
  if (v7 < 1)
  {
    v10 = v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v9 = 0;
    v10 = v7;
    do
    {
      v11 = (v10 + v9) / 2;
      v12 = [(NSMutableArray *)self->_orderedByStart objectAtIndex:v11];
      location = [v12 location];

      if (location <= pos)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v9;
      }

      if (location > pos)
      {
        v15 = (v10 + v9) / 2;
      }

      else
      {
        v15 = v11 + 1;
      }

      if (location < pos)
      {
        v9 = v11 + 1;
      }

      else
      {
        v9 = v14;
      }

      if (location >= pos)
      {
        v10 = v15;
      }
    }

    while (v10 > v9);
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  v26 = [(NSMutableArray *)self->_orderedByStart objectAtIndex:v10 - 1];
  location2 = [v26 location];
  if ([v26 length] + location2 == pos)
  {
    v17 = v26;
    goto LABEL_24;
  }

LABEL_23:
  v17 = 0;
LABEL_24:
  if (v8)
  {
    v18 = v10 >= v8 - 1;
  }

  else
  {
    v18 = 1;
  }

  v27 = v17;
  if (v18)
  {
    v22 = 0;
    if (!v17)
    {
      goto LABEL_35;
    }

LABEL_30:
    v19 = v17;
    [(QLCacheFragHandler *)self _removeHoleFromRanks:v19];
    location3 = [v19 location];
    v21 = [v19 length] + len;
    if (v22)
    {
      [v19 setLocation:location3 length:{v21 + objc_msgSend(v22, "length")}];
      [(QLCacheFragHandler *)self _removeHoleFromRanks:v22];
      [(NSMutableArray *)self->_orderedByStart removeObject:v22];
LABEL_39:
      [(QLCacheFragHandler *)self _insertHoleInRanks:v19];
      goto LABEL_40;
    }

    v24 = v19;
    posCopy = location3;
    v23 = v21;
LABEL_38:
    [v24 setLocation:posCopy length:v23];
    goto LABEL_39;
  }

  v22 = [(NSMutableArray *)self->_orderedByStart objectAtIndex:v10];
  if (len + pos != [v22 location])
  {

    v22 = 0;
  }

  v17 = v27;
  if (v27)
  {
    goto LABEL_30;
  }

LABEL_35:
  if (v22)
  {
    v19 = v22;
    [(QLCacheFragHandler *)self _removeHoleFromRanks:v19];
    v23 = [v19 length] + len;
    v24 = v19;
    posCopy = pos;
    goto LABEL_38;
  }

  v19 = [QLCacheHole holeWithLocation:pos length:len];
  self->_needsCompact = 1;
  [(QLCacheFragHandler *)self _insertHoleInRanks:v19];
  [(NSMutableArray *)self->_orderedByStart insertObject:v19 atIndex:v10];
LABEL_40:
  self->_holesLen += len;
  if (_debugCacheFragHandler == 1)
  {
    [(QLCacheFragHandler *)self checkHolesLenConsistency];
  }

  self->_isDirty = 1;
}

- (BOOL)canFindHoleForLen:(unint64_t)len
{
  v5 = 0;
  v6 = 64 - __clz(len);
  if (v6 >= 0x13)
  {
    v6 = 19;
  }

  if (len)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
  do
  {
    v9 = v5;
    v5 = [(NSArray *)self->_sizeRanks objectAtIndexedSubscript:v7];

    if ([v5 count])
    {
      v10 = [v5 objectAtIndex:0];
      v11 = [v10 length];

      if (v11 >= len)
      {
        break;
      }
    }

    v8 = v7++ < 0x13;
  }

  while (v7 != 20);

  return v8;
}

- (id)lastHole
{
  lastObject = [(NSMutableArray *)self->_orderedByStart count];
  if (lastObject)
  {
    lastObject = [(NSMutableArray *)self->_orderedByStart lastObject];
  }

  return lastObject;
}

- (void)truncateUselessSpaceAtEndOfFile
{
  lastObject = [(NSMutableArray *)self->_orderedByStart lastObject];
  if (lastObject)
  {
    v6 = lastObject;
    location = [lastObject location];
    v5 = [v6 length] + location;
    lastObject = v6;
    if (v5 == self->_totalLen)
    {
      -[QLCacheFragHandler truncateFromPosition:](self, "truncateFromPosition:", [v6 location]);
      lastObject = v6;
    }
  }
}

- (void)truncateFromPosition:(unint64_t)position
{
  if (self->_totalLen > position)
  {
    v5 = [(NSMutableArray *)self->_orderedByStart count];
    if (v5 - 1 >= 0)
    {
      v6 = v5;
      while (1)
      {
        v7 = [(NSMutableArray *)self->_orderedByStart objectAtIndex:--v6];
        if ([v7 location] < position)
        {
          break;
        }

        self->_holesLen -= [v7 length];
        self->_isDirty = 1;
        [(NSMutableArray *)self->_orderedByStart removeObject:v7];
        [(QLCacheFragHandler *)self _removeHoleFromRanks:v7];

        if (v6 <= 0)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_8:
    self->_totalLen = position;
  }
}

- (float)frag
{
  totalLen = self->_totalLen;
  if (totalLen)
  {
    return self->_holesLen / totalLen;
  }

  else
  {
    return 0.0;
  }
}

- (id)dataToSave
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_orderedByStart, "count")}];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_orderedByStart, "count")}];
  v6 = [(NSMutableArray *)self->_orderedByStart count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [(NSMutableArray *)self->_orderedByStart objectAtIndex:i];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "location")}];
      [v4 addObject:v10];

      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "length")}];
      [v5 addObject:v11];
    }
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_totalLen];
  [dictionary setObject:v12 forKey:@"totalLen"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_holesLen];
  [dictionary setObject:v13 forKey:@"holesLen"];

  [dictionary setObject:v4 forKey:@"orderedHolesPos"];
  [dictionary setObject:v5 forKey:@"orderedHolesLen"];

  return dictionary;
}

- (void)compact
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = _log_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(QLCacheFragHandler *)v3 compact:v4];
  }

  v11 = [(NSMutableArray *)self->_orderedByStart copy];
  totalLen = self->_totalLen;
  holesLen = self->_holesLen;
  [(QLCacheFragHandler *)self clear];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
  v16 = v14;
  if (!v15)
  {
    goto LABEL_19;
  }

  v17 = v15;
  v29 = holesLen;
  v30 = totalLen;
  v18 = 0;
  location2 = 0;
  v20 = *v32;
  v21 = 0x279ADC000uLL;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v32 != v20)
      {
        objc_enumerationMutation(v14);
      }

      v23 = *(*(&v31 + 1) + 8 * i);
      if (v18)
      {
        if (location2 + v18 == [*(*(&v31 + 1) + 8 * i) location])
        {
          v24 = _log_1();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            location = [v23 location];
            v27 = [v23 length];
            *buf = 134218240;
            v36 = location;
            v21 = 0x279ADC000;
            v37 = 2048;
            v38 = v27;
            _os_log_debug_impl(&dword_2615D3000, v24, OS_LOG_TYPE_DEBUG, "Coalescing %llu - %llu to previous hole", buf, 0x16u);
          }

          v18 += [v23 length];
        }

        else
        {
          v25 = [objc_alloc(*(v21 + 1984)) initWithLocation:location2 length:v18];
          [(NSMutableArray *)self->_orderedByStart addObject:v25];
          [(QLCacheFragHandler *)self _insertHoleInRanks:v25];
          location2 = [v23 location];
          v18 = [v23 length];
        }
      }

      else
      {
        location2 = [*(*(&v31 + 1) + 8 * i) location];
        v18 = [v23 length];
      }
    }

    v17 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
  }

  while (v17);

  holesLen = v29;
  totalLen = v30;
  if (v18)
  {
    v16 = [objc_alloc(*(v21 + 1984)) initWithLocation:location2 length:v18];
    [(NSMutableArray *)self->_orderedByStart addObject:v16];
    [(QLCacheFragHandler *)self _insertHoleInRanks:v16];
LABEL_19:
  }

  self->_totalLen = totalLen;
  self->_holesLen = holesLen;
  self->_needsCompact = 0;

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkHolesLenConsistency
{
  v3 = [(NSMutableArray *)self->_orderedByStart count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->_orderedByStart objectAtIndex:v5];
      v6 += [v7 length];

      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 == self->_holesLen;
}

- (BOOL)checkConsistency
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_orderedByStart count];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = 0;
    v8 = 1;
    *&v4 = 138412546;
    v14 = v4;
    do
    {
      v9 = [(NSMutableArray *)self->_orderedByStart objectAtIndex:v6, v14];
      if ([v9 location] < v7)
      {
        v10 = _log_1();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = v14;
          v16 = v9;
          v17 = 2048;
          v18 = v7;
          _os_log_error_impl(&dword_2615D3000, v10, OS_LOG_TYPE_ERROR, "inconsistency in cache frag handler: bad hole: %@ after offset : %llu", buf, 0x16u);
        }

        v8 = 0;
      }

      location = [v9 location];
      v7 = [v9 length] + location;

      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    v8 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (void)assertSpaceIsRetainedAtPos:(unint64_t)pos withLen:(unint64_t)len
{
  v6 = [(NSMutableArray *)self->_orderedByStart count:pos];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v9;
      v11 = [(NSMutableArray *)self->_orderedByStart objectAtIndex:v8];

      if ([v11 location] > pos)
      {
        break;
      }

      ++v8;
      v9 = v11;
      if (v7 == v8)
      {
        v8 = v7;
        goto LABEL_7;
      }
    }

    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_7:
    [(NSMutableArray *)self->_orderedByStart objectAtIndex:v8 - 1];

LABEL_8:
    if (v8 < (v7 - 1))
    {
      [(NSMutableArray *)self->_orderedByStart objectAtIndex:v8];
    }

    v6 = v11;
  }
}

- (_QLCacheThread)cacheThread
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheThread);

  return WeakRetained;
}

- (void)save
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2615D3000, a2, OS_LOG_TYPE_ERROR, "failed to create plist data from dictionary: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end