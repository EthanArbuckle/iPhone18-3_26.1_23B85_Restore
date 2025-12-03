@interface WBSForYouDataSourceWeightManager
- (WBSForYouDataSourceWeightManager)initWithKeyValueStore:(id)store;
- (double)weightForSource:(unint64_t)source;
- (void)downvoteSource:(unint64_t)source;
@end

@implementation WBSForYouDataSourceWeightManager

- (WBSForYouDataSourceWeightManager)initWithKeyValueStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = WBSForYouDataSourceWeightManager;
  v6 = [(WBSForYouDataSourceWeightManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v8 = v7;
  }

  return v7;
}

- (void)downvoteSource:(unint64_t)source
{
  v9 = keyForSource(source);
  v4 = [(WBSDictionaryKeyValueStore *)self->_store dictionaryForKey:@"ForYouDataSourceWeights"];
  dictionary = [v4 mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = [dictionary safari_numberForKey:v9];
  integerValue = [v6 integerValue];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
  [dictionary setObject:v8 forKey:v9];

  [(WBSDictionaryKeyValueStore *)self->_store setObject:dictionary forKey:@"ForYouDataSourceWeights"];
}

- (double)weightForSource:(unint64_t)source
{
  v4 = keyForSource(source);
  v5 = [(WBSDictionaryKeyValueStore *)self->_store dictionaryForKey:@"ForYouDataSourceWeights"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 safari_numberForKey:v4];
    integerValue = [v7 integerValue];

    v9 = exp(-integerValue * 1.61803);
  }

  else
  {
    v9 = 1.0;
  }

  return v9;
}

@end