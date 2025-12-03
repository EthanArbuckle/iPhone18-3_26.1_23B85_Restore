@interface SHCacheValues
- (SHCacheValues)initWithValues:(id)values;
- (int64_t)lookupMaxAge;
@end

@implementation SHCacheValues

- (SHCacheValues)initWithValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = SHCacheValues;
  v6 = [(SHCacheValues *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cacheValues, values);
  }

  return v7;
}

- (int64_t)lookupMaxAge
{
  cacheValues = [(SHCacheValues *)self cacheValues];
  v3 = [cacheValues objectForKeyedSubscript:@"lookupMaxAgeInDays"];
  integerValue = [v3 integerValue];
  if (integerValue)
  {
    v5 = integerValue;
  }

  else
  {
    v5 = 7;
  }

  return v5;
}

@end