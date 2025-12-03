@interface IFTSchemaIFTCallExpression
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTCallExpression)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTCallExpression)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addParameters:(id)parameters;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTCallExpression

- (IFTSchemaIFTCallExpression)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = IFTSchemaIFTCallExpression;
  v5 = [(IFTSchemaIFTCallExpression *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTCallExpression *)v5 setToolId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"parameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v6;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[IFTSchemaIFTCallExpressionParameters alloc] initWithDictionary:v14];
              [(IFTSchemaIFTCallExpression *)v5 addParameters:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v11);
      }

      v6 = v18;
    }

    v16 = v5;
  }

  return v5;
}

- (IFTSchemaIFTCallExpression)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTCallExpression *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTCallExpression *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_parameters count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_parameters;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"parameters"];
  }

  if (self->_toolId)
  {
    toolId = [(IFTSchemaIFTCallExpression *)self toolId];
    v13 = [toolId copy];
    [dictionary setObject:v13 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v15];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  toolId = [(IFTSchemaIFTCallExpression *)self toolId];
  toolId2 = [equalCopy toolId];
  if ((toolId != 0) == (toolId2 == 0))
  {
    goto LABEL_11;
  }

  toolId3 = [(IFTSchemaIFTCallExpression *)self toolId];
  if (toolId3)
  {
    v8 = toolId3;
    toolId4 = [(IFTSchemaIFTCallExpression *)self toolId];
    toolId5 = [equalCopy toolId];
    v11 = [toolId4 isEqual:toolId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  toolId = [(IFTSchemaIFTCallExpression *)self parameters];
  toolId2 = [equalCopy parameters];
  if ((toolId != 0) != (toolId2 == 0))
  {
    parameters = [(IFTSchemaIFTCallExpression *)self parameters];
    if (!parameters)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = parameters;
    parameters2 = [(IFTSchemaIFTCallExpression *)self parameters];
    parameters3 = [equalCopy parameters];
    v16 = [parameters2 isEqual:parameters3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  toolId = [(IFTSchemaIFTCallExpression *)self toolId];

  if (toolId)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_parameters;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addParameters:(id)parameters
{
  parametersCopy = parameters;
  parameters = self->_parameters;
  v8 = parametersCopy;
  if (!parameters)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameters;
    self->_parameters = array;

    parametersCopy = v8;
    parameters = self->_parameters;
  }

  [(NSArray *)parameters addObject:parametersCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTCallExpression;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(IFTSchemaIFTCallExpression *)self deleteToolId];
  }

  parameters = [(IFTSchemaIFTCallExpression *)self parameters];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:parameters underConditions:policyCopy];
  [(IFTSchemaIFTCallExpression *)self setParameters:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end