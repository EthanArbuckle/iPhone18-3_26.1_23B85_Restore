@interface SXComponentInserterManager
- (NSArray)inserters;
- (SXComponentInserterManager)init;
- (void)addInserter:(id)a3;
- (void)removeInserter:(id)a3;
@end

@implementation SXComponentInserterManager

- (SXComponentInserterManager)init
{
  v6.receiver = self;
  v6.super_class = SXComponentInserterManager;
  v2 = [(SXComponentInserterManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    mutableInserters = v2->_mutableInserters;
    v2->_mutableInserters = v3;
  }

  return v2;
}

- (NSArray)inserters
{
  v2 = [(SXComponentInserterManager *)self mutableInserters];
  v3 = [v2 copy];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (void)addInserter:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(SXComponentInserterManager *)self mutableInserters];
    v5 = [v4 containsObject:v8];

    if (v5)
    {
      v6 = [(SXComponentInserterManager *)self mutableInserters];
      [v6 removeObject:v8];
    }

    v7 = [(SXComponentInserterManager *)self mutableInserters];
    [v7 addObject:v8];
  }
}

- (void)removeInserter:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXComponentInserterManager *)self mutableInserters];
    [v5 removeObject:v4];
  }
}

@end