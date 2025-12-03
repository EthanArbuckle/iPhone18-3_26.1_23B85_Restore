@interface SISchemaDeviceFixedContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaDeviceFixedContext)initWithDictionary:(id)dictionary;
- (SISchemaDeviceFixedContext)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaDeviceFixedContext

- (SISchemaDeviceFixedContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = SISchemaDeviceFixedContext;
  v5 = [(SISchemaDeviceFixedContext *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaDeviceFixedContext *)v5 setDeviceType:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaDeviceFixedContext *)v5 setSystemBuild:v9];
    }

    v28 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaDeviceFixedContext *)v5 setSiriInputLanguage:v11];
    }

    v27 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"siriVoiceLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(SISchemaDeviceFixedContext *)v5 setSiriVoiceLanguage:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"systemLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(SISchemaDeviceFixedContext *)v5 setSystemLocale:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"siriDeviceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(SISchemaDeviceFixedContext *)v5 setSiriDeviceID:v17];
    }

    v29 = v6;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"speechID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(SISchemaDeviceFixedContext *)v5 setSpeechID:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"siriUISettings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[SISchemaSiriUISettings alloc] initWithDictionary:v20];
      [(SISchemaDeviceFixedContext *)v5 setSiriUISettings:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"isSatellitePaired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDeviceFixedContext setIsSatellitePaired:](v5, "setIsSatellitePaired:", [v22 BOOLValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"voiceSettings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[SISchemaVoiceSettings alloc] initWithDictionary:v23];
      [(SISchemaDeviceFixedContext *)v5 setVoiceSettings:v24];
    }

    v25 = v5;
  }

  return v5;
}

- (SISchemaDeviceFixedContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaDeviceFixedContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaDeviceFixedContext *)self dictionaryRepresentation];
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
  if (self->_deviceType)
  {
    deviceType = [(SISchemaDeviceFixedContext *)self deviceType];
    v5 = [deviceType copy];
    [dictionary setObject:v5 forKeyedSubscript:@"deviceType"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaDeviceFixedContext isSatellitePaired](self, "isSatellitePaired")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isSatellitePaired"];
  }

  if (self->_siriDeviceID)
  {
    siriDeviceID = [(SISchemaDeviceFixedContext *)self siriDeviceID];
    v8 = [siriDeviceID copy];
    [dictionary setObject:v8 forKeyedSubscript:@"siriDeviceID"];
  }

  if (self->_siriInputLanguage)
  {
    siriInputLanguage = [(SISchemaDeviceFixedContext *)self siriInputLanguage];
    v10 = [siriInputLanguage copy];
    [dictionary setObject:v10 forKeyedSubscript:@"siriInputLanguage"];
  }

  if (self->_siriUISettings)
  {
    siriUISettings = [(SISchemaDeviceFixedContext *)self siriUISettings];
    dictionaryRepresentation = [siriUISettings dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriUISettings"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriUISettings"];
    }
  }

  if (self->_siriVoiceLanguage)
  {
    siriVoiceLanguage = [(SISchemaDeviceFixedContext *)self siriVoiceLanguage];
    v15 = [siriVoiceLanguage copy];
    [dictionary setObject:v15 forKeyedSubscript:@"siriVoiceLanguage"];
  }

  if (self->_speechID)
  {
    speechID = [(SISchemaDeviceFixedContext *)self speechID];
    v17 = [speechID copy];
    [dictionary setObject:v17 forKeyedSubscript:@"speechID"];
  }

  if (self->_systemBuild)
  {
    systemBuild = [(SISchemaDeviceFixedContext *)self systemBuild];
    v19 = [systemBuild copy];
    [dictionary setObject:v19 forKeyedSubscript:@"systemBuild"];
  }

  if (self->_systemLocale)
  {
    systemLocale = [(SISchemaDeviceFixedContext *)self systemLocale];
    v21 = [systemLocale copy];
    [dictionary setObject:v21 forKeyedSubscript:@"systemLocale"];
  }

  if (self->_voiceSettings)
  {
    voiceSettings = [(SISchemaDeviceFixedContext *)self voiceSettings];
    dictionaryRepresentation2 = [voiceSettings dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"voiceSettings"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"voiceSettings"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_deviceType hash];
  v4 = [(NSString *)self->_systemBuild hash];
  v5 = [(NSString *)self->_siriInputLanguage hash];
  v6 = [(NSString *)self->_siriVoiceLanguage hash];
  v7 = [(NSString *)self->_systemLocale hash];
  v8 = [(NSString *)self->_siriDeviceID hash];
  v9 = [(NSString *)self->_speechID hash];
  v10 = [(SISchemaSiriUISettings *)self->_siriUISettings hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_isSatellitePaired;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(SISchemaVoiceSettings *)self->_voiceSettings hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_50;
  }

  deviceType = [(SISchemaDeviceFixedContext *)self deviceType];
  deviceType2 = [equalCopy deviceType];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_49;
  }

  deviceType3 = [(SISchemaDeviceFixedContext *)self deviceType];
  if (deviceType3)
  {
    v8 = deviceType3;
    deviceType4 = [(SISchemaDeviceFixedContext *)self deviceType];
    deviceType5 = [equalCopy deviceType];
    v11 = [deviceType4 isEqual:deviceType5];

    if (!v11)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  deviceType = [(SISchemaDeviceFixedContext *)self systemBuild];
  deviceType2 = [equalCopy systemBuild];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_49;
  }

  systemBuild = [(SISchemaDeviceFixedContext *)self systemBuild];
  if (systemBuild)
  {
    v13 = systemBuild;
    systemBuild2 = [(SISchemaDeviceFixedContext *)self systemBuild];
    systemBuild3 = [equalCopy systemBuild];
    v16 = [systemBuild2 isEqual:systemBuild3];

    if (!v16)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  deviceType = [(SISchemaDeviceFixedContext *)self siriInputLanguage];
  deviceType2 = [equalCopy siriInputLanguage];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_49;
  }

  siriInputLanguage = [(SISchemaDeviceFixedContext *)self siriInputLanguage];
  if (siriInputLanguage)
  {
    v18 = siriInputLanguage;
    siriInputLanguage2 = [(SISchemaDeviceFixedContext *)self siriInputLanguage];
    siriInputLanguage3 = [equalCopy siriInputLanguage];
    v21 = [siriInputLanguage2 isEqual:siriInputLanguage3];

    if (!v21)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  deviceType = [(SISchemaDeviceFixedContext *)self siriVoiceLanguage];
  deviceType2 = [equalCopy siriVoiceLanguage];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_49;
  }

  siriVoiceLanguage = [(SISchemaDeviceFixedContext *)self siriVoiceLanguage];
  if (siriVoiceLanguage)
  {
    v23 = siriVoiceLanguage;
    siriVoiceLanguage2 = [(SISchemaDeviceFixedContext *)self siriVoiceLanguage];
    siriVoiceLanguage3 = [equalCopy siriVoiceLanguage];
    v26 = [siriVoiceLanguage2 isEqual:siriVoiceLanguage3];

    if (!v26)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  deviceType = [(SISchemaDeviceFixedContext *)self systemLocale];
  deviceType2 = [equalCopy systemLocale];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_49;
  }

  systemLocale = [(SISchemaDeviceFixedContext *)self systemLocale];
  if (systemLocale)
  {
    v28 = systemLocale;
    systemLocale2 = [(SISchemaDeviceFixedContext *)self systemLocale];
    systemLocale3 = [equalCopy systemLocale];
    v31 = [systemLocale2 isEqual:systemLocale3];

    if (!v31)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  deviceType = [(SISchemaDeviceFixedContext *)self siriDeviceID];
  deviceType2 = [equalCopy siriDeviceID];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_49;
  }

  siriDeviceID = [(SISchemaDeviceFixedContext *)self siriDeviceID];
  if (siriDeviceID)
  {
    v33 = siriDeviceID;
    siriDeviceID2 = [(SISchemaDeviceFixedContext *)self siriDeviceID];
    siriDeviceID3 = [equalCopy siriDeviceID];
    v36 = [siriDeviceID2 isEqual:siriDeviceID3];

    if (!v36)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  deviceType = [(SISchemaDeviceFixedContext *)self speechID];
  deviceType2 = [equalCopy speechID];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_49;
  }

  speechID = [(SISchemaDeviceFixedContext *)self speechID];
  if (speechID)
  {
    v38 = speechID;
    speechID2 = [(SISchemaDeviceFixedContext *)self speechID];
    speechID3 = [equalCopy speechID];
    v41 = [speechID2 isEqual:speechID3];

    if (!v41)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  deviceType = [(SISchemaDeviceFixedContext *)self siriUISettings];
  deviceType2 = [equalCopy siriUISettings];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_49;
  }

  siriUISettings = [(SISchemaDeviceFixedContext *)self siriUISettings];
  if (siriUISettings)
  {
    v43 = siriUISettings;
    siriUISettings2 = [(SISchemaDeviceFixedContext *)self siriUISettings];
    siriUISettings3 = [equalCopy siriUISettings];
    v46 = [siriUISettings2 isEqual:siriUISettings3];

    if (!v46)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[88] & 1))
  {
    goto LABEL_50;
  }

  if (*&self->_has)
  {
    isSatellitePaired = self->_isSatellitePaired;
    if (isSatellitePaired != [equalCopy isSatellitePaired])
    {
      goto LABEL_50;
    }
  }

  deviceType = [(SISchemaDeviceFixedContext *)self voiceSettings];
  deviceType2 = [equalCopy voiceSettings];
  if ((deviceType != 0) != (deviceType2 == 0))
  {
    voiceSettings = [(SISchemaDeviceFixedContext *)self voiceSettings];
    if (!voiceSettings)
    {

LABEL_53:
      v53 = 1;
      goto LABEL_51;
    }

    v49 = voiceSettings;
    voiceSettings2 = [(SISchemaDeviceFixedContext *)self voiceSettings];
    voiceSettings3 = [equalCopy voiceSettings];
    v52 = [voiceSettings2 isEqual:voiceSettings3];

    if (v52)
    {
      goto LABEL_53;
    }
  }

  else
  {
LABEL_49:
  }

