@interface TUIKBGraphSerialization
+ (id)separatorCharacterSet;
- ($000CCD7ED2ADA2E18343834BA3C2DAF0)UIKBValueForOffset:(int *)offset;
- (CGRect)CGRectForOffset:(int *)offset;
- (NSData)serializedData;
- (TUIKBGraphSerialization)init;
- (float)bareFloatForOffset:(int *)offset;
- (float)compressedFloatForOffset:(int *)offset withKind:(unsigned __int8)kind;
- (id)UIKBTreeForOffset:(int *)offset withFlags:(unint64_t)flags;
- (id)_UIKBTreeForOffset:(int *)offset withFlags:(unint64_t)flags;
- (id)arrayForOffset:(int *)offset withCount:(unint64_t)count;
- (id)dataForArray:(id)array;
- (id)dataForCGRect:(CGRect)rect;
- (id)dataForCompressedFloat:(float)float kind:(unsigned __int8 *)kind;
- (id)dataForCompressedInt:(int64_t)int;
- (id)dataForCompressedUInt:(unint64_t)int;
- (id)dataForDictionary:(id)dictionary;
- (id)dataForFloat:(float)float;
- (id)dataForGeometry:(id)geometry;
- (id)dataForInt:(int)int;
- (id)dataForMergeAction:(id)action;
- (id)dataForObject:(id)object;
- (id)dataForOffsetObject:(id)object;
- (id)dataForReference:(int)reference;
- (id)dataForSet:(id)set;
- (id)dataForShape:(id)shape;
- (id)dataForSimpleString:(id)string;
- (id)dataForString:(id)string;
- (id)dataForStringConcat:(id)concat;
- (id)dataForUIKBTree:(id)tree;
- (id)dataForUIKBValue:(id)value;
- (id)dictionaryForOffset:(int *)offset nonEmpty:(BOOL)empty;
- (id)geometryForOffset:(int *)offset withFlags:(unint64_t)flags;
- (id)keyboardForName:(id)name;
- (id)keyboardPrefixForWidth:(float)width andEdge:(BOOL)edge;
- (id)keyboardSuffixForPortraitWidth:(float)width;
- (id)mergeActionForOffset:(int *)offset withFlags:(unint64_t)flags;
- (id)mutableDataForObjectType:(unsigned __int8)type withSize:(unint64_t)size;
- (id)objectForOffset:(int *)offset;
- (id)refArrayForOffset:(int *)offset withCount:(unint64_t)count;
- (id)relativeRefArrayForOffset:(int *)offset withCount:(unint64_t)count;
- (id)sanitizedDictionary:(id)dictionary;
- (id)setForOffset:(int *)offset nonEmpty:(BOOL)empty;
- (id)shapeForOffset:(int *)offset withFlags:(unint64_t)flags;
- (id)simpleStringForOffset:(int *)offset withUTF8Length:(unint64_t)length;
- (id)statistics;
- (id)stringConcatForOffset:(int *)offset withComponentCount:(unint64_t)count;
- (id)stringsBySplittingString:(id)string afterCharactersInSet:(id)set;
- (int)_serializedOffsetForObject:(id)object;
- (unint64_t)compressedIntForOffset:(int *)offset;
- (unint64_t)compressedUIntForOffset:(int *)offset;
- (void)addKeyboardPrefix:(id)prefix forWidth:(float)width minEdge:(BOOL)edge;
- (void)dealloc;
- (void)persistData:(id)data forObject:(id)object;
- (void)preheatWithStatistics:(id)statistics;
- (void)reset;
- (void)serializeObject:(id)object;
- (void)setSerializedData:(id)data;
@end

@implementation TUIKBGraphSerialization

