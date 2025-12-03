@interface TTVectorTimestamp
- (BOOL)isEqual:(id)equal;
- (TTVectorTimestamp)init;
- (TTVectorTimestamp)initWithArchive:(const void *)archive;
- (TTVectorTimestamp)initWithData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)serialize;
- (id)sortedUUIDs;
- (unint64_t)clockForUUID:(id)d;
- (unint64_t)compareTo:(id)to;
- (unint64_t)subclockForUUID:(id)d;
- (void)incrementClockForUUID:(id)d;
- (void)mergeWithTimestamp:(id)timestamp;
- (void)saveToArchive:(void *)archive;
- (void)setClock:(unint64_t)clock forUUID:(id)d;
- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d;
@end

@implementation TTVectorTimestamp

- (TTVectorTimestamp)init
{
  v6.receiver = self;
  v6.super_class = TTVectorTimestamp;
  v2 = [(TTVectorTimestamp *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    clock = v2->_clock;
    v2->_clock = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TTVectorTimestamp);
  [(TTVectorTimestamp *)v4 mergeWithTimestamp:self];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TTVectorTimestamp *)self compareTo:equalCopy]== 0;

  return v5;
}

- (unint64_t)clockForUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:d];
  clock = [v3 clock];

  return clock;
}

- (unint64_t)subclockForUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:d];
  subclock = [v3 subclock];

  return subclock;
}

- (void)setClock:(unint64_t)clock forUUID:(id)d
{
  clock = self->_clock;
  dCopy = d;
  v8 = [(NSMutableDictionary *)clock objectForKeyedSubscript:dCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(TTVectorTimestampElement);
  }

  v9 = v8;
  [(TTVectorTimestampElement *)v8 setClock:clock];
  [(NSMutableDictionary *)self->_clock setObject:v9 forKey:dCopy];
}

- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d
{
  dCopy = d;
  v9 = objc_alloc_init(TTVectorTimestampElement);
  [(TTVectorTimestampElement *)v9 setClock:clock];
  [(TTVectorTimestampElement *)v9 setSubclock:subclock];
  [(NSMutableDictionary *)self->_clock setObject:v9 forKey:dCopy];
}

- (void)incrementClockForUUID:(id)d
{
  dCopy = d;
  [(TTVectorTimestamp *)self setClock:[(TTVectorTimestamp *)self clockForUUID:dCopy]+ 1 forUUID:dCopy];
}

- (id)sortedUUIDs
{
  allKeys = [(NSMutableDictionary *)self->_clock allKeys];
  v3 = [allKeys sortedArrayUsingSelector:sel_TTCompare_];

  return v3;
}

- (unint64_t)compareTo:(id)to
{
  v34 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = MEMORY[0x1E695DFA8];
  allUUIDs = [(TTVectorTimestamp *)self allUUIDs];
  v7 = [v5 setWithArray:allUUIDs];

  allUUIDs2 = [toCopy allUUIDs];
  [v7 addObjectsFromArray:allUUIDs2];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v10)
  {

    v25 = 0;
    goto LABEL_22;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = *v30;
  obj = v9;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v30 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v29 + 1) + 8 * i);
      v17 = [(TTVectorTimestamp *)self clockElementForUUID:v16];
      v18 = [toCopy clockElementForUUID:v16];
      clock = [v17 clock];
      if (clock >= [v18 clock])
      {
        clock2 = [v17 clock];
        if (clock2 > [v18 clock])
        {
          v12 = 1;
          goto LABEL_12;
        }

        subclock = [v17 subclock];
        if (subclock >= [v18 subclock])
        {
          subclock2 = [v17 subclock];
          v12 |= subclock2 > [v18 subclock];
          goto LABEL_12;
        }
      }

      v13 = 1;
LABEL_12:

      if (v13 & 1) != 0 && (v12)
      {
        v9 = obj;
        v23 = 1;
        v24 = 4;
        goto LABEL_20;
      }
    }

    v9 = obj;
    v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  v23 = v13 & 1;
  if (v12)
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

LABEL_20:

  v25 = v24 | v23;
LABEL_22:

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)mergeWithTimestamp:(id)timestamp
{
  v23 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [timestampCopy allUUIDs];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(TTVectorTimestamp *)self clockElementForUUID:v9];
        v11 = [timestampCopy clockElementForUUID:v9];
        clock = [v10 clock];
        v13 = v10;
        if (clock <= [v11 clock])
        {
          clock2 = [v10 clock];
          if (clock2 != [v11 clock] || (v15 = objc_msgSend(v10, "subclock"), v13 = v10, v15 <= objc_msgSend(v11, "subclock")))
          {
            v13 = v11;
          }
        }

        -[TTVectorTimestamp setClock:subclock:forUUID:](self, "setClock:subclock:forUUID:", [v13 clock], objc_msgSend(v13, "subclock"), v9);
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend(v3, "appendFormat:", @"<%@ %p>(\n"), v5, self;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  sortedUUIDs = [(TTVectorTimestamp *)self sortedUUIDs];
  v7 = [sortedUUIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(sortedUUIDs);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(TTVectorTimestamp *)self clockElementForUUID:v11];
        [v3 appendFormat:@"  %@:%lu.%lu\n", v11, objc_msgSend(v12, "clock"), objc_msgSend(v12, "subclock")];
      }

      v8 = [sortedUUIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [v3 appendString:@""]);
  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (TTVectorTimestamp)initWithData:(id)data
{
  dataCopy = data;
  v5 = [[TTVectorMultiTimestamp alloc] initWithData:dataCopy andCapacity:1];
  timestamps = [(TTVectorMultiTimestamp *)v5 timestamps];
  v7 = [timestamps objectAtIndexedSubscript:0];

  return v7;
}

- (TTVectorTimestamp)initWithArchive:(const void *)archive
{
  v4 = [[TTVectorMultiTimestamp alloc] initWithArchive:archive andCapacity:1];
  timestamps = [(TTVectorMultiTimestamp *)v4 timestamps];
  v6 = [timestamps objectAtIndexedSubscript:0];

  return v6;
}

- (void)saveToArchive:(void *)archive
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = [TTVectorMultiTimestamp alloc];
  v9[0] = self;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [(TTVectorMultiTimestamp *)v5 initWithTimestamps:v6];

  [(TTVectorMultiTimestamp *)v7 saveToArchive:archive];
  v8 = *MEMORY[0x1E69E9840];
}

- (id)serialize
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [TTVectorMultiTimestamp alloc];
  v9[0] = self;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [(TTVectorMultiTimestamp *)v3 initWithTimestamps:v4];

  serialize = [(TTVectorMultiTimestamp *)v5 serialize];

  v7 = *MEMORY[0x1E69E9840];

  return serialize;
}

@end