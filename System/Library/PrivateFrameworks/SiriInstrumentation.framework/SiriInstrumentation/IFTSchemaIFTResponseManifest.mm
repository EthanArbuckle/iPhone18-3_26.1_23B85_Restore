@interface IFTSchemaIFTResponseManifest
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTResponseManifest)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTResponseManifest)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addParameters:(id)parameters;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTResponseManifest

- (IFTSchemaIFTResponseManifest)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = IFTSchemaIFTResponseManifest;
  v5 = [(IFTSchemaIFTResponseManifest *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"parameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [IFTSchemaIFTResponseParameter alloc];
              v14 = [(IFTSchemaIFTResponseParameter *)v13 initWithDictionary:v12, v18];
              [(IFTSchemaIFTResponseManifest *)v5 addParameters:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"useTemplateAsFallback", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTResponseManifest setUseTemplateAsFallback:](v5, "setUseTemplateAsFallback:", [v15 BOOLValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (IFTSchemaIFTResponseManifest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTResponseManifest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTResponseManifest *)self dictionaryRepresentation];
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
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_parameters count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_parameters;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"parameters"];
  }

  if (*(&self->_useTemplateAsFallback + 1))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTResponseManifest useTemplateAsFallback](self, "useTemplateAsFallback")}];
    [dictionary setObject:v12 forKeyedSubscript:@"useTemplateAsFallback"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v14];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_parameters hash];
  if (*(&self->_useTemplateAsFallback + 1))
  {
    v4 = 2654435761 * self->_useTemplateAsFallback;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  parameters = [(IFTSchemaIFTResponseManifest *)self parameters];
  parameters2 = [equalCopy parameters];
  v7 = parameters2;
  if ((parameters != 0) == (parameters2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  parameters3 = [(IFTSchemaIFTResponseManifest *)self parameters];
  if (parameters3)
  {
    v9 = parameters3;
    parameters4 = [(IFTSchemaIFTResponseManifest *)self parameters];
    parameters5 = [equalCopy parameters];
    v12 = [parameters4 isEqual:parameters5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_useTemplateAsFallback + 1) != (equalCopy[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_useTemplateAsFallback + 1))
  {
    useTemplateAsFallback = self->_useTemplateAsFallback;
    if (useTemplateAsFallback != [equalCopy useTemplateAsFallback])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_parameters;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(&self->_useTemplateAsFallback + 1))
  {
    PBDataWriterWriteBOOLField();
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
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTResponseManifest;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTResponseManifest *)self parameters:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(IFTSchemaIFTResponseManifest *)self setParameters:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end