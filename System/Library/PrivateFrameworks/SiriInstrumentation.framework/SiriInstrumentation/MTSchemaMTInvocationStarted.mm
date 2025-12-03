@interface MTSchemaMTInvocationStarted
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTApiInvocationMetadata)apiInvocationMetadata;
- (MTSchemaMTAppInvocationMetadata)appInvocationMetadata;
- (MTSchemaMTInvocationStarted)initWithDictionary:(id)dictionary;
- (MTSchemaMTInvocationStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteApiInvocationMetadata;
- (void)deleteAppInvocationMetadata;
- (void)setApiInvocationMetadata:(id)metadata;
- (void)setAppInvocationMetadata:(id)metadata;
- (void)setHasDisplayMode:(BOOL)mode;
- (void)setHasInputSource:(BOOL)source;
- (void)setHasInvocationType:(BOOL)type;
- (void)setHasIsExplicitLanguageFilterEnabled:(BOOL)enabled;
- (void)setHasIsLanguageIdentificationEnabled:(BOOL)enabled;
- (void)setHasMobileAssetConfigVersion:(BOOL)version;
- (void)setHasTask:(BOOL)task;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTInvocationStarted

- (MTSchemaMTInvocationStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = MTSchemaMTInvocationStarted;
  v5 = [(MTSchemaMTInvocationStarted *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MTSchemaMTInvocationStarted *)v5 setLinkId:v7];
    }

    v28 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"isOnDeviceTranslation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setIsOnDeviceTranslation:](v5, "setIsOnDeviceTranslation:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"mobileAssetConfigVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setMobileAssetConfigVersion:](v5, "setMobileAssetConfigVersion:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setTask:](v5, "setTask:", [v10 intValue]);
    }

    v25 = v10;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"inputSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setInputSource:](v5, "setInputSource:", [v11 intValue]);
    }

    v24 = v11;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"isExplicitLanguageFilterEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setIsExplicitLanguageFilterEnabled:](v5, "setIsExplicitLanguageFilterEnabled:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"isLanguageIdentificationEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setIsLanguageIdentificationEnabled:](v5, "setIsLanguageIdentificationEnabled:", [v13 BOOLValue]);
    }

    v27 = v8;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"displayMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setDisplayMode:](v5, "setDisplayMode:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"qssSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(MTSchemaMTInvocationStarted *)v5 setQssSessionId:v16];
    }

    v26 = v9;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"invocationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setInvocationType:](v5, "setInvocationType:", [v17 intValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"appInvocationMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[MTSchemaMTAppInvocationMetadata alloc] initWithDictionary:v18];
      [(MTSchemaMTInvocationStarted *)v5 setAppInvocationMetadata:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"apiInvocationMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[MTSchemaMTApiInvocationMetadata alloc] initWithDictionary:v20];
      [(MTSchemaMTInvocationStarted *)v5 setApiInvocationMetadata:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (MTSchemaMTInvocationStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTInvocationStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTInvocationStarted *)self dictionaryRepresentation];
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
  if (self->_apiInvocationMetadata)
  {
    apiInvocationMetadata = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];
    dictionaryRepresentation = [apiInvocationMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"apiInvocationMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"apiInvocationMetadata"];
    }
  }

  if (self->_appInvocationMetadata)
  {
    appInvocationMetadata = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];
    dictionaryRepresentation2 = [appInvocationMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"appInvocationMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"appInvocationMetadata"];
    }
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v11 = [(MTSchemaMTInvocationStarted *)self displayMode]- 1;
    if (v11 > 2)
    {
      v12 = @"MTAPPDISPLAYMODE_UNKNOWN";
    }

    else
    {
      v12 = off_1E78D9CD8[v11];
    }

    [dictionary setObject:v12 forKeyedSubscript:@"displayMode"];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_13:
      if ((has & 0x80) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

  v13 = [(MTSchemaMTInvocationStarted *)self inputSource]- 1;
  if (v13 > 3)
  {
    v14 = @"MTINPUTSOURCE_UNKNOWN";
  }

  else
  {
    v14 = off_1E78D9CF0[v13];
  }

  [dictionary setObject:v14 forKeyedSubscript:@"inputSource"];
  has = self->_has;
  if (has < 0)
  {
LABEL_23:
    v15 = [(MTSchemaMTInvocationStarted *)self invocationType]- 1;
    if (v15 > 0x12)
    {
      v16 = @"MTINVOCATIONTYPE_UNKNOWN";
    }

    else
    {
      v16 = off_1E78D9D10[v15];
    }

    [dictionary setObject:v16 forKeyedSubscript:@"invocationType"];
    has = self->_has;
  }

LABEL_27:
  if ((has & 0x10) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTSchemaMTInvocationStarted isExplicitLanguageFilterEnabled](self, "isExplicitLanguageFilterEnabled")}];
    [dictionary setObject:v20 forKeyedSubscript:@"isExplicitLanguageFilterEnabled"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_29:
      if ((has & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_29;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTSchemaMTInvocationStarted isLanguageIdentificationEnabled](self, "isLanguageIdentificationEnabled")}];
  [dictionary setObject:v21 forKeyedSubscript:@"isLanguageIdentificationEnabled"];

  if (*&self->_has)
  {
LABEL_30:
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTSchemaMTInvocationStarted isOnDeviceTranslation](self, "isOnDeviceTranslation")}];
    [dictionary setObject:v17 forKeyedSubscript:@"isOnDeviceTranslation"];
  }