- (TUIKBGraphSerialization)init
{
  v4.receiver = self;
  v4.super_class = TUIKBGraphSerialization;
  v2 = [(TUIKBGraphSerialization *)&v4 init];
  if (v2)
  {
    v2->_serializedOffsets = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v2->_minEdgeWidths = [MEMORY[0x1E695DF90] dictionary];
    v2->_maxEdgeWidths = [MEMORY[0x1E695DF90] dictionary];
    v2->_keyboardOffsets = [MEMORY[0x1E695DF90] dictionary];
    v2->_graphData = [MEMORY[0x1E695DF88] data];
    v2->_referenceCount = [MEMORY[0x1E695DF90] dictionary];
    v2->_serializedData = 0;
    v2->_currentFileType = -1;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TUIKBGraphSerialization;
  [(TUIKBGraphSerialization *)&v3 dealloc];
}

- (id)keyboardPrefixForWidth:(float)width andEdge:(BOOL)edge
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = 56;
  if (edge)
  {
    v5 = 48;
  }

  v6 = *(&self->super.isa + v5);
  v7 = [objc_msgSend(v6 "allKeys")];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v15;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        [v12 floatValue];
        if (v13 <= width)
        {
          return [v6 objectForKey:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      result = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v9 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t __58__TUIKBGraphSerialization_keyboardPrefixForWidth_andEdge___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [a2 floatValue];
  v6 = v5;
  [a3 floatValue];
  if (v6 == v7)
  {
    return 0;
  }

  [a2 floatValue];
  v10 = v9;
  [a3 floatValue];
  if (v10 <= v11)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)keyboardSuffixForPortraitWidth:(float)width
{
  if (width < 320.0)
  {
    return @"Mini";
  }

  if (width < 730.0)
  {
    return @"Small";
  }

  v4 = @"Grand";
  if (width < 1024.0)
  {
    v4 = @"Large";
  }

  if (width >= 815.0)
  {
    return v4;
  }

  else
  {
    return @"Medium";
  }
}

- (void)addKeyboardPrefix:(id)prefix forWidth:(float)width minEdge:(BOOL)edge
{
  v6 = 56;
  if (edge)
  {
    v6 = 48;
  }

  v7 = *(&self->super.isa + v6);
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:?];

  [v7 setObject:prefix forKey:v8];
}

- (id)objectForOffset:(int *)offset
{
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*offset];
  v6 = [(NSMutableDictionary *)[(TUIKBGraphSerialization *)self deserializationCache] objectForKey:v5];
  if (!v6)
  {
    bytes = [(NSData *)self->_graphData bytes];
    v9 = *offset;
    v10 = bytes[v9];
    *offset = v9 + 1;
    v11 = v10 & 0xF;
    v12 = v10 >> 4;
    if ((v10 >> 4) == 15)
    {
      v12 = [(TUIKBGraphSerialization *)self compressedUIntForOffset:offset];
    }

    switch(v11)
    {
      case 0:
        v17 = [(TUIKBGraphSerialization *)self intValueForOffset:offset, v12];
        return [(TUIKBGraphSerialization *)self objectForOffset:&v17];
      case 1:
        v15 = [(TUIKBGraphSerialization *)self intValueForOffset:offset, v12];
        v16 = MEMORY[0x1E696AD98];

        return [v16 numberWithInt:v15];
      case 2:
        [(TUIKBGraphSerialization *)self floatValueForOffset:offset, v12];
        v14 = MEMORY[0x1E696AD98];

        return [v14 numberWithFloat:?];
      case 3:
        v13 = [(TUIKBGraphSerialization *)self simpleStringForOffset:offset withUTF8Length:v12];
        goto LABEL_24;
      case 4:
        v13 = [(TUIKBGraphSerialization *)self stringConcatForOffset:offset withComponentCount:v12];
        goto LABEL_24;
      case 5:
        v13 = [(TUIKBGraphSerialization *)self arrayForOffset:offset withCount:v12];
        goto LABEL_24;
      case 6:
        v13 = [(TUIKBGraphSerialization *)self setForOffset:offset nonEmpty:v12 != 0];
        goto LABEL_24;
      case 7:
        v13 = [(TUIKBGraphSerialization *)self dictionaryForOffset:offset nonEmpty:v12 != 0];
        goto LABEL_24;
      case 8:
        v13 = [(TUIKBGraphSerialization *)self geometryForOffset:offset withFlags:v12];
        goto LABEL_24;
      case 9:
        v13 = [(TUIKBGraphSerialization *)self shapeForOffset:offset withFlags:v12];
        goto LABEL_24;
      case 10:
        v13 = [(TUIKBGraphSerialization *)self mergeActionForOffset:offset withFlags:v12];
        goto LABEL_24;
      case 11:
        v13 = [(TUIKBGraphSerialization *)self UIKBTreeForOffset:offset withFlags:v12];
        goto LABEL_24;
      case 12:
        v13 = [(TUIKBGraphSerialization *)self refArrayForOffset:offset withCount:v12];
        goto LABEL_24;
      case 13:
        v13 = [(TUIKBGraphSerialization *)self relativeRefArrayForOffset:offset withCount:v12];
LABEL_24:
        v6 = v13;
        if (v13 && [(TUIKBGraphSerialization *)self deserializationCache])
        {
          [(NSMutableDictionary *)[(TUIKBGraphSerialization *)self deserializationCache] setObject:v6 forKey:v5];
        }

        break;
      default:
        return 0;
    }
  }

  return v6;
}

