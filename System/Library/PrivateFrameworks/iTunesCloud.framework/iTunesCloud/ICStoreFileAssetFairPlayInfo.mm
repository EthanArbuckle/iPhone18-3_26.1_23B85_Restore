@interface ICStoreFileAssetFairPlayInfo
- (ICStoreFileAssetFairPlayInfo)initWithResponseSinfDictionary:(id)dictionary;
- (NSData)dpInfoData;
- (NSData)pinfData;
- (NSData)sinf2Data;
- (NSData)sinfData;
- (NSDictionary)purchaseBundleSinfDictionary;
- (int64_t)identifier;
@end

@implementation ICStoreFileAssetFairPlayInfo

- (NSDictionary)purchaseBundleSinfDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSDictionary *)self->_responseSinfDictionary objectForKey:@"id"];

  if (v4)
  {
    identifier = [(ICStoreFileAssetFairPlayInfo *)self identifier];
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:identifier];
    [v3 setObject:v6 forKey:@"id"];
  }

  dpInfoData = [(ICStoreFileAssetFairPlayInfo *)self dpInfoData];
  if (dpInfoData)
  {
    [v3 setObject:dpInfoData forKey:@"dpInfo"];
  }

  pinfData = [(ICStoreFileAssetFairPlayInfo *)self pinfData];
  if (pinfData)
  {
    [v3 setObject:pinfData forKey:@"pinf"];
  }

  sinfData = [(ICStoreFileAssetFairPlayInfo *)self sinfData];
  if (sinfData)
  {
    [v3 setObject:sinfData forKey:@"sinf"];
  }

  sinf2Data = [(ICStoreFileAssetFairPlayInfo *)self sinf2Data];
  if (sinf2Data)
  {
    [v3 setObject:sinf2Data forKey:@"sinf2"];
  }

  return v3;
}

- (NSData)sinf2Data
{
  v2 = [(NSDictionary *)self->_responseSinfDictionary objectForKey:@"sinf2"];
  v3 = _ICStoreFileAssetFairPlayInfoValueForValue(v2);

  return v3;
}

- (NSData)sinfData
{
  v2 = [(NSDictionary *)self->_responseSinfDictionary objectForKey:@"sinf"];
  v3 = _ICStoreFileAssetFairPlayInfoValueForValue(v2);

  return v3;
}

- (NSData)pinfData
{
  v2 = [(NSDictionary *)self->_responseSinfDictionary objectForKey:@"pinf"];
  v3 = _ICStoreFileAssetFairPlayInfoValueForValue(v2);

  return v3;
}

- (NSData)dpInfoData
{
  v2 = [(NSDictionary *)self->_responseSinfDictionary objectForKey:@"dpInfo"];
  v3 = _ICStoreFileAssetFairPlayInfoValueForValue(v2);

  return v3;
}

- (int64_t)identifier
{
  v2 = [(NSDictionary *)self->_responseSinfDictionary objectForKey:@"id"];
  if (objc_opt_respondsToSelector())
  {
    longLongValue = [v2 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (ICStoreFileAssetFairPlayInfo)initWithResponseSinfDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(ICStoreFileAssetFairPlayInfo *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    responseSinfDictionary = v5->_responseSinfDictionary;
    v5->_responseSinfDictionary = v6;
  }

  return v5;
}

@end