LABEL_31:
  if (self->_linkId)
  {
    linkId = [(MTSchemaMTInvocationStarted *)self linkId];
    dictionaryRepresentation3 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"linkId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MTSchemaMTInvocationStarted mobileAssetConfigVersion](self, "mobileAssetConfigVersion")}];
    [dictionary setObject:v23 forKeyedSubscript:@"mobileAssetConfigVersion"];
  }

  if (self->_qssSessionId)
  {
    qssSessionId = [(MTSchemaMTInvocationStarted *)self qssSessionId];
    dictionaryRepresentation4 = [qssSessionId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"qssSessionId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"qssSessionId"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v27 = [(MTSchemaMTInvocationStarted *)self task]- 1;
    if (v27 > 3)
    {
      v28 = @"MTTASK_UNKNOWN";
    }

    else
    {
      v28 = off_1E78D9DA8[v27];
    }

    [dictionary setObject:v28 forKeyedSubscript:@"task"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v15 = [(SISchemaUUID *)self->_linkId hash];
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isOnDeviceTranslation;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_mobileAssetConfigVersion;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_task;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_inputSource;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_isExplicitLanguageFilterEnabled;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v8 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v7 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v8 = 2654435761 * self->_isLanguageIdentificationEnabled;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_displayMode;
    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
LABEL_16:
  v10 = [(SISchemaUUID *)self->_qssSessionId hash];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v11 = 2654435761 * self->_invocationType;
  }

  else
  {
    v11 = 0;
  }

  v12 = v3 ^ v15 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  v13 = v11 ^ [(MTSchemaMTAppInvocationMetadata *)self->_appInvocationMetadata hash];
  return v12 ^ v13 ^ [(MTSchemaMTApiInvocationMetadata *)self->_apiInvocationMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  whichInvocationmetadata = self->_whichInvocationmetadata;
  if (whichInvocationmetadata != [equalCopy whichInvocationmetadata])
  {
    goto LABEL_53;
  }

  linkId = [(MTSchemaMTInvocationStarted *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_52;
  }

  linkId3 = [(MTSchemaMTInvocationStarted *)self linkId];
  if (linkId3)
  {
    v9 = linkId3;
    linkId4 = [(MTSchemaMTInvocationStarted *)self linkId];
    linkId5 = [equalCopy linkId];
    v12 = [linkId4 isEqual:linkId5];

    if (!v12)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[72];
  if ((*&has & 1) != (v14 & 1))
  {
    goto LABEL_53;
  }

  if (*&has)
  {
    isOnDeviceTranslation = self->_isOnDeviceTranslation;
    if (isOnDeviceTranslation != [equalCopy isOnDeviceTranslation])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v14 = equalCopy[72];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_53;
  }

  if (v16)
  {
    mobileAssetConfigVersion = self->_mobileAssetConfigVersion;
    if (mobileAssetConfigVersion != [equalCopy mobileAssetConfigVersion])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v14 = equalCopy[72];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_53;
  }

  if (v18)
  {
    task = self->_task;
    if (task != [equalCopy task])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v14 = equalCopy[72];
  }

  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_53;
  }

  if (v20)
  {
    inputSource = self->_inputSource;
    if (inputSource != [equalCopy inputSource])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v14 = equalCopy[72];
  }

  v22 = (*&has >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_53;
  }

  if (v22)
  {
    isExplicitLanguageFilterEnabled = self->_isExplicitLanguageFilterEnabled;
    if (isExplicitLanguageFilterEnabled != [equalCopy isExplicitLanguageFilterEnabled])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v14 = equalCopy[72];
  }

  v24 = (*&has >> 5) & 1;
  if (v24 != ((v14 >> 5) & 1))
  {
    goto LABEL_53;
  }

  if (v24)
  {
    isLanguageIdentificationEnabled = self->_isLanguageIdentificationEnabled;
    if (isLanguageIdentificationEnabled != [equalCopy isLanguageIdentificationEnabled])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v14 = equalCopy[72];
  }

  v26 = (*&has >> 6) & 1;
  if (v26 != ((v14 >> 6) & 1))
  {
    goto LABEL_53;
  }

  if (v26)
  {
    displayMode = self->_displayMode;
    if (displayMode != [equalCopy displayMode])
    {
      goto LABEL_53;
    }
  }

  linkId = [(MTSchemaMTInvocationStarted *)self qssSessionId];
  linkId2 = [equalCopy qssSessionId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_52;
  }

  qssSessionId = [(MTSchemaMTInvocationStarted *)self qssSessionId];
  if (qssSessionId)
  {
    v29 = qssSessionId;
    qssSessionId2 = [(MTSchemaMTInvocationStarted *)self qssSessionId];
    qssSessionId3 = [equalCopy qssSessionId];
    v32 = [qssSessionId2 isEqual:qssSessionId3];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v33 = self->_has;
  if (((equalCopy[72] ^ *&v33) & 0x80) != 0)
  {
    goto LABEL_53;
  }

  if ((*&v33 & 0x80000000) != 0)
  {
    invocationType = self->_invocationType;
    if (invocationType != [equalCopy invocationType])
    {
      goto LABEL_53;
    }
  }

  linkId = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];
  linkId2 = [equalCopy appInvocationMetadata];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_52;
  }

  appInvocationMetadata = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];
  if (appInvocationMetadata)
  {
    v36 = appInvocationMetadata;
    appInvocationMetadata2 = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];
    appInvocationMetadata3 = [equalCopy appInvocationMetadata];
    v39 = [appInvocationMetadata2 isEqual:appInvocationMetadata3];

    if (!v39)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  linkId = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];
  linkId2 = [equalCopy apiInvocationMetadata];
  if ((linkId != 0) == (linkId2 == 0))
  {
LABEL_52:

    goto LABEL_53;
  }

  apiInvocationMetadata = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];
  if (!apiInvocationMetadata)
  {

LABEL_56:
    v45 = 1;
    goto LABEL_54;
  }

  v41 = apiInvocationMetadata;
  apiInvocationMetadata2 = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];
  apiInvocationMetadata3 = [equalCopy apiInvocationMetadata];
  v44 = [apiInvocationMetadata2 isEqual:apiInvocationMetadata3];

  if (v44)
  {
    goto LABEL_56;
  }