LABEL_50:
  v53 = 0;
LABEL_51:

  return v53;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  deviceType = [(SISchemaDeviceFixedContext *)self deviceType];

  if (deviceType)
  {
    PBDataWriterWriteStringField();
  }

  systemBuild = [(SISchemaDeviceFixedContext *)self systemBuild];

  if (systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  siriInputLanguage = [(SISchemaDeviceFixedContext *)self siriInputLanguage];

  if (siriInputLanguage)
  {
    PBDataWriterWriteStringField();
  }

  siriVoiceLanguage = [(SISchemaDeviceFixedContext *)self siriVoiceLanguage];

  if (siriVoiceLanguage)
  {
    PBDataWriterWriteStringField();
  }

  systemLocale = [(SISchemaDeviceFixedContext *)self systemLocale];

  if (systemLocale)
  {
    PBDataWriterWriteStringField();
  }

  siriDeviceID = [(SISchemaDeviceFixedContext *)self siriDeviceID];

  if (siriDeviceID)
  {
    PBDataWriterWriteStringField();
  }

  speechID = [(SISchemaDeviceFixedContext *)self speechID];

  if (speechID)
  {
    PBDataWriterWriteStringField();
  }

  siriUISettings = [(SISchemaDeviceFixedContext *)self siriUISettings];

  if (siriUISettings)
  {
    siriUISettings2 = [(SISchemaDeviceFixedContext *)self siriUISettings];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  voiceSettings = [(SISchemaDeviceFixedContext *)self voiceSettings];

  v14 = toCopy;
  if (voiceSettings)
  {
    voiceSettings2 = [(SISchemaDeviceFixedContext *)self voiceSettings];
    PBDataWriterWriteSubmessage();

    v14 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SISchemaDeviceFixedContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:8])
  {
    [(SISchemaDeviceFixedContext *)self deleteSiriDeviceID];
    [(SISchemaDeviceFixedContext *)self deleteSpeechID];
  }

  siriUISettings = [(SISchemaDeviceFixedContext *)self siriUISettings];
  v7 = [siriUISettings applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaDeviceFixedContext *)self deleteSiriUISettings];
  }

  voiceSettings = [(SISchemaDeviceFixedContext *)self voiceSettings];
  v10 = [voiceSettings applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaDeviceFixedContext *)self deleteVoiceSettings];
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