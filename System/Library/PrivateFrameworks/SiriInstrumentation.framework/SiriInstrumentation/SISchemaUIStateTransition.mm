@interface SISchemaUIStateTransition
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaUIStateDismissed)dismissed;
- (SISchemaUIStatePresenting)presenting;
- (SISchemaUIStateTransition)initWithDictionary:(id)a3;
- (SISchemaUIStateTransition)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteDismissed;
- (void)deletePresenting;
- (void)setDismissed:(id)a3;
- (void)setHasDismissalReason:(BOOL)a3;
- (void)setHasPreviousState:(BOOL)a3;
- (void)setHasSiriPresentationType:(BOOL)a3;
- (void)setPresenting:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaUIStateTransition

- (SISchemaUIStatePresenting)presenting
{
  if (self->_whichPresentationstate == 5)
  {
    v3 = self->_presenting;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUIStateDismissed)dismissed
{
  if (self->_whichPresentationstate == 6)
  {
    v3 = self->_dismissed;
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
  if (has)
  {
    v5 = [(SISchemaUIStateTransition *)self currentState]- 1;
    if (v5 > 4)
    {
      v6 = @"SIRIUISTATE_UNKNOWN_SIRI_UI_STATE";
    }

    else
    {
      v6 = off_1E78E6D60[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"currentState"];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v7 = [(SISchemaUIStateTransition *)self dismissalReason]- 1;
    if (v7 > 0x33)
    {
      v8 = @"DISMISSALREASON_UNKNOWN_DISMISSAL_REASON";
    }

    else
    {
      v8 = off_1E78E6BC0[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"dismissalReason"];
  }

  if (self->_dismissed)
  {
    v9 = [(SISchemaUIStateTransition *)self dismissed];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"dismissed"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"dismissed"];
    }
  }

  if (self->_presenting)
  {
    v12 = [(SISchemaUIStateTransition *)self presenting];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"presenting"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"presenting"];
    }
  }

  v15 = self->_has;
  if ((v15 & 2) != 0)
  {
    v16 = [(SISchemaUIStateTransition *)self previousState]- 1;
    if (v16 > 4)
    {
      v17 = @"SIRIUISTATE_UNKNOWN_SIRI_UI_STATE";
    }

    else
    {
      v17 = off_1E78E6D60[v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"previousState"];
    v15 = self->_has;
  }

  if ((v15 & 4) != 0)
  {
    v18 = [(SISchemaUIStateTransition *)self siriPresentationType]- 1;
    if (v18 > 6)
    {
      v19 = @"SIRIPRESENTATIONTYPE_UNKNOWN_SIRI_PRESENTATION_TYPE";
    }

    else
    {
      v19 = off_1E78E6D88[v18];
    }

    [v3 setObject:v19 forKeyedSubscript:@"siriPresentationType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (SISchemaUIStateTransition)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SISchemaUIStateTransition;
  v5 = [(SISchemaUIStateTransition *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"currentState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUIStateTransition setCurrentState:](v5, "setCurrentState:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"previousState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUIStateTransition setPreviousState:](v5, "setPreviousState:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"siriPresentationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUIStateTransition setSiriPresentationType:](v5, "setSiriPresentationType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"dismissalReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUIStateTransition setDismissalReason:](v5, "setDismissalReason:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"presenting"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUIStatePresenting alloc] initWithDictionary:v10];
      [(SISchemaUIStateTransition *)v5 setPresenting:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"dismissed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUIStateDismissed alloc] initWithDictionary:v12];
      [(SISchemaUIStateTransition *)v5 setDismissed:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (SISchemaUIStateTransition)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaUIStateTransition *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaUIStateTransition *)self dictionaryRepresentation];
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

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_currentState;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_previousState;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v6 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_siriPresentationType;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v6 = 2654435761 * self->_dismissalReason;
LABEL_10:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(SISchemaUIStatePresenting *)self->_presenting hash];
  return v7 ^ [(SISchemaUIStateDismissed *)self->_dismissed hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichPresentationstate = self->_whichPresentationstate;
  if (whichPresentationstate != [v4 whichPresentationstate])
  {
    goto LABEL_28;
  }

  has = self->_has;
  v7 = v4[40];
  if ((*&has & 1) != (v7 & 1))
  {
    goto LABEL_28;
  }

  if (*&has)
  {
    currentState = self->_currentState;
    if (currentState != [v4 currentState])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v7 = v4[40];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v7 >> 1) & 1))
  {
    if (v9)
    {
      previousState = self->_previousState;
      if (previousState != [v4 previousState])
      {
        goto LABEL_28;
      }

      has = self->_has;
      v7 = v4[40];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v7 >> 2) & 1))
    {
      if (v11)
      {
        siriPresentationType = self->_siriPresentationType;
        if (siriPresentationType != [v4 siriPresentationType])
        {
          goto LABEL_28;
        }

        has = self->_has;
        v7 = v4[40];
      }

      v13 = (*&has >> 3) & 1;
      if (v13 != ((v7 >> 3) & 1))
      {
        goto LABEL_28;
      }

      if (v13)
      {
        dismissalReason = self->_dismissalReason;
        if (dismissalReason != [v4 dismissalReason])
        {
          goto LABEL_28;
        }
      }

      v15 = [(SISchemaUIStateTransition *)self presenting];
      v16 = [v4 presenting];
      if ((v15 != 0) == (v16 == 0))
      {
        goto LABEL_27;
      }

      v17 = [(SISchemaUIStateTransition *)self presenting];
      if (v17)
      {
        v18 = v17;
        v19 = [(SISchemaUIStateTransition *)self presenting];
        v20 = [v4 presenting];
        v21 = [v19 isEqual:v20];

        if (!v21)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

      v15 = [(SISchemaUIStateTransition *)self dismissed];
      v16 = [v4 dismissed];
      if ((v15 != 0) != (v16 == 0))
      {
        v22 = [(SISchemaUIStateTransition *)self dismissed];
        if (!v22)
        {

LABEL_31:
          v27 = 1;
          goto LABEL_29;
        }

        v23 = v22;
        v24 = [(SISchemaUIStateTransition *)self dismissed];
        v25 = [v4 dismissed];
        v26 = [v24 isEqual:v25];

        if (v26)
        {
          goto LABEL_31;
        }
      }

      else
      {
LABEL_27:
      }
    }
  }

LABEL_28:
  v27 = 0;
LABEL_29:

  return v27;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
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

LABEL_15:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  v5 = [(SISchemaUIStateTransition *)self presenting];

  if (v5)
  {
    v6 = [(SISchemaUIStateTransition *)self presenting];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(SISchemaUIStateTransition *)self dismissed];

  v8 = v10;
  if (v7)
  {
    v9 = [(SISchemaUIStateTransition *)self dismissed];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)deleteDismissed
{
  if (self->_whichPresentationstate == 6)
  {
    self->_whichPresentationstate = 0;
    self->_dismissed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDismissed:(id)a3
{
  v4 = a3;
  presenting = self->_presenting;
  self->_presenting = 0;

  v6 = 6;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichPresentationstate = v6;
  dismissed = self->_dismissed;
  self->_dismissed = v4;
}

- (void)deletePresenting
{
  if (self->_whichPresentationstate == 5)
  {
    self->_whichPresentationstate = 0;
    self->_presenting = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPresenting:(id)a3
{
  v4 = a3;
  dismissed = self->_dismissed;
  self->_dismissed = 0;

  v6 = 5;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichPresentationstate = v6;
  presenting = self->_presenting;
  self->_presenting = v4;
}

- (void)setHasDismissalReason:(BOOL)a3
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

- (void)setHasSiriPresentationType:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaUIStateTransition;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaUIStateTransition *)self presenting];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaUIStateTransition *)self deletePresenting];
  }

  v9 = [(SISchemaUIStateTransition *)self dismissed];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SISchemaUIStateTransition *)self deleteDismissed];
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