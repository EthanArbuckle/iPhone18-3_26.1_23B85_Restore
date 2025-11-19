@interface SSVPlaybackAsset
- (BOOL)isEqual:(id)a3;
- (NSArray)sinfs;
- (NSString)URLString;
- (NSString)downloadKey;
- (NSString)flavor;
- (SSVPlaybackAsset)initWithAssetDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SSVPlaybackAsset

- (SSVPlaybackAsset)initWithAssetDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SSVPlaybackAsset;
  v5 = [(SSVPlaybackAsset *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    assetDictionary = v5->_assetDictionary;
    v5->_assetDictionary = v6;
  }

  return v5;
}

- (NSString)downloadKey
{
  v2 = [(NSDictionary *)self->_assetDictionary objectForKey:@"downloadKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)flavor
{
  v2 = [(NSDictionary *)self->_assetDictionary objectForKey:@"flavor"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)sinfs
{
  v2 = [(NSDictionary *)self->_assetDictionary objectForKey:@"sinfs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)URLString
{
  v2 = [(NSDictionary *)self->_assetDictionary objectForKey:@"URL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SSVPlaybackAsset;
  v4 = [(SSVPlaybackAsset *)&v9 description];
  v5 = [(SSVPlaybackAsset *)self flavor];
  v6 = [(SSVPlaybackAsset *)self URLString];
  v7 = [v3 stringWithFormat:@"%@ [Flavor: %@, URL: %@]", v4, v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(SSVPlaybackAsset *)self URLString];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hash];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSVPlaybackAsset;
    v5 = [(SSVPlaybackAsset *)&v8 hash];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(SSVPlaybackAsset *)self URLString];
    v8 = [v4 URLString];
    v6 = [v7 isEqualToString:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end