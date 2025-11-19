@interface BCOutstandingAsset
- (NSDictionary)assetDictionaryAsDictionary;
- (void)setAssetDictionaryAsDictionary:(id)a3;
@end

@implementation BCOutstandingAsset

- (void)setAssetDictionaryAsDictionary:(id)a3
{
  v8 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:a3 format:100 options:0 error:&v8];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v8 == 0;
  }

  if (!v6)
  {
    v7 = BCDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1361C(a3, v7);
    }
  }

  [(BCOutstandingAsset *)self setAssetDictionary:v5];
}

- (NSDictionary)assetDictionaryAsDictionary
{
  v8 = 0;
  v4 = [NSPropertyListSerialization propertyListWithData:[(BCOutstandingAsset *)self assetDictionary] options:0 format:0 error:&v8];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v8 == 0;
  }

  if (!v5)
  {
    v6 = BCDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_13694(self, v6);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1370C(a2, self, v4);
  }

  return v4;
}

@end