@interface PLGraphEdgeValue
- (BOOL)isInsertedDeletedOrChanged;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (BOOL)valueDidChange;
- (int64_t)integerValue;
- (void)setIntegerValue:(int64_t)value;
@end

@implementation PLGraphEdgeValue

- (BOOL)valueDidChange
{
  changedValues = [(PLGraphEdgeValue *)self changedValues];
  v4 = [changedValues objectForKeyedSubscript:@"stringValue"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    changedValues2 = [(PLGraphEdgeValue *)self changedValues];
    v7 = [changedValues2 objectForKeyedSubscript:@"dateValue"];
    if (v7)
    {
      v5 = 1;
    }

    else
    {
      changedValues3 = [(PLGraphEdgeValue *)self changedValues];
      v9 = [changedValues3 objectForKeyedSubscript:@"BOOLValue"];
      if (v9)
      {
        v5 = 1;
      }

      else
      {
        changedValues4 = [(PLGraphEdgeValue *)self changedValues];
        v11 = [changedValues4 objectForKeyedSubscript:@"integerValue"];
        if (v11)
        {
          v5 = 1;
        }

        else
        {
          changedValues5 = [(PLGraphEdgeValue *)self changedValues];
          v13 = [changedValues5 objectForKeyedSubscript:@"doubleValue"];
          v5 = v13 != 0;
        }
      }
    }
  }

  return v5;
}

- (BOOL)isInsertedDeletedOrChanged
{
  if (([(PLGraphEdgeValue *)self isInserted]& 1) != 0 || ([(PLGraphEdgeValue *)self isDeleted]& 1) != 0)
  {
    return 1;
  }

  return [(PLGraphEdgeValue *)self valueDidChange];
}

- (void)setIntegerValue:(int64_t)value
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  [(PLManagedObject *)self pl_setValue:v4 forKey:@"integerValue" valueDidChangeHandler:0];
}

- (int64_t)integerValue
{
  [(PLGraphEdgeValue *)self willAccessValueForKey:@"integerValue"];
  v3 = [(PLGraphEdgeValue *)self primitiveValueForKey:@"integerValue"];
  [(PLGraphEdgeValue *)self didAccessValueForKey:@"integerValue"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)validateForInsert:(id *)insert
{
  v7.receiver = self;
  v7.super_class = PLGraphEdgeValue;
  v5 = [(PLGraphEdgeValue *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLGraphEdgeValue *)self validateForUpdate:insert];
  }

  return v5;
}

- (BOOL)validateForUpdate:(id *)update
{
  v9.receiver = self;
  v9.super_class = PLGraphEdgeValue;
  v5 = [(PLGraphEdgeValue *)&v9 validateForUpdate:?];
  if (v5)
  {
    edge = [(PLGraphEdgeValue *)self edge];

    if (edge && [(PLGraphEdgeValue *)self nameCode])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v7 = PLErrorCreate();
      if (update)
      {
        v7 = v7;
        *update = v7;
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end