- (id)_UIKBTreeForOffset:(int *)offset withFlags:(unint64_t)flags
{
  flagsCopy = flags;
  ++*offset;
  v7 = [(TUIKBGraphSerialization *)self intValueForOffset:?];
  if (flagsCopy)
  {
    v8 = [(TUIKBGraphSerialization *)self objectForOffset:offset];
    if ((flagsCopy & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 0;
    if ((flagsCopy & 2) != 0)
    {
LABEL_3:
      dictionary = [(TUIKBGraphSerialization *)self objectForOffset:offset];
      goto LABEL_6;
    }
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
LABEL_6:
  v10 = dictionary;
  if ((flagsCopy & 4) != 0)
  {
    v11 = [(TUIKBGraphSerialization *)self objectForOffset:offset];
    if ((flagsCopy & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if ((flagsCopy & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v12 = [(TUIKBGraphSerialization *)self objectForOffset:offset];
LABEL_11:
  v13 = [objc_alloc(MEMORY[0x1E69DCB88]) initWithType:v7 withName:v8 withProperties:v10 withSubtrees:v11 withCache:v12];
  if (([v13 isLeafType] & 1) == 0 && !v11)
  {
    [v13 setSubtrees:{objc_msgSend(MEMORY[0x1E695DF70], "array")}];
  }

  return v13;
}

- (id)UIKBTreeForOffset:(int *)offset withFlags:(unint64_t)flags
{
  v7 = objc_autoreleasePoolPush();
  v8 = [(TUIKBGraphSerialization *)self _UIKBTreeForOffset:offset withFlags:flags];
  objc_autoreleasePoolPop(v7);

  return v8;
}

- (id)mergeActionForOffset:(int *)offset withFlags:(unint64_t)flags
{
  flagsCopy = flags;
  v7 = objc_alloc_init(MEMORY[0x1E69DCB40]);
  [v7 setRemainingKeyName:{-[TUIKBGraphSerialization objectForOffset:](self, "objectForOffset:", offset)}];
  [v7 setDisappearingKeyName:{-[TUIKBGraphSerialization objectForOffset:](self, "objectForOffset:", offset)}];
  if (flagsCopy)
  {
    [v7 setOrderedKeyList:{-[TUIKBGraphSerialization objectForOffset:](self, "objectForOffset:", offset)}];
  }

  if ((flagsCopy & 2) != 0)
  {
    [v7 setFactors:{-[TUIKBGraphSerialization objectForOffset:](self, "objectForOffset:", offset)}];
  }

  return v7;
}

- (id)shapeForOffset:(int *)offset withFlags:(unint64_t)flags
{
  flagsCopy = flags;
  v7 = objc_alloc_init(MEMORY[0x1E69DCB70]);
  if (flagsCopy)
  {
    [v7 setGeometry:{-[TUIKBGraphSerialization objectForOffset:](self, "objectForOffset:", offset)}];
  }

  [(TUIKBGraphSerialization *)self CGRectForOffset:offset];
  [v7 setFrame:?];
  [(TUIKBGraphSerialization *)self CGRectForOffset:offset];
  [v7 setPaddedFrame:?];
  return v7;
}

- (CGRect)CGRectForOffset:(int *)offset
{
  v16 = *MEMORY[0x1E69E9840];
  bytes = [(NSData *)self->_graphData bytes];
  v6 = 0;
  v7 = *offset;
  v8 = bytes[v7];
  *offset = v7 + 1;
  v9 = v15;
  do
  {
    [(TUIKBGraphSerialization *)self compressedFloatForOffset:offset withKind:(v8 >> v6) & 3];
    *v9++ = v10;
    v6 += 2;
  }

  while (v6 != 8);
  v11 = v15[0];
  v12 = v15[1];
  v13 = v15[2];
  v14 = v15[3];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)geometryForOffset:(int *)offset withFlags:(unint64_t)flags
{
  v7 = objc_alloc_init(MEMORY[0x1E69DCB18]);
  [v7 setName:{-[TUIKBGraphSerialization objectForOffset:](self, "objectForOffset:", offset)}];
  v8 = [(TUIKBGraphSerialization *)self UIKBValueForOffset:offset];
  [v7 setX:{v8, v9}];
  v10 = [(TUIKBGraphSerialization *)self UIKBValueForOffset:offset];
  [v7 setY:{v10, v11}];
  v12 = [(TUIKBGraphSerialization *)self UIKBValueForOffset:offset];
  [v7 setW:{v12, v13}];
  v14 = [(TUIKBGraphSerialization *)self UIKBValueForOffset:offset];
  [v7 setH:{v14, v15}];
  v16 = [(TUIKBGraphSerialization *)self UIKBValueForOffset:offset];
  [v7 setPaddingTop:{v16, v17}];
  v18 = [(TUIKBGraphSerialization *)self UIKBValueForOffset:offset];
  [v7 setPaddingLeft:{v18, v19}];
  v20 = [(TUIKBGraphSerialization *)self UIKBValueForOffset:offset];
  [v7 setPaddingBottom:{v20, v21}];
  v22 = [(TUIKBGraphSerialization *)self UIKBValueForOffset:offset];
  [v7 setPaddingRight:{v22, v23}];
  [v7 setExplicitlySpecified:flags & 1];
  [v7 setIsTemplate:(flags >> 1) & 1];
  return v7;
}

- ($000CCD7ED2ADA2E18343834BA3C2DAF0)UIKBValueForOffset:(int *)offset
{
  bytes = [(NSData *)self->_graphData bytes];
  v6 = *offset;
  v7 = bytes[v6];
  *offset = v6 + 1;
  if ((v7 & 0xF) == 0xF)
  {
    v8 = 100;
  }

  else
  {
    v8 = v7 & 0xF;
  }

  [(TUIKBGraphSerialization *)self compressedFloatForOffset:offset withKind:v7 >> 4];
  v10 = v9;
  v11 = v8;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (id)dictionaryForOffset:(int *)offset nonEmpty:(BOOL)empty
{
  if (empty)
  {
    v7 = [(TUIKBGraphSerialization *)self objectForOffset:?];
    v8 = [(TUIKBGraphSerialization *)self objectForOffset:offset];
    v9 = MEMORY[0x1E695DF90];

    return [v9 dictionaryWithObjects:v8 forKeys:v7];
  }

  else
  {
    v11 = MEMORY[0x1E695DF90];

    return [v11 dictionary];
  }
}

- (id)setForOffset:(int *)offset nonEmpty:(BOOL)empty
{
  if (empty)
  {
    v5 = [(TUIKBGraphSerialization *)self objectForOffset:offset];
    v6 = MEMORY[0x1E695DFD8];

    return [v6 setWithArray:v5];
  }

  else
  {
    v8 = MEMORY[0x1E695DFD8];

    return [v8 set];
  }
}

- (id)relativeRefArrayForOffset:(int *)offset withCount:(unint64_t)count
{
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
  if (count)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (v8)
      {
        v9 += [(TUIKBGraphSerialization *)self compressedIntForOffset:offset];
      }

      else
      {
        v9 = [(TUIKBGraphSerialization *)self compressedUIntForOffset:offset];
      }

      v11 = v9;
      [v7 addObject:{-[TUIKBGraphSerialization objectForOffset:](self, "objectForOffset:", &v11)}];
      ++v8;
    }

    while (count != v8);
  }

  return v7;
}

- (id)refArrayForOffset:(int *)offset withCount:(unint64_t)count
{
  countCopy = count;
  for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:count]; countCopy; --countCopy)
  {
    v9 = [(TUIKBGraphSerialization *)self compressedUIntForOffset:offset];
    [i addObject:{-[TUIKBGraphSerialization objectForOffset:](self, "objectForOffset:", &v9)}];
  }

  return i;
}

- (id)arrayForOffset:(int *)offset withCount:(unint64_t)count
{
  countCopy = count;
  for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:count]; countCopy; --countCopy)
  {
    [i addObject:{-[TUIKBGraphSerialization objectForOffset:](self, "objectForOffset:", offset)}];
  }

  return i;
}

- (id)stringConcatForOffset:(int *)offset withComponentCount:(unint64_t)count
{
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
  if (count)
  {
    v8 = 1;
    do
    {
      v11 = [(TUIKBGraphSerialization *)self compressedUIntForOffset:offset];
      [v7 addObject:{-[TUIKBGraphSerialization objectForOffset:](self, "objectForOffset:", &v11)}];
      v9 = v8++;
    }

    while (v9 < count);
  }

  return [v7 componentsJoinedByString:&stru_1F03BA8F8];
}

- (id)simpleStringForOffset:(int *)offset withUTF8Length:(unint64_t)length
{
  bytes = [(NSData *)self->_graphData bytes];
  result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&bytes[*offset] length:length encoding:4];
  *offset += length;
  return result;
}

- (float)compressedFloatForOffset:(int *)offset withKind:(unsigned __int8)kind
{
  if (kind == 3)
  {

    [(TUIKBGraphSerialization *)self bareFloatForOffset:offset];
  }

  else if (kind == 2)
  {
    return [(TUIKBGraphSerialization *)self compressedIntForOffset:offset, v4, v5]/ 6.0;
  }

  else
  {
    result = 0.0;
    if (kind == 1)
    {
      return [(TUIKBGraphSerialization *)self compressedIntForOffset:offset, 0.0, v4, v5];
    }
  }

  return result;
}

- (float)bareFloatForOffset:(int *)offset
{
  bytes = [(NSData *)self->_graphData bytes];
  v5 = *offset;
  *offset = v5 + 4;
  return *&bytes[v5];
}

- (unint64_t)compressedUIntForOffset:(int *)offset
{
  bytes = [(NSData *)self->_graphData bytes];
  v5 = 0;
  result = 0;
  v7 = *offset;
  v8 = v7 + 1;
  v9 = &bytes[v7];
  do
  {
    v10 = *v9++;
    result |= (v10 & 0x7F) << v5;
    *offset = v8;
    v5 += 7;
    ++v8;
  }

  while (v10 < 0);
  return result;
}

- (unint64_t)compressedIntForOffset:(int *)offset
{
  bytes = [(NSData *)self->_graphData bytes];
  v5 = *offset;
  v6 = bytes[v5];
  v7 = bytes[v5];
  v8 = v7 & 0x3F;
  v9 = v5 + 1;
  *offset = v5 + 1;
  if (v6 < 0)
  {
    v10 = v5 + 2;
    v11 = &bytes[v9];
    v12 = 6;
    do
    {
      v13 = *v11++;
      v8 |= (v13 & 0x7F) << v12;
      *offset = v10;
      v12 += 7;
      ++v10;
    }

    while (v13 < 0);
  }

  if ((v7 & 0x40) != 0)
  {
    return -v8;
  }

  else
  {
    return v8;
  }
}

- (id)keyboardForName:(id)name
{
  v5 = [(NSDictionary *)self->_keyboardOffsets objectForKey:?];
  if (v5)
  {
    intValue = [v5 intValue];
    return [(TUIKBGraphSerialization *)self objectForOffset:&intValue];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithObject:name];
    _CFPropertyListCreateFiltered();
    return 0;
  }
}

- (void)setSerializedData:(id)data
{
  self->_serializedData = data;

  self->_graphData = data;
  v11 = 0;

  self->_minEdgeWidths = [-[TUIKBGraphSerialization objectForOffset:](self objectForOffset:{&v11), "mutableCopy"}];
  self->_maxEdgeWidths = [-[TUIKBGraphSerialization objectForOffset:](self objectForOffset:{&v11), "mutableCopy"}];
  v5 = [(TUIKBGraphSerialization *)self compressedUIntForOffset:&v11];
  bytes = [(NSData *)self->_graphData bytes];
  v7 = v11;

  self->_keyboardOffsetsData = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&bytes[v7] length:v5 freeWhenDone:0];
  self->_keyboardOffsets = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = v11 + v5;
  v11 += v5;
  v9 = MEMORY[0x1E695DEF0];
  v10 = [data length];
  self->_graphData = [v9 dataWithBytesNoCopy:&bytes[v8] length:v10 - v11 freeWhenDone:0];
}

