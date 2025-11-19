@interface ORCHSchemaORCHExecuteOnRemoteRequestContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHExecuteOnRemoteRequestContext)initWithDictionary:(id)a3;
- (ORCHSchemaORCHExecuteOnRemoteRequestContext)initWithJSON:(id)a3;
- (ORCHSchemaORCHExecuteOnRemoteRequestEnded)ended;
- (ORCHSchemaORCHExecuteOnRemoteRequestFailed)failed;
- (ORCHSchemaORCHExecuteOnRemoteRequestStarted)startedOrChanged;
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

@implementation ORCHSchemaORCHExecuteOnRemoteRequestContext

- (ORCHSchemaORCHExecuteOnRemoteRequestContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ORCHSchemaORCHExecuteOnRemoteRequestContext;
  v5 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)v5 setContextId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHExecuteOnRemoteRequestStarted alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ORCHSchemaORCHExecuteOnRemoteRequestEnded alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)v5 setEnded:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ORCHSchemaORCHExecuteOnRemoteRequestFailed alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)v5 setFailed:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHExecuteOnRemoteRequestContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self dictionaryRepresentation];
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
  if (self->_contextId)
  {
    v4 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self contextId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"contextId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"contextId"];
    }
  }

  if (self->_ended)
  {
    v7 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self ended];
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
    v10 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self failed];
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
    v13 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self startedOrChanged];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_contextId hash];
  v4 = [(ORCHSchemaORCHExecuteOnRemoteRequestStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(ORCHSchemaORCHExecuteOnRemoteRequestEnded *)self->_ended hash];
  return v4 ^ v5 ^ [(ORCHSchemaORCHExecuteOnRemoteRequestFailed *)self->_failed hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichCommandevent = self->_whichCommandevent;
  if (whichCommandevent != [v4 whichCommandevent])
  {
    goto LABEL_23;
  }

  v6 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self contextId];
  v7 = [v4 contextId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v8 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self contextId];
  if (v8)
  {
    v9 = v8;
    v10 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self contextId];
    v11 = [v4 contextId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self startedOrChanged];
  if (v13)
  {
    v14 = v13;
    v15 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self startedOrChanged];
    v16 = [v4 startedOrChanged];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self ended];
  if (v18)
  {
    v19 = v18;
    v20 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self ended];
    v21 = [v4 ended];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self failed];
  v7 = [v4 failed];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self failed];
    if (!v23)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self failed];
    v26 = [v4 failed];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self contextId];

  if (v4)
  {
    v5 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self startedOrChanged];

  if (v6)
  {
    v7 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self ended];

  if (v8)
  {
    v9 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self failed];

  v11 = v13;
  if (v10)
  {
    v12 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self failed];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)deleteFailed
{
  if (self->_whichCommandevent == 103)
  {
    self->_whichCommandevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHExecuteOnRemoteRequestFailed)failed
{
  if (self->_whichCommandevent == 103)
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

  v7 = 103;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichCommandevent = v7;
  failed = self->_failed;
  self->_failed = v4;
}

- (void)deleteEnded
{
  if (self->_whichCommandevent == 102)
  {
    self->_whichCommandevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHExecuteOnRemoteRequestEnded)ended
{
  if (self->_whichCommandevent == 102)
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

  v7 = 102;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichCommandevent = v7;
  ended = self->_ended;
  self->_ended = v4;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichCommandevent == 101)
  {
    self->_whichCommandevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHExecuteOnRemoteRequestStarted)startedOrChanged
{
  if (self->_whichCommandevent == 101)
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

  v7 = 101;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichCommandevent = v7;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ORCHSchemaORCHExecuteOnRemoteRequestContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self contextId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self deleteContextId];
  }

  v9 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self startedOrChanged];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self deleteStartedOrChanged];
  }

  v12 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self ended];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self deleteEnded];
  }

  v15 = [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self failed];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self deleteFailed];
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