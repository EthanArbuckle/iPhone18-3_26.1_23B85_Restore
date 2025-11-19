@interface ICStoreFileAssetFairPlayInfo
- (ICStoreFileAssetFairPlayInfo)initWithResponseSinfDictionary:(id)a3;
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
    v5 = [(ICStoreFileAssetFairPlayInfo *)self identifier];
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
    [v3 setObject:v6 forKey:@"id"];
  }

  v7 = [(ICStoreFileAssetFairPlayInfo *)self dpInfoData];
  if (v7)
  {
    [v3 setObject:v7 forKey:@"dpInfo"];
  }

  v8 = [(ICStoreFileAssetFairPlayInfo *)self pinfData];
  if (v8)
  {
    [v3 setObject:v8 forKey:@"pinf"];
  }

  v9 = [(ICStoreFileAssetFairPlayInfo *)self sinfData];
  if (v9)
  {
    [v3 setObject:v9 forKey:@"sinf"];
  }

  v10 = [(ICStoreFileAssetFairPlayInfo *)self sinf2Data];
  if (v10)
  {
    [v3 setObject:v10 forKey:@"sinf2"];
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
    v3 = [v2 longLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ICStoreFileAssetFairPlayInfo)initWithResponseSinfDictionary:(id)a3
{
  v4 = a3;
  v5 = [(ICStoreFileAssetFairPlayInfo *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    responseSinfDictionary = v5->_responseSinfDictionary;
    v5->_responseSinfDictionary = v6;
  }

  return v5;
}

@end