- (NSData)serializedData
{
  v23 = *MEMORY[0x1E69E9840];
  serializedData = self->_serializedData;
  if (!serializedData)
  {
    self->_disableOffsets = 1;
    allKeys = [(NSDictionary *)self->_keyboardOffsets allKeys];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [(NSArray *)allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [(NSDictionary *)self->_keyboardOffsets objectForKey:v9];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [(NSDictionary *)self->_keyboardOffsets objectForKey:v10];
            keyboardOffsets = [(TUIKBGraphSerialization *)self keyboardOffsets];
            if (v11)
            {
              [(NSMutableDictionary *)keyboardOffsets setObject:v11 forKey:v9];
            }

            else
            {
              [(NSMutableDictionary *)keyboardOffsets removeObjectForKey:v9];
            }
          }
        }

        v6 = [(NSArray *)allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    v13 = [(TUIKBGraphSerialization *)self dataForDictionary:self->_minEdgeWidths];
    v14 = [(TUIKBGraphSerialization *)self dataForDictionary:self->_maxEdgeWidths];
    v15 = [MEMORY[0x1E696AE40] dataWithPropertyList:-[TUIKBGraphSerialization keyboardOffsets](self format:"keyboardOffsets") options:200 error:{0, 0}];
    v16 = -[TUIKBGraphSerialization dataForCompressedUInt:](self, "dataForCompressedUInt:", [v15 length]);
    self->_disableOffsets = 0;
    serializedData = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(v14, "length") + objc_msgSend(v13, "length") + objc_msgSend(v15, "length") + objc_msgSend(v16, "length")}];
    [(NSData *)serializedData appendData:v13];
    [(NSData *)serializedData appendData:v14];
    [(NSData *)serializedData appendData:v16];
    [(NSData *)serializedData appendData:v15];
    [(NSData *)serializedData appendData:self->_graphData];
    self->_serializedData = serializedData;
  }

  return serializedData;
}

- (void)preheatWithStatistics:(id)statistics
{
  v17 = *MEMORY[0x1E69E9840];
  allKeys = [statistics allKeys];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__TUIKBGraphSerialization_preheatWithStatistics___block_invoke;
  v15[3] = &unk_1E72D82D0;
  v15[4] = statistics;
  v6 = [allKeys sortedArrayUsingComparator:v15];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v12 != v9)
      {
        objc_enumerationMutation(v6);
      }

      [(TUIKBGraphSerialization *)self serializeObject:*(*(&v11 + 1) + 8 * v10)];
      if ([(NSData *)self->_graphData length]> 0x3FFE)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

uint64_t __49__TUIKBGraphSerialization_preheatWithStatistics___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [objc_msgSend(*(a1 + 32) "objectForKey:{"compare:", objc_msgSend(*(a1 + 32), "objectForKey:", a2)}")];
  if (!result)
  {

    return [a2 compare:a3];
  }

  return result;
}

- (id)statistics
{
  v2 = self->_referenceCount;

  return v2;
}

- (void)serializeObject:(id)object
{
  if (!self->_disableOffsets)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [-[NSMutableDictionary objectForKey:](self->_referenceCount objectForKey:{object), "integerValue"}];
      -[NSMutableDictionary setObject:forKey:](self->_referenceCount, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:v5 + 1], object);
    }

    if (![(TUIKBGraphSerialization *)self dataForOffsetObject:object])
    {
      v6 = [(TUIKBGraphSerialization *)self dataForObject:object];
      if (v6)
      {
        [(TUIKBGraphSerialization *)self persistData:v6 forObject:object];
      }
    }

    self->_serializedData = 0;
  }
}

- (int)_serializedOffsetForObject:(id)object
{
  if (!object)
  {
    return -1;
  }

  v3 = [(NSMapTable *)self->_serializedOffsets objectForKey:?];
  if (!v3)
  {
    return -1;
  }

  return [v3 intValue];
}

