@interface ODDSiriSchemaODDAssistantProperties
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantProperties)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDAssistantProperties)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsPreciseLocationEnabled:(BOOL)a3;
- (void)setHasListenFor:(BOOL)a3;
- (void)setHasLocationAccessPermission:(BOOL)a3;
- (void)setHasNumSiriShortcutsEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDAssistantProperties

- (ODDSiriSchemaODDAssistantProperties)initWithDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = ODDSiriSchemaODDAssistantProperties;
  v5 = [(ODDSiriSchemaODDAssistantProperties *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isAssistantEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantProperties setIsAssistantEnabled:](v5, "setIsAssistantEnabled:", [v6 BOOLValue]);
    }

    v25 = v6;
    v7 = [v4 objectForKeyedSubscript:@"inputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaISOLocale alloc] initWithDictionary:v7];
      [(ODDSiriSchemaODDAssistantProperties *)v5 setInputLocale:v8];
    }

    v24 = v7;
    v9 = [v4 objectForKeyedSubscript:@"listenFor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantProperties setListenFor:](v5, "setListenFor:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"numSiriShortcutsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantProperties setNumSiriShortcutsEnabled:](v5, "setNumSiriShortcutsEnabled:", [v10 intValue]);
    }

    v23 = v9;
    v11 = [v4 objectForKeyedSubscript:@"isPreciseLocationEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantProperties setIsPreciseLocationEnabled:](v5, "setIsPreciseLocationEnabled:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"voice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODDSiriSchemaODDVoiceProperties alloc] initWithDictionary:v12];
      [(ODDSiriSchemaODDAssistantProperties *)v5 setVoice:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"optIn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ODDSiriSchemaODDOptInProperties alloc] initWithDictionary:v14];
      [(ODDSiriSchemaODDAssistantProperties *)v5 setOptIn:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"homeKit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ODDSiriSchemaODDHomeKitProperties alloc] initWithDictionary:v16];
      [(ODDSiriSchemaODDAssistantProperties *)v5 setHomeKit:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"locationAccessPermission"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantProperties setLocationAccessPermission:](v5, "setLocationAccessPermission:", [v18 intValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"appleIntelligence"];
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

- (ODDSiriSchemaODDAssistantProperties)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantProperties *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDAssistantProperties *)self dictionaryRepresentation];
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
  if (self->_appleIntelligence)
  {
    v4 = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"appleIntelligence"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"appleIntelligence"];
    }
  }

  if (self->_homeKit)
  {
    v7 = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"homeKit"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"homeKit"];
    }
  }

  if (self->_inputLocale)
  {
    v10 = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"inputLocale"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"inputLocale"];
    }
  }

  has = self->_has;
  if (has)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAssistantProperties isAssistantEnabled](self, "isAssistantEnabled")}];
    [v3 setObject:v17 forKeyedSubscript:@"isAssistantEnabled"];

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
  [v3 setObject:v18 forKeyedSubscript:@"isPreciseLocationEnabled"];

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

  [v3 setObject:v20 forKeyedSubscript:@"listenFor"];
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

  [v3 setObject:v22 forKeyedSubscript:@"locationAccessPermission"];
  if ((*&self->_has & 4) != 0)
  {
LABEL_21:
    v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[ODDSiriSchemaODDAssistantProperties numSiriShortcutsEnabled](self, "numSiriShortcutsEnabled")}];
    [v3 setObject:v14 forKeyedSubscript:@"numSiriShortcutsEnabled"];
  }

