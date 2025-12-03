@interface ODDSiriSchemaODDGeneralProperties
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDGeneralProperties)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDGeneralProperties)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBuildInstallationTimestampInSecondsSince1970:(BOOL)since1970;
- (void)setHasIsStoreDemoMode:(BOOL)mode;
- (void)setHasUTCOffset:(BOOL)offset;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDGeneralProperties

- (ODDSiriSchemaODDGeneralProperties)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = ODDSiriSchemaODDGeneralProperties;
  v5 = [(ODDSiriSchemaODDGeneralProperties *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"systemLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaISOLocale alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDGeneralProperties *)v5 setSystemLocale:v7];
    }

    v26 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"storefrontId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDGeneralProperties setStorefrontId:](v5, "setStorefrontId:", [v8 intValue]);
    }

    v25 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"UTCOffset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDGeneralProperties setUTCOffset:](v5, "setUTCOffset:", [v9 intValue]);
    }

    v24 = v9;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDGeneralProperties *)v5 setDeviceType:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"modelNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDGeneralProperties *)v5 setModelNumber:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"deviceOS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(ODDSiriSchemaODDGeneralProperties *)v5 setDeviceOS:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"isStoreDemoMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDGeneralProperties setIsStoreDemoMode:](v5, "setIsStoreDemoMode:", [v16 BOOLValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDGeneralProperties setBuildInstallationTimestampInSecondsSince1970:](v5, "setBuildInstallationTimestampInSecondsSince1970:", [v17 unsignedLongLongValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"assetSetStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[UAFSchemaUAFAssetSetStatus alloc] initWithDictionary:v18];
      [(ODDSiriSchemaODDGeneralProperties *)v5 setAssetSetStatus:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"dataCollectionId"];
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