- (void)persistData:(id)data forObject:(id)object
{
  if (data)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [object type] == 1)
    {
      keyboardOffsets = [(TUIKBGraphSerialization *)self keyboardOffsets];
      -[NSMutableDictionary setObject:forKey:](keyboardOffsets, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSData length](self->_graphData, "length")}], objc_msgSend(object, "name"));
    }

    -[NSMapTable setObject:forKey:](self->_serializedOffsets, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSData length](self->_graphData, "length")}], object);
    graphData = [(TUIKBGraphSerialization *)self graphData];

    [(NSMutableData *)graphData appendData:data];
  }
}

- (id)dataForObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [object intValue];

    return [(TUIKBGraphSerialization *)self dataForInt:intValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [(TUIKBGraphSerialization *)self dataForString:object];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        return [(TUIKBGraphSerialization *)self dataForArray:object];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          return [(TUIKBGraphSerialization *)self dataForSet:object];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            return [(TUIKBGraphSerialization *)self dataForDictionary:object];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {

              return [(TUIKBGraphSerialization *)self dataForGeometry:object];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {

                return [(TUIKBGraphSerialization *)self dataForShape:object];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {

                  return [(TUIKBGraphSerialization *)self dataForMergeAction:object];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {

                    return [(TUIKBGraphSerialization *)self dataForUIKBTree:object];
                  }

                  else
                  {
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (id)dataForOffsetObject:(id)object
{
  if (self->_disableOffsets)
  {
    return 0;
  }

  v4 = [(NSMapTable *)self->_serializedOffsets objectForKey:object];
  if (!v4)
  {
    return 0;
  }

  intValue = [v4 intValue];

  return [(TUIKBGraphSerialization *)self dataForReference:intValue];
}

- (id)dataForUIKBTree:(id)tree
{
  v29 = *MEMORY[0x1E69E9840];
  if ([tree type] == 9)
  {
    shape = [tree shape];

    return [(TUIKBGraphSerialization *)self dataForShape:shape];
  }

  if ([tree type] != 10)
  {
    v8 = [(TUIKBGraphSerialization *)self dataForOffsetObject:tree];
    if (v8)
    {
      return v8;
    }

    if ([tree type] == 1)
    {
      v9 = [objc_msgSend(tree "properties")];
      if (v9)
      {
        -[NSMutableDictionary setObject:forKey:](-[TUIKBGraphSerialization keyboardOffsets](self, "keyboardOffsets"), "setObject:forKey:", v9, [tree name]);
        return 0;
      }
    }

    properties = [tree properties];
    v11 = [objc_msgSend(tree "subtrees")];
    if ([tree type] == 2)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      subtrees = [tree subtrees];
      v13 = [subtrees countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(subtrees);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            if ([v17 type] == 10)
            {
              properties = [v17 properties];
            }

            else if ([v17 type] != 14)
            {
              continue;
            }

            [v11 removeObject:v17];
          }

          v14 = [subtrees countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v14);
      }

      if (![(TUIKBGraphSerialization *)self dataForOffsetObject:properties])
      {
        [(TUIKBGraphSerialization *)self serializeObject:properties];
      }
    }

    name = [tree name];
    v19 = [properties count];
    if (name)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = name != 0;
    }

    if ([v11 count])
    {
      v21 |= 4u;
    }

    cache = [tree cache];
    v23 = v21 | 8;
    if (!cache)
    {
      v23 = v21;
    }

    v8 = [(TUIKBGraphSerialization *)self mutableDataForObjectType:11 withFlags:v23];
    [v8 appendData:{-[TUIKBGraphSerialization dataForInt:](self, "dataForInt:", objc_msgSend(tree, "type"))}];
    if ([tree name])
    {
      [v8 appendData:{-[TUIKBGraphSerialization dataForString:](self, "dataForString:", objc_msgSend(tree, "name"))}];
    }

    if ([properties count])
    {
      [v8 appendData:{-[TUIKBGraphSerialization dataForDictionary:](self, "dataForDictionary:", properties)}];
    }

    if ([v11 count])
    {
      [v8 appendData:{-[TUIKBGraphSerialization dataForArray:](self, "dataForArray:", v11)}];
    }

    if ([tree cache])
    {
      [v8 appendData:{-[TUIKBGraphSerialization dataForDictionary:](self, "dataForDictionary:", objc_msgSend(tree, "cache"))}];
    }

    return v8;
  }

  properties2 = [tree properties];

  return [(TUIKBGraphSerialization *)self dataForDictionary:properties2];
}

- (id)dataForMergeAction:(id)action
{
  v5 = [(TUIKBGraphSerialization *)self dataForOffsetObject:?];
  if (!v5)
  {
    v6 = [objc_msgSend(action "orderedKeyList")];
    factors = [action factors];
    if (v6)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    if (factors)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6 != 0;
    }

    v5 = [(TUIKBGraphSerialization *)self mutableDataForObjectType:10 withFlags:v9];
    [v5 appendData:{-[TUIKBGraphSerialization dataForString:](self, "dataForString:", objc_msgSend(action, "remainingKeyName"))}];
    [v5 appendData:{-[TUIKBGraphSerialization dataForString:](self, "dataForString:", objc_msgSend(action, "disappearingKeyName"))}];
    if ([objc_msgSend(action "orderedKeyList")])
    {
      [v5 appendData:{-[TUIKBGraphSerialization dataForArray:](self, "dataForArray:", objc_msgSend(action, "orderedKeyList"))}];
    }

    if ([action factors])
    {
      [v5 appendData:{-[TUIKBGraphSerialization dataForGeometry:](self, "dataForGeometry:", objc_msgSend(action, "factors"))}];
    }
  }

  return v5;
}

- (id)dataForShape:(id)shape
{
  v5 = [(TUIKBGraphSerialization *)self dataForOffsetObject:?];
  if (!v5)
  {
    if ([shape geometry])
    {
      v6 = [objc_msgSend(shape "geometry")];
      v5 = [(TUIKBGraphSerialization *)self mutableDataForObjectType:9 withFlags:v6];
      if (v6)
      {
        [v5 appendData:{-[TUIKBGraphSerialization dataForGeometry:](self, "dataForGeometry:", objc_msgSend(shape, "geometry"))}];
      }
    }

    else
    {
      v5 = [(TUIKBGraphSerialization *)self mutableDataForObjectType:9 withFlags:0];
    }

    [shape frame];
    [v5 appendData:{-[TUIKBGraphSerialization dataForCGRect:](self, "dataForCGRect:")}];
    [shape paddedFrame];
    [v5 appendData:{-[TUIKBGraphSerialization dataForCGRect:](self, "dataForCGRect:")}];
  }

  return v5;
}

- (id)dataForCGRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  data = [MEMORY[0x1E695DF88] data];
  v15 = 0;
  [data appendBytes:&v15 length:1];
  v14 = 0;
  *&v9 = x;
  [data appendData:{-[TUIKBGraphSerialization dataForCompressedFloat:kind:](self, "dataForCompressedFloat:kind:", &v14, v9)}];
  v15 |= v14;
  *&v10 = y;
  [data appendData:{-[TUIKBGraphSerialization dataForCompressedFloat:kind:](self, "dataForCompressedFloat:kind:", &v14, v10)}];
  v15 |= 4 * v14;
  *&v11 = width;
  [data appendData:{-[TUIKBGraphSerialization dataForCompressedFloat:kind:](self, "dataForCompressedFloat:kind:", &v14, v11)}];
  v15 |= 16 * v14;
  *&v12 = height;
  [data appendData:{-[TUIKBGraphSerialization dataForCompressedFloat:kind:](self, "dataForCompressedFloat:kind:", &v14, v12)}];
  v15 |= v14 << 6;
  [data replaceBytesInRange:0 withBytes:{1, &v15}];
  return data;
}

