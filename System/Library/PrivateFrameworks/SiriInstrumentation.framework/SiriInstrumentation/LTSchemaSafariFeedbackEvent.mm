@interface LTSchemaSafariFeedbackEvent
- (BOOL)isEqual:(id)a3;
- (LTSchemaSafariFeedbackEvent)initWithDictionary:(id)a3;
- (LTSchemaSafariFeedbackEvent)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation LTSchemaSafariFeedbackEvent

- (LTSchemaSafariFeedbackEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = LTSchemaSafariFeedbackEvent;
  v5 = [(LTSchemaSafariFeedbackEvent *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[LTSchemaTask alloc] initWithDictionary:v6];
      [(LTSchemaSafariFeedbackEvent *)v5 setTask:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"sessionID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaSafariFeedbackEvent *)v5 setSessionID:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"userFeedbackContentSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(LTSchemaSafariFeedbackEvent *)v5 setUserFeedbackContentSource:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"userFeedbackContentTarget"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(LTSchemaSafariFeedbackEvent *)v5 setUserFeedbackContentTarget:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (LTSchemaSafariFeedbackEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LTSchemaSafariFeedbackEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LTSchemaSafariFeedbackEvent *)self dictionaryRepresentation];
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
  if (self->_sessionID)
  {
    v4 = [(LTSchemaSafariFeedbackEvent *)self sessionID];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"sessionID"];
  }

  if (self->_task)
  {
    v6 = [(LTSchemaSafariFeedbackEvent *)self task];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"task"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"task"];
    }
  }

  if (self->_userFeedbackContentSource)
  {
    v9 = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentSource];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"userFeedbackContentSource"];
  }

  if (self->_userFeedbackContentTarget)
  {
    v11 = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentTarget];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"userFeedbackContentTarget"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(LTSchemaTask *)self->_task hash];
  v4 = [(NSString *)self->_sessionID hash]^ v3;
  v5 = [(NSString *)self->_userFeedbackContentSource hash];
  return v4 ^ v5 ^ [(NSString *)self->_userFeedbackContentTarget hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(LTSchemaSafariFeedbackEvent *)self task];
  v6 = [v4 task];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(LTSchemaSafariFeedbackEvent *)self task];
  if (v7)
  {
    v8 = v7;
    v9 = [(LTSchemaSafariFeedbackEvent *)self task];
    v10 = [v4 task];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaSafariFeedbackEvent *)self sessionID];
  v6 = [v4 sessionID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(LTSchemaSafariFeedbackEvent *)self sessionID];
  if (v12)
  {
    v13 = v12;
    v14 = [(LTSchemaSafariFeedbackEvent *)self sessionID];
    v15 = [v4 sessionID];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentSource];
  v6 = [v4 userFeedbackContentSource];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentSource];
  if (v17)
  {
    v18 = v17;
    v19 = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentSource];
    v20 = [v4 userFeedbackContentSource];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentTarget];
  v6 = [v4 userFeedbackContentTarget];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentTarget];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentTarget];
    v25 = [v4 userFeedbackContentTarget];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(LTSchemaSafariFeedbackEvent *)self task];

  if (v4)
  {
    v5 = [(LTSchemaSafariFeedbackEvent *)self task];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(LTSchemaSafariFeedbackEvent *)self sessionID];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentSource];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentTarget];

  v9 = v10;
  if (v8)
  {
    PBDataWriterWriteStringField();
    v9 = v10;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = LTSchemaSafariFeedbackEvent;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(LTSchemaSafariFeedbackEvent *)self task:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(LTSchemaSafariFeedbackEvent *)self deleteTask];
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