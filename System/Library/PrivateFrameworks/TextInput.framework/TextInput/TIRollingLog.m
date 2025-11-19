@interface TIRollingLog
- (NSArray)currentEntries;
- (TIRollingLog)initWithMaxCount:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addEntries:(id)a3;
- (void)addEntry:(id)a3;
@end

@implementation TIRollingLog

- (NSArray)currentEntries
{
  v3 = [(NSMutableArray *)self->_entries subarrayWithRange:self->_nextIndex, self->_count - self->_nextIndex];
  v4 = [(NSMutableArray *)self->_entries subarrayWithRange:0, self->_nextIndex];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (void)addEntries:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(TIRollingLog *)self addEntry:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addEntry:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_entries setObject:a3 atIndexedSubscript:self->_nextIndex];
    count = self->_count;
    maxCount = self->_maxCount;
    if (count < maxCount)
    {
      self->_count = count + 1;
    }

    nextIndex = self->_nextIndex;
    if (nextIndex + 1 < maxCount)
    {
      v7 = nextIndex + 1;
    }

    else
    {
      v7 = 0;
    }

    self->_nextIndex = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSMutableArray *)self->_entries copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v5[2] = self->_nextIndex;
    v5[3] = self->_count;
    v5[4] = self->_maxCount;
  }

  return v5;
}

- (TIRollingLog)initWithMaxCount:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = TIRollingLog;
  v4 = [(TIRollingLog *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_maxCount = a3;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    entries = v5->_entries;
    v5->_entries = v6;
  }

  return v5;
}

@end