- (id)dataForGeometry:(id)geometry
{
  v5 = [(TUIKBGraphSerialization *)self dataForOffsetObject:?];
  if (!v5)
  {
    explicitlySpecified = [geometry explicitlySpecified];
    if ([geometry isTemplate])
    {
      v7 = explicitlySpecified | 2;
    }

    else
    {
      v7 = explicitlySpecified;
    }

    v5 = [(TUIKBGraphSerialization *)self mutableDataForObjectType:8 withFlags:v7];
    [v5 appendData:{-[TUIKBGraphSerialization dataForString:](self, "dataForString:", objc_msgSend(geometry, "name"))}];
    v8 = [geometry x];
    [v5 appendData:{-[TUIKBGraphSerialization dataForUIKBValue:](self, "dataForUIKBValue:", v8, v9)}];
    v10 = [geometry y];
    [v5 appendData:{-[TUIKBGraphSerialization dataForUIKBValue:](self, "dataForUIKBValue:", v10, v11)}];
    v12 = [geometry w];
    [v5 appendData:{-[TUIKBGraphSerialization dataForUIKBValue:](self, "dataForUIKBValue:", v12, v13)}];
    v14 = [geometry h];
    [v5 appendData:{-[TUIKBGraphSerialization dataForUIKBValue:](self, "dataForUIKBValue:", v14, v15)}];
    paddingTop = [geometry paddingTop];
    [v5 appendData:{-[TUIKBGraphSerialization dataForUIKBValue:](self, "dataForUIKBValue:", paddingTop, v17)}];
    paddingLeft = [geometry paddingLeft];
    [v5 appendData:{-[TUIKBGraphSerialization dataForUIKBValue:](self, "dataForUIKBValue:", paddingLeft, v19)}];
    paddingBottom = [geometry paddingBottom];
    [v5 appendData:{-[TUIKBGraphSerialization dataForUIKBValue:](self, "dataForUIKBValue:", paddingBottom, v21)}];
    paddingRight = [geometry paddingRight];
    [v5 appendData:{-[TUIKBGraphSerialization dataForUIKBValue:](self, "dataForUIKBValue:", paddingRight, v23)}];
  }

  return v5;
}

- (id)dataForUIKBValue:(id)value
{
  var1 = value.var1;
  var0 = value.var0;
  data = [MEMORY[0x1E695DF88] data];
  v11 = 0;
  [data appendBytes:&v11 length:1];
  *&v7 = var0;
  [data appendData:{-[TUIKBGraphSerialization dataForCompressedFloat:kind:](self, "dataForCompressedFloat:kind:", &v11, v7)}];
  if (var1 == 100)
  {
    v8 = 15;
  }

  else
  {
    v8 = var1;
  }

  v10 = v8 | (16 * v11);
  [data replaceBytesInRange:0 withBytes:{1, &v10}];
  return data;
}

- (id)dataForDictionary:(id)dictionary
{
  v5 = [(TUIKBGraphSerialization *)self dataForOffsetObject:?];
  if (v5)
  {
    return v5;
  }

  v6 = [(TUIKBGraphSerialization *)self sanitizedDictionary:dictionary];
  if ([v6 count] >= 1)
  {
    v5 = [(TUIKBGraphSerialization *)self mutableDataForObjectType:7 withSize:1];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3052000000;
    v18 = __Block_byref_object_copy__12715;
    v19 = __Block_byref_object_dispose__12716;
    array = [MEMORY[0x1E695DF70] array];
    v9 = 0;
    v10 = &v9;
    v11 = 0x3052000000;
    v12 = __Block_byref_object_copy__12715;
    v13 = __Block_byref_object_dispose__12716;
    array2 = [MEMORY[0x1E695DF70] array];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__TUIKBGraphSerialization_dataForDictionary___block_invoke;
    v8[3] = &unk_1E72D82A8;
    v8[4] = &v15;
    v8[5] = &v9;
    [v6 enumerateKeysAndObjectsUsingBlock:v8];
    [v5 appendData:{-[TUIKBGraphSerialization dataForArray:](self, "dataForArray:", v16[5])}];
    [v5 appendData:{-[TUIKBGraphSerialization dataForArray:](self, "dataForArray:", v10[5])}];
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v15, 8);
    return v5;
  }

  return [(TUIKBGraphSerialization *)self mutableDataForObjectType:7 withSize:0];
}

uint64_t __45__TUIKBGraphSerialization_dataForDictionary___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(*(*(a1 + 32) + 8) + 40) addObject:a2];
  v5 = *(*(*(a1 + 40) + 8) + 40);

  return [v5 addObject:a3];
}

