@interface TRIMAAssetMetadata
+ (id)metadataWithDownloadSize:(unint64_t)size namespaceNameForEncryptionKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMetadata:(id)metadata;
- (TRIMAAssetMetadata)initWithDownloadSize:(unint64_t)size namespaceNameForEncryptionKey:(id)key;
- (id)copyWithReplacementDownloadSize:(unint64_t)size;
- (id)copyWithReplacementNamespaceNameForEncryptionKey:(id)key;
- (id)description;
@end

@implementation TRIMAAssetMetadata

- (TRIMAAssetMetadata)initWithDownloadSize:(unint64_t)size namespaceNameForEncryptionKey:(id)key
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = TRIMAAssetMetadata;
  v8 = [(TRIMAAssetMetadata *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_downloadSize = size;
    objc_storeStrong(&v8->_namespaceNameForEncryptionKey, key);
  }

  return v9;
}

+ (id)metadataWithDownloadSize:(unint64_t)size namespaceNameForEncryptionKey:(id)key
{
  keyCopy = key;
  v7 = [[self alloc] initWithDownloadSize:size namespaceNameForEncryptionKey:keyCopy];

  return v7;
}

- (id)copyWithReplacementDownloadSize:(unint64_t)size
{
  v5 = objc_alloc(objc_opt_class());
  namespaceNameForEncryptionKey = self->_namespaceNameForEncryptionKey;

  return [v5 initWithDownloadSize:size namespaceNameForEncryptionKey:namespaceNameForEncryptionKey];
}

- (id)copyWithReplacementNamespaceNameForEncryptionKey:(id)key
{
  keyCopy = key;
  v5 = [objc_alloc(objc_opt_class()) initWithDownloadSize:self->_downloadSize namespaceNameForEncryptionKey:keyCopy];

  return v5;
}

- (BOOL)isEqualToMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (metadataCopy && (downloadSize = self->_downloadSize, downloadSize == [metadataCopy downloadSize]) && (v7 = self->_namespaceNameForEncryptionKey == 0, objc_msgSend(v5, "namespaceNameForEncryptionKey"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 != 0, v8, v7 != v9))
  {
    namespaceNameForEncryptionKey = self->_namespaceNameForEncryptionKey;
    if (namespaceNameForEncryptionKey)
    {
      namespaceNameForEncryptionKey = [v5 namespaceNameForEncryptionKey];
      v12 = [(NSString *)namespaceNameForEncryptionKey isEqual:namespaceNameForEncryptionKey];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIMAAssetMetadata *)self isEqualToMetadata:v5];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_downloadSize];
  v5 = [v3 initWithFormat:@"<TRIMAAssetMetadata | downloadSize:%@ namespaceNameForEncryptionKey:%@>", v4, self->_namespaceNameForEncryptionKey];

  return v5;
}

@end