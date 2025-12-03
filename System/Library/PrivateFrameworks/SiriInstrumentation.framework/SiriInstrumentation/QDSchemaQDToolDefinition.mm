@interface QDSchemaQDToolDefinition
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (QDSchemaQDToolDefinition)initWithDictionary:(id)dictionary;
- (QDSchemaQDToolDefinition)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addParameters:(id)parameters;
- (void)writeTo:(id)to;
@end

@implementation QDSchemaQDToolDefinition

- (QDSchemaQDToolDefinition)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = QDSchemaQDToolDefinition;
  v5 = [(QDSchemaQDToolDefinition *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"parameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        do
        {
          v11 = 0;
          do
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v21 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [QDSchemaQDToolParameterDefinition alloc];
              v14 = [(QDSchemaQDToolParameterDefinition *)v13 initWithDictionary:v12, v21];
              [(QDSchemaQDToolDefinition *)v5 addParameters:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"output", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[QDSchemaQDToolOutputDefinition alloc] initWithDictionary:v15];
      [(QDSchemaQDToolDefinition *)v5 setOutput:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"description"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(QDSchemaQDToolDefinition *)v5 setDescription:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (QDSchemaQDToolDefinition)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(QDSchemaQDToolDefinition *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(QDSchemaQDToolDefinition *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_description)
  {
    v4 = [(QDSchemaQDToolDefinition *)self description];
    v5 = [v4 copy];
    [dictionary setObject:v5 forKeyedSubscript:@"description"];
  }

  if (self->_output)
  {
    output = [(QDSchemaQDToolDefinition *)self output];
    dictionaryRepresentation = [output dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"output"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"output"];
    }
  }

  if ([(NSArray *)self->_parameters count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_parameters;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation2 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
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

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"parameters"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v18];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_parameters hash];
  v4 = [(QDSchemaQDToolOutputDefinition *)self->_output hash]^ v3;
  return v4 ^ [(NSString *)self->_description hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  parameters = [(QDSchemaQDToolDefinition *)self parameters];
  parameters2 = [equalCopy parameters];
  if ((parameters != 0) == (parameters2 == 0))
  {
    goto LABEL_16;
  }

  parameters3 = [(QDSchemaQDToolDefinition *)self parameters];
  if (parameters3)
  {
    v8 = parameters3;
    parameters4 = [(QDSchemaQDToolDefinition *)self parameters];
    parameters5 = [equalCopy parameters];
    v11 = [parameters4 isEqual:parameters5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  parameters = [(QDSchemaQDToolDefinition *)self output];
  parameters2 = [equalCopy output];
  if ((parameters != 0) == (parameters2 == 0))
  {
    goto LABEL_16;
  }

  output = [(QDSchemaQDToolDefinition *)self output];
  if (output)
  {
    v13 = output;
    output2 = [(QDSchemaQDToolDefinition *)self output];
    output3 = [equalCopy output];
    v16 = [output2 isEqual:output3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  parameters = [(QDSchemaQDToolDefinition *)self description];
  parameters2 = [equalCopy description];
  if ((parameters != 0) != (parameters2 == 0))
  {
    v17 = [(QDSchemaQDToolDefinition *)self description];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(QDSchemaQDToolDefinition *)self description];
    v20 = [equalCopy description];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_parameters;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  output = [(QDSchemaQDToolDefinition *)self output];

  if (output)
  {
    output2 = [(QDSchemaQDToolDefinition *)self output];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(QDSchemaQDToolDefinition *)self description];

  if (v12)
  {
    PBDataWriterWriteStringField();
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
  v11.receiver = self;
  v11.super_class = QDSchemaQDToolDefinition;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(QDSchemaQDToolDefinition *)self parameters:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(QDSchemaQDToolDefinition *)self setParameters:v7];

  output = [(QDSchemaQDToolDefinition *)self output];
  v9 = [output applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v9 suppressMessage];
  if (policyCopy)
  {
    [(QDSchemaQDToolDefinition *)self deleteOutput];
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