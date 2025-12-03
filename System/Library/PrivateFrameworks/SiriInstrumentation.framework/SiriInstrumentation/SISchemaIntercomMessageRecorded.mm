@interface SISchemaIntercomMessageRecorded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaIntercomMessageRecorded)initWithDictionary:(id)dictionary;
- (SISchemaIntercomMessageRecorded)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDisambiguationRequired:(BOOL)required;
- (void)setHasIntercomTarget:(BOOL)target;
- (void)setHasIsReply:(BOOL)reply;
- (void)writeTo:(id)to;
@end

@implementation SISchemaIntercomMessageRecorded

- (SISchemaIntercomMessageRecorded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaIntercomMessageRecorded;
  v5 = [(SISchemaIntercomMessageRecorded *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"durationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaIntercomMessageRecorded setDurationInMs:](v5, "setDurationInMs:", [v6 longLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isReply"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaIntercomMessageRecorded setIsReply:](v5, "setIsReply:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaIntercomMessageRecorded setDisambiguationRequired:](v5, "setDisambiguationRequired:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"intercomTarget"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaIntercomMessageRecorded setIntercomTarget:](v5, "setIntercomTarget:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaIntercomMessageRecorded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaIntercomMessageRecorded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaIntercomMessageRecorded *)self dictionaryRepresentation];
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
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaIntercomMessageRecorded disambiguationRequired](self, "disambiguationRequired")}];
    [dictionary setObject:v7 forKeyedSubscript:@"disambiguationRequired"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaIntercomMessageRecorded durationInMs](self, "durationInMs")}];
  [dictionary setObject:v8 forKeyedSubscript:@"durationInMs"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [(SISchemaIntercomMessageRecorded *)self intercomTarget]- 1;
  if (v9 > 2)
  {
    v10 = @"INTERCOMTARGET_UNKNOWN_INTERCOM_TARGET";
  }

  else
  {
    v10 = off_1E78E4DC8[v9];
  }

  [dictionary setObject:v10 forKeyedSubscript:@"intercomTarget"];
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaIntercomMessageRecorded isReply](self, "isReply")}];
  [dictionary setObject:v5 forKeyedSubscript:@"isReply"];

LABEL_6:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_durationInMs;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_isReply;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_disambiguationRequired;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_intercomTarget;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    durationInMs = self->_durationInMs;
    if (durationInMs != [equalCopy durationInMs])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    isReply = self->_isReply;
    if (isReply != [equalCopy isReply])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    disambiguationRequired = self->_disambiguationRequired;
    if (disambiguationRequired == [equalCopy disambiguationRequired])
    {
      has = self->_has;
      v6 = equalCopy[24];
      goto LABEL_14;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v12)
  {
    intercomTarget = self->_intercomTarget;
    if (intercomTarget != [equalCopy intercomTarget])
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)setHasIntercomTarget:(BOOL)target
{
  if (target)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDisambiguationRequired:(BOOL)required
{
  if (required)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsReply:(BOOL)reply
{
  if (reply)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end