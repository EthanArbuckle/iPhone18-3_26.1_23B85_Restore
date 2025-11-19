@interface ORCHSchemaORCHNLRouterBridgeSubComponentContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHNLRouterBridgeSubComponentContext)initWithDictionary:(id)a3;
- (ORCHSchemaORCHNLRouterBridgeSubComponentContext)initWithJSON:(id)a3;
- (ORCHSchemaORCHNLRouterBridgeSubComponentEnded)ended;
- (ORCHSchemaORCHNLRouterBridgeSubComponentFailed)failed;
- (ORCHSchemaORCHNLRouterBridgeSubComponentStarted)startedOrChanged;
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

@implementation ORCHSchemaORCHNLRouterBridgeSubComponentContext

- (ORCHSchemaORCHNLRouterBridgeSubComponentContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ORCHSchemaORCHNLRouterBridgeSubComponentContext;
  v5 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"traceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)v5 setTraceId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHNLRouterBridgeSubComponentStarted alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ORCHSchemaORCHNLRouterBridgeSubComponentEnded alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)v5 setEnded:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ORCHSchemaORCHNLRouterBridgeSubComponentFailed alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)v5 setFailed:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)v5 setTrpId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHNLRouterBridgeSubComponentContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self dictionaryRepresentation];
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
    v4 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];
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
    v7 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];
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
    v10 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];
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

  if (self->_traceId)
  {
    v13 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"traceId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"traceId"];
    }
  }

  if (self->_trpId)
  {
    v16 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"trpId"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_traceId hash];
  v4 = [(ORCHSchemaORCHNLRouterBridgeSubComponentStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(ORCHSchemaORCHNLRouterBridgeSubComponentEnded *)self->_ended hash];
  v6 = v4 ^ v5 ^ [(ORCHSchemaORCHNLRouterBridgeSubComponentFailed *)self->_failed hash];
  return v6 ^ [(SISchemaUUID *)self->_trpId hash];
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

  v6 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];
  v7 = [v4 traceId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v8 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];
  if (v8)
  {
    v9 = v8;
    v10 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];
    v11 = [v4 traceId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v13 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];
  if (v13)
  {
    v14 = v13;
    v15 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];
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

  v6 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v18 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];
  if (v18)
  {
    v19 = v18;
    v20 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];
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

  v6 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];
  v7 = [v4 failed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v23 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];
  if (v23)
  {
    v24 = v23;
    v25 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];
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

  v6 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];
  v7 = [v4 trpId];
  if ((v6 != 0) != (v7 == 0))
  {
    v28 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];
    if (!v28)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = v28;
    v30 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];
    v31 = [v4 trpId];
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
  v4 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];

  if (v4)
  {
    v5 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];

  if (v6)
  {
    v7 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];

  if (v8)
  {
    v9 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];

  if (v10)
  {
    v11 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];

  v13 = v15;
  if (v12)
  {
    v14 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 4)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHNLRouterBridgeSubComponentFailed)failed
{
  if (self->_whichContextevent == 4)
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

  self->_whichContextevent = 4 * (v4 != 0);
  failed = self->_failed;
  self->_failed = v4;
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 3)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHNLRouterBridgeSubComponentEnded)ended
{
  if (self->_whichContextevent == 3)
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

  v7 = 3;
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
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHNLRouterBridgeSubComponentStarted)startedOrChanged
{
  if (self->_whichContextevent == 2)
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

  self->_whichContextevent = 2 * (v4 != 0);
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ORCHSchemaORCHNLRouterBridgeSubComponentContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self deleteTraceId];
  }

  v9 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self deleteStartedOrChanged];
  }

  v12 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self deleteEnded];
  }

  v15 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self deleteFailed];
  }

  v18 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self deleteTrpId];
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