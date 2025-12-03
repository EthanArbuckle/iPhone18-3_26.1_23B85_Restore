@interface TRICKAssetMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMetadata:(id)metadata;
- (TRICKAssetMetadata)initWithType:(unsigned __int8)type namespaceNameForEncryptionKey:(id)key treatmentIndex:(id)index downloadSize:(unint64_t)size compressionMode:(unint64_t)mode;
- (id)copyWithReplacementCompressionMode:(unint64_t)mode;
- (id)copyWithReplacementDownloadSize:(unint64_t)size;
- (id)copyWithReplacementNamespaceNameForEncryptionKey:(id)key;
- (id)copyWithReplacementTreatmentIndex:(id)index;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRICKAssetMetadata

- (TRICKAssetMetadata)initWithType:(unsigned __int8)type namespaceNameForEncryptionKey:(id)key treatmentIndex:(id)index downloadSize:(unint64_t)size compressionMode:(unint64_t)mode
{
  keyCopy = key;
  indexCopy = index;
  v18.receiver = self;
  v18.super_class = TRICKAssetMetadata;
  v15 = [(TRICKAssetMetadata *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = type;
    objc_storeStrong(&v15->_namespaceNameForEncryptionKey, key);
    objc_storeStrong(&v16->_treatmentIndex, index);
    v16->_downloadSize = size;
    v16->_compressionMode = mode;
  }

  return v16;
}

- (id)copyWithReplacementNamespaceNameForEncryptionKey:(id)key
{
  keyCopy = key;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type namespaceNameForEncryptionKey:keyCopy treatmentIndex:self->_treatmentIndex downloadSize:self->_downloadSize compressionMode:self->_compressionMode];

  return v5;
}

- (id)copyWithReplacementTreatmentIndex:(id)index
{
  indexCopy = index;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type namespaceNameForEncryptionKey:self->_namespaceNameForEncryptionKey treatmentIndex:indexCopy downloadSize:self->_downloadSize compressionMode:self->_compressionMode];

  return v5;
}

- (id)copyWithReplacementDownloadSize:(unint64_t)size
{
  v5 = objc_alloc(objc_opt_class());
  type = self->_type;
  namespaceNameForEncryptionKey = self->_namespaceNameForEncryptionKey;
  treatmentIndex = self->_treatmentIndex;
  compressionMode = self->_compressionMode;

  return [v5 initWithType:type namespaceNameForEncryptionKey:namespaceNameForEncryptionKey treatmentIndex:treatmentIndex downloadSize:size compressionMode:compressionMode];
}

- (id)copyWithReplacementCompressionMode:(unint64_t)mode
{
  v5 = objc_alloc(objc_opt_class());
  type = self->_type;
  namespaceNameForEncryptionKey = self->_namespaceNameForEncryptionKey;
  treatmentIndex = self->_treatmentIndex;
  downloadSize = self->_downloadSize;

  return [v5 initWithType:type namespaceNameForEncryptionKey:namespaceNameForEncryptionKey treatmentIndex:treatmentIndex downloadSize:downloadSize compressionMode:mode];
}

- (BOOL)isEqualToMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (!metadataCopy)
  {
    goto LABEL_11;
  }

  type = self->_type;
  if (type != [metadataCopy type])
  {
    goto LABEL_11;
  }

  v7 = self->_namespaceNameForEncryptionKey == 0;
  namespaceNameForEncryptionKey = [v5 namespaceNameForEncryptionKey];
  v9 = namespaceNameForEncryptionKey != 0;

  if (v7 == v9)
  {
    goto LABEL_11;
  }

  namespaceNameForEncryptionKey = self->_namespaceNameForEncryptionKey;
  if (namespaceNameForEncryptionKey)
  {
    namespaceNameForEncryptionKey2 = [v5 namespaceNameForEncryptionKey];
    v12 = [(NSString *)namespaceNameForEncryptionKey isEqual:namespaceNameForEncryptionKey2];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v13 = self->_treatmentIndex == 0;
  treatmentIndex = [v5 treatmentIndex];
  v15 = treatmentIndex != 0;

  if (v13 == v15)
  {
    goto LABEL_11;
  }

  treatmentIndex = self->_treatmentIndex;
  if (treatmentIndex)
  {
    treatmentIndex2 = [v5 treatmentIndex];
    v18 = [(TRITreatmentQualifiedAssetIndex *)treatmentIndex isEqual:treatmentIndex2];

    if (!v18)
    {
      goto LABEL_11;
    }
  }

  downloadSize = self->_downloadSize;
  if (downloadSize == [v5 downloadSize])
  {
    compressionMode = self->_compressionMode;
    v21 = compressionMode == [v5 compressionMode];
  }

  else
  {
LABEL_11:
    v21 = 0;
  }

  return v21;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRICKAssetMetadata *)self isEqualToMetadata:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [(NSString *)self->_namespaceNameForEncryptionKey hash]- type + 32 * type;
  v5 = [(TRITreatmentQualifiedAssetIndex *)self->_treatmentIndex hash];
  v6 = self->_downloadSize - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
  return self->_compressionMode - v6 + 32 * v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_type];
  namespaceNameForEncryptionKey = self->_namespaceNameForEncryptionKey;
  treatmentIndex = self->_treatmentIndex;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_downloadSize];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_compressionMode];
  v9 = [v3 initWithFormat:@"<TRICKAssetMetadata | type:%@ namespaceNameForEncryptionKey:%@ treatmentIndex:%@ downloadSize:%@ compressionMode:%@>", v4, namespaceNameForEncryptionKey, treatmentIndex, v7, v8];

  return v9;
}

@end