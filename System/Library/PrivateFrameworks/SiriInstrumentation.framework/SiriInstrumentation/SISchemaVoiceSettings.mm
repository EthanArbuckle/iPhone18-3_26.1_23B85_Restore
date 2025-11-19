@interface SISchemaVoiceSettings
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaVoiceSettings)initWithDictionary:(id)a3;
- (SISchemaVoiceSettings)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasVoiceAccent:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaVoiceSettings

- (SISchemaVoiceSettings)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SISchemaVoiceSettings;
  v5 = [(SISchemaVoiceSettings *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"voiceGender"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVoiceSettings setVoiceGender:](v5, "setVoiceGender:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"voiceAccent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVoiceSettings setVoiceAccent:](v5, "setVoiceAccent:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"voiceName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaVoiceSettings *)v5 setVoiceName:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"voiceAccentV2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaISOLocale alloc] initWithDictionary:v10];
      [(SISchemaVoiceSettings *)v5 setVoiceAccentV2:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (SISchemaVoiceSettings)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaVoiceSettings *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaVoiceSettings *)self dictionaryRepresentation];
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
    v4 = [(SISchemaVoiceSettings *)self voiceAccent]- 1;
    if (v4 > 0x3D)
    {
      v5 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v5 = off_1E78E6F48[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"voiceAccent"];
  }

  if (self->_voiceAccentV2)
  {
    v6 = [(SISchemaVoiceSettings *)self voiceAccentV2];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"voiceAccentV2"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"voiceAccentV2"];
    }
  }

  if (*&self->_has)
  {
    v9 = [(SISchemaVoiceSettings *)self voiceGender]- 1;
    if (v9 > 2)
    {
      v10 = @"VOICEGENDER_UNKNOWN_VOICE_GENDER";
    }

    else
    {
      v10 = off_1E78E7138[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"voiceGender"];
  }

  if (self->_voiceName)
  {
    v11 = [(SISchemaVoiceSettings *)self voiceName];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"voiceName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_voiceGender;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_voiceAccent;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_voiceName hash];
  return v5 ^ [(SISchemaISOLocale *)self->_voiceAccentV2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    voiceGender = self->_voiceGender;
    if (voiceGender != [v4 voiceGender])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    voiceAccent = self->_voiceAccent;
    if (voiceAccent != [v4 voiceAccent])
    {
      goto LABEL_19;
    }
  }

  v10 = [(SISchemaVoiceSettings *)self voiceName];
  v11 = [v4 voiceName];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_18;
  }

  v12 = [(SISchemaVoiceSettings *)self voiceName];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaVoiceSettings *)self voiceName];
    v15 = [v4 voiceName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v10 = [(SISchemaVoiceSettings *)self voiceAccentV2];
  v11 = [v4 voiceAccentV2];
  if ((v10 != 0) != (v11 == 0))
  {
    v17 = [(SISchemaVoiceSettings *)self voiceAccentV2];
    if (!v17)
    {

LABEL_22:
      v22 = 1;
      goto LABEL_20;
    }

    v18 = v17;
    v19 = [(SISchemaVoiceSettings *)self voiceAccentV2];
    v20 = [v4 voiceAccentV2];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_18:
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

  v5 = [(SISchemaVoiceSettings *)self voiceName];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(SISchemaVoiceSettings *)self voiceAccentV2];

  v7 = v9;
  if (v6)
  {
    v8 = [(SISchemaVoiceSettings *)self voiceAccentV2];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (void)setHasVoiceAccent:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = SISchemaVoiceSettings;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaVoiceSettings *)self voiceAccentV2:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SISchemaVoiceSettings *)self deleteVoiceAccentV2];
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