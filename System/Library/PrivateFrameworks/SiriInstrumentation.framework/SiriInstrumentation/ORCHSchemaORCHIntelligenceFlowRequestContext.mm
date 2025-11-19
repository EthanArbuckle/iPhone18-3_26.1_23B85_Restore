@interface ORCHSchemaORCHIntelligenceFlowRequestContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHIntelligenceFlowRequestContext)initWithDictionary:(id)a3;
- (ORCHSchemaORCHIntelligenceFlowRequestContext)initWithJSON:(id)a3;
- (ORCHSchemaORCHIntelligenceFlowRequestEnded)ended;
- (ORCHSchemaORCHIntelligenceFlowRequestFailed)failed;
- (ORCHSchemaORCHIntelligenceFlowRequestStarted)startedOrChanged;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)a3;
- (void)setFailed:(id)a3;
- (void)setStartedOrChanged:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHIntelligenceFlowRequestContext

- (ORCHSchemaORCHIntelligenceFlowRequestContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ORCHSchemaORCHIntelligenceFlowRequestContext;
  v5 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHIntelligenceFlowRequestContext *)v5 setTrpId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHIntelligenceFlowRequestContext *)v5 setSubRequestId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"traceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHIntelligenceFlowRequestContext *)v5 setTraceId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ORCHSchemaORCHIntelligenceFlowRequestStarted alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHIntelligenceFlowRequestContext *)v5 setStartedOrChanged:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ORCHSchemaORCHIntelligenceFlowRequestFailed alloc] initWithDictionary:v14];
      [(ORCHSchemaORCHIntelligenceFlowRequestContext *)v5 setFailed:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ORCHSchemaORCHIntelligenceFlowRequestEnded alloc] initWithDictionary:v16];
      [(ORCHSchemaORCHIntelligenceFlowRequestContext *)v5 setEnded:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHIntelligenceFlowRequestContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self dictionaryRepresentation];
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
  if (self->_ended)
  {
    v4 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"ended"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_failed)
  {
    v7 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"failed"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"failed"];
    }
  }

  if (self->_startedOrChanged)
  {
    v10 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];
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

  if (self->_subRequestId)
  {
    v13 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"subRequestId"];
    }
  }

  if (self->_traceId)
  {
    v16 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"traceId"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"traceId"];
    }
  }

  if (self->_trpId)
  {
    v19 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];
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
  v3 = [(SISchemaUUID *)self->_trpId hash];
  v4 = [(SISchemaUUID *)self->_subRequestId hash]^ v3;
  v5 = [(SISchemaUUID *)self->_traceId hash];
  v6 = v4 ^ v5 ^ [(ORCHSchemaORCHIntelligenceFlowRequestStarted *)self->_startedOrChanged hash];
  v7 = [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)self->_failed hash];
  return v6 ^ v7 ^ [(ORCHSchemaORCHIntelligenceFlowRequestEnded *)self->_ended hash];
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

  v6 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];
  v7 = [v4 trpId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v8 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];
  if (v8)
  {
    v9 = v8;
    v10 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];
    v11 = [v4 trpId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];
  v7 = [v4 subRequestId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v13 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];
  if (v13)
  {
    v14 = v13;
    v15 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];
    v16 = [v4 subRequestId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];
  v7 = [v4 traceId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v18 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];
  if (v18)
  {
    v19 = v18;
    v20 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];
    v21 = [v4 traceId];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v23 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];
  if (v23)
  {
    v24 = v23;
    v25 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];
    v26 = [v4 startedOrChanged];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];
  v7 = [v4 failed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v28 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];
  if (v28)
  {
    v29 = v28;
    v30 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];
    v31 = [v4 failed];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) != (v7 == 0))
  {
    v33 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];
    if (!v33)
    {

LABEL_36:
      v38 = 1;
      goto LABEL_34;
    }

    v34 = v33;
    v35 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];
    v36 = [v4 ended];
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
  v4 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];

  if (v4)
  {
    v5 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];

  if (v6)
  {
    v7 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];

  if (v8)
  {
    v9 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];

  if (v10)
  {
    v11 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];

  if (v12)
  {
    v13 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];

  v15 = v17;
  if (v14)
  {
    v16 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];
    PBDataWriterWriteSubmessage();

    v15 = v17;
  }
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 7)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHIntelligenceFlowRequestEnded)ended
{
  if (self->_whichContextevent == 7)
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

  v7 = 7;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  ended = self->_ended;
  self->_ended = v4;
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 6)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHIntelligenceFlowRequestFailed)failed
{
  if (self->_whichContextevent == 6)
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

  v7 = 6;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  failed = self->_failed;
  self->_failed = v4;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 5)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHIntelligenceFlowRequestStarted)startedOrChanged
{
  if (self->_whichContextevent == 5)
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
  failed = self->_failed;
  self->_failed = 0;

  ended = self->_ended;
  self->_ended = 0;

  v7 = 5;
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
  v25.receiver = self;
  v25.super_class = ORCHSchemaORCHIntelligenceFlowRequestContext;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:v4];
  v6 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self deleteTrpId];
  }

  v9 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self deleteSubRequestId];
  }

  v12 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self deleteTraceId];
  }

  v15 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self deleteStartedOrChanged];
  }

  v18 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self deleteFailed];
  }

  v21 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self deleteEnded];
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