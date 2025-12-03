@interface TRINaiveFactorLevelCache
- (TRINaiveFactorLevelCache)initWithFactorLevels:(id)levels;
- (void)enumerateFactorLevelsUsingBlock:(id)block;
@end

@implementation TRINaiveFactorLevelCache

- (TRINaiveFactorLevelCache)initWithFactorLevels:(id)levels
{
  levelsCopy = levels;
  v13.receiver = self;
  v13.super_class = TRINaiveFactorLevelCache;
  v5 = [(TRINaiveFactorLevelCache *)&v13 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(levelsCopy, "count")}];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__TRINaiveFactorLevelCache_initWithFactorLevels___block_invoke;
    v11[3] = &unk_27885E350;
    v7 = v6;
    v12 = v7;
    [levelsCopy enumerateObjectsUsingBlock:v11];
    factorLevels = v5->_factorLevels;
    v5->_factorLevels = v7;
    v9 = v7;
  }

  return v5;
}

void __49__TRINaiveFactorLevelCache_initWithFactorLevels___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 hasFactor])
  {
    v3 = [v7 factor];
    if ([v3 hasName])
    {
      v4 = [v7 hasLevel];

      if (!v4)
      {
        goto LABEL_6;
      }

      v5 = *(a1 + 32);
      v3 = [v7 factor];
      v6 = [v3 name];
      [v5 setObject:v7 forKeyedSubscript:v6];
    }
  }

LABEL_6:
}

- (void)enumerateFactorLevelsUsingBlock:(id)block
{
  blockCopy = block;
  factorLevels = self->_factorLevels;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__TRINaiveFactorLevelCache_enumerateFactorLevelsUsingBlock___block_invoke;
  v7[3] = &unk_27885E378;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSDictionary *)factorLevels enumerateKeysAndObjectsUsingBlock:v7];
}

void __60__TRINaiveFactorLevelCache_enumerateFactorLevelsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v6);
}

@end