@interface WBSForYouDataSourceWeightManager
- (WBSForYouDataSourceWeightManager)initWithKeyValueStore:(id)a3;
- (double)weightForSource:(unint64_t)a3;
- (void)downvoteSource:(unint64_t)a3;
@end

@implementation WBSForYouDataSourceWeightManager

- (WBSForYouDataSourceWeightManager)initWithKeyValueStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSForYouDataSourceWeightManager;
  v6 = [(WBSForYouDataSourceWeightManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = v7;
  }

  return v7;
}

- (void)downvoteSource:(unint64_t)a3
{
  v9 = keyForSource(a3);
  v4 = [(WBSDictionaryKeyValueStore *)self->_store dictionaryForKey:@"ForYouDataSourceWeights"];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = [v5 safari_numberForKey:v9];
  v7 = [v6 integerValue];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7 + 1];
  [v5 setObject:v8 forKey:v9];

  [(WBSDictionaryKeyValueStore *)self->_store setObject:v5 forKey:@"ForYouDataSourceWeights"];
}

- (double)weightForSource:(unint64_t)a3
{
  v4 = keyForSource(a3);
  v5 = [(WBSDictionaryKeyValueStore *)self->_store dictionaryForKey:@"ForYouDataSourceWeights"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 safari_numberForKey:v4];
    v8 = [v7 integerValue];

    v9 = exp(-v8 * 1.61803);
  }

  else
  {
    v9 = 1.0;
  }

  return v9;
}

@end