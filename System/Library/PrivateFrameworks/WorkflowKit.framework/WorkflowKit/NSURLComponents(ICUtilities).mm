@interface NSURLComponents(ICUtilities)
- (id)queryDictionary;
- (void)addValuesFromQueryDictionary:()ICUtilities;
- (void)setQueryDictionary:()ICUtilities;
@end

@implementation NSURLComponents(ICUtilities)

- (void)addValuesFromQueryDictionary:()ICUtilities
{
  v4 = a3;
  v5 = [a1 percentEncodedQuery];
  if ([v5 length])
  {
    v6 = [a1 percentEncodedQuery];
    v9 = [v6 stringByAppendingString:@"&"];
  }

  else
  {
    v9 = &stru_1F4A1C408;
  }

  v7 = [MEMORY[0x1E695DFF8] dc_queryStringWithQueryDictionary:v4];

  v8 = [(__CFString *)v9 stringByAppendingString:v7];
  [a1 setPercentEncodedQuery:v8];
}

- (void)setQueryDictionary:()ICUtilities
{
  v2 = [MEMORY[0x1E695DFF8] dc_queryStringWithQueryDictionary:?];
  [a1 setPercentEncodedQuery:v2];
}

- (id)queryDictionary
{
  v1 = [a1 URL];
  v2 = [v1 dc_queryDictionary];

  return v2;
}

@end