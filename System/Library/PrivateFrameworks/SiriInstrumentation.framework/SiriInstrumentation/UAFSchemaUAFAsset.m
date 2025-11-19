@interface UAFSchemaUAFAsset
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (UAFSchemaUAFAsset)initWithDictionary:(id)a3;
- (UAFSchemaUAFAsset)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAssetDownloadSizeInBytes:(BOOL)a3;
- (void)setHasAssetSizeOnDisk:(BOOL)a3;
- (void)setHasAssetSource:(BOOL)a3;
- (void)setHasAssetUnarchivedSizeInBytes:(BOOL)a3;
- (void)setHasIsAssetPathValid:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation UAFSchemaUAFAsset

- (UAFSchemaUAFAsset)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = UAFSchemaUAFAsset;
  v5 = [(UAFSchemaUAFAsset *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"assetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(UAFSchemaUAFAsset *)v5 setAssetName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"assetSpecifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(UAFSchemaUAFAsset *)v5 setAssetSpecifier:v9];
    }

    v22 = v8;
    v23 = v6;
    v10 = [v4 objectForKeyedSubscript:@"assetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(UAFSchemaUAFAsset *)v5 setAssetVersion:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"assetLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAsset setAssetLocale:](v5, "setAssetLocale:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"assetSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAsset setAssetSource:](v5, "setAssetSource:", [v13 intValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"assetSizeOnDisk"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAsset setAssetSizeOnDisk:](v5, "setAssetSizeOnDisk:", [v14 unsignedIntValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"isAssetPathValid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAsset setIsAssetPathValid:](v5, "setIsAssetPathValid:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"assetPath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(UAFSchemaUAFAsset *)v5 setAssetPath:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"assetDownloadSizeInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAsset setAssetDownloadSizeInBytes:](v5, "setAssetDownloadSizeInBytes:", [v18 unsignedLongLongValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"assetUnarchivedSizeInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAsset setAssetUnarchivedSizeInBytes:](v5, "setAssetUnarchivedSizeInBytes:", [v19 unsignedLongLongValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (UAFSchemaUAFAsset)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(UAFSchemaUAFAsset *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(UAFSchemaUAFAsset *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[UAFSchemaUAFAsset assetDownloadSizeInBytes](self, "assetDownloadSizeInBytes")}];
    [v3 setObject:v5 forKeyedSubscript:@"assetDownloadSizeInBytes"];

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

    [v3 setObject:v7 forKeyedSubscript:@"assetLocale"];
  }

  if (self->_assetName)
  {
    v8 = [(UAFSchemaUAFAsset *)self assetName];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"assetName"];
  }

  if (self->_assetPath)
  {
    v10 = [(UAFSchemaUAFAsset *)self assetPath];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"assetPath"];
  }

  v12 = self->_has;
  if ((v12 & 4) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[UAFSchemaUAFAsset assetSizeOnDisk](self, "assetSizeOnDisk")}];
    [v3 setObject:v13 forKeyedSubscript:@"assetSizeOnDisk"];

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

    [v3 setObject:v15 forKeyedSubscript:@"assetSource"];
  }

  if (self->_assetSpecifier)
  {
    v16 = [(UAFSchemaUAFAsset *)self assetSpecifier];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"assetSpecifier"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[UAFSchemaUAFAsset assetUnarchivedSizeInBytes](self, "assetUnarchivedSizeInBytes")}];
    [v3 setObject:v18 forKeyedSubscript:@"assetUnarchivedSizeInBytes"];
  }

  if (self->_assetVersion)
  {
    v19 = [(UAFSchemaUAFAsset *)self assetVersion];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"assetVersion"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[UAFSchemaUAFAsset isAssetPathValid](self, "isAssetPathValid")}];
    [v3 setObject:v21 forKeyedSubscript:@"isAssetPathValid"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = [(UAFSchemaUAFAsset *)self assetName];
  v6 = [v4 assetName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v7 = [(UAFSchemaUAFAsset *)self assetName];
  if (v7)
  {
    v8 = v7;
    v9 = [(UAFSchemaUAFAsset *)self assetName];
    v10 = [v4 assetName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(UAFSchemaUAFAsset *)self assetSpecifier];
  v6 = [v4 assetSpecifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v12 = [(UAFSchemaUAFAsset *)self assetSpecifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(UAFSchemaUAFAsset *)self assetSpecifier];
    v15 = [v4 assetSpecifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(UAFSchemaUAFAsset *)self assetVersion];
  v6 = [v4 assetVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v17 = [(UAFSchemaUAFAsset *)self assetVersion];
  if (v17)
  {
    v18 = v17;
    v19 = [(UAFSchemaUAFAsset *)self assetVersion];
    v20 = [v4 assetVersion];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = v4[72];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_37;
  }

  if (*&has)
  {
    assetLocale = self->_assetLocale;
    if (assetLocale != [v4 assetLocale])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v23 = v4[72];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_37;
  }

  if (v25)
  {
    assetSource = self->_assetSource;
    if (assetSource != [v4 assetSource])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v23 = v4[72];
  }

  v27 = (*&has >> 2) & 1;
  if (v27 != ((v23 >> 2) & 1))
  {
    goto LABEL_37;
  }

  if (v27)
  {
    assetSizeOnDisk = self->_assetSizeOnDisk;
    if (assetSizeOnDisk != [v4 assetSizeOnDisk])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v23 = v4[72];
  }

  v29 = (*&has >> 3) & 1;
  if (v29 != ((v23 >> 3) & 1))
  {
    goto LABEL_37;
  }

  if (v29)
  {
    isAssetPathValid = self->_isAssetPathValid;
    if (isAssetPathValid != [v4 isAssetPathValid])
    {
      goto LABEL_37;
    }
  }

  v5 = [(UAFSchemaUAFAsset *)self assetPath];
  v6 = [v4 assetPath];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_36:

    goto LABEL_37;
  }

  v31 = [(UAFSchemaUAFAsset *)self assetPath];
  if (v31)
  {
    v32 = v31;
    v33 = [(UAFSchemaUAFAsset *)self assetPath];
    v34 = [v4 assetPath];
    v35 = [v33 isEqual:v34];

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
  v40 = v4[72];
  if (v39 == ((v40 >> 4) & 1))
  {
    if (v39)
    {
      assetDownloadSizeInBytes = self->_assetDownloadSizeInBytes;
      if (assetDownloadSizeInBytes != [v4 assetDownloadSizeInBytes])
      {
        goto LABEL_37;
      }

      v38 = self->_has;
      v40 = v4[72];
    }

    v42 = (*&v38 >> 5) & 1;
    if (v42 == ((v40 >> 5) & 1))
    {
      if (!v42 || (assetUnarchivedSizeInBytes = self->_assetUnarchivedSizeInBytes, assetUnarchivedSizeInBytes == [v4 assetUnarchivedSizeInBytes]))
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

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(UAFSchemaUAFAsset *)self assetName];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(UAFSchemaUAFAsset *)self assetSpecifier];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(UAFSchemaUAFAsset *)self assetVersion];

  if (v6)
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
  v8 = [(UAFSchemaUAFAsset *)self assetPath];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  v10 = v11;
  if ((v9 & 0x10) != 0)
  {
    PBDataWriterWriteUint64Field();
    v10 = v11;
    v9 = self->_has;
  }

  if ((v9 & 0x20) != 0)
  {
    PBDataWriterWriteUint64Field();
    v10 = v11;
  }
}

- (void)setHasAssetUnarchivedSizeInBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasAssetDownloadSizeInBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsAssetPathValid:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAssetSizeOnDisk:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAssetSource:(BOOL)a3
{
  if (a3)
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