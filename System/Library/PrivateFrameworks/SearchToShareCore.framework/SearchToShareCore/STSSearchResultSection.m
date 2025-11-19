@interface STSSearchResultSection
- (STSSearchResultSection)initWithResultsArray:(id)a3;
- (id)logResults;
@end

@implementation STSSearchResultSection

- (STSSearchResultSection)initWithResultsArray:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STSSearchResultSection;
  v5 = [(STSSearchResultSection *)&v8 init];
  results = v5->_results;
  v5->_results = v4;

  return v5;
}

- (id)logResults
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(STSSearchResultSection *)self results];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__STSSearchResultSection_logResults__block_invoke;
  v8[3] = &unk_279B8AD08;
  v9 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v8];

  v6 = [v5 copy];

  return v6;
}

void __36__STSSearchResultSection_logResults__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 resultType];
  [v2 appendFormat:@"%@, resultType: %@\n", v3, v4];
}

@end