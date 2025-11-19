@interface SICSchemaSICInvocationContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SICSchemaSICInvocationCancelled)cancelled;
- (SICSchemaSICInvocationContext)initWithDictionary:(id)a3;
- (SICSchemaSICInvocationContext)initWithJSON:(id)a3;
- (SICSchemaSICInvocationEnded)ended;
- (SICSchemaSICInvocationStarted)startedOrChanged;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteCancelled;
- (void)deleteEnded;
- (void)deleteStartedOrChanged;
- (void)setCancelled:(id)a3;
- (void)setEnded:(id)a3;
- (void)setStartedOrChanged:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SICSchemaSICInvocationContext

- (SICSchemaSICInvocationContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SICSchemaSICInvocationContext;
  v5 = [(SICSchemaSICInvocationContext *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SICSchemaSICInvocationStarted alloc] initWithDictionary:v6];
      [(SICSchemaSICInvocationContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SICSchemaSICInvocationEnded alloc] initWithDictionary:v8];
      [(SICSchemaSICInvocationContext *)v5 setEnded:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"cancelled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SICSchemaSICInvocationCancelled alloc] initWithDictionary:v10];
      [(SICSchemaSICInvocationContext *)v5 setCancelled:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (SICSchemaSICInvocationContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SICSchemaSICInvocationContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SICSchemaSICInvocationContext *)self dictionaryRepresentation];
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
  if (self->_cancelled)
  {
    v4 = [(SICSchemaSICInvocationContext *)self cancelled];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"cancelled"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"cancelled"];
    }
  }

  if (self->_ended)
  {
    v7 = [(SICSchemaSICInvocationContext *)self ended];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"ended"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_startedOrChanged)
  {
    v10 = [(SICSchemaSICInvocationContext *)self startedOrChanged];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SICSchemaSICInvocationStarted *)self->_startedOrChanged hash];
  v4 = [(SICSchemaSICInvocationEnded *)self->_ended hash]^ v3;
  return v4 ^ [(SICSchemaSICInvocationCancelled *)self->_cancelled hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [v4 whichContextevent])
  {
    goto LABEL_18;
  }

  v6 = [(SICSchemaSICInvocationContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(SICSchemaSICInvocationContext *)self startedOrChanged];
  if (v8)
  {
    v9 = v8;
    v10 = [(SICSchemaSICInvocationContext *)self startedOrChanged];
    v11 = [v4 startedOrChanged];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(SICSchemaSICInvocationContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(SICSchemaSICInvocationContext *)self ended];
  if (v13)
  {
    v14 = v13;
    v15 = [(SICSchemaSICInvocationContext *)self ended];
    v16 = [v4 ended];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(SICSchemaSICInvocationContext *)self cancelled];
  v7 = [v4 cancelled];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(SICSchemaSICInvocationContext *)self cancelled];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(SICSchemaSICInvocationContext *)self cancelled];
    v21 = [v4 cancelled];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(SICSchemaSICInvocationContext *)self startedOrChanged];

  if (v4)
  {
    v5 = [(SICSchemaSICInvocationContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SICSchemaSICInvocationContext *)self ended];

  if (v6)
  {
    v7 = [(SICSchemaSICInvocationContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SICSchemaSICInvocationContext *)self cancelled];

  v9 = v11;
  if (v8)
  {
    v10 = [(SICSchemaSICInvocationContext *)self cancelled];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteCancelled
{
  if (self->_whichContextevent == 103)
  {
    self->_whichContextevent = 0;
    self->_cancelled = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SICSchemaSICInvocationCancelled)cancelled
{
  if (self->_whichContextevent == 103)
  {
    v3 = self->_cancelled;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCancelled:(id)a3
{
  v4 = a3;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  v7 = 103;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  cancelled = self->_cancelled;
  self->_cancelled = v4;
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 102)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SICSchemaSICInvocationEnded)ended
{
  if (self->_whichContextevent == 102)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnded:(id)a3
{
  v4 = a3;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  v7 = 102;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  ended = self->_ended;
  self->_ended = v4;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 101)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SICSchemaSICInvocationStarted)startedOrChanged
{
  if (self->_whichContextevent == 101)
  {
    v3 = self->_startedOrChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStartedOrChanged:(id)a3
{
  v4 = a3;
  ended = self->_ended;
  self->_ended = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  v7 = 101;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SICSchemaSICInvocationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(SICSchemaSICInvocationContext *)self startedOrChanged];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SICSchemaSICInvocationContext *)self deleteStartedOrChanged];
  }

  v9 = [(SICSchemaSICInvocationContext *)self ended];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SICSchemaSICInvocationContext *)self deleteEnded];
  }

  v12 = [(SICSchemaSICInvocationContext *)self cancelled];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SICSchemaSICInvocationContext *)self deleteCancelled];
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