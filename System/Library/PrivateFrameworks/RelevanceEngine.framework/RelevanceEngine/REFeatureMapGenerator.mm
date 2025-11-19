@interface REFeatureMapGenerator
- (REFeatureMapGenerator)initWithFeatureList:(id)a3;
- (id)createFeatureMap;
@end

@implementation REFeatureMapGenerator

- (REFeatureMapGenerator)initWithFeatureList:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = REFeatureMapGenerator;
  v5 = [(REFeatureMapGenerator *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] sharedKeySetForKeys:v4];
    v7 = [MEMORY[0x277CBEB38] dictionaryWithSharedKeySet:v6];
    featureIndexMap = v5->_featureIndexMap;
    v5->_featureIndexMap = v7;

    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__REFeatureMapGenerator_initWithFeatureList___block_invoke;
    v10[3] = &unk_2785F9C58;
    v11 = v5;
    v12 = v13;
    [v4 enumerateObjectsUsingBlock:v10];

    _Block_object_dispose(v13, 8);
  }

  return v5;
}

void __45__REFeatureMapGenerator_initWithFeatureList___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:?];

  if (v3)
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Duplicate feature provided in feature list %@", v4, v5, v6, v7, v8, v9, v11);
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
    [*(*(a1 + 32) + 8) setObject:v10 forKeyedSubscript:v11];

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (id)createFeatureMap
{
  v2 = [[REFeatureMap alloc] initWithFeatureMap:self->_featureIndexMap];

  return v2;
}

@end