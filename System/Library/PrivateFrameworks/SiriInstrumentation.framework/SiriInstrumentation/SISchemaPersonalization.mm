@interface SISchemaPersonalization
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaPersonalization)initWithDictionary:(id)dictionary;
- (SISchemaPersonalization)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppleMusicSubscriber:(BOOL)subscriber;
- (void)writeTo:(id)to;
@end

@implementation SISchemaPersonalization

- (SISchemaPersonalization)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaPersonalization;
  v5 = [(SISchemaPersonalization *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"personalDomainsSetup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaPersonalization setPersonalDomainsSetup:](v5, "setPersonalDomainsSetup:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"appleMusicSubscriber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaPersonalization setAppleMusicSubscriber:](v5, "setAppleMusicSubscriber:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"voiceSettings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaVoiceSettings alloc] initWithDictionary:v8];
      [(SISchemaPersonalization *)v5 setVoiceSettings:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaPersonalization)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaPersonalization *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaPersonalization *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaPersonalization appleMusicSubscriber](self, "appleMusicSubscriber")}];
    [dictionary setObject:v5 forKeyedSubscript:@"appleMusicSubscriber"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaPersonalization personalDomainsSetup](self, "personalDomainsSetup")}];
    [dictionary setObject:v6 forKeyedSubscript:@"personalDomainsSetup"];
  }

  if (self->_voiceSettings)
  {
    voiceSettings = [(SISchemaPersonalization *)self voiceSettings];
    dictionaryRepresentation = [voiceSettings dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"voiceSettings"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"voiceSettings"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_personalDomainsSetup;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(SISchemaVoiceSettings *)self->_voiceSettings hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_appleMusicSubscriber;
  return v7 ^ v6 ^ [(SISchemaVoiceSettings *)self->_voiceSettings hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    personalDomainsSetup = self->_personalDomainsSetup;
    if (personalDomainsSetup != [equalCopy personalDomainsSetup])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (appleMusicSubscriber = self->_appleMusicSubscriber, appleMusicSubscriber == [equalCopy appleMusicSubscriber]))
    {
      voiceSettings = [(SISchemaPersonalization *)self voiceSettings];
      voiceSettings2 = [equalCopy voiceSettings];
      v12 = voiceSettings2;
      if ((voiceSettings != 0) != (voiceSettings2 == 0))
      {
        voiceSettings3 = [(SISchemaPersonalization *)self voiceSettings];
        if (!voiceSettings3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = voiceSettings3;
        voiceSettings4 = [(SISchemaPersonalization *)self voiceSettings];
        voiceSettings5 = [equalCopy voiceSettings];
        v17 = [voiceSettings4 isEqual:voiceSettings5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  voiceSettings = [(SISchemaPersonalization *)self voiceSettings];

  v6 = toCopy;
  if (voiceSettings)
  {
    voiceSettings2 = [(SISchemaPersonalization *)self voiceSettings];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasAppleMusicSubscriber:(BOOL)subscriber
{
  if (subscriber)
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
  v9.super_class = SISchemaPersonalization;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaPersonalization *)self voiceSettings:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaPersonalization *)self deleteVoiceSettings];
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