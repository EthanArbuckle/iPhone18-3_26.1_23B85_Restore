@interface SRSTSchemaSRSTStateTransitionEvent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SRSTSchemaSRSTStateTransitionEvent)initWithDictionary:(id)a3;
- (SRSTSchemaSRSTStateTransitionEvent)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPreviousState:(BOOL)a3;
- (void)setHasReason:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SRSTSchemaSRSTStateTransitionEvent

- (SRSTSchemaSRSTStateTransitionEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SRSTSchemaSRSTStateTransitionEvent;
  v5 = [(SRSTSchemaSRSTStateTransitionEvent *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"currentState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SRSTSchemaSRSTStateTransitionEvent setCurrentState:](v5, "setCurrentState:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"previousState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SRSTSchemaSRSTStateTransitionEvent setPreviousState:](v5, "setPreviousState:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SRSTSchemaSRSTStateTransitionEvent setReason:](v5, "setReason:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SRSTSchemaSRSTStateTransitionEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SRSTSchemaSRSTStateTransitionEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SRSTSchemaSRSTStateTransitionEvent *)self dictionaryRepresentation];
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
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = [(SRSTSchemaSRSTStateTransitionEvent *)self previousState]- 1;
    if (v7 > 8)
    {
      v8 = @"SRSTSTATE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78E7608[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"previousState"];
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v5 = [(SRSTSchemaSRSTStateTransitionEvent *)self currentState]- 1;
  if (v5 > 8)
  {
    v6 = @"SRSTSTATE_UNKNOWN";
  }

  else
  {
    v6 = off_1E78E7608[v5];
  }

  [v3 setObject:v6 forKeyedSubscript:@"currentState"];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_13:
    v9 = [(SRSTSchemaSRSTStateTransitionEvent *)self reason]- 1;
    if (v9 > 0x16)
    {
      v10 = @"SRSTSTATETRANSITIONREASON_UNKNOWN";
    }

    else
    {
      v10 = off_1E78E7650[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"reason"];
  }

LABEL_17:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_currentState;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_previousState;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_reason;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    currentState = self->_currentState;
    if (currentState != [v4 currentState])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    previousState = self->_previousState;
    if (previousState == [v4 previousState])
    {
      has = self->_has;
      v6 = v4[20];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    reason = self->_reason;
    if (reason != [v4 reason])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasReason:(BOOL)a3
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

- (void)setHasPreviousState:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end