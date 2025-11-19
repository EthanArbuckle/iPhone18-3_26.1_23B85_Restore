@interface PLGraphEdgeValue
- (BOOL)isInsertedDeletedOrChanged;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (BOOL)valueDidChange;
- (int64_t)integerValue;
- (void)setIntegerValue:(int64_t)a3;
@end

@implementation PLGraphEdgeValue

- (BOOL)valueDidChange
{
  v3 = [(PLGraphEdgeValue *)self changedValues];
  v4 = [v3 objectForKeyedSubscript:@"stringValue"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PLGraphEdgeValue *)self changedValues];
    v7 = [v6 objectForKeyedSubscript:@"dateValue"];
    if (v7)
    {
      v5 = 1;
    }

    else
    {
      v8 = [(PLGraphEdgeValue *)self changedValues];
      v9 = [v8 objectForKeyedSubscript:@"BOOLValue"];
      if (v9)
      {
        v5 = 1;
      }

      else
      {
        v10 = [(PLGraphEdgeValue *)self changedValues];
        v11 = [v10 objectForKeyedSubscript:@"integerValue"];
        if (v11)
        {
          v5 = 1;
        }

        else
        {
          v12 = [(PLGraphEdgeValue *)self changedValues];
          v13 = [v12 objectForKeyedSubscript:@"doubleValue"];
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

- (void)setIntegerValue:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(PLManagedObject *)self pl_setValue:v4 forKey:@"integerValue" valueDidChangeHandler:0];
}

- (int64_t)integerValue
{
  [(PLGraphEdgeValue *)self willAccessValueForKey:@"integerValue"];
  v3 = [(PLGraphEdgeValue *)self primitiveValueForKey:@"integerValue"];
  [(PLGraphEdgeValue *)self didAccessValueForKey:@"integerValue"];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)validateForInsert:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PLGraphEdgeValue;
  v5 = [(PLGraphEdgeValue *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLGraphEdgeValue *)self validateForUpdate:a3];
  }

  return v5;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v9.receiver = self;
  v9.super_class = PLGraphEdgeValue;
  v5 = [(PLGraphEdgeValue *)&v9 validateForUpdate:?];
  if (v5)
  {
    v6 = [(PLGraphEdgeValue *)self edge];

    if (v6 && [(PLGraphEdgeValue *)self nameCode])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v7 = PLErrorCreate();
      if (a3)
      {
        v7 = v7;
        *a3 = v7;
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end