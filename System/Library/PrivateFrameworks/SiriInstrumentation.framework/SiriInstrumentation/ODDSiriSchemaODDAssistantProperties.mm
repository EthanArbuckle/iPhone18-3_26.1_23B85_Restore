@interface ODDSiriSchemaODDAssistantProperties
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantProperties)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAssistantProperties)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsPreciseLocationEnabled:(BOOL)enabled;
- (void)setHasListenFor:(BOOL)for;
- (void)setHasLocationAccessPermission:(BOOL)permission;
- (void)setHasNumSiriShortcutsEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAssistantProperties

- (ODDSiriSchemaODDAssistantProperties)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = ODDSiriSchemaODDAssistantProperties;
  v5 = [(ODDSiriSchemaODDAssistantProperties *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isAssistantEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantProperties setIsAssistantEnabled:](v5, "setIsAssistantEnabled:", [v6 BOOLValue]);
    }

    v25 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"inputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaISOLocale alloc] initWithDictionary:v7];
      [(ODDSiriSchemaODDAssistantProperties *)v5 setInputLocale:v8];
    }

    v24 = v7;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"listenFor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantProperties setListenFor:](v5, "setListenFor:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"numSiriShortcutsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantProperties setNumSiriShortcutsEnabled:](v5, "setNumSiriShortcutsEnabled:", [v10 intValue]);
    }

    v23 = v9;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"isPreciseLocationEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantProperties setIsPreciseLocationEnabled:](v5, "setIsPreciseLocationEnabled:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"voice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODDSiriSchemaODDVoiceProperties alloc] initWithDictionary:v12];
      [(ODDSiriSchemaODDAssistantProperties *)v5 setVoice:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"optIn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ODDSiriSchemaODDOptInProperties alloc] initWithDictionary:v14];
      [(ODDSiriSchemaODDAssistantProperties *)v5 setOptIn:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"homeKit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ODDSiriSchemaODDHomeKitProperties alloc] initWithDictionary:v16];
      [(ODDSiriSchemaODDAssistantProperties *)v5 setHomeKit:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"locationAccessPermission"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantProperties setLocationAccessPermission:](v5, "setLocationAccessPermission:", [v18 intValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"appleIntelligence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[ODDSiriSchemaODDAppleIntelligenceProperties alloc] initWithDictionary:v19];
      [(ODDSiriSchemaODDAssistantProperties *)v5 setAppleIntelligence:v20];
    }

    v21 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssistantProperties)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantProperties *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAssistantProperties *)self dictionaryRepresentation];
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
  if (self->_appleIntelligence)
  {
    appleIntelligence = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];
    dictionaryRepresentation = [appleIntelligence dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appleIntelligence"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appleIntelligence"];
    }
  }

  if (self->_homeKit)
  {
    homeKit = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];
    dictionaryRepresentation2 = [homeKit dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"homeKit"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"homeKit"];
    }
  }

  if (self->_inputLocale)
  {
    inputLocale = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];
    dictionaryRepresentation3 = [inputLocale dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"inputLocale"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"inputLocale"];
    }
  }

  has = self->_has;
  if (has)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAssistantProperties isAssistantEnabled](self, "isAssistantEnabled")}];
    [dictionary setObject:v17 forKeyedSubscript:@"isAssistantEnabled"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_18:
      if ((has & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_18;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAssistantProperties isPreciseLocationEnabled](self, "isPreciseLocationEnabled")}];
  [dictionary setObject:v18 forKeyedSubscript:@"isPreciseLocationEnabled"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_19:
    if ((has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_27:
  v19 = [(ODDSiriSchemaODDAssistantProperties *)self listenFor]- 1;
  if (v19 > 2)
  {
    v20 = @"ODDLISTENFOR_UNKNOWN";
  }

  else
  {
    v20 = off_1E78DCE28[v19];
  }

  [dictionary setObject:v20 forKeyedSubscript:@"listenFor"];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_20:
    if ((has & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_31:
  v21 = [(ODDSiriSchemaODDAssistantProperties *)self locationAccessPermission]- 1;
  if (v21 > 5)
  {
    v22 = @"ODDLOCATIONACCESSPERMISSION_UNKNOWN";
  }

  else
  {
    v22 = off_1E78DCE40[v21];
  }

  [dictionary setObject:v22 forKeyedSubscript:@"locationAccessPermission"];
  if ((*&self->_has & 4) != 0)
  {
LABEL_21:
    v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[ODDSiriSchemaODDAssistantProperties numSiriShortcutsEnabled](self, "numSiriShortcutsEnabled")}];
    [dictionary setObject:v14 forKeyedSubscript:@"numSiriShortcutsEnabled"];
  }

LABEL_22:
  if (self->_optIn)
  {
    optIn = [(ODDSiriSchemaODDAssistantProperties *)self optIn];
    dictionaryRepresentation4 = [optIn dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"optIn"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"optIn"];
    }
  }

  if (self->_voice)
  {
    voice = [(ODDSiriSchemaODDAssistantProperties *)self voice];
    dictionaryRepresentation5 = [voice dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"voice"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"voice"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isAssistantEnabled;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaISOLocale *)self->_inputLocale hash];
  if ((*&self->_has & 2) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v5 = 2654435761 * self->_listenFor;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_numSiriShortcutsEnabled;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_isPreciseLocationEnabled;
    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
LABEL_11:
  v8 = [(ODDSiriSchemaODDVoiceProperties *)self->_voice hash];
  v9 = [(ODDSiriSchemaODDOptInProperties *)self->_optIn hash];
  v10 = [(ODDSiriSchemaODDHomeKitProperties *)self->_homeKit hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v11 = 2654435761 * self->_locationAccessPermission;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(ODDSiriSchemaODDAppleIntelligenceProperties *)self->_appleIntelligence hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 1) != (equalCopy[80] & 1))
  {
    goto LABEL_44;
  }

  if (*&self->_has)
  {
    isAssistantEnabled = self->_isAssistantEnabled;
    if (isAssistantEnabled != [equalCopy isAssistantEnabled])
    {
      goto LABEL_44;
    }
  }

  inputLocale = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];
  inputLocale2 = [equalCopy inputLocale];
  if ((inputLocale != 0) == (inputLocale2 == 0))
  {
    goto LABEL_43;
  }

  inputLocale3 = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];
  if (inputLocale3)
  {
    v9 = inputLocale3;
    inputLocale4 = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];
    inputLocale5 = [equalCopy inputLocale];
    v12 = [inputLocale4 isEqual:inputLocale5];

    if (!v12)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = (*&has >> 1) & 1;
  v15 = equalCopy[80];
  if (v14 != ((v15 >> 1) & 1))
  {
    goto LABEL_44;
  }

  if (v14)
  {
    listenFor = self->_listenFor;
    if (listenFor != [equalCopy listenFor])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v15 = equalCopy[80];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v15 >> 2) & 1))
  {
    goto LABEL_44;
  }

  if (v17)
  {
    numSiriShortcutsEnabled = self->_numSiriShortcutsEnabled;
    if (numSiriShortcutsEnabled != [equalCopy numSiriShortcutsEnabled])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v15 = equalCopy[80];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v15 >> 3) & 1))
  {
    goto LABEL_44;
  }

  if (v19)
  {
    isPreciseLocationEnabled = self->_isPreciseLocationEnabled;
    if (isPreciseLocationEnabled != [equalCopy isPreciseLocationEnabled])
    {
      goto LABEL_44;
    }
  }

  inputLocale = [(ODDSiriSchemaODDAssistantProperties *)self voice];
  inputLocale2 = [equalCopy voice];
  if ((inputLocale != 0) == (inputLocale2 == 0))
  {
    goto LABEL_43;
  }

  voice = [(ODDSiriSchemaODDAssistantProperties *)self voice];
  if (voice)
  {
    v22 = voice;
    voice2 = [(ODDSiriSchemaODDAssistantProperties *)self voice];
    voice3 = [equalCopy voice];
    v25 = [voice2 isEqual:voice3];

    if (!v25)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  inputLocale = [(ODDSiriSchemaODDAssistantProperties *)self optIn];
  inputLocale2 = [equalCopy optIn];
  if ((inputLocale != 0) == (inputLocale2 == 0))
  {
    goto LABEL_43;
  }

  optIn = [(ODDSiriSchemaODDAssistantProperties *)self optIn];
  if (optIn)
  {
    v27 = optIn;
    optIn2 = [(ODDSiriSchemaODDAssistantProperties *)self optIn];
    optIn3 = [equalCopy optIn];
    v30 = [optIn2 isEqual:optIn3];

    if (!v30)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  inputLocale = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];
  inputLocale2 = [equalCopy homeKit];
  if ((inputLocale != 0) == (inputLocale2 == 0))
  {
    goto LABEL_43;
  }

  homeKit = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];
  if (homeKit)
  {
    v32 = homeKit;
    homeKit2 = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];
    homeKit3 = [equalCopy homeKit];
    v35 = [homeKit2 isEqual:homeKit3];

    if (!v35)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v36 = (*&self->_has >> 4) & 1;
  if (v36 != ((equalCopy[80] >> 4) & 1))
  {
    goto LABEL_44;
  }

  if (v36)
  {
    locationAccessPermission = self->_locationAccessPermission;
    if (locationAccessPermission != [equalCopy locationAccessPermission])
    {
      goto LABEL_44;
    }
  }

  inputLocale = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];
  inputLocale2 = [equalCopy appleIntelligence];
  if ((inputLocale != 0) == (inputLocale2 == 0))
  {
LABEL_43:

    goto LABEL_44;
  }

  appleIntelligence = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];
  if (!appleIntelligence)
  {

LABEL_47:
    v43 = 1;
    goto LABEL_45;
  }

  v39 = appleIntelligence;
  appleIntelligence2 = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];
  appleIntelligence3 = [equalCopy appleIntelligence];
  v42 = [appleIntelligence2 isEqual:appleIntelligence3];

  if (v42)
  {
    goto LABEL_47;
  }

