@interface GATSchemaGATRequestContext
- (BOOL)isEqual:(id)a3;
- (GATSchemaGATRequestCanceled)canceled;
- (GATSchemaGATRequestContext)initWithDictionary:(id)a3;
- (GATSchemaGATRequestContext)initWithJSON:(id)a3;
- (GATSchemaGATRequestEnded)ended;
- (GATSchemaGATRequestFailed)failed;
- (GATSchemaGATRequestHandoff)handoff;
- (GATSchemaGATRequestStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteCanceled;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)deleteHandoff;
- (void)deleteStartedOrChanged;
- (void)setCanceled:(id)a3;
- (void)setEnded:(id)a3;
- (void)setFailed:(id)a3;
- (void)setHandoff:(id)a3;
- (void)setStartedOrChanged:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation GATSchemaGATRequestContext

- (GATSchemaGATRequestContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = GATSchemaGATRequestContext;
  v5 = [(GATSchemaGATRequestContext *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GATSchemaGATRequestStarted alloc] initWithDictionary:v6];
      [(GATSchemaGATRequestContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GATSchemaGATRequestEnded alloc] initWithDictionary:v8];
      [(GATSchemaGATRequestContext *)v5 setEnded:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[GATSchemaGATRequestFailed alloc] initWithDictionary:v10];
      [(GATSchemaGATRequestContext *)v5 setFailed:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"canceled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[GATSchemaGATRequestCanceled alloc] initWithDictionary:v12];
      [(GATSchemaGATRequestContext *)v5 setCanceled:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"handoff"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[GATSchemaGATRequestHandoff alloc] initWithDictionary:v14];
      [(GATSchemaGATRequestContext *)v5 setHandoff:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (GATSchemaGATRequestContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GATSchemaGATRequestContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GATSchemaGATRequestContext *)self dictionaryRepresentation];
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
  if (self->_canceled)
  {
    v4 = [(GATSchemaGATRequestContext *)self canceled];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"canceled"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"canceled"];
    }
  }

  if (self->_ended)
  {
    v7 = [(GATSchemaGATRequestContext *)self ended];
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

  if (self->_failed)
  {
    v10 = [(GATSchemaGATRequestContext *)self failed];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"failed"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"failed"];
    }
  }

  if (self->_handoff)
  {
    v13 = [(GATSchemaGATRequestContext *)self handoff];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"handoff"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"handoff"];
    }
  }

  if (self->_startedOrChanged)
  {
    v16 = [(GATSchemaGATRequestContext *)self startedOrChanged];
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
  v3 = [(GATSchemaGATRequestStarted *)self->_startedOrChanged hash];
  v4 = [(GATSchemaGATRequestEnded *)self->_ended hash]^ v3;
  v5 = [(GATSchemaGATRequestFailed *)self->_failed hash];
  v6 = v4 ^ v5 ^ [(GATSchemaGATRequestCanceled *)self->_canceled hash];
  return v6 ^ [(GATSchemaGATRequestHandoff *)self->_handoff hash];
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

  v6 = [(GATSchemaGATRequestContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v8 = [(GATSchemaGATRequestContext *)self startedOrChanged];
  if (v8)
  {
    v9 = v8;
    v10 = [(GATSchemaGATRequestContext *)self startedOrChanged];
    v11 = [v4 startedOrChanged];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATRequestContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v13 = [(GATSchemaGATRequestContext *)self ended];
  if (v13)
  {
    v14 = v13;
    v15 = [(GATSchemaGATRequestContext *)self ended];
    v16 = [v4 ended];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATRequestContext *)self failed];
  v7 = [v4 failed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v18 = [(GATSchemaGATRequestContext *)self failed];
  if (v18)
  {
    v19 = v18;
    v20 = [(GATSchemaGATRequestContext *)self failed];
    v21 = [v4 failed];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATRequestContext *)self canceled];
  v7 = [v4 canceled];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v23 = [(GATSchemaGATRequestContext *)self canceled];
  if (v23)
  {
    v24 = v23;
    v25 = [(GATSchemaGATRequestContext *)self canceled];
    v26 = [v4 canceled];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATRequestContext *)self handoff];
  v7 = [v4 handoff];
  if ((v6 != 0) != (v7 == 0))
  {
    v28 = [(GATSchemaGATRequestContext *)self handoff];
    if (!v28)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = v28;
    v30 = [(GATSchemaGATRequestContext *)self handoff];
    v31 = [v4 handoff];
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
  v4 = [(GATSchemaGATRequestContext *)self startedOrChanged];

  if (v4)
  {
    v5 = [(GATSchemaGATRequestContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(GATSchemaGATRequestContext *)self ended];

  if (v6)
  {
    v7 = [(GATSchemaGATRequestContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(GATSchemaGATRequestContext *)self failed];

  if (v8)
  {
    v9 = [(GATSchemaGATRequestContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(GATSchemaGATRequestContext *)self canceled];

  if (v10)
  {
    v11 = [(GATSchemaGATRequestContext *)self canceled];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(GATSchemaGATRequestContext *)self handoff];

  v13 = v15;
  if (v12)
  {
    v14 = [(GATSchemaGATRequestContext *)self handoff];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (void)deleteHandoff
{
  if (self->_whichContextevent == 5)
  {
    self->_whichContextevent = 0;
    self->_handoff = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATRequestHandoff)handoff
{
  if (self->_whichContextevent == 5)
  {
    v3 = self->_handoff;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHandoff:(id)a3
{
  v4 = a3;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  failed = self->_failed;
  self->_failed = 0;

  canceled = self->_canceled;
  self->_canceled = 0;

  v9 = 5;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichContextevent = v9;
  handoff = self->_handoff;
  self->_handoff = v4;
}

- (void)deleteCanceled
{
  if (self->_whichContextevent == 4)
  {
    self->_whichContextevent = 0;
    self->_canceled = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATRequestCanceled)canceled
{
  if (self->_whichContextevent == 4)
  {
    v3 = self->_canceled;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCanceled:(id)a3
{
  v4 = a3;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  failed = self->_failed;
  self->_failed = 0;

  handoff = self->_handoff;
  self->_handoff = 0;

  self->_whichContextevent = 4 * (v4 != 0);
  canceled = self->_canceled;
  self->_canceled = v4;
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 3)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATRequestFailed)failed
{
  if (self->_whichContextevent == 3)
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

  canceled = self->_canceled;
  self->_canceled = 0;

  handoff = self->_handoff;
  self->_handoff = 0;

  v9 = 3;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichContextevent = v9;
  failed = self->_failed;
  self->_failed = v4;
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATRequestEnded)ended
{
  if (self->_whichContextevent == 2)
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

  canceled = self->_canceled;
  self->_canceled = 0;

  handoff = self->_handoff;
  self->_handoff = 0;

  self->_whichContextevent = 2 * (v4 != 0);
  ended = self->_ended;
  self->_ended = v4;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 1)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATRequestStarted)startedOrChanged
{
  if (self->_whichContextevent == 1)
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

  canceled = self->_canceled;
  self->_canceled = 0;

  handoff = self->_handoff;
  self->_handoff = 0;

  self->_whichContextevent = v4 != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = GATSchemaGATRequestContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(GATSchemaGATRequestContext *)self startedOrChanged];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(GATSchemaGATRequestContext *)self deleteStartedOrChanged];
  }

  v9 = [(GATSchemaGATRequestContext *)self ended];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(GATSchemaGATRequestContext *)self deleteEnded];
  }

  v12 = [(GATSchemaGATRequestContext *)self failed];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(GATSchemaGATRequestContext *)self deleteFailed];
  }

  v15 = [(GATSchemaGATRequestContext *)self canceled];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(GATSchemaGATRequestContext *)self deleteCanceled];
  }

  v18 = [(GATSchemaGATRequestContext *)self handoff];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(GATSchemaGATRequestContext *)self deleteHandoff];
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