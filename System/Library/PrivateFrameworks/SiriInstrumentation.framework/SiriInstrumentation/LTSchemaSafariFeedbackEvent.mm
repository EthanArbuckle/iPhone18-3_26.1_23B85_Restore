@interface LTSchemaSafariFeedbackEvent
- (BOOL)isEqual:(id)equal;
- (LTSchemaSafariFeedbackEvent)initWithDictionary:(id)dictionary;
- (LTSchemaSafariFeedbackEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation LTSchemaSafariFeedbackEvent

- (LTSchemaSafariFeedbackEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = LTSchemaSafariFeedbackEvent;
  v5 = [(LTSchemaSafariFeedbackEvent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[LTSchemaTask alloc] initWithDictionary:v6];
      [(LTSchemaSafariFeedbackEvent *)v5 setTask:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sessionID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaSafariFeedbackEvent *)v5 setSessionID:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"userFeedbackContentSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(LTSchemaSafariFeedbackEvent *)v5 setUserFeedbackContentSource:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"userFeedbackContentTarget"];
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

- (LTSchemaSafariFeedbackEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LTSchemaSafariFeedbackEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LTSchemaSafariFeedbackEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_sessionID)
  {
    sessionID = [(LTSchemaSafariFeedbackEvent *)self sessionID];
    v5 = [sessionID copy];
    [dictionary setObject:v5 forKeyedSubscript:@"sessionID"];
  }

  if (self->_task)
  {
    task = [(LTSchemaSafariFeedbackEvent *)self task];
    dictionaryRepresentation = [task dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"task"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"task"];
    }
  }

  if (self->_userFeedbackContentSource)
  {
    userFeedbackContentSource = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentSource];
    v10 = [userFeedbackContentSource copy];
    [dictionary setObject:v10 forKeyedSubscript:@"userFeedbackContentSource"];
  }

  if (self->_userFeedbackContentTarget)
  {
    userFeedbackContentTarget = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentTarget];
    v12 = [userFeedbackContentTarget copy];
    [dictionary setObject:v12 forKeyedSubscript:@"userFeedbackContentTarget"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(LTSchemaTask *)self->_task hash];
  v4 = [(NSString *)self->_sessionID hash]^ v3;
  v5 = [(NSString *)self->_userFeedbackContentSource hash];
  return v4 ^ v5 ^ [(NSString *)self->_userFeedbackContentTarget hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  task = [(LTSchemaSafariFeedbackEvent *)self task];
  task2 = [equalCopy task];
  if ((task != 0) == (task2 == 0))
  {
    goto LABEL_21;
  }

  task3 = [(LTSchemaSafariFeedbackEvent *)self task];
  if (task3)
  {
    v8 = task3;
    task4 = [(LTSchemaSafariFeedbackEvent *)self task];
    task5 = [equalCopy task];
    v11 = [task4 isEqual:task5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  task = [(LTSchemaSafariFeedbackEvent *)self sessionID];
  task2 = [equalCopy sessionID];
  if ((task != 0) == (task2 == 0))
  {
    goto LABEL_21;
  }

  sessionID = [(LTSchemaSafariFeedbackEvent *)self sessionID];
  if (sessionID)
  {
    v13 = sessionID;
    sessionID2 = [(LTSchemaSafariFeedbackEvent *)self sessionID];
    sessionID3 = [equalCopy sessionID];
    v16 = [sessionID2 isEqual:sessionID3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  task = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentSource];
  task2 = [equalCopy userFeedbackContentSource];
  if ((task != 0) == (task2 == 0))
  {
    goto LABEL_21;
  }

  userFeedbackContentSource = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentSource];
  if (userFeedbackContentSource)
  {
    v18 = userFeedbackContentSource;
    userFeedbackContentSource2 = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentSource];
    userFeedbackContentSource3 = [equalCopy userFeedbackContentSource];
    v21 = [userFeedbackContentSource2 isEqual:userFeedbackContentSource3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  task = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentTarget];
  task2 = [equalCopy userFeedbackContentTarget];
  if ((task != 0) != (task2 == 0))
  {
    userFeedbackContentTarget = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentTarget];
    if (!userFeedbackContentTarget)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = userFeedbackContentTarget;
    userFeedbackContentTarget2 = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentTarget];
    userFeedbackContentTarget3 = [equalCopy userFeedbackContentTarget];
    v26 = [userFeedbackContentTarget2 isEqual:userFeedbackContentTarget3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  task = [(LTSchemaSafariFeedbackEvent *)self task];

  if (task)
  {
    task2 = [(LTSchemaSafariFeedbackEvent *)self task];
    PBDataWriterWriteSubmessage();
  }

  sessionID = [(LTSchemaSafariFeedbackEvent *)self sessionID];

  if (sessionID)
  {
    PBDataWriterWriteStringField();
  }

  userFeedbackContentSource = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentSource];

  if (userFeedbackContentSource)
  {
    PBDataWriterWriteStringField();
  }

  userFeedbackContentTarget = [(LTSchemaSafariFeedbackEvent *)self userFeedbackContentTarget];

  v9 = toCopy;
  if (userFeedbackContentTarget)
  {
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = LTSchemaSafariFeedbackEvent;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(LTSchemaSafariFeedbackEvent *)self task:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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