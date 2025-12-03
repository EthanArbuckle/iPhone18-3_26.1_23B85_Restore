@interface FLOWSchemaFLOWHomeCommunicationContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWHomeCommunicationContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWHomeCommunicationContext)initWithJSON:(id)n;
- (FLOWSchemaFLOWHomeCommunicationSendOrReply)sendOrReplyContext;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteSendOrReplyContext;
- (void)setSendOrReplyContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWHomeCommunicationContext

- (FLOWSchemaFLOWHomeCommunicationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWHomeCommunicationContext;
  v5 = [(FLOWSchemaFLOWHomeCommunicationContext *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"homeContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWHomeContext alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWHomeCommunicationContext *)v5 setHomeContext:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"taskType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeCommunicationContext setTaskType:](v5, "setTaskType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"sendOrReplyContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[FLOWSchemaFLOWHomeCommunicationSendOrReply alloc] initWithDictionary:v9];
      [(FLOWSchemaFLOWHomeCommunicationContext *)v5 setSendOrReplyContext:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWHomeCommunicationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWHomeCommunicationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWHomeCommunicationContext *)self dictionaryRepresentation];
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
  if (self->_homeContext)
  {
    homeContext = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];
    dictionaryRepresentation = [homeContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"homeContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"homeContext"];
    }
  }

  if (self->_sendOrReplyContext)
  {
    sendOrReplyContext = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];
    dictionaryRepresentation2 = [sendOrReplyContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"sendOrReplyContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"sendOrReplyContext"];
    }
  }

  if (*&self->_has)
  {
    v10 = [(FLOWSchemaFLOWHomeCommunicationContext *)self taskType]- 1;
    if (v10 > 3)
    {
      v11 = @"FLOWHOMECOMMUNICATIONTASKTYPE_UNKNOWN";
    }

    else
    {
      v11 = off_1E78D5230[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"taskType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(FLOWSchemaFLOWHomeContext *)self->_homeContext hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_taskType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(FLOWSchemaFLOWHomeCommunicationSendOrReply *)self->_sendOrReplyContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  whichTaskcontext = self->_whichTaskcontext;
  if (whichTaskcontext != [equalCopy whichTaskcontext])
  {
    goto LABEL_16;
  }

  homeContext = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];
  homeContext2 = [equalCopy homeContext];
  if ((homeContext != 0) == (homeContext2 == 0))
  {
    goto LABEL_15;
  }

  homeContext3 = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];
  if (homeContext3)
  {
    v9 = homeContext3;
    homeContext4 = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];
    homeContext5 = [equalCopy homeContext];
    v12 = [homeContext4 isEqual:homeContext5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    taskType = self->_taskType;
    if (taskType != [equalCopy taskType])
    {
      goto LABEL_16;
    }
  }

  homeContext = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];
  homeContext2 = [equalCopy sendOrReplyContext];
  if ((homeContext != 0) != (homeContext2 == 0))
  {
    sendOrReplyContext = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];
    if (!sendOrReplyContext)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = sendOrReplyContext;
    sendOrReplyContext2 = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];
    sendOrReplyContext3 = [equalCopy sendOrReplyContext];
    v18 = [sendOrReplyContext2 isEqual:sendOrReplyContext3];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  homeContext = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];

  if (homeContext)
  {
    homeContext2 = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  sendOrReplyContext = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];

  v7 = toCopy;
  if (sendOrReplyContext)
  {
    sendOrReplyContext2 = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (void)deleteSendOrReplyContext
{
  if (self->_whichTaskcontext == 3)
  {
    self->_whichTaskcontext = 0;
    self->_sendOrReplyContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWSchemaFLOWHomeCommunicationSendOrReply)sendOrReplyContext
{
  if (self->_whichTaskcontext == 3)
  {
    v3 = self->_sendOrReplyContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSendOrReplyContext:(id)context
{
  v3 = 3;
  if (!context)
  {
    v3 = 0;
  }

  self->_whichTaskcontext = v3;
  objc_storeStrong(&self->_sendOrReplyContext, context);
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWHomeCommunicationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  homeContext = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];
  v7 = [homeContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWHomeCommunicationContext *)self deleteHomeContext];
  }

  sendOrReplyContext = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];
  v10 = [sendOrReplyContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWHomeCommunicationContext *)self deleteSendOrReplyContext];
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