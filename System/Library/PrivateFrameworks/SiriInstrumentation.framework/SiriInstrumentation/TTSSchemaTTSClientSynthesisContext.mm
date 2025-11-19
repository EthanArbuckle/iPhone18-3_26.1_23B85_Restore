@interface TTSSchemaTTSClientSynthesisContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (TTSSchemaTTSClientSynthesisContext)initWithDictionary:(id)a3;
- (TTSSchemaTTSClientSynthesisContext)initWithJSON:(id)a3;
- (TTSSchemaTTSSynthesisCancelled)cancelled;
- (TTSSchemaTTSSynthesisEnded)ended;
- (TTSSchemaTTSSynthesisFailed)failed;
- (TTSSchemaTTSSynthesisStarted)startedOrChanged;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteCancelled;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)deleteStartedOrChanged;
- (void)setCancelled:(id)a3;
- (void)setEnded:(id)a3;
- (void)setFailed:(id)a3;
- (void)setStartedOrChanged:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TTSSchemaTTSClientSynthesisContext

- (TTSSchemaTTSClientSynthesisContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = TTSSchemaTTSClientSynthesisContext;
  v5 = [(TTSSchemaTTSClientSynthesisContext *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(TTSSchemaTTSClientSynthesisContext *)v5 setContextId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[TTSSchemaTTSSynthesisStarted alloc] initWithDictionary:v8];
      [(TTSSchemaTTSClientSynthesisContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[TTSSchemaTTSSynthesisEnded alloc] initWithDictionary:v10];
      [(TTSSchemaTTSClientSynthesisContext *)v5 setEnded:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[TTSSchemaTTSSynthesisFailed alloc] initWithDictionary:v12];
      [(TTSSchemaTTSClientSynthesisContext *)v5 setFailed:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"cancelled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[TTSSchemaTTSSynthesisCancelled alloc] initWithDictionary:v14];
      [(TTSSchemaTTSClientSynthesisContext *)v5 setCancelled:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (TTSSchemaTTSClientSynthesisContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(TTSSchemaTTSClientSynthesisContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(TTSSchemaTTSClientSynthesisContext *)self dictionaryRepresentation];
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
    v4 = [(TTSSchemaTTSClientSynthesisContext *)self cancelled];
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

  if (self->_contextId)
  {
    v7 = [(TTSSchemaTTSClientSynthesisContext *)self contextId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"contextId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"contextId"];
    }
  }

  if (self->_ended)
  {
    v10 = [(TTSSchemaTTSClientSynthesisContext *)self ended];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"ended"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_failed)
  {
    v13 = [(TTSSchemaTTSClientSynthesisContext *)self failed];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"failed"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"failed"];
    }
  }

  if (self->_startedOrChanged)
  {
    v16 = [(TTSSchemaTTSClientSynthesisContext *)self startedOrChanged];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_contextId hash];
  v4 = [(TTSSchemaTTSSynthesisStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(TTSSchemaTTSSynthesisEnded *)self->_ended hash];
  v6 = v4 ^ v5 ^ [(TTSSchemaTTSSynthesisFailed *)self->_failed hash];
  return v6 ^ [(TTSSchemaTTSSynthesisCancelled *)self->_cancelled hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [v4 whichContextevent])
  {
    goto LABEL_28;
  }

  v6 = [(TTSSchemaTTSClientSynthesisContext *)self contextId];
  v7 = [v4 contextId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v8 = [(TTSSchemaTTSClientSynthesisContext *)self contextId];
  if (v8)
  {
    v9 = v8;
    v10 = [(TTSSchemaTTSClientSynthesisContext *)self contextId];
    v11 = [v4 contextId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(TTSSchemaTTSClientSynthesisContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v13 = [(TTSSchemaTTSClientSynthesisContext *)self startedOrChanged];
  if (v13)
  {
    v14 = v13;
    v15 = [(TTSSchemaTTSClientSynthesisContext *)self startedOrChanged];
    v16 = [v4 startedOrChanged];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(TTSSchemaTTSClientSynthesisContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v18 = [(TTSSchemaTTSClientSynthesisContext *)self ended];
  if (v18)
  {
    v19 = v18;
    v20 = [(TTSSchemaTTSClientSynthesisContext *)self ended];
    v21 = [v4 ended];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(TTSSchemaTTSClientSynthesisContext *)self failed];
  v7 = [v4 failed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v23 = [(TTSSchemaTTSClientSynthesisContext *)self failed];
  if (v23)
  {
    v24 = v23;
    v25 = [(TTSSchemaTTSClientSynthesisContext *)self failed];
    v26 = [v4 failed];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(TTSSchemaTTSClientSynthesisContext *)self cancelled];
  v7 = [v4 cancelled];
  if ((v6 != 0) != (v7 == 0))
  {
    v28 = [(TTSSchemaTTSClientSynthesisContext *)self cancelled];
    if (!v28)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = v28;
    v30 = [(TTSSchemaTTSClientSynthesisContext *)self cancelled];
    v31 = [v4 cancelled];
    v32 = [v30 isEqual:v31];

    if (v32)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(TTSSchemaTTSClientSynthesisContext *)self contextId];

  if (v4)
  {
    v5 = [(TTSSchemaTTSClientSynthesisContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(TTSSchemaTTSClientSynthesisContext *)self startedOrChanged];

  if (v6)
  {
    v7 = [(TTSSchemaTTSClientSynthesisContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(TTSSchemaTTSClientSynthesisContext *)self ended];

  if (v8)
  {
    v9 = [(TTSSchemaTTSClientSynthesisContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(TTSSchemaTTSClientSynthesisContext *)self failed];

  if (v10)
  {
    v11 = [(TTSSchemaTTSClientSynthesisContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(TTSSchemaTTSClientSynthesisContext *)self cancelled];

  v13 = v15;
  if (v12)
  {
    v14 = [(TTSSchemaTTSClientSynthesisContext *)self cancelled];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (void)deleteCancelled
{
  if (self->_whichContextevent == 104)
  {
    self->_whichContextevent = 0;
    self->_cancelled = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (TTSSchemaTTSSynthesisCancelled)cancelled
{
  if (self->_whichContextevent == 104)
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

  failed = self->_failed;
  self->_failed = 0;

  v8 = 104;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichContextevent = v8;
  cancelled = self->_cancelled;
  self->_cancelled = v4;
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 103)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (TTSSchemaTTSSynthesisFailed)failed
{
  if (self->_whichContextevent == 103)
  {
    v3 = self->_failed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFailed:(id)a3
{
  v4 = a3;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  v8 = 103;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichContextevent = v8;
  failed = self->_failed;
  self->_failed = v4;
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

- (TTSSchemaTTSSynthesisEnded)ended
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

  failed = self->_failed;
  self->_failed = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  v8 = 102;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichContextevent = v8;
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

- (TTSSchemaTTSSynthesisStarted)startedOrChanged
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

  failed = self->_failed;
  self->_failed = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  v8 = 101;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichContextevent = v8;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = TTSSchemaTTSClientSynthesisContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(TTSSchemaTTSClientSynthesisContext *)self contextId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(TTSSchemaTTSClientSynthesisContext *)self deleteContextId];
  }

  v9 = [(TTSSchemaTTSClientSynthesisContext *)self startedOrChanged];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(TTSSchemaTTSClientSynthesisContext *)self deleteStartedOrChanged];
  }

  v12 = [(TTSSchemaTTSClientSynthesisContext *)self ended];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(TTSSchemaTTSClientSynthesisContext *)self deleteEnded];
  }

  v15 = [(TTSSchemaTTSClientSynthesisContext *)self failed];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(TTSSchemaTTSClientSynthesisContext *)self deleteFailed];
  }

  v18 = [(TTSSchemaTTSClientSynthesisContext *)self cancelled];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(TTSSchemaTTSClientSynthesisContext *)self deleteCancelled];
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