- (id)sanitizedDictionary:(id)dictionary
{
  v4 = [dictionary mutableCopy];
  [v4 removeObjectForKey:@"KBother"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__TUIKBGraphSerialization_sanitizedDictionary___block_invoke;
  v6[3] = &unk_1E72D8280;
  v6[4] = v4;
  [dictionary enumerateKeysAndObjectsUsingBlock:v6];
  return v4;
}

uint64_t __47__TUIKBGraphSerialization_sanitizedDictionary___block_invoke(uint64_t a1, __CFString *a2, void *a3)
{
  if ([(__CFString *)a2 isEqual:@"KBvisualStyle"])
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:visualStyleFromString(a3)];
    v8 = @"KBvisualStyle";
  }

  else if ([(__CFString *)a2 isEqual:@"text-alignment"])
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:attributeValueFromString(a3)];
    v8 = @"text-alignment";
  }

  else if ([(__CFString *)a2 isEqual:@"variant-type"])
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:variantsTypeFromString(a3)];
    v8 = @"variant-type";
  }

  else
  {
    result = [(__CFString *)a2 isEqual:@"more-alternate"];
    if (result)
    {
      return result;
    }

    result = [(__CFString *)a2 isEqual:@"more-alternate-small-display"];
    if (result)
    {
      return result;
    }

    result = [(__CFString *)a2 isEqual:@"shift-alternate"];
    if (result)
    {
      return result;
    }

    result = [(__CFString *)a2 isEqual:@"shift-alternate-small-display"];
    if (result)
    {
      return result;
    }

    result = [(__CFString *)a2 isEqual:@"split-alternate"];
    if (result)
    {
      return result;
    }

    result = [(__CFString *)a2 isEqual:@"KBdisplayString"];
    if (result)
    {
      return result;
    }

    result = [(__CFString *)a2 isEqual:@"KBrepresentedString"];
    if (result)
    {
      return result;
    }

    if (![(__CFString *)a2 isEqual:@"group-neighbor"])
    {
      if ([(__CFString *)a2 isEqual:@"state"])
      {
        if ([a3 isEqualToString:@"disabled"])
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }

        v12 = *(a1 + 32);
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
        v9 = v12;
      }

      else
      {
        objc_opt_class();
        result = objc_opt_isKindOfClass();
        if ((result & 1) == 0)
        {
          return result;
        }

        result = attributeValueFromString(a3);
        if (!result)
        {
          return result;
        }

        v13 = *(a1 + 32);
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:attributeValueFromString(a3)];
        v9 = v13;
      }

      v8 = a2;
      goto LABEL_8;
    }

    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a3, "integerValue")}];
    v8 = @"group-neighbor";
  }

  v9 = v6;
LABEL_8:

  return [v9 setObject:v7 forKey:v8];
}

- (id)dataForSet:(id)set
{
  v5 = [(TUIKBGraphSerialization *)self dataForOffsetObject:?];
  if (v5)
  {
    return v5;
  }

  if ([set count] >= 1)
  {
    v5 = [(TUIKBGraphSerialization *)self mutableDataForObjectType:6 withSize:1];
    [v5 appendData:{-[TUIKBGraphSerialization dataForArray:](self, "dataForArray:", objc_msgSend(set, "allObjects"))}];
    return v5;
  }

  return [(TUIKBGraphSerialization *)self mutableDataForObjectType:6 withSize:0];
}

- (id)dataForArray:(id)array
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [(TUIKBGraphSerialization *)self dataForOffsetObject:?];
  if (!v5)
  {
    if (self->_disableOffsets)
    {
      v5 = -[TUIKBGraphSerialization mutableDataForObjectType:withSize:](self, "mutableDataForObjectType:withSize:", 5, [array count]);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v7 = [array countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v26;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v26 != v9)
            {
              objc_enumerationMutation(array);
            }

            v11 = *(*(&v25 + 1) + 8 * i);
            v12 = [(TUIKBGraphSerialization *)self dataForOffsetObject:v11];
            if (!v12)
            {
              [(TUIKBGraphSerialization *)self serializeObject:v11];
              v12 = [(TUIKBGraphSerialization *)self dataForOffsetObject:v11];
              if (!v12)
              {
                v12 = [(TUIKBGraphSerialization *)self dataForObject:v11];
                if (!v12)
                {
                  continue;
                }
              }
            }

            [v5 appendData:v12];
          }

          v8 = [array countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v8);
      }
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = [array countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(array);
            }

            v18 = *(*(&v21 + 1) + 8 * j);
            v19 = [(TUIKBGraphSerialization *)self _serializedOffsetForObject:v18];
            if (v19 == -1)
            {
              [(TUIKBGraphSerialization *)self serializeObject:v18];
              v19 = [(TUIKBGraphSerialization *)self _serializedOffsetForObject:v18];
            }

            [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v19)}];
          }

          v15 = [array countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v15);
      }

      v5 = -[TUIKBGraphSerialization mutableDataForObjectType:withSize:](self, "mutableDataForObjectType:withSize:", 13, [array count]);
      if ([array count])
      {
        [v5 appendData:{-[TUIKBGraphSerialization dataForCompressedUInt:](self, "dataForCompressedUInt:", objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", 0), "intValue"))}];
        if ([array count] >= 2)
        {
          v20 = 1;
          do
          {
            [v5 appendData:{-[TUIKBGraphSerialization dataForCompressedInt:](self, "dataForCompressedInt:", (objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", v20), "intValue") - objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", v20 - 1), "intValue")))}];
            ++v20;
          }

          while (v20 < [array count]);
        }
      }
    }
  }

  return v5;
}

- (id)dataForString:(id)string
{
  if ([(TUIKBGraphSerialization *)self stringIsSimple:?]|| self->_disableOffsets)
  {

    return [(TUIKBGraphSerialization *)self dataForSimpleString:string];
  }

  else
  {

    return [(TUIKBGraphSerialization *)self dataForStringConcat:string];
  }
}

- (id)dataForSimpleString:(id)string
{
  v5 = [(TUIKBGraphSerialization *)self dataForOffsetObject:?];
  if (!v5)
  {
    v6 = [string lengthOfBytesUsingEncoding:4];
    v5 = [(TUIKBGraphSerialization *)self mutableDataForObjectType:3 withSize:v6];
    if (v6 >= 1)
    {
      [v5 appendBytes:objc_msgSend(string length:{"cStringUsingEncoding:", 4), v6}];
    }
  }

  return v5;
}