LABEL_22:
  if (self->_optIn)
  {
    v15 = [(ODDSiriSchemaODDAssistantProperties *)self optIn];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"optIn"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"optIn"];
    }
  }

  if (self->_voice)
  {
    v24 = [(ODDSiriSchemaODDAssistantProperties *)self voice];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"voice"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"voice"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 1) != (v4[80] & 1))
  {
    goto LABEL_44;
  }

  if (*&self->_has)
  {
    isAssistantEnabled = self->_isAssistantEnabled;
    if (isAssistantEnabled != [v4 isAssistantEnabled])
    {
      goto LABEL_44;
    }
  }

  v6 = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];
  v7 = [v4 inputLocale];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_43;
  }

  v8 = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];
    v11 = [v4 inputLocale];
    v12 = [v10 isEqual:v11];

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
  v15 = v4[80];
  if (v14 != ((v15 >> 1) & 1))
  {
    goto LABEL_44;
  }

  if (v14)
  {
    listenFor = self->_listenFor;
    if (listenFor != [v4 listenFor])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v15 = v4[80];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v15 >> 2) & 1))
  {
    goto LABEL_44;
  }

  if (v17)
  {
    numSiriShortcutsEnabled = self->_numSiriShortcutsEnabled;
    if (numSiriShortcutsEnabled != [v4 numSiriShortcutsEnabled])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v15 = v4[80];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v15 >> 3) & 1))
  {
    goto LABEL_44;
  }

  if (v19)
  {
    isPreciseLocationEnabled = self->_isPreciseLocationEnabled;
    if (isPreciseLocationEnabled != [v4 isPreciseLocationEnabled])
    {
      goto LABEL_44;
    }
  }

  v6 = [(ODDSiriSchemaODDAssistantProperties *)self voice];
  v7 = [v4 voice];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_43;
  }

  v21 = [(ODDSiriSchemaODDAssistantProperties *)self voice];
  if (v21)
  {
    v22 = v21;
    v23 = [(ODDSiriSchemaODDAssistantProperties *)self voice];
    v24 = [v4 voice];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDAssistantProperties *)self optIn];
  v7 = [v4 optIn];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_43;
  }

  v26 = [(ODDSiriSchemaODDAssistantProperties *)self optIn];
  if (v26)
  {
    v27 = v26;
    v28 = [(ODDSiriSchemaODDAssistantProperties *)self optIn];
    v29 = [v4 optIn];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];
  v7 = [v4 homeKit];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_43;
  }

  v31 = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];
  if (v31)
  {
    v32 = v31;
    v33 = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];
    v34 = [v4 homeKit];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v36 = (*&self->_has >> 4) & 1;
  if (v36 != ((v4[80] >> 4) & 1))
  {
    goto LABEL_44;
  }

  if (v36)
  {
    locationAccessPermission = self->_locationAccessPermission;
    if (locationAccessPermission != [v4 locationAccessPermission])
    {
      goto LABEL_44;
    }
  }

  v6 = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];
  v7 = [v4 appleIntelligence];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_43:

    goto LABEL_44;
  }

  v38 = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];
  if (!v38)
  {

LABEL_47:
    v43 = 1;
    goto LABEL_45;
  }

  v39 = v38;
  v40 = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];
  v41 = [v4 appleIntelligence];
  v42 = [v40 isEqual:v41];

  if (v42)
  {
    goto LABEL_47;
  }

LABEL_44:
  v43 = 0;
LABEL_45:

  return v43;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];
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
  v7 = [(ODDSiriSchemaODDAssistantProperties *)self voice];

  if (v7)
  {
    v8 = [(ODDSiriSchemaODDAssistantProperties *)self voice];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(ODDSiriSchemaODDAssistantProperties *)self optIn];

  if (v9)
  {
    v10 = [(ODDSiriSchemaODDAssistantProperties *)self optIn];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];

  if (v11)
  {
    v12 = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];

  v14 = v16;
  if (v13)
  {
    v15 = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];
    PBDataWriterWriteSubmessage();

    v14 = v16;
  }
}

- (void)setHasLocationAccessPermission:(BOOL)a3
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

- (void)setHasIsPreciseLocationEnabled:(BOOL)a3
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

- (void)setHasNumSiriShortcutsEnabled:(BOOL)a3
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

- (void)setHasListenFor:(BOOL)a3
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
  v22.receiver = self;
  v22.super_class = ODDSiriSchemaODDAssistantProperties;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDAssistantProperties *)self inputLocale];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDAssistantProperties *)self deleteInputLocale];
  }

  v9 = [(ODDSiriSchemaODDAssistantProperties *)self voice];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDAssistantProperties *)self deleteVoice];
  }

  v12 = [(ODDSiriSchemaODDAssistantProperties *)self optIn];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ODDSiriSchemaODDAssistantProperties *)self deleteOptIn];
  }

  v15 = [(ODDSiriSchemaODDAssistantProperties *)self homeKit];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ODDSiriSchemaODDAssistantProperties *)self deleteHomeKit];
  }

  v18 = [(ODDSiriSchemaODDAssistantProperties *)self appleIntelligence];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
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