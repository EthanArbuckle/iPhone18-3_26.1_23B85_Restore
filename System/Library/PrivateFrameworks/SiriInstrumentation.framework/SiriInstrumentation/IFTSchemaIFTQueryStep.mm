@interface IFTSchemaIFTQueryStep
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTQueryStep)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTQueryStep)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addQueries:(id)queries;
- (void)setHasPayloadType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTQueryStep

- (IFTSchemaIFTQueryStep)initWithDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = IFTSchemaIFTQueryStep;
  v5 = [(IFTSchemaIFTQueryStep *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTQueryStep setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTQueryStep *)v5 setStatementId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"queries"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v7;
      v23 = v6;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[IFTSchemaIFTParameterQuery alloc] initWithDictionary:v15];
              [(IFTSchemaIFTQueryStep *)v5 addQueries:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v12);
      }

      v7 = v22;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:{@"context", v22, v23, v24}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[IFTSchemaIFTActionParameterContext alloc] initWithDictionary:v17];
      [(IFTSchemaIFTQueryStep *)v5 setContext:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"payloadType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTQueryStep setPayloadType:](v5, "setPayloadType:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (IFTSchemaIFTQueryStep)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTQueryStep *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTQueryStep *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_context)
  {
    context = [(IFTSchemaIFTQueryStep *)self context];
    dictionaryRepresentation = [context dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"context"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"context"];
    }
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTQueryStep exists](self, "exists")}];
    [dictionary setObject:v8 forKeyedSubscript:@"exists"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [(IFTSchemaIFTQueryStep *)self payloadType]- 1;
    if (v9 > 3)
    {
      v10 = @"IFTQUERYPAYLOADTYPE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78D8580[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"payloadType"];
  }

  if ([(NSArray *)self->_queries count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = self->_queries;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array forKeyedSubscript:@"queries"];
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTQueryStep *)self statementId];
    dictionaryRepresentation3 = [statementId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"statementId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"statementId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v23];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(IFTSchemaIFTStatementId *)self->_statementId hash];
  v5 = [(NSArray *)self->_queries hash];
  v6 = [(IFTSchemaIFTActionParameterContext *)self->_context hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_payloadType;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (equalCopy[44] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_20;
    }
  }

  statementId = [(IFTSchemaIFTQueryStep *)self statementId];
  statementId2 = [equalCopy statementId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_19;
  }

  statementId3 = [(IFTSchemaIFTQueryStep *)self statementId];
  if (statementId3)
  {
    v9 = statementId3;
    statementId4 = [(IFTSchemaIFTQueryStep *)self statementId];
    statementId5 = [equalCopy statementId];
    v12 = [statementId4 isEqual:statementId5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTQueryStep *)self queries];
  statementId2 = [equalCopy queries];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_19;
  }

  queries = [(IFTSchemaIFTQueryStep *)self queries];
  if (queries)
  {
    v14 = queries;
    queries2 = [(IFTSchemaIFTQueryStep *)self queries];
    queries3 = [equalCopy queries];
    v17 = [queries2 isEqual:queries3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTQueryStep *)self context];
  statementId2 = [equalCopy context];
  if ((statementId != 0) == (statementId2 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  context = [(IFTSchemaIFTQueryStep *)self context];
  if (context)
  {
    v19 = context;
    context2 = [(IFTSchemaIFTQueryStep *)self context];
    context3 = [equalCopy context];
    v22 = [context2 isEqual:context3];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v25 = (*&self->_has >> 1) & 1;
  if (v25 == ((equalCopy[44] >> 1) & 1))
  {
    if (!v25 || (payloadType = self->_payloadType, payloadType == [equalCopy payloadType]))
    {
      v23 = 1;
      goto LABEL_21;
    }
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  statementId = [(IFTSchemaIFTQueryStep *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTQueryStep *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_queries;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  context = [(IFTSchemaIFTQueryStep *)self context];

  if (context)
  {
    context2 = [(IFTSchemaIFTQueryStep *)self context];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasPayloadType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addQueries:(id)queries
{
  queriesCopy = queries;
  queries = self->_queries;
  v8 = queriesCopy;
  if (!queries)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_queries;
    self->_queries = array;

    queriesCopy = v8;
    queries = self->_queries;
  }

  [(NSArray *)queries addObject:queriesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTQueryStep;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  statementId = [(IFTSchemaIFTQueryStep *)self statementId];
  v7 = [statementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTQueryStep *)self deleteStatementId];
  }

  queries = [(IFTSchemaIFTQueryStep *)self queries];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:queries underConditions:policyCopy];
  [(IFTSchemaIFTQueryStep *)self setQueries:v10];

  context = [(IFTSchemaIFTQueryStep *)self context];
  v12 = [context applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTQueryStep *)self deleteContext];
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