- (id)dataForStringConcat:(id)concat
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = -[TUIKBGraphSerialization stringsBySplittingString:afterCharactersInSet:](self, "stringsBySplittingString:afterCharactersInSet:", concat, [objc_opt_class() separatorCharacterSet]);
  v5 = -[TUIKBGraphSerialization mutableDataForObjectType:withSize:](self, "mutableDataForObjectType:withSize:", 4, [v4 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [(TUIKBGraphSerialization *)self serializeObject:v10];
        [v5 appendData:{-[TUIKBGraphSerialization dataForCompressedUInt:](self, "dataForCompressedUInt:", -[TUIKBGraphSerialization _serializedOffsetForObject:](self, "_serializedOffsetForObject:", v10))}];
      }

      v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)stringsBySplittingString:(id)string afterCharactersInSet:(id)set
{
  v6 = [string length];
  array = [MEMORY[0x1E695DF70] array];
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = [string rangeOfCharacterFromSet:set options:0 range:{v8, v6}];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = v10 - v8 + v9;
      }

      [array addObject:{objc_msgSend(string, "substringWithRange:", v8, v6)}];
      v8 += v6;
      v11 = [string length];
      v6 = v11 - v8;
    }

    while (v11 != v8);
  }

  return array;
}

- (id)dataForReference:(int)reference
{
  v5 = [(TUIKBGraphSerialization *)self mutableDataForObjectType:0];
  [v5 appendData:{-[TUIKBGraphSerialization dataForCompressedUInt:](self, "dataForCompressedUInt:", reference)}];
  return v5;
}

- (id)dataForFloat:(float)float
{
  v5 = [(TUIKBGraphSerialization *)self mutableDataForObjectType:2];
  *&v6 = float;
  [v5 appendData:{-[TUIKBGraphSerialization dataForBareFloat:](self, "dataForBareFloat:", v6)}];
  return v5;
}

- (id)dataForInt:(int)int
{
  v5 = [(TUIKBGraphSerialization *)self mutableDataForObjectType:1];
  [v5 appendData:{-[TUIKBGraphSerialization dataForCompressedUInt:](self, "dataForCompressedUInt:", int)}];
  return v5;
}

- (id)dataForCompressedFloat:(float)float kind:(unsigned __int8 *)kind
{
  if (float == 0.0)
  {
    *kind = 0;
    return [MEMORY[0x1E695DEF0] data];
  }

  if (float > 0.0)
  {
    if (vabds_f32(roundf(float), float) < 0.001)
    {
      *kind = 1;
      v5 = llroundf(float);
      return [(TUIKBGraphSerialization *)self dataForCompressedInt:v5];
    }

    if (fabsf(roundf(float * 6.0) - (float * 6.0)) < 0.001)
    {
      *kind = 2;
      v5 = llroundf(float * 6.0);
      return [(TUIKBGraphSerialization *)self dataForCompressedInt:v5];
    }
  }

  *kind = 3;
  return [(TUIKBGraphSerialization *)self dataForBareFloat:?];
}

- (id)dataForCompressedUInt:(unint64_t)int
{
  v10 = *MEMORY[0x1E69E9840];
  if (int)
  {
    v3 = 0;
    do
    {
      v4 = int > 0x7F;
      v5 = int > 0x7F;
      v6 = int & 0x7F;
      int >>= 7;
      v9[v3++] = v6 | (v5 << 7);
    }

    while (v4);
    v7 = v3;
  }

  else
  {
    v9[0] = 0;
    v7 = 1;
  }

  return [MEMORY[0x1E695DEF0] dataWithBytes:v9 length:v7];
}

- (id)dataForCompressedInt:(int64_t)int
{
  v13 = *MEMORY[0x1E69E9840];
  if (!int)
  {
    v12[0] = 0;
LABEL_12:
    v10 = 1;
    return [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:v10];
  }

  if (int >= 0)
  {
    intCopy = int;
  }

  else
  {
    intCopy = -int;
  }

  v4 = (int >> 57) & 0x40 | intCopy & 0x3F;
  if (intCopy >= 0x40)
  {
    v4 |= 0x80u;
  }

  v12[0] = v4;
  if (intCopy < 0x40)
  {
    goto LABEL_12;
  }

  v5 = intCopy >> 6;
  v6 = 1;
  do
  {
    v7 = v5 > 0x7F;
    v8 = v5 > 0x7F;
    v9 = v5 & 0x7F;
    v5 >>= 7;
    v12[v6++] = v9 | (v8 << 7);
  }

  while (v7);
  v10 = v6;
  return [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:v10];
}

- (id)mutableDataForObjectType:(unsigned __int8)type withSize:(unint64_t)size
{
  if (size > 0xE)
  {
    v8 = type | 0xF0;
    v5 = [MEMORY[0x1E695DF88] dataWithBytes:&v8 length:1];
    [v5 appendData:{-[TUIKBGraphSerialization dataForCompressedUInt:](self, "dataForCompressedUInt:", size)}];
  }

  else
  {
    v9 = type | (16 * size);
    return [MEMORY[0x1E695DF88] dataWithBytes:&v9 length:1];
  }

  return v5;
}

- (void)reset
{
  [(NSMapTable *)self->_serializedOffsets removeAllObjects];
  [(NSMutableDictionary *)self->_minEdgeWidths removeAllObjects];
  [(NSMutableDictionary *)self->_maxEdgeWidths removeAllObjects];

  [(NSMutableDictionary *)self->_referenceCount removeAllObjects];
  self->_keyboardOffsetsData = 0;
  [(NSMutableDictionary *)[(TUIKBGraphSerialization *)self keyboardOffsets] removeAllObjects];
  graphData = [(TUIKBGraphSerialization *)self graphData];
  -[NSMutableData setData:](graphData, "setData:", [MEMORY[0x1E695DEF0] data]);

  self->_serializedData = 0;
  self->_currentFileType = -1;
}

+ (id)separatorCharacterSet
{
  if (separatorCharacterSet_once != -1)
  {
    dispatch_once(&separatorCharacterSet_once, &__block_literal_global_12725);
  }

  return separatorCharacterSet_set;
}

id __48__TUIKBGraphSerialization_separatorCharacterSet__block_invoke()
{
  result = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-_"];
  separatorCharacterSet_set = result;
  return result;
}

@end