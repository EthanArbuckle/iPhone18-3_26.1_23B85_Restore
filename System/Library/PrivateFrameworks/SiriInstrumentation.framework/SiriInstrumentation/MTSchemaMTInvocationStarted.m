@interface MTSchemaMTInvocationStarted
- (BOOL)isEqual:(id)a3;
- (MTSchemaMTApiInvocationMetadata)apiInvocationMetadata;
- (MTSchemaMTAppInvocationMetadata)appInvocationMetadata;
- (MTSchemaMTInvocationStarted)initWithDictionary:(id)a3;
- (MTSchemaMTInvocationStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteApiInvocationMetadata;
- (void)deleteAppInvocationMetadata;
- (void)setApiInvocationMetadata:(id)a3;
- (void)setAppInvocationMetadata:(id)a3;
- (void)setHasDisplayMode:(BOOL)a3;
- (void)setHasInputSource:(BOOL)a3;
- (void)setHasInvocationType:(BOOL)a3;
- (void)setHasIsExplicitLanguageFilterEnabled:(BOOL)a3;
- (void)setHasIsLanguageIdentificationEnabled:(BOOL)a3;
- (void)setHasMobileAssetConfigVersion:(BOOL)a3;
- (void)setHasTask:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTSchemaMTInvocationStarted

- (MTSchemaMTInvocationStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = MTSchemaMTInvocationStarted;
  v5 = [(MTSchemaMTInvocationStarted *)&v29 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MTSchemaMTInvocationStarted *)v5 setLinkId:v7];
    }

    v28 = v6;
    v8 = [v4 objectForKeyedSubscript:@"isOnDeviceTranslation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setIsOnDeviceTranslation:](v5, "setIsOnDeviceTranslation:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"mobileAssetConfigVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setMobileAssetConfigVersion:](v5, "setMobileAssetConfigVersion:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setTask:](v5, "setTask:", [v10 intValue]);
    }

    v25 = v10;
    v11 = [v4 objectForKeyedSubscript:@"inputSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setInputSource:](v5, "setInputSource:", [v11 intValue]);
    }

    v24 = v11;
    v12 = [v4 objectForKeyedSubscript:@"isExplicitLanguageFilterEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setIsExplicitLanguageFilterEnabled:](v5, "setIsExplicitLanguageFilterEnabled:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"isLanguageIdentificationEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setIsLanguageIdentificationEnabled:](v5, "setIsLanguageIdentificationEnabled:", [v13 BOOLValue]);
    }

    v27 = v8;
    v14 = [v4 objectForKeyedSubscript:@"displayMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setDisplayMode:](v5, "setDisplayMode:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"qssSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(MTSchemaMTInvocationStarted *)v5 setQssSessionId:v16];
    }

    v26 = v9;
    v17 = [v4 objectForKeyedSubscript:@"invocationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationStarted setInvocationType:](v5, "setInvocationType:", [v17 intValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"appInvocationMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[MTSchemaMTAppInvocationMetadata alloc] initWithDictionary:v18];
      [(MTSchemaMTInvocationStarted *)v5 setAppInvocationMetadata:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"apiInvocationMetadata"];
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

- (MTSchemaMTInvocationStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MTSchemaMTInvocationStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MTSchemaMTInvocationStarted *)self dictionaryRepresentation];
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
  if (self->_apiInvocationMetadata)
  {
    v4 = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"apiInvocationMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"apiInvocationMetadata"];
    }
  }

  if (self->_appInvocationMetadata)
  {
    v7 = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"appInvocationMetadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"appInvocationMetadata"];
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

    [v3 setObject:v12 forKeyedSubscript:@"displayMode"];
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

  [v3 setObject:v14 forKeyedSubscript:@"inputSource"];
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

    [v3 setObject:v16 forKeyedSubscript:@"invocationType"];
    has = self->_has;
  }

LABEL_27:
  if ((has & 0x10) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTSchemaMTInvocationStarted isExplicitLanguageFilterEnabled](self, "isExplicitLanguageFilterEnabled")}];
    [v3 setObject:v20 forKeyedSubscript:@"isExplicitLanguageFilterEnabled"];

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
  [v3 setObject:v21 forKeyedSubscript:@"isLanguageIdentificationEnabled"];

  if (*&self->_has)
  {
LABEL_30:
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTSchemaMTInvocationStarted isOnDeviceTranslation](self, "isOnDeviceTranslation")}];
    [v3 setObject:v17 forKeyedSubscript:@"isOnDeviceTranslation"];
  }

