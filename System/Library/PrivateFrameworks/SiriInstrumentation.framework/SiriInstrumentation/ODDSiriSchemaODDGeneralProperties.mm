@interface ODDSiriSchemaODDGeneralProperties
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDGeneralProperties)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDGeneralProperties)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBuildInstallationTimestampInSecondsSince1970:(BOOL)a3;
- (void)setHasIsStoreDemoMode:(BOOL)a3;
- (void)setHasUTCOffset:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDGeneralProperties

- (ODDSiriSchemaODDGeneralProperties)initWithDictionary:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = ODDSiriSchemaODDGeneralProperties;
  v5 = [(ODDSiriSchemaODDGeneralProperties *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"systemLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaISOLocale alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDGeneralProperties *)v5 setSystemLocale:v7];
    }

    v26 = v6;
    v8 = [v4 objectForKeyedSubscript:@"storefrontId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDGeneralProperties setStorefrontId:](v5, "setStorefrontId:", [v8 intValue]);
    }

    v25 = v8;
    v9 = [v4 objectForKeyedSubscript:@"UTCOffset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDGeneralProperties setUTCOffset:](v5, "setUTCOffset:", [v9 intValue]);
    }

    v24 = v9;
    v10 = [v4 objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDGeneralProperties *)v5 setDeviceType:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"modelNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDGeneralProperties *)v5 setModelNumber:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"deviceOS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(ODDSiriSchemaODDGeneralProperties *)v5 setDeviceOS:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"isStoreDemoMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDGeneralProperties setIsStoreDemoMode:](v5, "setIsStoreDemoMode:", [v16 BOOLValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDGeneralProperties setBuildInstallationTimestampInSecondsSince1970:](v5, "setBuildInstallationTimestampInSecondsSince1970:", [v17 unsignedLongLongValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"assetSetStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[UAFSchemaUAFAssetSetStatus alloc] initWithDictionary:v18];
      [(ODDSiriSchemaODDGeneralProperties *)v5 setAssetSetStatus:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"dataCollectionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(ODDSiriSchemaODDGeneralProperties *)v5 setDataCollectionId:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDGeneralProperties)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDGeneralProperties *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDGeneralProperties *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [(ODDSiriSchemaODDGeneralProperties *)self UTCOffset]- 1;
    if (v4 > 0x25)
    {
      v5 = @"UTCOFFSET_UNKNOWN";
    }

    else
    {
      v5 = off_1E78DD708[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"UTCOffset"];
  }

  if (self->_assetSetStatus)
  {
    v6 = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"assetSetStatus"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"assetSetStatus"];
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDGeneralProperties buildInstallationTimestampInSecondsSince1970](self, "buildInstallationTimestampInSecondsSince1970")}];
    [v3 setObject:v9 forKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
  }

  if (self->_dataCollectionId)
  {
    v10 = [(ODDSiriSchemaODDGeneralProperties *)self dataCollectionId];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"dataCollectionId"];
  }

  if (self->_deviceOS)
  {
    v12 = [(ODDSiriSchemaODDGeneralProperties *)self deviceOS];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"deviceOS"];
  }

  if (self->_deviceType)
  {
    v14 = [(ODDSiriSchemaODDGeneralProperties *)self deviceType];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"deviceType"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDGeneralProperties isStoreDemoMode](self, "isStoreDemoMode")}];
    [v3 setObject:v16 forKeyedSubscript:@"isStoreDemoMode"];
  }

  if (self->_modelNumber)
  {
    v17 = [(ODDSiriSchemaODDGeneralProperties *)self modelNumber];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"modelNumber"];
  }

  if (*&self->_has)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[ODDSiriSchemaODDGeneralProperties storefrontId](self, "storefrontId")}];
    [v3 setObject:v19 forKeyedSubscript:@"storefrontId"];
  }

  if (self->_systemLocale)
  {
    v20 = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"systemLocale"];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v22 forKeyedSubscript:@"systemLocale"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaISOLocale *)self->_systemLocale hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_storefrontId;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_UTCOffset;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_deviceType hash];
  v7 = [(NSString *)self->_modelNumber hash];
  v8 = [(NSString *)self->_deviceOS hash];
  if ((*&self->_has & 4) != 0)
  {
    v9 = 2654435761 * self->_isStoreDemoMode;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v10 = 2654435761u * self->_buildInstallationTimestampInSecondsSince1970;
LABEL_11:
  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v12 = v10 ^ [(UAFSchemaUAFAssetSetStatus *)self->_assetSetStatus hash];
  return v11 ^ v12 ^ [(NSString *)self->_dataCollectionId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  v5 = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];
  v6 = [v4 systemLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v7 = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];
    v10 = [v4 systemLocale];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[80];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_46;
  }

  if (*&has)
  {
    storefrontId = self->_storefrontId;
    if (storefrontId != [v4 storefrontId])
    {
      goto LABEL_46;
    }

    has = self->_has;
    v13 = v4[80];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_46;
  }

  if (v15)
  {
    UTCOffset = self->_UTCOffset;
    if (UTCOffset != [v4 UTCOffset])
    {
      goto LABEL_46;
    }
  }

  v5 = [(ODDSiriSchemaODDGeneralProperties *)self deviceType];
  v6 = [v4 deviceType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v17 = [(ODDSiriSchemaODDGeneralProperties *)self deviceType];
  if (v17)
  {
    v18 = v17;
    v19 = [(ODDSiriSchemaODDGeneralProperties *)self deviceType];
    v20 = [v4 deviceType];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDGeneralProperties *)self modelNumber];
  v6 = [v4 modelNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v22 = [(ODDSiriSchemaODDGeneralProperties *)self modelNumber];
  if (v22)
  {
    v23 = v22;
    v24 = [(ODDSiriSchemaODDGeneralProperties *)self modelNumber];
    v25 = [v4 modelNumber];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDGeneralProperties *)self deviceOS];
  v6 = [v4 deviceOS];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v27 = [(ODDSiriSchemaODDGeneralProperties *)self deviceOS];
  if (v27)
  {
    v28 = v27;
    v29 = [(ODDSiriSchemaODDGeneralProperties *)self deviceOS];
    v30 = [v4 deviceOS];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v32 = self->_has;
  v33 = (*&v32 >> 2) & 1;
  v34 = v4[80];
  if (v33 != ((v34 >> 2) & 1))
  {
    goto LABEL_46;
  }

  if (v33)
  {
    isStoreDemoMode = self->_isStoreDemoMode;
    if (isStoreDemoMode != [v4 isStoreDemoMode])
    {
      goto LABEL_46;
    }

    v32 = self->_has;
    v34 = v4[80];
  }

  v36 = (*&v32 >> 3) & 1;
  if (v36 != ((v34 >> 3) & 1))
  {
    goto LABEL_46;
  }

  if (v36)
  {
    buildInstallationTimestampInSecondsSince1970 = self->_buildInstallationTimestampInSecondsSince1970;
    if (buildInstallationTimestampInSecondsSince1970 != [v4 buildInstallationTimestampInSecondsSince1970])
    {
      goto LABEL_46;
    }
  }

  v5 = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];
  v6 = [v4 assetSetStatus];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v38 = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];
  if (v38)
  {
    v39 = v38;
    v40 = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];
    v41 = [v4 assetSetStatus];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDGeneralProperties *)self dataCollectionId];
  v6 = [v4 dataCollectionId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_45:

    goto LABEL_46;
  }

  v43 = [(ODDSiriSchemaODDGeneralProperties *)self dataCollectionId];
  if (!v43)
  {

LABEL_49:
    v48 = 1;
    goto LABEL_47;
  }

  v44 = v43;
  v45 = [(ODDSiriSchemaODDGeneralProperties *)self dataCollectionId];
  v46 = [v4 dataCollectionId];
  v47 = [v45 isEqual:v46];

  if (v47)
  {
    goto LABEL_49;
  }

LABEL_46:
  v48 = 0;
LABEL_47:

  return v48;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v7 = [(ODDSiriSchemaODDGeneralProperties *)self deviceType];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(ODDSiriSchemaODDGeneralProperties *)self modelNumber];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(ODDSiriSchemaODDGeneralProperties *)self deviceOS];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((v10 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_has;
  }

  if ((v10 & 8) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v11 = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];

  if (v11)
  {
    v12 = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(ODDSiriSchemaODDGeneralProperties *)self dataCollectionId];

  v14 = v15;
  if (v13)
  {
    PBDataWriterWriteStringField();
    v14 = v15;
  }
}

- (void)setHasBuildInstallationTimestampInSecondsSince1970:(BOOL)a3
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

- (void)setHasIsStoreDemoMode:(BOOL)a3
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

- (void)setHasUTCOffset:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDGeneralProperties;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDGeneralProperties *)self deleteSystemLocale];
  }

  v9 = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDGeneralProperties *)self deleteAssetSetStatus];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end