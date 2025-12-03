@interface NSURLComponents(ICUtilities)
- (id)queryDictionary;
- (void)addValuesFromQueryDictionary:()ICUtilities;
- (void)setQueryDictionary:()ICUtilities;
@end

@implementation NSURLComponents(ICUtilities)

- (void)addValuesFromQueryDictionary:()ICUtilities
{
  v4 = a3;
  percentEncodedQuery = [self percentEncodedQuery];
  if ([percentEncodedQuery length])
  {
    percentEncodedQuery2 = [self percentEncodedQuery];
    v9 = [percentEncodedQuery2 stringByAppendingString:@"&"];
  }

  else
  {
    v9 = &stru_1F4A1C408;
  }

  v7 = [MEMORY[0x1E695DFF8] dc_queryStringWithQueryDictionary:v4];

  v8 = [(__CFString *)v9 stringByAppendingString:v7];
  [self setPercentEncodedQuery:v8];
}

- (void)setQueryDictionary:()ICUtilities
{
  v2 = [MEMORY[0x1E695DFF8] dc_queryStringWithQueryDictionary:?];
  [self setPercentEncodedQuery:v2];
}

- (id)queryDictionary
{
  v1 = [self URL];
  dc_queryDictionary = [v1 dc_queryDictionary];

  return dc_queryDictionary;
}

@end