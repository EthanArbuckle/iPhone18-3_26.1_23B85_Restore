@interface ExecutorSiriSchemaExecutorClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (ExecutorSiriSchemaExecutorClientEventMetadata)initWithDictionary:(id)dictionary;
- (ExecutorSiriSchemaExecutorClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ExecutorSiriSchemaExecutorClientEventMetadata

- (ExecutorSiriSchemaExecutorClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ExecutorSiriSchemaExecutorClientEventMetadata;
  v5 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ifRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ExecutorSiriSchemaExecutorClientEventMetadata *)v5 setIfRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"executorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ExecutorSiriSchemaExecutorClientEventMetadata *)v5 setExecutorId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"spanId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ExecutorSiriSchemaExecutorClientEventMetadata setSpanId:](v5, "setSpanId:", [v10 unsignedLongLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (ExecutorSiriSchemaExecutorClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_executorId)
  {
    executorId = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];
    dictionaryRepresentation = [executorId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"executorId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"executorId"];
    }
  }

  if (self->_ifRequestId)
  {
    ifRequestId = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];
    dictionaryRepresentation2 = [ifRequestId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ifRequestId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ifRequestId"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ExecutorSiriSchemaExecutorClientEventMetadata spanId](self, "spanId")}];
    [dictionary setObject:v10 forKeyedSubscript:@"spanId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_ifRequestId hash];
  v4 = [(SISchemaUUID *)self->_executorId hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_spanId;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  ifRequestId = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];
  ifRequestId2 = [equalCopy ifRequestId];
  if ((ifRequestId != 0) == (ifRequestId2 == 0))
  {
    goto LABEL_11;
  }

  ifRequestId3 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];
  if (ifRequestId3)
  {
    v8 = ifRequestId3;
    ifRequestId4 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];
    ifRequestId5 = [equalCopy ifRequestId];
    v11 = [ifRequestId4 isEqual:ifRequestId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  ifRequestId = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];
  ifRequestId2 = [equalCopy executorId];
  if ((ifRequestId != 0) == (ifRequestId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  executorId = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];
  if (executorId)
  {
    v13 = executorId;
    executorId2 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];
    executorId3 = [equalCopy executorId];
    v16 = [executorId2 isEqual:executorId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[32] & 1))
  {
    if ((*&self->_has & 1) == 0 || (spanId = self->_spanId, spanId == [equalCopy spanId]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  ifRequestId = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];

  if (ifRequestId)
  {
    ifRequestId2 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];
    PBDataWriterWriteSubmessage();
  }

  executorId = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];

  if (executorId)
  {
    executorId2 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ExecutorSiriSchemaExecutorClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  ifRequestId = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];
  v7 = [ifRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ExecutorSiriSchemaExecutorClientEventMetadata *)self deleteIfRequestId];
  }

  executorId = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];
  v10 = [executorId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ExecutorSiriSchemaExecutorClientEventMetadata *)self deleteExecutorId];
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