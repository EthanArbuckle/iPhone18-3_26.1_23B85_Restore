@interface ExecutorSiriSchemaExecutorClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (ExecutorSiriSchemaExecutorClientEventMetadata)initWithDictionary:(id)a3;
- (ExecutorSiriSchemaExecutorClientEventMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ExecutorSiriSchemaExecutorClientEventMetadata

- (ExecutorSiriSchemaExecutorClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ExecutorSiriSchemaExecutorClientEventMetadata;
  v5 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ifRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ExecutorSiriSchemaExecutorClientEventMetadata *)v5 setIfRequestId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"executorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ExecutorSiriSchemaExecutorClientEventMetadata *)v5 setExecutorId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"spanId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ExecutorSiriSchemaExecutorClientEventMetadata setSpanId:](v5, "setSpanId:", [v10 unsignedLongLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (ExecutorSiriSchemaExecutorClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_executorId)
  {
    v4 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"executorId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"executorId"];
    }
  }

  if (self->_ifRequestId)
  {
    v7 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"ifRequestId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"ifRequestId"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ExecutorSiriSchemaExecutorClientEventMetadata spanId](self, "spanId")}];
    [v3 setObject:v10 forKeyedSubscript:@"spanId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];
  v6 = [v4 ifRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];
    v10 = [v4 ifRequestId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];
  v6 = [v4 executorId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];
  if (v12)
  {
    v13 = v12;
    v14 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];
    v15 = [v4 executorId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[32] & 1))
  {
    if ((*&self->_has & 1) == 0 || (spanId = self->_spanId, spanId == [v4 spanId]))
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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];

  if (v4)
  {
    v5 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];

  if (v6)
  {
    v7 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ExecutorSiriSchemaExecutorClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self ifRequestId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ExecutorSiriSchemaExecutorClientEventMetadata *)self deleteIfRequestId];
  }

  v9 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self executorId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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