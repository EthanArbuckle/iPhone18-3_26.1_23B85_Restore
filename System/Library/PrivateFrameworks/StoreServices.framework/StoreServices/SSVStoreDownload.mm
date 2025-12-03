@interface SSVStoreDownload
- (SSVStoreDownload)initWithDictionary:(id)dictionary;
@end

@implementation SSVStoreDownload

- (SSVStoreDownload)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SSVStoreDownload;
  v5 = [(SSVStoreDownload *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    properties = v5->_properties;
    v5->_properties = v6;
  }

  return v5;
}

@end