LABEL_44:
  v43 = 0;
LABEL_45:

  return v43;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  inputLocale = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];

  if (inputLocale)
  {
    inputLocale2 = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
  voice = [(ODDSiriSchemaODDAssistantProperties *)self voice];

  if (voice)
  {
    voice2 = [(ODDSiriSchemaODDAssistantProperties *)self voice];
    PBDataWriterWriteSubmessage();
  }

  optIn = [(ODDSiriSchemaODDAssistantProperties *)self optIn];

  if (optIn)
  {
    optIn2 = [(ODDSiriSchemaODDAssistantProperties *)self optIn];
    PBDataWriterWriteSubmessage();
  }

  homeKit = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];

  if (homeKit)
  {
    homeKit2 = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  appleIntelligence = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];

  v14 = toCopy;
  if (appleIntelligence)
  {
    appleIntelligence2 = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];
    PBDataWriterWriteSubmessage();

    v14 = toCopy;
  }
}

- (void)setHasLocationAccessPermission:(BOOL)permission
{
  if (permission)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsPreciseLocationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumSiriShortcutsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasListenFor:(BOOL)for
{
  if (for)
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
  v22.receiver = self;
  v22.super_class = ODDSiriSchemaODDAssistantProperties;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  inputLocale = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];
  v7 = [inputLocale applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDAssistantProperties *)self deleteInputLocale];
  }

  voice = [(ODDSiriSchemaODDAssistantProperties *)self voice];
  v10 = [voice applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDAssistantProperties *)self deleteVoice];
  }

  optIn = [(ODDSiriSchemaODDAssistantProperties *)self optIn];
  v13 = [optIn applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODDSiriSchemaODDAssistantProperties *)self deleteOptIn];
  }

  homeKit = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];
  v16 = [homeKit applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ODDSiriSchemaODDAssistantProperties *)self deleteHomeKit];
  }

  appleIntelligence = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];
  v19 = [appleIntelligence applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(ODDSiriSchemaODDAssistantProperties *)self deleteAppleIntelligence];
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