@interface ODBATCHSiriSchemaODBATCHDataReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODBATCHSiriSchemaODBATCHDataReported)initWithDictionary:(id)dictionary;
- (ODBATCHSiriSchemaODBATCHDataReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDaysWithTwoAssistantSpeechRequestsPerWeek:(BOOL)week;
- (void)writeTo:(id)to;
@end

@implementation ODBATCHSiriSchemaODBATCHDataReported

- (ODBATCHSiriSchemaODBATCHDataReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODBATCHSiriSchemaODBATCHDataReported;
  v5 = [(ODBATCHSiriSchemaODBATCHDataReported *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalClockId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODBATCHSiriSchemaODBATCHDataReported *)v5 setOriginalClockId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"daysWithTwoValidAssistantTurnsPerWeek"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODBATCHSiriSchemaODBATCHDataReported setDaysWithTwoValidAssistantTurnsPerWeek:](v5, "setDaysWithTwoValidAssistantTurnsPerWeek:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"daysWithTwoAssistantSpeechRequestsPerWeek"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODBATCHSiriSchemaODBATCHDataReported setDaysWithTwoAssistantSpeechRequestsPerWeek:](v5, "setDaysWithTwoAssistantSpeechRequestsPerWeek:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (ODBATCHSiriSchemaODBATCHDataReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODBATCHSiriSchemaODBATCHDataReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODBATCHSiriSchemaODBATCHDataReported *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODBATCHSiriSchemaODBATCHDataReported daysWithTwoAssistantSpeechRequestsPerWeek](self, "daysWithTwoAssistantSpeechRequestsPerWeek")}];
    [dictionary setObject:v5 forKeyedSubscript:@"daysWithTwoAssistantSpeechRequestsPerWeek"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODBATCHSiriSchemaODBATCHDataReported daysWithTwoValidAssistantTurnsPerWeek](self, "daysWithTwoValidAssistantTurnsPerWeek")}];
    [dictionary setObject:v6 forKeyedSubscript:@"daysWithTwoValidAssistantTurnsPerWeek"];
  }

  if (self->_originalClockId)
  {
    originalClockId = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId];
    dictionaryRepresentation = [originalClockId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originalClockId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originalClockId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalClockId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_daysWithTwoValidAssistantTurnsPerWeek;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_daysWithTwoAssistantSpeechRequestsPerWeek;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  originalClockId = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId];
  originalClockId2 = [equalCopy originalClockId];
  v7 = originalClockId2;
  if ((originalClockId != 0) == (originalClockId2 == 0))
  {

    goto LABEL_16;
  }

  originalClockId3 = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId];
  if (originalClockId3)
  {
    v9 = originalClockId3;
    originalClockId4 = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId];
    originalClockId5 = [equalCopy originalClockId];
    v12 = [originalClockId4 isEqual:originalClockId5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    daysWithTwoValidAssistantTurnsPerWeek = self->_daysWithTwoValidAssistantTurnsPerWeek;
    if (daysWithTwoValidAssistantTurnsPerWeek == [equalCopy daysWithTwoValidAssistantTurnsPerWeek])
    {
      has = self->_has;
      v14 = equalCopy[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    daysWithTwoAssistantSpeechRequestsPerWeek = self->_daysWithTwoAssistantSpeechRequestsPerWeek;
    if (daysWithTwoAssistantSpeechRequestsPerWeek != [equalCopy daysWithTwoAssistantSpeechRequestsPerWeek])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  originalClockId = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId];

  if (originalClockId)
  {
    originalClockId2 = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
  }
}

- (void)setHasDaysWithTwoAssistantSpeechRequestsPerWeek:(BOOL)week
{
  if (week)
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
  v9.super_class = ODBATCHSiriSchemaODBATCHDataReported;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODBATCHSiriSchemaODBATCHDataReported *)self deleteOriginalClockId];
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