- (ODDSiriSchemaODDGeneralProperties)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDGeneralProperties *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDGeneralProperties *)self dictionaryRepresentation];
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

    [dictionary setObject:v5 forKeyedSubscript:@"UTCOffset"];
  }

  if (self->_assetSetStatus)
  {
    assetSetStatus = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];
    dictionaryRepresentation = [assetSetStatus dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"assetSetStatus"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"assetSetStatus"];
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDGeneralProperties buildInstallationTimestampInSecondsSince1970](self, "buildInstallationTimestampInSecondsSince1970")}];
    [dictionary setObject:v9 forKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
  }

  if (self->_dataCollectionId)
  {
    dataCollectionId = [(ODDSiriSchemaODDGeneralProperties *)self dataCollectionId];
    v11 = [dataCollectionId copy];
    [dictionary setObject:v11 forKeyedSubscript:@"dataCollectionId"];
  }

  if (self->_deviceOS)
  {
    deviceOS = [(ODDSiriSchemaODDGeneralProperties *)self deviceOS];
    v13 = [deviceOS copy];
    [dictionary setObject:v13 forKeyedSubscript:@"deviceOS"];
  }

  if (self->_deviceType)
  {
    deviceType = [(ODDSiriSchemaODDGeneralProperties *)self deviceType];
    v15 = [deviceType copy];
    [dictionary setObject:v15 forKeyedSubscript:@"deviceType"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDGeneralProperties isStoreDemoMode](self, "isStoreDemoMode")}];
    [dictionary setObject:v16 forKeyedSubscript:@"isStoreDemoMode"];
  }

  if (self->_modelNumber)
  {
    modelNumber = [(ODDSiriSchemaODDGeneralProperties *)self modelNumber];
    v18 = [modelNumber copy];
    [dictionary setObject:v18 forKeyedSubscript:@"modelNumber"];
  }

  if (*&self->_has)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[ODDSiriSchemaODDGeneralProperties storefrontId](self, "storefrontId")}];
    [dictionary setObject:v19 forKeyedSubscript:@"storefrontId"];
  }

  if (self->_systemLocale)
  {
    systemLocale = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];
    dictionaryRepresentation2 = [systemLocale dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"systemLocale"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"systemLocale"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  systemLocale = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];
  systemLocale2 = [equalCopy systemLocale];
  if ((systemLocale != 0) == (systemLocale2 == 0))
  {
    goto LABEL_45;
  }

  systemLocale3 = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];
  if (systemLocale3)
  {
    v8 = systemLocale3;
    systemLocale4 = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];
    systemLocale5 = [equalCopy systemLocale];
    v11 = [systemLocale4 isEqual:systemLocale5];

    if (!v11)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[80];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_46;
  }

  if (*&has)
  {
    storefrontId = self->_storefrontId;
    if (storefrontId != [equalCopy storefrontId])
    {
      goto LABEL_46;
    }

    has = self->_has;
    v13 = equalCopy[80];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_46;
  }

  if (v15)
  {
    UTCOffset = self->_UTCOffset;
    if (UTCOffset != [equalCopy UTCOffset])
    {
      goto LABEL_46;
    }
  }

  systemLocale = [(ODDSiriSchemaODDGeneralProperties *)self deviceType];
  systemLocale2 = [equalCopy deviceType];
  if ((systemLocale != 0) == (systemLocale2 == 0))
  {
    goto LABEL_45;
  }

  deviceType = [(ODDSiriSchemaODDGeneralProperties *)self deviceType];
  if (deviceType)
  {
    v18 = deviceType;
    deviceType2 = [(ODDSiriSchemaODDGeneralProperties *)self deviceType];
    deviceType3 = [equalCopy deviceType];
    v21 = [deviceType2 isEqual:deviceType3];

    if (!v21)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  systemLocale = [(ODDSiriSchemaODDGeneralProperties *)self modelNumber];
  systemLocale2 = [equalCopy modelNumber];
  if ((systemLocale != 0) == (systemLocale2 == 0))
  {
    goto LABEL_45;
  }

  modelNumber = [(ODDSiriSchemaODDGeneralProperties *)self modelNumber];
  if (modelNumber)
  {
    v23 = modelNumber;
    modelNumber2 = [(ODDSiriSchemaODDGeneralProperties *)self modelNumber];
    modelNumber3 = [equalCopy modelNumber];
    v26 = [modelNumber2 isEqual:modelNumber3];

    if (!v26)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  systemLocale = [(ODDSiriSchemaODDGeneralProperties *)self deviceOS];
  systemLocale2 = [equalCopy deviceOS];
  if ((systemLocale != 0) == (systemLocale2 == 0))
  {
    goto LABEL_45;
  }

  deviceOS = [(ODDSiriSchemaODDGeneralProperties *)self deviceOS];
  if (deviceOS)
  {
    v28 = deviceOS;
    deviceOS2 = [(ODDSiriSchemaODDGeneralProperties *)self deviceOS];
    deviceOS3 = [equalCopy deviceOS];
    v31 = [deviceOS2 isEqual:deviceOS3];

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
  v34 = equalCopy[80];
  if (v33 != ((v34 >> 2) & 1))
  {
    goto LABEL_46;
  }

  if (v33)
  {
    isStoreDemoMode = self->_isStoreDemoMode;
    if (isStoreDemoMode != [equalCopy isStoreDemoMode])
    {
      goto LABEL_46;
    }

    v32 = self->_has;
    v34 = equalCopy[80];
  }

  v36 = (*&v32 >> 3) & 1;
  if (v36 != ((v34 >> 3) & 1))
  {
    goto LABEL_46;
  }

  if (v36)
  {
    buildInstallationTimestampInSecondsSince1970 = self->_buildInstallationTimestampInSecondsSince1970;
    if (buildInstallationTimestampInSecondsSince1970 != [equalCopy buildInstallationTimestampInSecondsSince1970])
    {
      goto LABEL_46;
    }
  }

  systemLocale = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];
  systemLocale2 = [equalCopy assetSetStatus];
  if ((systemLocale != 0) == (systemLocale2 == 0))
  {
    goto LABEL_45;
  }

  assetSetStatus = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];
  if (assetSetStatus)
  {
    v39 = assetSetStatus;
    assetSetStatus2 = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];
    assetSetStatus3 = [equalCopy assetSetStatus];
    v42 = [assetSetStatus2 isEqual:assetSetStatus3];

    if (!v42)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  systemLocale = [(ODDSiriSchemaODDGeneralProperties *)self dataCollectionId];
  systemLocale2 = [equalCopy dataCollectionId];
  if ((systemLocale != 0) == (systemLocale2 == 0))
  {
LABEL_45:

    goto LABEL_46;
  }

  dataCollectionId = [(ODDSiriSchemaODDGeneralProperties *)self dataCollectionId];
  if (!dataCollectionId)
  {

LABEL_49:
    v48 = 1;
    goto LABEL_47;
  }

  v44 = dataCollectionId;
  dataCollectionId2 = [(ODDSiriSchemaODDGeneralProperties *)self dataCollectionId];
  dataCollectionId3 = [equalCopy dataCollectionId];
  v47 = [dataCollectionId2 isEqual:dataCollectionId3];

  if (v47)
  {
    goto LABEL_49;
  }

LABEL_46:
  v48 = 0;
LABEL_47:

  return v48;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  systemLocale = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];

  if (systemLocale)
  {
    systemLocale2 = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];
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

  deviceType = [(ODDSiriSchemaODDGeneralProperties *)self deviceType];

  if (deviceType)
  {
    PBDataWriterWriteStringField();
  }

  modelNumber = [(ODDSiriSchemaODDGeneralProperties *)self modelNumber];

  if (modelNumber)
  {
    PBDataWriterWriteStringField();
  }

  deviceOS = [(ODDSiriSchemaODDGeneralProperties *)self deviceOS];

  if (deviceOS)
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

  assetSetStatus = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];

  if (assetSetStatus)
  {
    assetSetStatus2 = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];
    PBDataWriterWriteSubmessage();
  }

  dataCollectionId = [(ODDSiriSchemaODDGeneralProperties *)self dataCollectionId];

  v14 = toCopy;
  if (dataCollectionId)
  {
    PBDataWriterWriteStringField();
    v14 = toCopy;
  }
}

- (void)setHasBuildInstallationTimestampInSecondsSince1970:(BOOL)since1970
{
  if (since1970)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsStoreDemoMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUTCOffset:(BOOL)offset
{
  if (offset)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDGeneralProperties;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  systemLocale = [(ODDSiriSchemaODDGeneralProperties *)self systemLocale];
  v7 = [systemLocale applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDGeneralProperties *)self deleteSystemLocale];
  }

  assetSetStatus = [(ODDSiriSchemaODDGeneralProperties *)self assetSetStatus];
  v10 = [assetSetStatus applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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