@interface ODBATCHSiriSchemaODBATCHDataReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODBATCHSiriSchemaODBATCHDataReported)initWithDictionary:(id)a3;
- (ODBATCHSiriSchemaODBATCHDataReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDaysWithTwoAssistantSpeechRequestsPerWeek:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODBATCHSiriSchemaODBATCHDataReported

- (ODBATCHSiriSchemaODBATCHDataReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ODBATCHSiriSchemaODBATCHDataReported;
  v5 = [(ODBATCHSiriSchemaODBATCHDataReported *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalClockId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODBATCHSiriSchemaODBATCHDataReported *)v5 setOriginalClockId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"daysWithTwoValidAssistantTurnsPerWeek"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODBATCHSiriSchemaODBATCHDataReported setDaysWithTwoValidAssistantTurnsPerWeek:](v5, "setDaysWithTwoValidAssistantTurnsPerWeek:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"daysWithTwoAssistantSpeechRequestsPerWeek"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODBATCHSiriSchemaODBATCHDataReported setDaysWithTwoAssistantSpeechRequestsPerWeek:](v5, "setDaysWithTwoAssistantSpeechRequestsPerWeek:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (ODBATCHSiriSchemaODBATCHDataReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODBATCHSiriSchemaODBATCHDataReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODBATCHSiriSchemaODBATCHDataReported *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODBATCHSiriSchemaODBATCHDataReported daysWithTwoAssistantSpeechRequestsPerWeek](self, "daysWithTwoAssistantSpeechRequestsPerWeek")}];
    [v3 setObject:v5 forKeyedSubscript:@"daysWithTwoAssistantSpeechRequestsPerWeek"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODBATCHSiriSchemaODBATCHDataReported daysWithTwoValidAssistantTurnsPerWeek](self, "daysWithTwoValidAssistantTurnsPerWeek")}];
    [v3 setObject:v6 forKeyedSubscript:@"daysWithTwoValidAssistantTurnsPerWeek"];
  }

  if (self->_originalClockId)
  {
    v7 = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"originalClockId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"originalClockId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId];
  v6 = [v4 originalClockId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId];
    v11 = [v4 originalClockId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    daysWithTwoValidAssistantTurnsPerWeek = self->_daysWithTwoValidAssistantTurnsPerWeek;
    if (daysWithTwoValidAssistantTurnsPerWeek == [v4 daysWithTwoValidAssistantTurnsPerWeek])
    {
      has = self->_has;
      v14 = v4[24];
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
    if (daysWithTwoAssistantSpeechRequestsPerWeek != [v4 daysWithTwoAssistantSpeechRequestsPerWeek])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId];

  if (v4)
  {
    v5 = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = v8;
  }
}

- (void)setHasDaysWithTwoAssistantSpeechRequestsPerWeek:(BOOL)a3
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
  v9.super_class = ODBATCHSiriSchemaODBATCHDataReported;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODBATCHSiriSchemaODBATCHDataReported *)self originalClockId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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