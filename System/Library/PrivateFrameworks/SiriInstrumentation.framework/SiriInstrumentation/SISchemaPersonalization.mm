@interface SISchemaPersonalization
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaPersonalization)initWithDictionary:(id)a3;
- (SISchemaPersonalization)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppleMusicSubscriber:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaPersonalization

- (SISchemaPersonalization)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SISchemaPersonalization;
  v5 = [(SISchemaPersonalization *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"personalDomainsSetup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaPersonalization setPersonalDomainsSetup:](v5, "setPersonalDomainsSetup:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"appleMusicSubscriber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaPersonalization setAppleMusicSubscriber:](v5, "setAppleMusicSubscriber:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"voiceSettings"];
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

- (SISchemaPersonalization)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaPersonalization *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaPersonalization *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaPersonalization appleMusicSubscriber](self, "appleMusicSubscriber")}];
    [v3 setObject:v5 forKeyedSubscript:@"appleMusicSubscriber"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaPersonalization personalDomainsSetup](self, "personalDomainsSetup")}];
    [v3 setObject:v6 forKeyedSubscript:@"personalDomainsSetup"];
  }

  if (self->_voiceSettings)
  {
    v7 = [(SISchemaPersonalization *)self voiceSettings];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"voiceSettings"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"voiceSettings"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    personalDomainsSetup = self->_personalDomainsSetup;
    if (personalDomainsSetup != [v4 personalDomainsSetup])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (appleMusicSubscriber = self->_appleMusicSubscriber, appleMusicSubscriber == [v4 appleMusicSubscriber]))
    {
      v10 = [(SISchemaPersonalization *)self voiceSettings];
      v11 = [v4 voiceSettings];
      v12 = v11;
      if ((v10 != 0) != (v11 == 0))
      {
        v13 = [(SISchemaPersonalization *)self voiceSettings];
        if (!v13)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [(SISchemaPersonalization *)self voiceSettings];
        v16 = [v4 voiceSettings];
        v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
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

  v5 = [(SISchemaPersonalization *)self voiceSettings];

  v6 = v8;
  if (v5)
  {
    v7 = [(SISchemaPersonalization *)self voiceSettings];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasAppleMusicSubscriber:(BOOL)a3
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
  v9.super_class = SISchemaPersonalization;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaPersonalization *)self voiceSettings:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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