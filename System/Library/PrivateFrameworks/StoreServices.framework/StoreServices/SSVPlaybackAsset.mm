@interface SSVPlaybackAsset
- (BOOL)isEqual:(id)equal;
- (NSArray)sinfs;
- (NSString)URLString;
- (NSString)downloadKey;
- (NSString)flavor;
- (SSVPlaybackAsset)initWithAssetDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
@end

@implementation SSVPlaybackAsset

- (SSVPlaybackAsset)initWithAssetDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SSVPlaybackAsset;
  v5 = [(SSVPlaybackAsset *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
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
  flavor = [(SSVPlaybackAsset *)self flavor];
  uRLString = [(SSVPlaybackAsset *)self URLString];
  v7 = [v3 stringWithFormat:@"%@ [Flavor: %@, URL: %@]", v4, flavor, uRLString];

  return v7;
}

- (unint64_t)hash
{
  uRLString = [(SSVPlaybackAsset *)self URLString];
  v4 = uRLString;
  if (uRLString)
  {
    v5 = [uRLString hash];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    uRLString = [(SSVPlaybackAsset *)self URLString];
    uRLString2 = [equalCopy URLString];
    v6 = [uRLString isEqualToString:uRLString2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end