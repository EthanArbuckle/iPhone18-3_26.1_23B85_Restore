@interface SISchemaDeviceFixedContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaDeviceFixedContext)initWithDictionary:(id)a3;
- (SISchemaDeviceFixedContext)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaDeviceFixedContext

- (SISchemaDeviceFixedContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = SISchemaDeviceFixedContext;
  v5 = [(SISchemaDeviceFixedContext *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaDeviceFixedContext *)v5 setDeviceType:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaDeviceFixedContext *)v5 setSystemBuild:v9];
    }

    v28 = v8;
    v10 = [v4 objectForKeyedSubscript:@"siriInputLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaDeviceFixedContext *)v5 setSiriInputLanguage:v11];
    }

    v27 = v10;
    v12 = [v4 objectForKeyedSubscript:@"siriVoiceLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(SISchemaDeviceFixedContext *)v5 setSiriVoiceLanguage:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"systemLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(SISchemaDeviceFixedContext *)v5 setSystemLocale:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"siriDeviceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(SISchemaDeviceFixedContext *)v5 setSiriDeviceID:v17];
    }

    v29 = v6;
    v18 = [v4 objectForKeyedSubscript:@"speechID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(SISchemaDeviceFixedContext *)v5 setSpeechID:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"siriUISettings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[SISchemaSiriUISettings alloc] initWithDictionary:v20];
      [(SISchemaDeviceFixedContext *)v5 setSiriUISettings:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"isSatellitePaired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDeviceFixedContext setIsSatellitePaired:](v5, "setIsSatellitePaired:", [v22 BOOLValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"voiceSettings"];
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

- (SISchemaDeviceFixedContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaDeviceFixedContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaDeviceFixedContext *)self dictionaryRepresentation];
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
  if (self->_deviceType)
  {
    v4 = [(SISchemaDeviceFixedContext *)self deviceType];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"deviceType"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaDeviceFixedContext isSatellitePaired](self, "isSatellitePaired")}];
    [v3 setObject:v6 forKeyedSubscript:@"isSatellitePaired"];
  }

  if (self->_siriDeviceID)
  {
    v7 = [(SISchemaDeviceFixedContext *)self siriDeviceID];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"siriDeviceID"];
  }

  if (self->_siriInputLanguage)
  {
    v9 = [(SISchemaDeviceFixedContext *)self siriInputLanguage];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"siriInputLanguage"];
  }

  if (self->_siriUISettings)
  {
    v11 = [(SISchemaDeviceFixedContext *)self siriUISettings];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"siriUISettings"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"siriUISettings"];
    }
  }

  if (self->_siriVoiceLanguage)
  {
    v14 = [(SISchemaDeviceFixedContext *)self siriVoiceLanguage];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"siriVoiceLanguage"];
  }

  if (self->_speechID)
  {
    v16 = [(SISchemaDeviceFixedContext *)self speechID];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"speechID"];
  }

  if (self->_systemBuild)
  {
    v18 = [(SISchemaDeviceFixedContext *)self systemBuild];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"systemBuild"];
  }

  if (self->_systemLocale)
  {
    v20 = [(SISchemaDeviceFixedContext *)self systemLocale];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"systemLocale"];
  }

  if (self->_voiceSettings)
  {
    v22 = [(SISchemaDeviceFixedContext *)self voiceSettings];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"voiceSettings"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"voiceSettings"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_50;
  }

  v5 = [(SISchemaDeviceFixedContext *)self deviceType];
  v6 = [v4 deviceType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v7 = [(SISchemaDeviceFixedContext *)self deviceType];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaDeviceFixedContext *)self deviceType];
    v10 = [v4 deviceType];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDeviceFixedContext *)self systemBuild];
  v6 = [v4 systemBuild];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v12 = [(SISchemaDeviceFixedContext *)self systemBuild];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaDeviceFixedContext *)self systemBuild];
    v15 = [v4 systemBuild];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDeviceFixedContext *)self siriInputLanguage];
  v6 = [v4 siriInputLanguage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v17 = [(SISchemaDeviceFixedContext *)self siriInputLanguage];
  if (v17)
  {
    v18 = v17;
    v19 = [(SISchemaDeviceFixedContext *)self siriInputLanguage];
    v20 = [v4 siriInputLanguage];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDeviceFixedContext *)self siriVoiceLanguage];
  v6 = [v4 siriVoiceLanguage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v22 = [(SISchemaDeviceFixedContext *)self siriVoiceLanguage];
  if (v22)
  {
    v23 = v22;
    v24 = [(SISchemaDeviceFixedContext *)self siriVoiceLanguage];
    v25 = [v4 siriVoiceLanguage];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDeviceFixedContext *)self systemLocale];
  v6 = [v4 systemLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v27 = [(SISchemaDeviceFixedContext *)self systemLocale];
  if (v27)
  {
    v28 = v27;
    v29 = [(SISchemaDeviceFixedContext *)self systemLocale];
    v30 = [v4 systemLocale];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDeviceFixedContext *)self siriDeviceID];
  v6 = [v4 siriDeviceID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v32 = [(SISchemaDeviceFixedContext *)self siriDeviceID];
  if (v32)
  {
    v33 = v32;
    v34 = [(SISchemaDeviceFixedContext *)self siriDeviceID];
    v35 = [v4 siriDeviceID];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDeviceFixedContext *)self speechID];
  v6 = [v4 speechID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v37 = [(SISchemaDeviceFixedContext *)self speechID];
  if (v37)
  {
    v38 = v37;
    v39 = [(SISchemaDeviceFixedContext *)self speechID];
    v40 = [v4 speechID];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDeviceFixedContext *)self siriUISettings];
  v6 = [v4 siriUISettings];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v42 = [(SISchemaDeviceFixedContext *)self siriUISettings];
  if (v42)
  {
    v43 = v42;
    v44 = [(SISchemaDeviceFixedContext *)self siriUISettings];
    v45 = [v4 siriUISettings];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[88] & 1))
  {
    goto LABEL_50;
  }

  if (*&self->_has)
  {
    isSatellitePaired = self->_isSatellitePaired;
    if (isSatellitePaired != [v4 isSatellitePaired])
    {
      goto LABEL_50;
    }
  }

  v5 = [(SISchemaDeviceFixedContext *)self voiceSettings];
  v6 = [v4 voiceSettings];
  if ((v5 != 0) != (v6 == 0))
  {
    v48 = [(SISchemaDeviceFixedContext *)self voiceSettings];
    if (!v48)
    {

LABEL_53:
      v53 = 1;
      goto LABEL_51;
    }

    v49 = v48;
    v50 = [(SISchemaDeviceFixedContext *)self voiceSettings];
    v51 = [v4 voiceSettings];
    v52 = [v50 isEqual:v51];

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

- (void)writeTo:(id)a3
{
  v16 = a3;
  v4 = [(SISchemaDeviceFixedContext *)self deviceType];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(SISchemaDeviceFixedContext *)self systemBuild];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(SISchemaDeviceFixedContext *)self siriInputLanguage];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(SISchemaDeviceFixedContext *)self siriVoiceLanguage];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(SISchemaDeviceFixedContext *)self systemLocale];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(SISchemaDeviceFixedContext *)self siriDeviceID];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = [(SISchemaDeviceFixedContext *)self speechID];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v11 = [(SISchemaDeviceFixedContext *)self siriUISettings];

  if (v11)
  {
    v12 = [(SISchemaDeviceFixedContext *)self siriUISettings];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(SISchemaDeviceFixedContext *)self voiceSettings];

  v14 = v16;
  if (v13)
  {
    v15 = [(SISchemaDeviceFixedContext *)self voiceSettings];
    PBDataWriterWriteSubmessage();

    v14 = v16;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaDeviceFixedContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:8])
  {
    [(SISchemaDeviceFixedContext *)self deleteSiriDeviceID];
    [(SISchemaDeviceFixedContext *)self deleteSpeechID];
  }

  v6 = [(SISchemaDeviceFixedContext *)self siriUISettings];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaDeviceFixedContext *)self deleteSiriUISettings];
  }

  v9 = [(SISchemaDeviceFixedContext *)self voiceSettings];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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