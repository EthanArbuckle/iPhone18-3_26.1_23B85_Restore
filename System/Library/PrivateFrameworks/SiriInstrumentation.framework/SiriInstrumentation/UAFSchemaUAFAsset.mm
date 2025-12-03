@interface UAFSchemaUAFAsset
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (UAFSchemaUAFAsset)initWithDictionary:(id)dictionary;
- (UAFSchemaUAFAsset)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAssetDownloadSizeInBytes:(BOOL)bytes;
- (void)setHasAssetSizeOnDisk:(BOOL)disk;
- (void)setHasAssetSource:(BOOL)source;
- (void)setHasAssetUnarchivedSizeInBytes:(BOOL)bytes;
- (void)setHasIsAssetPathValid:(BOOL)valid;
- (void)writeTo:(id)to;
@end

@implementation UAFSchemaUAFAsset

- (UAFSchemaUAFAsset)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = UAFSchemaUAFAsset;
  v5 = [(UAFSchemaUAFAsset *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(UAFSchemaUAFAsset *)v5 setAssetName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assetSpecifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(UAFSchemaUAFAsset *)v5 setAssetSpecifier:v9];
    }

    v22 = v8;
    v23 = v6;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"assetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(UAFSchemaUAFAsset *)v5 setAssetVersion:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"assetLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAsset setAssetLocale:](v5, "setAssetLocale:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"assetSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAsset setAssetSource:](v5, "setAssetSource:", [v13 intValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"assetSizeOnDisk"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAsset setAssetSizeOnDisk:](v5, "setAssetSizeOnDisk:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"isAssetPathValid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAsset setIsAssetPathValid:](v5, "setIsAssetPathValid:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"assetPath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(UAFSchemaUAFAsset *)v5 setAssetPath:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"assetDownloadSizeInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAsset setAssetDownloadSizeInBytes:](v5, "setAssetDownloadSizeInBytes:", [v18 unsignedLongLongValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"assetUnarchivedSizeInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAsset setAssetUnarchivedSizeInBytes:](v5, "setAssetUnarchivedSizeInBytes:", [v19 unsignedLongLongValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (UAFSchemaUAFAsset)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(UAFSchemaUAFAsset *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(UAFSchemaUAFAsset *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[UAFSchemaUAFAsset assetDownloadSizeInBytes](self, "assetDownloadSizeInBytes")}];
    [dictionary setObject:v5 forKeyedSubscript:@"assetDownloadSizeInBytes"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [(UAFSchemaUAFAsset *)self assetLocale]- 1;
    if (v6 > 0x3D)
    {
      v7 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v7 = off_1E78E85F0[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"assetLocale"];
  }

  if (self->_assetName)
  {
    assetName = [(UAFSchemaUAFAsset *)self assetName];
    v9 = [assetName copy];
    [dictionary setObject:v9 forKeyedSubscript:@"assetName"];
  }

  if (self->_assetPath)
  {
    assetPath = [(UAFSchemaUAFAsset *)self assetPath];
    v11 = [assetPath copy];
    [dictionary setObject:v11 forKeyedSubscript:@"assetPath"];
  }

  v12 = self->_has;
  if ((v12 & 4) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[UAFSchemaUAFAsset assetSizeOnDisk](self, "assetSizeOnDisk")}];
    [dictionary setObject:v13 forKeyedSubscript:@"assetSizeOnDisk"];

    v12 = self->_has;
  }

  if ((v12 & 2) != 0)
  {
    v14 = [(UAFSchemaUAFAsset *)self assetSource]- 1;
    if (v14 > 3)
    {
      v15 = @"UAFASSETSOURCE_UNKNOWN";
    }

    else
    {
      v15 = off_1E78E87E0[v14];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"assetSource"];
  }

  if (self->_assetSpecifier)
  {
    assetSpecifier = [(UAFSchemaUAFAsset *)self assetSpecifier];
    v17 = [assetSpecifier copy];
    [dictionary setObject:v17 forKeyedSubscript:@"assetSpecifier"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[UAFSchemaUAFAsset assetUnarchivedSizeInBytes](self, "assetUnarchivedSizeInBytes")}];
    [dictionary setObject:v18 forKeyedSubscript:@"assetUnarchivedSizeInBytes"];
  }

  if (self->_assetVersion)
  {
    assetVersion = [(UAFSchemaUAFAsset *)self assetVersion];
    v20 = [assetVersion copy];
    [dictionary setObject:v20 forKeyedSubscript:@"assetVersion"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[UAFSchemaUAFAsset isAssetPathValid](self, "isAssetPathValid")}];
    [dictionary setObject:v21 forKeyedSubscript:@"isAssetPathValid"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_assetName hash];
  v4 = [(NSString *)self->_assetSpecifier hash];
  v5 = [(NSString *)self->_assetVersion hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_assetLocale;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_assetSource;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_assetSizeOnDisk;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v9 = 2654435761 * self->_isAssetPathValid;
    goto LABEL_10;
  }

LABEL_9:
  v9 = 0;
LABEL_10:
  v10 = [(NSString *)self->_assetPath hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v11 = 2654435761u * self->_assetDownloadSizeInBytes;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v12 = 2654435761u * self->_assetUnarchivedSizeInBytes;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  assetName = [(UAFSchemaUAFAsset *)self assetName];
  assetName2 = [equalCopy assetName];
  if ((assetName != 0) == (assetName2 == 0))
  {
    goto LABEL_36;
  }

  assetName3 = [(UAFSchemaUAFAsset *)self assetName];
  if (assetName3)
  {
    v8 = assetName3;
    assetName4 = [(UAFSchemaUAFAsset *)self assetName];
    assetName5 = [equalCopy assetName];
    v11 = [assetName4 isEqual:assetName5];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  assetName = [(UAFSchemaUAFAsset *)self assetSpecifier];
  assetName2 = [equalCopy assetSpecifier];
  if ((assetName != 0) == (assetName2 == 0))
  {
    goto LABEL_36;
  }

  assetSpecifier = [(UAFSchemaUAFAsset *)self assetSpecifier];
  if (assetSpecifier)
  {
    v13 = assetSpecifier;
    assetSpecifier2 = [(UAFSchemaUAFAsset *)self assetSpecifier];
    assetSpecifier3 = [equalCopy assetSpecifier];
    v16 = [assetSpecifier2 isEqual:assetSpecifier3];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  assetName = [(UAFSchemaUAFAsset *)self assetVersion];
  assetName2 = [equalCopy assetVersion];
  if ((assetName != 0) == (assetName2 == 0))
  {
    goto LABEL_36;
  }

  assetVersion = [(UAFSchemaUAFAsset *)self assetVersion];
  if (assetVersion)
  {
    v18 = assetVersion;
    assetVersion2 = [(UAFSchemaUAFAsset *)self assetVersion];
    assetVersion3 = [equalCopy assetVersion];
    v21 = [assetVersion2 isEqual:assetVersion3];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = equalCopy[72];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_37;
  }

  if (*&has)
  {
    assetLocale = self->_assetLocale;
    if (assetLocale != [equalCopy assetLocale])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v23 = equalCopy[72];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_37;
  }

  if (v25)
  {
    assetSource = self->_assetSource;
    if (assetSource != [equalCopy assetSource])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v23 = equalCopy[72];
  }

  v27 = (*&has >> 2) & 1;
  if (v27 != ((v23 >> 2) & 1))
  {
    goto LABEL_37;
  }

  if (v27)
  {
    assetSizeOnDisk = self->_assetSizeOnDisk;
    if (assetSizeOnDisk != [equalCopy assetSizeOnDisk])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v23 = equalCopy[72];
  }

  v29 = (*&has >> 3) & 1;
  if (v29 != ((v23 >> 3) & 1))
  {
    goto LABEL_37;
  }

  if (v29)
  {
    isAssetPathValid = self->_isAssetPathValid;
    if (isAssetPathValid != [equalCopy isAssetPathValid])
    {
      goto LABEL_37;
    }
  }

  assetName = [(UAFSchemaUAFAsset *)self assetPath];
  assetName2 = [equalCopy assetPath];
  if ((assetName != 0) == (assetName2 == 0))
  {
LABEL_36:

    goto LABEL_37;
  }

  assetPath = [(UAFSchemaUAFAsset *)self assetPath];
  if (assetPath)
  {
    v32 = assetPath;
    assetPath2 = [(UAFSchemaUAFAsset *)self assetPath];
    assetPath3 = [equalCopy assetPath];
    v35 = [assetPath2 isEqual:assetPath3];

    if (!v35)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v38 = self->_has;
  v39 = (*&v38 >> 4) & 1;
  v40 = equalCopy[72];
  if (v39 == ((v40 >> 4) & 1))
  {
    if (v39)
    {
      assetDownloadSizeInBytes = self->_assetDownloadSizeInBytes;
      if (assetDownloadSizeInBytes != [equalCopy assetDownloadSizeInBytes])
      {
        goto LABEL_37;
      }

      v38 = self->_has;
      v40 = equalCopy[72];
    }

    v42 = (*&v38 >> 5) & 1;
    if (v42 == ((v40 >> 5) & 1))
    {
      if (!v42 || (assetUnarchivedSizeInBytes = self->_assetUnarchivedSizeInBytes, assetUnarchivedSizeInBytes == [equalCopy assetUnarchivedSizeInBytes]))
      {
        v36 = 1;
        goto LABEL_38;
      }
    }
  }

LABEL_37:
  v36 = 0;
LABEL_38:

  return v36;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  assetName = [(UAFSchemaUAFAsset *)self assetName];

  if (assetName)
  {
    PBDataWriterWriteStringField();
  }

  assetSpecifier = [(UAFSchemaUAFAsset *)self assetSpecifier];

  if (assetSpecifier)
  {
    PBDataWriterWriteStringField();
  }

  assetVersion = [(UAFSchemaUAFAsset *)self assetVersion];

  if (assetVersion)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    PBDataWriterWriteBOOLField();
  }

LABEL_12:
  assetPath = [(UAFSchemaUAFAsset *)self assetPath];

  if (assetPath)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  v10 = toCopy;
  if ((v9 & 0x10) != 0)
  {
    PBDataWriterWriteUint64Field();
    v10 = toCopy;
    v9 = self->_has;
  }

  if ((v9 & 0x20) != 0)
  {
    PBDataWriterWriteUint64Field();
    v10 = toCopy;
  }
}

- (void)setHasAssetUnarchivedSizeInBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasAssetDownloadSizeInBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsAssetPathValid:(BOOL)valid
{
  if (valid)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAssetSizeOnDisk:(BOOL)disk
{
  if (disk)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAssetSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end