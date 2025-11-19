@interface PRSiriSchemaPRRequestContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PRSiriSchemaPRRequestContext)initWithDictionary:(id)a3;
- (PRSiriSchemaPRRequestContext)initWithJSON:(id)a3;
- (PRSiriSchemaPRRequestEnded)ended;
- (PRSiriSchemaPRRequestFailed)failed;
- (PRSiriSchemaPRRequestStarted)startedOrChanged;
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

@implementation PRSiriSchemaPRRequestContext

- (PRSiriSchemaPRRequestContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PRSiriSchemaPRRequestContext;
  v5 = [(PRSiriSchemaPRRequestContext *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PRSiriSchemaPRRequestStarted alloc] initWithDictionary:v6];
      [(PRSiriSchemaPRRequestContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PRSiriSchemaPRRequestEnded alloc] initWithDictionary:v8];
      [(PRSiriSchemaPRRequestContext *)v5 setEnded:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PRSiriSchemaPRRequestFailed alloc] initWithDictionary:v10];
      [(PRSiriSchemaPRRequestContext *)v5 setFailed:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"planEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(PRSiriSchemaPRRequestContext *)v5 setPlanEventId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"actionStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PRSiriSchemaPRRequestContext setActionStatementId:](v5, "setActionStatementId:", [v14 unsignedIntValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (PRSiriSchemaPRRequestContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PRSiriSchemaPRRequestContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PRSiriSchemaPRRequestContext *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PRSiriSchemaPRRequestContext actionStatementId](self, "actionStatementId")}];
    [v3 setObject:v4 forKeyedSubscript:@"actionStatementId"];
  }

  if (self->_ended)
  {
    v5 = [(PRSiriSchemaPRRequestContext *)self ended];
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
    v8 = [(PRSiriSchemaPRRequestContext *)self failed];
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
    v11 = [(PRSiriSchemaPRRequestContext *)self planEventId];
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
    v14 = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(PRSiriSchemaPRRequestStarted *)self->_startedOrChanged hash];
  v4 = [(PRSiriSchemaPRRequestEnded *)self->_ended hash];
  v5 = [(PRSiriSchemaPRRequestFailed *)self->_failed hash];
  v6 = [(SISchemaUUID *)self->_planEventId hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_actionStatementId;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [v4 whichContextevent])
  {
    goto LABEL_23;
  }

  v6 = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v8 = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];
  if (v8)
  {
    v9 = v8;
    v10 = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];
    v11 = [v4 startedOrChanged];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(PRSiriSchemaPRRequestContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(PRSiriSchemaPRRequestContext *)self ended];
  if (v13)
  {
    v14 = v13;
    v15 = [(PRSiriSchemaPRRequestContext *)self ended];
    v16 = [v4 ended];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(PRSiriSchemaPRRequestContext *)self failed];
  v7 = [v4 failed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(PRSiriSchemaPRRequestContext *)self failed];
  if (v18)
  {
    v19 = v18;
    v20 = [(PRSiriSchemaPRRequestContext *)self failed];
    v21 = [v4 failed];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(PRSiriSchemaPRRequestContext *)self planEventId];
  v7 = [v4 planEventId];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  v23 = [(PRSiriSchemaPRRequestContext *)self planEventId];
  if (v23)
  {
    v24 = v23;
    v25 = [(PRSiriSchemaPRRequestContext *)self planEventId];
    v26 = [v4 planEventId];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[44] & 1))
  {
    if ((*&self->_has & 1) == 0 || (actionStatementId = self->_actionStatementId, actionStatementId == [v4 actionStatementId]))
    {
      v28 = 1;
      goto LABEL_24;
    }
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];

  if (v4)
  {
    v5 = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PRSiriSchemaPRRequestContext *)self ended];

  if (v6)
  {
    v7 = [(PRSiriSchemaPRRequestContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PRSiriSchemaPRRequestContext *)self failed];

  if (v8)
  {
    v9 = [(PRSiriSchemaPRRequestContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PRSiriSchemaPRRequestContext *)self planEventId];

  if (v10)
  {
    v11 = [(PRSiriSchemaPRRequestContext *)self planEventId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
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

- (PRSiriSchemaPRRequestFailed)failed
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

  v7 = 3;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
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

- (PRSiriSchemaPRRequestEnded)ended
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

- (PRSiriSchemaPRRequestStarted)startedOrChanged
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

  self->_whichContextevent = v4 != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PRSiriSchemaPRRequestContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PRSiriSchemaPRRequestContext *)self deleteStartedOrChanged];
  }

  v9 = [(PRSiriSchemaPRRequestContext *)self ended];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PRSiriSchemaPRRequestContext *)self deleteEnded];
  }

  v12 = [(PRSiriSchemaPRRequestContext *)self failed];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PRSiriSchemaPRRequestContext *)self deleteFailed];
  }

  v15 = [(PRSiriSchemaPRRequestContext *)self planEventId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PRSiriSchemaPRRequestContext *)self deletePlanEventId];
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