@interface SISchemaUIStateTransition
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUIStateDismissed)dismissed;
- (SISchemaUIStatePresenting)presenting;
- (SISchemaUIStateTransition)initWithDictionary:(id)dictionary;
- (SISchemaUIStateTransition)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteDismissed;
- (void)deletePresenting;
- (void)setDismissed:(id)dismissed;
- (void)setHasDismissalReason:(BOOL)reason;
- (void)setHasPreviousState:(BOOL)state;
- (void)setHasSiriPresentationType:(BOOL)type;
- (void)setPresenting:(id)presenting;
- (void)writeTo:(id)to;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v6 forKeyedSubscript:@"currentState"];
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

    [dictionary setObject:v8 forKeyedSubscript:@"dismissalReason"];
  }

  if (self->_dismissed)
  {
    dismissed = [(SISchemaUIStateTransition *)self dismissed];
    dictionaryRepresentation = [dismissed dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dismissed"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dismissed"];
    }
  }

  if (self->_presenting)
  {
    presenting = [(SISchemaUIStateTransition *)self presenting];
    dictionaryRepresentation2 = [presenting dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"presenting"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"presenting"];
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

    [dictionary setObject:v17 forKeyedSubscript:@"previousState"];
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

    [dictionary setObject:v19 forKeyedSubscript:@"siriPresentationType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (SISchemaUIStateTransition)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = SISchemaUIStateTransition;
  v5 = [(SISchemaUIStateTransition *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"currentState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUIStateTransition setCurrentState:](v5, "setCurrentState:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"previousState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUIStateTransition setPreviousState:](v5, "setPreviousState:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"siriPresentationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUIStateTransition setSiriPresentationType:](v5, "setSiriPresentationType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"dismissalReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUIStateTransition setDismissalReason:](v5, "setDismissalReason:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"presenting"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUIStatePresenting alloc] initWithDictionary:v10];
      [(SISchemaUIStateTransition *)v5 setPresenting:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"dismissed"];
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

- (SISchemaUIStateTransition)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUIStateTransition *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUIStateTransition *)self dictionaryRepresentation];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichPresentationstate = self->_whichPresentationstate;
  if (whichPresentationstate != [equalCopy whichPresentationstate])
  {
    goto LABEL_28;
  }

  has = self->_has;
  v7 = equalCopy[40];
  if ((*&has & 1) != (v7 & 1))
  {
    goto LABEL_28;
  }

  if (*&has)
  {
    currentState = self->_currentState;
    if (currentState != [equalCopy currentState])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v7 = equalCopy[40];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v7 >> 1) & 1))
  {
    if (v9)
    {
      previousState = self->_previousState;
      if (previousState != [equalCopy previousState])
      {
        goto LABEL_28;
      }

      has = self->_has;
      v7 = equalCopy[40];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v7 >> 2) & 1))
    {
      if (v11)
      {
        siriPresentationType = self->_siriPresentationType;
        if (siriPresentationType != [equalCopy siriPresentationType])
        {
          goto LABEL_28;
        }

        has = self->_has;
        v7 = equalCopy[40];
      }

      v13 = (*&has >> 3) & 1;
      if (v13 != ((v7 >> 3) & 1))
      {
        goto LABEL_28;
      }

      if (v13)
      {
        dismissalReason = self->_dismissalReason;
        if (dismissalReason != [equalCopy dismissalReason])
        {
          goto LABEL_28;
        }
      }

      presenting = [(SISchemaUIStateTransition *)self presenting];
      presenting2 = [equalCopy presenting];
      if ((presenting != 0) == (presenting2 == 0))
      {
        goto LABEL_27;
      }

      presenting3 = [(SISchemaUIStateTransition *)self presenting];
      if (presenting3)
      {
        v18 = presenting3;
        presenting4 = [(SISchemaUIStateTransition *)self presenting];
        presenting5 = [equalCopy presenting];
        v21 = [presenting4 isEqual:presenting5];

        if (!v21)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

      presenting = [(SISchemaUIStateTransition *)self dismissed];
      presenting2 = [equalCopy dismissed];
      if ((presenting != 0) != (presenting2 == 0))
      {
        dismissed = [(SISchemaUIStateTransition *)self dismissed];
        if (!dismissed)
        {

LABEL_31:
          v27 = 1;
          goto LABEL_29;
        }

        v23 = dismissed;
        dismissed2 = [(SISchemaUIStateTransition *)self dismissed];
        dismissed3 = [equalCopy dismissed];
        v26 = [dismissed2 isEqual:dismissed3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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
  presenting = [(SISchemaUIStateTransition *)self presenting];

  if (presenting)
  {
    presenting2 = [(SISchemaUIStateTransition *)self presenting];
    PBDataWriterWriteSubmessage();
  }

  dismissed = [(SISchemaUIStateTransition *)self dismissed];

  v8 = toCopy;
  if (dismissed)
  {
    dismissed2 = [(SISchemaUIStateTransition *)self dismissed];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
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

- (void)setDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
  presenting = self->_presenting;
  self->_presenting = 0;

  v6 = 6;
  if (!dismissedCopy)
  {
    v6 = 0;
  }

  self->_whichPresentationstate = v6;
  dismissed = self->_dismissed;
  self->_dismissed = dismissedCopy;
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

- (void)setPresenting:(id)presenting
{
  presentingCopy = presenting;
  dismissed = self->_dismissed;
  self->_dismissed = 0;

  v6 = 5;
  if (!presentingCopy)
  {
    v6 = 0;
  }

  self->_whichPresentationstate = v6;
  presenting = self->_presenting;
  self->_presenting = presentingCopy;
}

- (void)setHasDismissalReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSiriPresentationType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPreviousState:(BOOL)state
{
  if (state)
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
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SISchemaUIStateTransition;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  presenting = [(SISchemaUIStateTransition *)self presenting];
  v7 = [presenting applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaUIStateTransition *)self deletePresenting];
  }

  dismissed = [(SISchemaUIStateTransition *)self dismissed];
  v10 = [dismissed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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