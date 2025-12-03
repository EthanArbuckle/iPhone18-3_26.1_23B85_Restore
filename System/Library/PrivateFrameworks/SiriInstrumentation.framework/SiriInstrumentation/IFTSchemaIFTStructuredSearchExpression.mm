@interface IFTSchemaIFTStructuredSearchExpression
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTStructuredSearchExpression)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTStructuredSearchExpression)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addParameters:(id)parameters;
- (void)addProperties:(id)properties;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTStructuredSearchExpression

- (IFTSchemaIFTStructuredSearchExpression)initWithDictionary:(id)dictionary
{
  v41 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = IFTSchemaIFTStructuredSearchExpression;
  v5 = [(IFTSchemaIFTStructuredSearchExpression *)&v38 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isExpanded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTStructuredSearchExpression setIsExpanded:](v5, "setIsExpanded:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"properties"];
    objc_opt_class();
    v29 = v6;
    if (objc_opt_isKindOfClass())
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v8 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v35;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v34 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[IFTSchemaIFTStructuredSearchProperty alloc] initWithDictionary:v14];
              [(IFTSchemaIFTStructuredSearchExpression *)v5 addProperties:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v11);
      }

      v7 = v8;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"returnType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IFTSchemaIFTTypeInstance alloc] initWithDictionary:v16];
      [(IFTSchemaIFTStructuredSearchExpression *)v5 setReturnType:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"parameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v16;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v31;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v30 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[IFTSchemaIFTStructuredSearchExpressionParameters alloc] initWithDictionary:v24];
              [(IFTSchemaIFTStructuredSearchExpression *)v5 addParameters:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v21);
      }

      v6 = v29;
      v16 = v28;
    }

    v26 = v5;
  }

  return v5;
}

- (IFTSchemaIFTStructuredSearchExpression)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTStructuredSearchExpression *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTStructuredSearchExpression *)self dictionaryRepresentation];
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
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTStructuredSearchExpression isExpanded](self, "isExpanded")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isExpanded"];
  }

  if ([(NSArray *)self->_parameters count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = self->_parameters;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
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

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v8);
    }

    [dictionary setObject:array forKeyedSubscript:@"parameters"];
  }

  if ([(NSArray *)self->_properties count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = self->_properties;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array2 addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null2];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"properties"];
  }

  if (self->_returnType)
  {
    returnType = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];
    dictionaryRepresentation3 = [returnType dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"returnType"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"returnType"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v25];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isExpanded;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_properties hash]^ v3;
  v5 = [(IFTSchemaIFTTypeInstance *)self->_returnType hash];
  return v4 ^ v5 ^ [(NSArray *)self->_parameters hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    isExpanded = self->_isExpanded;
    if (isExpanded != [equalCopy isExpanded])
    {
      goto LABEL_20;
    }
  }

  properties = [(IFTSchemaIFTStructuredSearchExpression *)self properties];
  properties2 = [equalCopy properties];
  if ((properties != 0) == (properties2 == 0))
  {
    goto LABEL_19;
  }

  properties3 = [(IFTSchemaIFTStructuredSearchExpression *)self properties];
  if (properties3)
  {
    v9 = properties3;
    properties4 = [(IFTSchemaIFTStructuredSearchExpression *)self properties];
    properties5 = [equalCopy properties];
    v12 = [properties4 isEqual:properties5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  properties = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];
  properties2 = [equalCopy returnType];
  if ((properties != 0) == (properties2 == 0))
  {
    goto LABEL_19;
  }

  returnType = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];
  if (returnType)
  {
    v14 = returnType;
    returnType2 = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];
    returnType3 = [equalCopy returnType];
    v17 = [returnType2 isEqual:returnType3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  properties = [(IFTSchemaIFTStructuredSearchExpression *)self parameters];
  properties2 = [equalCopy parameters];
  if ((properties != 0) != (properties2 == 0))
  {
    parameters = [(IFTSchemaIFTStructuredSearchExpression *)self parameters];
    if (!parameters)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = parameters;
    parameters2 = [(IFTSchemaIFTStructuredSearchExpression *)self parameters];
    parameters3 = [equalCopy parameters];
    v22 = [parameters2 isEqual:parameters3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_properties;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  returnType = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];

  if (returnType)
  {
    returnType2 = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];
    PBDataWriterWriteSubmessage();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_parameters;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
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

- (void)addProperties:(id)properties
{
  propertiesCopy = properties;
  properties = self->_properties;
  v8 = propertiesCopy;
  if (!properties)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_properties;
    self->_properties = array;

    propertiesCopy = v8;
    properties = self->_properties;
  }

  [(NSArray *)properties addObject:propertiesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTStructuredSearchExpression;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:policyCopy];
  properties = [(IFTSchemaIFTStructuredSearchExpression *)self properties];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:properties underConditions:policyCopy];
  [(IFTSchemaIFTStructuredSearchExpression *)self setProperties:v7];

  returnType = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];
  v9 = [returnType applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v9 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTStructuredSearchExpression *)self deleteReturnType];
  }

  parameters = [(IFTSchemaIFTStructuredSearchExpression *)self parameters];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:parameters underConditions:policyCopy];
  [(IFTSchemaIFTStructuredSearchExpression *)self setParameters:v12];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end