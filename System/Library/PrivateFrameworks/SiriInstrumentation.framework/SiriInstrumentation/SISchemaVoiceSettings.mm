@interface SISchemaVoiceSettings
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaVoiceSettings)initWithDictionary:(id)dictionary;
- (SISchemaVoiceSettings)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasVoiceAccent:(BOOL)accent;
- (void)writeTo:(id)to;
@end

@implementation SISchemaVoiceSettings

- (SISchemaVoiceSettings)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SISchemaVoiceSettings;
  v5 = [(SISchemaVoiceSettings *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceGender"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVoiceSettings setVoiceGender:](v5, "setVoiceGender:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"voiceAccent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVoiceSettings setVoiceAccent:](v5, "setVoiceAccent:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"voiceName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaVoiceSettings *)v5 setVoiceName:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"voiceAccentV2"];
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

- (SISchemaVoiceSettings)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaVoiceSettings *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaVoiceSettings *)self dictionaryRepresentation];
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
    v4 = [(SISchemaVoiceSettings *)self voiceAccent]- 1;
    if (v4 > 0x3D)
    {
      v5 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v5 = off_1E78E6F48[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"voiceAccent"];
  }

  if (self->_voiceAccentV2)
  {
    voiceAccentV2 = [(SISchemaVoiceSettings *)self voiceAccentV2];
    dictionaryRepresentation = [voiceAccentV2 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"voiceAccentV2"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"voiceAccentV2"];
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

    [dictionary setObject:v10 forKeyedSubscript:@"voiceGender"];
  }

  if (self->_voiceName)
  {
    voiceName = [(SISchemaVoiceSettings *)self voiceName];
    v12 = [voiceName copy];
    [dictionary setObject:v12 forKeyedSubscript:@"voiceName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    voiceGender = self->_voiceGender;
    if (voiceGender != [equalCopy voiceGender])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    voiceAccent = self->_voiceAccent;
    if (voiceAccent != [equalCopy voiceAccent])
    {
      goto LABEL_19;
    }
  }

  voiceName = [(SISchemaVoiceSettings *)self voiceName];
  voiceName2 = [equalCopy voiceName];
  if ((voiceName != 0) == (voiceName2 == 0))
  {
    goto LABEL_18;
  }

  voiceName3 = [(SISchemaVoiceSettings *)self voiceName];
  if (voiceName3)
  {
    v13 = voiceName3;
    voiceName4 = [(SISchemaVoiceSettings *)self voiceName];
    voiceName5 = [equalCopy voiceName];
    v16 = [voiceName4 isEqual:voiceName5];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  voiceName = [(SISchemaVoiceSettings *)self voiceAccentV2];
  voiceName2 = [equalCopy voiceAccentV2];
  if ((voiceName != 0) != (voiceName2 == 0))
  {
    voiceAccentV2 = [(SISchemaVoiceSettings *)self voiceAccentV2];
    if (!voiceAccentV2)
    {

LABEL_22:
      v22 = 1;
      goto LABEL_20;
    }

    v18 = voiceAccentV2;
    voiceAccentV22 = [(SISchemaVoiceSettings *)self voiceAccentV2];
    voiceAccentV23 = [equalCopy voiceAccentV2];
    v21 = [voiceAccentV22 isEqual:voiceAccentV23];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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

  voiceName = [(SISchemaVoiceSettings *)self voiceName];

  if (voiceName)
  {
    PBDataWriterWriteStringField();
  }

  voiceAccentV2 = [(SISchemaVoiceSettings *)self voiceAccentV2];

  v7 = toCopy;
  if (voiceAccentV2)
  {
    voiceAccentV22 = [(SISchemaVoiceSettings *)self voiceAccentV2];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (void)setHasVoiceAccent:(BOOL)accent
{
  if (accent)
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
  v9.receiver = self;
  v9.super_class = SISchemaVoiceSettings;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaVoiceSettings *)self voiceAccentV2:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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