@interface SSVStoreDownload
- (SSVStoreDownload)initWithDictionary:(id)a3;
@end

@implementation SSVStoreDownload

- (SSVStoreDownload)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SSVStoreDownload;
  v5 = [(SSVStoreDownload *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    properties = v5->_properties;
    v5->_properties = v6;
  }

  return v5;
}

@end