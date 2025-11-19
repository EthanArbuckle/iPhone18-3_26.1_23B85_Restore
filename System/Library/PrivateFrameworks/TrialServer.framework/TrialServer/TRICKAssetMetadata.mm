@interface TRICKAssetMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMetadata:(id)a3;
- (TRICKAssetMetadata)initWithType:(unsigned __int8)a3 namespaceNameForEncryptionKey:(id)a4 treatmentIndex:(id)a5 downloadSize:(unint64_t)a6 compressionMode:(unint64_t)a7;
- (id)copyWithReplacementCompressionMode:(unint64_t)a3;
- (id)copyWithReplacementDownloadSize:(unint64_t)a3;
- (id)copyWithReplacementNamespaceNameForEncryptionKey:(id)a3;
- (id)copyWithReplacementTreatmentIndex:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRICKAssetMetadata

- (TRICKAssetMetadata)initWithType:(unsigned __int8)a3 namespaceNameForEncryptionKey:(id)a4 treatmentIndex:(id)a5 downloadSize:(unint64_t)a6 compressionMode:(unint64_t)a7
{
  v13 = a4;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = TRICKAssetMetadata;
  v15 = [(TRICKAssetMetadata *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = a3;
    objc_storeStrong(&v15->_namespaceNameForEncryptionKey, a4);
    objc_storeStrong(&v16->_treatmentIndex, a5);
    v16->_downloadSize = a6;
    v16->_compressionMode = a7;
  }

  return v16;
}

- (id)copyWithReplacementNamespaceNameForEncryptionKey:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type namespaceNameForEncryptionKey:v4 treatmentIndex:self->_treatmentIndex downloadSize:self->_downloadSize compressionMode:self->_compressionMode];

  return v5;
}

- (id)copyWithReplacementTreatmentIndex:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type namespaceNameForEncryptionKey:self->_namespaceNameForEncryptionKey treatmentIndex:v4 downloadSize:self->_downloadSize compressionMode:self->_compressionMode];

  return v5;
}

- (id)copyWithReplacementDownloadSize:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  type = self->_type;
  namespaceNameForEncryptionKey = self->_namespaceNameForEncryptionKey;
  treatmentIndex = self->_treatmentIndex;
  compressionMode = self->_compressionMode;

  return [v5 initWithType:type namespaceNameForEncryptionKey:namespaceNameForEncryptionKey treatmentIndex:treatmentIndex downloadSize:a3 compressionMode:compressionMode];
}

- (id)copyWithReplacementCompressionMode:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  type = self->_type;
  namespaceNameForEncryptionKey = self->_namespaceNameForEncryptionKey;
  treatmentIndex = self->_treatmentIndex;
  downloadSize = self->_downloadSize;

  return [v5 initWithType:type namespaceNameForEncryptionKey:namespaceNameForEncryptionKey treatmentIndex:treatmentIndex downloadSize:downloadSize compressionMode:a3];
}

- (BOOL)isEqualToMetadata:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  type = self->_type;
  if (type != [v4 type])
  {
    goto LABEL_11;
  }

  v7 = self->_namespaceNameForEncryptionKey == 0;
  v8 = [v5 namespaceNameForEncryptionKey];
  v9 = v8 != 0;

  if (v7 == v9)
  {
    goto LABEL_11;
  }

  namespaceNameForEncryptionKey = self->_namespaceNameForEncryptionKey;
  if (namespaceNameForEncryptionKey)
  {
    v11 = [v5 namespaceNameForEncryptionKey];
    v12 = [(NSString *)namespaceNameForEncryptionKey isEqual:v11];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v13 = self->_treatmentIndex == 0;
  v14 = [v5 treatmentIndex];
  v15 = v14 != 0;

  if (v13 == v15)
  {
    goto LABEL_11;
  }

  treatmentIndex = self->_treatmentIndex;
  if (treatmentIndex)
  {
    v17 = [v5 treatmentIndex];
    v18 = [(TRITreatmentQualifiedAssetIndex *)treatmentIndex isEqual:v17];

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRICKAssetMetadata *)self isEqualToMetadata:v5];
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