LABEL_53:
  v45 = 0;
LABEL_54:

  return v45;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(MTSchemaMTInvocationStarted *)self linkId];

  if (linkId)
  {
    linkId2 = [(MTSchemaMTInvocationStarted *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_10:
    PBDataWriterWriteInt32Field();
  }

LABEL_11:
  qssSessionId = [(MTSchemaMTInvocationStarted *)self qssSessionId];

  if (qssSessionId)
  {
    qssSessionId2 = [(MTSchemaMTInvocationStarted *)self qssSessionId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  appInvocationMetadata = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];

  if (appInvocationMetadata)
  {
    appInvocationMetadata2 = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];
    PBDataWriterWriteSubmessage();
  }

  apiInvocationMetadata = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];

  v12 = toCopy;
  if (apiInvocationMetadata)
  {
    apiInvocationMetadata2 = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
  }
}

- (void)deleteApiInvocationMetadata
{
  if (self->_whichInvocationmetadata == 12)
  {
    self->_whichInvocationmetadata = 0;
    self->_apiInvocationMetadata = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTApiInvocationMetadata)apiInvocationMetadata
{
  if (self->_whichInvocationmetadata == 12)
  {
    v3 = self->_apiInvocationMetadata;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setApiInvocationMetadata:(id)metadata
{
  metadataCopy = metadata;
  appInvocationMetadata = self->_appInvocationMetadata;
  self->_appInvocationMetadata = 0;

  v6 = 12;
  if (!metadataCopy)
  {
    v6 = 0;
  }

  self->_whichInvocationmetadata = v6;
  apiInvocationMetadata = self->_apiInvocationMetadata;
  self->_apiInvocationMetadata = metadataCopy;
}

- (void)deleteAppInvocationMetadata
{
  if (self->_whichInvocationmetadata == 11)
  {
    self->_whichInvocationmetadata = 0;
    self->_appInvocationMetadata = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTAppInvocationMetadata)appInvocationMetadata
{
  if (self->_whichInvocationmetadata == 11)
  {
    v3 = self->_appInvocationMetadata;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppInvocationMetadata:(id)metadata
{
  metadataCopy = metadata;
  apiInvocationMetadata = self->_apiInvocationMetadata;
  self->_apiInvocationMetadata = 0;

  v6 = 11;
  if (!metadataCopy)
  {
    v6 = 0;
  }

  self->_whichInvocationmetadata = v6;
  appInvocationMetadata = self->_appInvocationMetadata;
  self->_appInvocationMetadata = metadataCopy;
}

- (void)setHasInvocationType:(BOOL)type
{
  if (type)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasDisplayMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsLanguageIdentificationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsExplicitLanguageFilterEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasInputSource:(BOOL)source
{
  if (source)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTask:(BOOL)task
{
  if (task)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMobileAssetConfigVersion:(BOOL)version
{
  if (version)
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
  v19.receiver = self;
  v19.super_class = MTSchemaMTInvocationStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(MTSchemaMTInvocationStarted *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MTSchemaMTInvocationStarted *)self deleteLinkId];
  }

  qssSessionId = [(MTSchemaMTInvocationStarted *)self qssSessionId];
  v10 = [qssSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MTSchemaMTInvocationStarted *)self deleteQssSessionId];
  }

  appInvocationMetadata = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];
  v13 = [appInvocationMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(MTSchemaMTInvocationStarted *)self deleteAppInvocationMetadata];
  }

  apiInvocationMetadata = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];
  v16 = [apiInvocationMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(MTSchemaMTInvocationStarted *)self deleteApiInvocationMetadata];
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