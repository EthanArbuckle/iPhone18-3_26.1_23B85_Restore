@interface SXComponentInserterManager
- (NSArray)inserters;
- (SXComponentInserterManager)init;
- (void)addInserter:(id)inserter;
- (void)removeInserter:(id)inserter;
@end

@implementation SXComponentInserterManager

- (SXComponentInserterManager)init
{
  v6.receiver = self;
  v6.super_class = SXComponentInserterManager;
  v2 = [(SXComponentInserterManager *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    mutableInserters = v2->_mutableInserters;
    v2->_mutableInserters = array;
  }

  return v2;
}

- (NSArray)inserters
{
  mutableInserters = [(SXComponentInserterManager *)self mutableInserters];
  v3 = [mutableInserters copy];

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

- (void)addInserter:(id)inserter
{
  inserterCopy = inserter;
  if (inserterCopy)
  {
    mutableInserters = [(SXComponentInserterManager *)self mutableInserters];
    v5 = [mutableInserters containsObject:inserterCopy];

    if (v5)
    {
      mutableInserters2 = [(SXComponentInserterManager *)self mutableInserters];
      [mutableInserters2 removeObject:inserterCopy];
    }

    mutableInserters3 = [(SXComponentInserterManager *)self mutableInserters];
    [mutableInserters3 addObject:inserterCopy];
  }
}

- (void)removeInserter:(id)inserter
{
  if (inserter)
  {
    inserterCopy = inserter;
    mutableInserters = [(SXComponentInserterManager *)self mutableInserters];
    [mutableInserters removeObject:inserterCopy];
  }
}

@end