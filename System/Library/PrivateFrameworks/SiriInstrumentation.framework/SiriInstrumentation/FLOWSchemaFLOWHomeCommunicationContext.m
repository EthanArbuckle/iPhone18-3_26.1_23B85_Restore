@interface FLOWSchemaFLOWHomeCommunicationContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWHomeCommunicationContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWHomeCommunicationContext)initWithJSON:(id)a3;
- (FLOWSchemaFLOWHomeCommunicationSendOrReply)sendOrReplyContext;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteSendOrReplyContext;
- (void)setSendOrReplyContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWHomeCommunicationContext

- (FLOWSchemaFLOWHomeCommunicationContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWHomeCommunicationContext;
  v5 = [(FLOWSchemaFLOWHomeCommunicationContext *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"homeContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWHomeContext alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWHomeCommunicationContext *)v5 setHomeContext:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"taskType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeCommunicationContext setTaskType:](v5, "setTaskType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"sendOrReplyContext"];
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

- (FLOWSchemaFLOWHomeCommunicationContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWHomeCommunicationContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWHomeCommunicationContext *)self dictionaryRepresentation];
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
  if (self->_homeContext)
  {
    v4 = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"homeContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"homeContext"];
    }
  }

  if (self->_sendOrReplyContext)
  {
    v7 = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"sendOrReplyContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"sendOrReplyContext"];
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

    [v3 setObject:v11 forKeyedSubscript:@"taskType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  whichTaskcontext = self->_whichTaskcontext;
  if (whichTaskcontext != [v4 whichTaskcontext])
  {
    goto LABEL_16;
  }

  v6 = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];
  v7 = [v4 homeContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_15;
  }

  v8 = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];
    v11 = [v4 homeContext];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    taskType = self->_taskType;
    if (taskType != [v4 taskType])
    {
      goto LABEL_16;
    }
  }

  v6 = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];
  v7 = [v4 sendOrReplyContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v14 = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];
    v17 = [v4 sendOrReplyContext];
    v18 = [v16 isEqual:v17];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];

  if (v4)
  {
    v5 = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];

  v7 = v9;
  if (v6)
  {
    v8 = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];
    PBDataWriterWriteSubmessage();

    v7 = v9;
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

- (void)setSendOrReplyContext:(id)a3
{
  v3 = 3;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichTaskcontext = v3;
  objc_storeStrong(&self->_sendOrReplyContext, a3);
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWHomeCommunicationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWHomeCommunicationContext *)self homeContext];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWHomeCommunicationContext *)self deleteHomeContext];
  }

  v9 = [(FLOWSchemaFLOWHomeCommunicationContext *)self sendOrReplyContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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