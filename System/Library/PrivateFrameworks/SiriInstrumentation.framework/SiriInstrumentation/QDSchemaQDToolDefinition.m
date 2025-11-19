@interface QDSchemaQDToolDefinition
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (QDSchemaQDToolDefinition)initWithDictionary:(id)a3;
- (QDSchemaQDToolDefinition)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addParameters:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation QDSchemaQDToolDefinition

- (QDSchemaQDToolDefinition)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = QDSchemaQDToolDefinition;
  v5 = [(QDSchemaQDToolDefinition *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"parameters"];
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

    v15 = [v4 objectForKeyedSubscript:{@"output", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[QDSchemaQDToolOutputDefinition alloc] initWithDictionary:v15];
      [(QDSchemaQDToolDefinition *)v5 setOutput:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"description"];
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

- (QDSchemaQDToolDefinition)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(QDSchemaQDToolDefinition *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(QDSchemaQDToolDefinition *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_description)
  {
    v4 = [(QDSchemaQDToolDefinition *)self description];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"description"];
  }

  if (self->_output)
  {
    v6 = [(QDSchemaQDToolDefinition *)self output];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"output"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"output"];
    }
  }

  if ([(NSArray *)self->_parameters count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
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

          v15 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (v15)
          {
            [v9 addObject:v15];
          }

          else
          {
            v16 = [MEMORY[0x1E695DFB0] null];
            [v9 addObject:v16];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"parameters"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v18];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_parameters hash];
  v4 = [(QDSchemaQDToolOutputDefinition *)self->_output hash]^ v3;
  return v4 ^ [(NSString *)self->_description hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(QDSchemaQDToolDefinition *)self parameters];
  v6 = [v4 parameters];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(QDSchemaQDToolDefinition *)self parameters];
  if (v7)
  {
    v8 = v7;
    v9 = [(QDSchemaQDToolDefinition *)self parameters];
    v10 = [v4 parameters];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDToolDefinition *)self output];
  v6 = [v4 output];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(QDSchemaQDToolDefinition *)self output];
  if (v12)
  {
    v13 = v12;
    v14 = [(QDSchemaQDToolDefinition *)self output];
    v15 = [v4 output];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDToolDefinition *)self description];
  v6 = [v4 description];
  if ((v5 != 0) != (v6 == 0))
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
    v20 = [v4 description];
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

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v10 = [(QDSchemaQDToolDefinition *)self output];

  if (v10)
  {
    v11 = [(QDSchemaQDToolDefinition *)self output];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(QDSchemaQDToolDefinition *)self description];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addParameters:(id)a3
{
  v4 = a3;
  parameters = self->_parameters;
  v8 = v4;
  if (!parameters)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameters;
    self->_parameters = v6;

    v4 = v8;
    parameters = self->_parameters;
  }

  [(NSArray *)parameters addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = QDSchemaQDToolDefinition;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(QDSchemaQDToolDefinition *)self parameters:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(QDSchemaQDToolDefinition *)self setParameters:v7];

  v8 = [(QDSchemaQDToolDefinition *)self output];
  v9 = [v8 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v9 suppressMessage];
  if (v4)
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