LABEL_31:
  if (self->_linkId)
  {
    v18 = [(MTSchemaMTInvocationStarted *)self linkId];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v22 forKeyedSubscript:@"linkId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MTSchemaMTInvocationStarted mobileAssetConfigVersion](self, "mobileAssetConfigVersion")}];
    [v3 setObject:v23 forKeyedSubscript:@"mobileAssetConfigVersion"];
  }

  if (self->_qssSessionId)
  {
    v24 = [(MTSchemaMTInvocationStarted *)self qssSessionId];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"qssSessionId"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"qssSessionId"];
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

    [v3 setObject:v28 forKeyedSubscript:@"task"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  whichInvocationmetadata = self->_whichInvocationmetadata;
  if (whichInvocationmetadata != [v4 whichInvocationmetadata])
  {
    goto LABEL_53;
  }

  v6 = [(MTSchemaMTInvocationStarted *)self linkId];
  v7 = [v4 linkId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v8 = [(MTSchemaMTInvocationStarted *)self linkId];
  if (v8)
  {
    v9 = v8;
    v10 = [(MTSchemaMTInvocationStarted *)self linkId];
    v11 = [v4 linkId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[72];
  if ((*&has & 1) != (v14 & 1))
  {
    goto LABEL_53;
  }

  if (*&has)
  {
    isOnDeviceTranslation = self->_isOnDeviceTranslation;
    if (isOnDeviceTranslation != [v4 isOnDeviceTranslation])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v14 = v4[72];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_53;
  }

  if (v16)
  {
    mobileAssetConfigVersion = self->_mobileAssetConfigVersion;
    if (mobileAssetConfigVersion != [v4 mobileAssetConfigVersion])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v14 = v4[72];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_53;
  }

  if (v18)
  {
    task = self->_task;
    if (task != [v4 task])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v14 = v4[72];
  }

  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_53;
  }

  if (v20)
  {
    inputSource = self->_inputSource;
    if (inputSource != [v4 inputSource])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v14 = v4[72];
  }

  v22 = (*&has >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_53;
  }

  if (v22)
  {
    isExplicitLanguageFilterEnabled = self->_isExplicitLanguageFilterEnabled;
    if (isExplicitLanguageFilterEnabled != [v4 isExplicitLanguageFilterEnabled])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v14 = v4[72];
  }

  v24 = (*&has >> 5) & 1;
  if (v24 != ((v14 >> 5) & 1))
  {
    goto LABEL_53;
  }

  if (v24)
  {
    isLanguageIdentificationEnabled = self->_isLanguageIdentificationEnabled;
    if (isLanguageIdentificationEnabled != [v4 isLanguageIdentificationEnabled])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v14 = v4[72];
  }

  v26 = (*&has >> 6) & 1;
  if (v26 != ((v14 >> 6) & 1))
  {
    goto LABEL_53;
  }

  if (v26)
  {
    displayMode = self->_displayMode;
    if (displayMode != [v4 displayMode])
    {
      goto LABEL_53;
    }
  }

  v6 = [(MTSchemaMTInvocationStarted *)self qssSessionId];
  v7 = [v4 qssSessionId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v28 = [(MTSchemaMTInvocationStarted *)self qssSessionId];
  if (v28)
  {
    v29 = v28;
    v30 = [(MTSchemaMTInvocationStarted *)self qssSessionId];
    v31 = [v4 qssSessionId];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v33 = self->_has;
  if (((v4[72] ^ *&v33) & 0x80) != 0)
  {
    goto LABEL_53;
  }

  if ((*&v33 & 0x80000000) != 0)
  {
    invocationType = self->_invocationType;
    if (invocationType != [v4 invocationType])
    {
      goto LABEL_53;
    }
  }

  v6 = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];
  v7 = [v4 appInvocationMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v35 = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];
  if (v35)
  {
    v36 = v35;
    v37 = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];
    v38 = [v4 appInvocationMetadata];
    v39 = [v37 isEqual:v38];

    if (!v39)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];
  v7 = [v4 apiInvocationMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_52:

    goto LABEL_53;
  }

  v40 = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];
  if (!v40)
  {

LABEL_56:
    v45 = 1;
    goto LABEL_54;
  }

  v41 = v40;
  v42 = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];
  v43 = [v4 apiInvocationMetadata];
  v44 = [v42 isEqual:v43];

  if (v44)
  {
    goto LABEL_56;
  }

LABEL_53:
  v45 = 0;
LABEL_54:

  return v45;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(MTSchemaMTInvocationStarted *)self linkId];

  if (v4)
  {
    v5 = [(MTSchemaMTInvocationStarted *)self linkId];
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
  v7 = [(MTSchemaMTInvocationStarted *)self qssSessionId];

  if (v7)
  {
    v8 = [(MTSchemaMTInvocationStarted *)self qssSessionId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v9 = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];

  if (v9)
  {
    v10 = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];

  v12 = v14;
  if (v11)
  {
    v13 = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];
    PBDataWriterWriteSubmessage();

    v12 = v14;
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

- (void)setApiInvocationMetadata:(id)a3
{
  v4 = a3;
  appInvocationMetadata = self->_appInvocationMetadata;
  self->_appInvocationMetadata = 0;

  v6 = 12;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichInvocationmetadata = v6;
  apiInvocationMetadata = self->_apiInvocationMetadata;
  self->_apiInvocationMetadata = v4;
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

- (void)setAppInvocationMetadata:(id)a3
{
  v4 = a3;
  apiInvocationMetadata = self->_apiInvocationMetadata;
  self->_apiInvocationMetadata = 0;

  v6 = 11;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichInvocationmetadata = v6;
  appInvocationMetadata = self->_appInvocationMetadata;
  self->_appInvocationMetadata = v4;
}

- (void)setHasInvocationType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasDisplayMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsLanguageIdentificationEnabled:(BOOL)a3
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

- (void)setHasIsExplicitLanguageFilterEnabled:(BOOL)a3
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

- (void)setHasInputSource:(BOOL)a3
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

- (void)setHasTask:(BOOL)a3
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

- (void)setHasMobileAssetConfigVersion:(BOOL)a3
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
  v19.receiver = self;
  v19.super_class = MTSchemaMTInvocationStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(MTSchemaMTInvocationStarted *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MTSchemaMTInvocationStarted *)self deleteLinkId];
  }

  v9 = [(MTSchemaMTInvocationStarted *)self qssSessionId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(MTSchemaMTInvocationStarted *)self deleteQssSessionId];
  }

  v12 = [(MTSchemaMTInvocationStarted *)self appInvocationMetadata];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(MTSchemaMTInvocationStarted *)self deleteAppInvocationMetadata];
  }

  v15 = [(MTSchemaMTInvocationStarted *)self apiInvocationMetadata];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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