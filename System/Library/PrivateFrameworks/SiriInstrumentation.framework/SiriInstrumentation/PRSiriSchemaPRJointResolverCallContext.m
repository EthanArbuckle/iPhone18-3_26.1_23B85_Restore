@interface PRSiriSchemaPRJointResolverCallContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PRSiriSchemaPRJointResolverCallContext)initWithDictionary:(id)a3;
- (PRSiriSchemaPRJointResolverCallContext)initWithJSON:(id)a3;
- (PRSiriSchemaPRJointResolverCallEnded)ended;
- (PRSiriSchemaPRJointResolverCallFailed)failed;
- (PRSiriSchemaPRJointResolverCallStarted)startedOrChanged;
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

@implementation PRSiriSchemaPRJointResolverCallContext

- (PRSiriSchemaPRJointResolverCallContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PRSiriSchemaPRJointResolverCallContext;
  v5 = [(PRSiriSchemaPRJointResolverCallContext *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PRSiriSchemaPRJointResolverCallStarted alloc] initWithDictionary:v6];
      [(PRSiriSchemaPRJointResolverCallContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PRSiriSchemaPRJointResolverCallEnded alloc] initWithDictionary:v8];
      [(PRSiriSchemaPRJointResolverCallContext *)v5 setEnded:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PRSiriSchemaPRJointResolverCallFailed alloc] initWithDictionary:v10];
      [(PRSiriSchemaPRJointResolverCallContext *)v5 setFailed:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"planEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(PRSiriSchemaPRJointResolverCallContext *)v5 setPlanEventId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"actionStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PRSiriSchemaPRJointResolverCallContext setActionStatementId:](v5, "setActionStatementId:", [v14 unsignedIntValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"traceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(PRSiriSchemaPRJointResolverCallContext *)v5 setTraceId:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (PRSiriSchemaPRJointResolverCallContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PRSiriSchemaPRJointResolverCallContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PRSiriSchemaPRJointResolverCallContext *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PRSiriSchemaPRJointResolverCallContext actionStatementId](self, "actionStatementId")}];
    [v3 setObject:v4 forKeyedSubscript:@"actionStatementId"];
  }

  if (self->_ended)
  {
    v5 = [(PRSiriSchemaPRJointResolverCallContext *)self ended];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"ended"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_failed)
  {
    v8 = [(PRSiriSchemaPRJointResolverCallContext *)self failed];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"failed"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"failed"];
    }
  }

  if (self->_planEventId)
  {
    v11 = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"planEventId"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"planEventId"];
    }
  }

  if (self->_startedOrChanged)
  {
    v14 = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  if (self->_traceId)
  {
    v17 = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"traceId"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"traceId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(PRSiriSchemaPRJointResolverCallStarted *)self->_startedOrChanged hash];
  v4 = [(PRSiriSchemaPRJointResolverCallEnded *)self->_ended hash];
  v5 = [(PRSiriSchemaPRJointResolverCallFailed *)self->_failed hash];
  v6 = [(SISchemaUUID *)self->_planEventId hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_actionStatementId;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(SISchemaUUID *)self->_traceId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  v5 = *&self->_hasTraceId;
  if (v5 != [v4 whichContextevent])
  {
    goto LABEL_31;
  }

  v6 = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_30;
  }

  v8 = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];
  if (v8)
  {
    v9 = v8;
    v10 = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];
    v11 = [v4 startedOrChanged];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v6 = [(PRSiriSchemaPRJointResolverCallContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_30;
  }

  v13 = [(PRSiriSchemaPRJointResolverCallContext *)self ended];
  if (v13)
  {
    v14 = v13;
    v15 = [(PRSiriSchemaPRJointResolverCallContext *)self ended];
    v16 = [v4 ended];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v6 = [(PRSiriSchemaPRJointResolverCallContext *)self failed];
  v7 = [v4 failed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_30;
  }

  v18 = [(PRSiriSchemaPRJointResolverCallContext *)self failed];
  if (v18)
  {
    v19 = v18;
    v20 = [(PRSiriSchemaPRJointResolverCallContext *)self failed];
    v21 = [v4 failed];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v6 = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];
  v7 = [v4 planEventId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_30;
  }

  v23 = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];
  if (v23)
  {
    v24 = v23;
    v25 = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];
    v26 = [v4 planEventId];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[56] & 1))
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    actionStatementId = self->_actionStatementId;
    if (actionStatementId != [v4 actionStatementId])
    {
      goto LABEL_31;
    }
  }

  v6 = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];
  v7 = [v4 traceId];
  if ((v6 != 0) != (v7 == 0))
  {
    v29 = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];
    if (!v29)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = v29;
    v31 = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];
    v32 = [v4 traceId];
    v33 = [v31 isEqual:v32];

    if (v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
LABEL_30:
  }

LABEL_31:
  v34 = 0;
LABEL_32:

  return v34;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];

  if (v4)
  {
    v5 = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PRSiriSchemaPRJointResolverCallContext *)self ended];

  if (v6)
  {
    v7 = [(PRSiriSchemaPRJointResolverCallContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PRSiriSchemaPRJointResolverCallContext *)self failed];

  if (v8)
  {
    v9 = [(PRSiriSchemaPRJointResolverCallContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];

  if (v10)
  {
    v11 = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v12 = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];

  v13 = v15;
  if (v12)
  {
    v14 = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (void)deleteFailed
{
  if (*&self->_hasTraceId == 3)
  {
    *&self->_hasTraceId = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PRSiriSchemaPRJointResolverCallFailed)failed
{
  if (*&self->_hasTraceId == 3)
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

  v7 = 3;
  if (!v4)
  {
    v7 = 0;
  }

  *&self->_hasTraceId = v7;
  failed = self->_failed;
  self->_failed = v4;
}

- (void)deleteEnded
{
  if (*&self->_hasTraceId == 2)
  {
    *&self->_hasTraceId = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PRSiriSchemaPRJointResolverCallEnded)ended
{
  if (*&self->_hasTraceId == 2)
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

  *&self->_hasTraceId = 2 * (v4 != 0);
  ended = self->_ended;
  self->_ended = v4;
}

- (void)deleteStartedOrChanged
{
  if (*&self->_hasTraceId == 1)
  {
    *&self->_hasTraceId = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PRSiriSchemaPRJointResolverCallStarted)startedOrChanged
{
  if (*&self->_hasTraceId == 1)
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

  *&self->_hasTraceId = v4 != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PRSiriSchemaPRJointResolverCallContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PRSiriSchemaPRJointResolverCallContext *)self deleteStartedOrChanged];
  }

  v9 = [(PRSiriSchemaPRJointResolverCallContext *)self ended];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PRSiriSchemaPRJointResolverCallContext *)self deleteEnded];
  }

  v12 = [(PRSiriSchemaPRJointResolverCallContext *)self failed];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PRSiriSchemaPRJointResolverCallContext *)self deleteFailed];
  }

  v15 = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PRSiriSchemaPRJointResolverCallContext *)self deletePlanEventId];
  }

  v18 = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PRSiriSchemaPRJointResolverCallContext *)self deleteTraceId];
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