@interface TRIMAAssetMetadata
+ (id)metadataWithDownloadSize:(unint64_t)a3 namespaceNameForEncryptionKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMetadata:(id)a3;
- (TRIMAAssetMetadata)initWithDownloadSize:(unint64_t)a3 namespaceNameForEncryptionKey:(id)a4;
- (id)copyWithReplacementDownloadSize:(unint64_t)a3;
- (id)copyWithReplacementNamespaceNameForEncryptionKey:(id)a3;
- (id)description;
@end

@implementation TRIMAAssetMetadata

- (TRIMAAssetMetadata)initWithDownloadSize:(unint64_t)a3 namespaceNameForEncryptionKey:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TRIMAAssetMetadata;
  v8 = [(TRIMAAssetMetadata *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_downloadSize = a3;
    objc_storeStrong(&v8->_namespaceNameForEncryptionKey, a4);
  }

  return v9;
}

+ (id)metadataWithDownloadSize:(unint64_t)a3 namespaceNameForEncryptionKey:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithDownloadSize:a3 namespaceNameForEncryptionKey:v6];

  return v7;
}

- (id)copyWithReplacementDownloadSize:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  namespaceNameForEncryptionKey = self->_namespaceNameForEncryptionKey;

  return [v5 initWithDownloadSize:a3 namespaceNameForEncryptionKey:namespaceNameForEncryptionKey];
}

- (id)copyWithReplacementNamespaceNameForEncryptionKey:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDownloadSize:self->_downloadSize namespaceNameForEncryptionKey:v4];

  return v5;
}

- (BOOL)isEqualToMetadata:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (downloadSize = self->_downloadSize, downloadSize == [v4 downloadSize]) && (v7 = self->_namespaceNameForEncryptionKey == 0, objc_msgSend(v5, "namespaceNameForEncryptionKey"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 != 0, v8, v7 != v9))
  {
    namespaceNameForEncryptionKey = self->_namespaceNameForEncryptionKey;
    if (namespaceNameForEncryptionKey)
    {
      v11 = [v5 namespaceNameForEncryptionKey];
      v12 = [(NSString *)namespaceNameForEncryptionKey isEqual:v11];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIMAAssetMetadata *)self isEqualToMetadata:v5];
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