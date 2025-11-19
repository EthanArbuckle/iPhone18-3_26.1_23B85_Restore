@interface ORCHSchemaORCHPommesBridgeContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHPommesBridgeContext)initWithDictionary:(id)a3;
- (ORCHSchemaORCHPommesBridgeContext)initWithJSON:(id)a3;
- (ORCHSchemaORCHPommesRequestEnded)ended;
- (ORCHSchemaORCHPommesRequestFailed)failed;
- (ORCHSchemaORCHPommesRequestStarted)startedOrChanged;
- (ORCHSchemaORCHPommesRequestUnableToHandle)cancelled;
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

@implementation ORCHSchemaORCHPommesBridgeContext

- (ORCHSchemaORCHPommesBridgeContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ORCHSchemaORCHPommesBridgeContext;
  v5 = [(ORCHSchemaORCHPommesBridgeContext *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ORCHSchemaORCHPommesRequestStarted alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHPommesBridgeContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHPommesRequestEnded alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHPommesBridgeContext *)v5 setEnded:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ORCHSchemaORCHPommesRequestFailed alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHPommesBridgeContext *)v5 setFailed:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"cancelled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ORCHSchemaORCHPommesRequestUnableToHandle alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHPommesBridgeContext *)v5 setCancelled:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(ORCHSchemaORCHPommesBridgeContext *)v5 setTrpId:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(ORCHSchemaORCHPommesBridgeContext *)v5 setSubRequestId:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHPommesBridgeContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHPommesBridgeContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHPommesBridgeContext *)self dictionaryRepresentation];
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
    v4 = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];
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
    v7 = [(ORCHSchemaORCHPommesBridgeContext *)self ended];
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
    v10 = [(ORCHSchemaORCHPommesBridgeContext *)self failed];
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

  if (self->_startedOrChanged)
  {
    v13 = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  if (self->_subRequestId)
  {
    v16 = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"subRequestId"];
    }
  }

  if (self->_trpId)
  {
    v19 = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"trpId"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ORCHSchemaORCHPommesRequestStarted *)self->_startedOrChanged hash];
  v4 = [(ORCHSchemaORCHPommesRequestEnded *)self->_ended hash]^ v3;
  v5 = [(ORCHSchemaORCHPommesRequestFailed *)self->_failed hash];
  v6 = v4 ^ v5 ^ [(ORCHSchemaORCHPommesRequestUnableToHandle *)self->_cancelled hash];
  v7 = [(SISchemaUUID *)self->_trpId hash];
  return v6 ^ v7 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [v4 whichContextevent])
  {
    goto LABEL_33;
  }

  v6 = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v8 = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];
  if (v8)
  {
    v9 = v8;
    v10 = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];
    v11 = [v4 startedOrChanged];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHPommesBridgeContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v13 = [(ORCHSchemaORCHPommesBridgeContext *)self ended];
  if (v13)
  {
    v14 = v13;
    v15 = [(ORCHSchemaORCHPommesBridgeContext *)self ended];
    v16 = [v4 ended];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHPommesBridgeContext *)self failed];
  v7 = [v4 failed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v18 = [(ORCHSchemaORCHPommesBridgeContext *)self failed];
  if (v18)
  {
    v19 = v18;
    v20 = [(ORCHSchemaORCHPommesBridgeContext *)self failed];
    v21 = [v4 failed];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];
  v7 = [v4 cancelled];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v23 = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];
  if (v23)
  {
    v24 = v23;
    v25 = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];
    v26 = [v4 cancelled];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];
  v7 = [v4 trpId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v28 = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];
  if (v28)
  {
    v29 = v28;
    v30 = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];
    v31 = [v4 trpId];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];
  v7 = [v4 subRequestId];
  if ((v6 != 0) != (v7 == 0))
  {
    v33 = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];
    if (!v33)
    {

LABEL_36:
      v38 = 1;
      goto LABEL_34;
    }

    v34 = v33;
    v35 = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];
    v36 = [v4 subRequestId];
    v37 = [v35 isEqual:v36];

    if (v37)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_32:
  }

LABEL_33:
  v38 = 0;
LABEL_34:

  return v38;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  v4 = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];

  if (v4)
  {
    v5 = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ORCHSchemaORCHPommesBridgeContext *)self ended];

  if (v6)
  {
    v7 = [(ORCHSchemaORCHPommesBridgeContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ORCHSchemaORCHPommesBridgeContext *)self failed];

  if (v8)
  {
    v9 = [(ORCHSchemaORCHPommesBridgeContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];

  if (v10)
  {
    v11 = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];

  if (v12)
  {
    v13 = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];

  v15 = v17;
  if (v14)
  {
    v16 = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v15 = v17;
  }
}

- (void)deleteCancelled
{
  if (self->_whichContextevent == 4)
  {
    self->_whichContextevent = 0;
    self->_cancelled = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHPommesRequestUnableToHandle)cancelled
{
  if (self->_whichContextevent == 4)
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

  self->_whichContextevent = 4 * (v4 != 0);
  cancelled = self->_cancelled;
  self->_cancelled = v4;
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

- (ORCHSchemaORCHPommesRequestFailed)failed
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

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  v8 = 3;
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
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHPommesRequestEnded)ended
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

  cancelled = self->_cancelled;
  self->_cancelled = 0;

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

- (ORCHSchemaORCHPommesRequestStarted)startedOrChanged
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

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  self->_whichContextevent = v4 != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ORCHSchemaORCHPommesBridgeContext;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:v4];
  v6 = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ORCHSchemaORCHPommesBridgeContext *)self deleteStartedOrChanged];
  }

  v9 = [(ORCHSchemaORCHPommesBridgeContext *)self ended];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ORCHSchemaORCHPommesBridgeContext *)self deleteEnded];
  }

  v12 = [(ORCHSchemaORCHPommesBridgeContext *)self failed];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ORCHSchemaORCHPommesBridgeContext *)self deleteFailed];
  }

  v15 = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ORCHSchemaORCHPommesBridgeContext *)self deleteCancelled];
  }

  v18 = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(ORCHSchemaORCHPommesBridgeContext *)self deleteTrpId];
  }

  v21 = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(ORCHSchemaORCHPommesBridgeContext *)self deleteSubRequestId];
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