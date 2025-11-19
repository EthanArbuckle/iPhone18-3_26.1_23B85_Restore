@interface SHCacheValues
- (SHCacheValues)initWithValues:(id)a3;
- (int64_t)lookupMaxAge;
@end

@implementation SHCacheValues

- (SHCacheValues)initWithValues:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHCacheValues;
  v6 = [(SHCacheValues *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cacheValues, a3);
  }

  return v7;
}

- (int64_t)lookupMaxAge
{
  v2 = [(SHCacheValues *)self cacheValues];
  v3 = [v2 objectForKeyedSubscript:@"lookupMaxAgeInDays"];
  v4 = [v3 integerValue];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7;
  }

  return v5;
}

@end