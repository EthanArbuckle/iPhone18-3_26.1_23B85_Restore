@interface IFTSchemaIFTResolveToolExpression
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTResolveToolExpression)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTResolveToolExpression)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addToolIds:(id)ids;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTResolveToolExpression

- (IFTSchemaIFTResolveToolExpression)initWithDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = IFTSchemaIFTResolveToolExpression;
  v5 = [(IFTSchemaIFTResolveToolExpression *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"toolIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(IFTSchemaIFTResolveToolExpression *)v5 addToolIds:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v9);
      }
    }

    v14 = v5;
  }

  return v5;
}

- (IFTSchemaIFTResolveToolExpression)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTResolveToolExpression *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTResolveToolExpression *)self dictionaryRepresentation];
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
  if (self->_toolIds)
  {
    toolIds = [(IFTSchemaIFTResolveToolExpression *)self toolIds];
    v5 = [toolIds copy];
    [dictionary setObject:v5 forKeyedSubscript:@"toolIds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    toolIds = [(IFTSchemaIFTResolveToolExpression *)self toolIds];
    toolIds2 = [equalCopy toolIds];
    v7 = toolIds2;
    if ((toolIds != 0) != (toolIds2 == 0))
    {
      toolIds3 = [(IFTSchemaIFTResolveToolExpression *)self toolIds];
      if (!toolIds3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = toolIds3;
      toolIds4 = [(IFTSchemaIFTResolveToolExpression *)self toolIds];
      toolIds5 = [equalCopy toolIds];
      v12 = [toolIds4 isEqual:toolIds5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_toolIds;
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

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addToolIds:(id)ids
{
  idsCopy = ids;
  toolIds = self->_toolIds;
  v8 = idsCopy;
  if (!toolIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_toolIds;
    self->_toolIds = array;

    idsCopy = v8;
    toolIds = self->_toolIds;
  }

  [(NSArray *)toolIds addObject:idsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = IFTSchemaIFTResolveToolExpression;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(IFTSchemaIFTResolveToolExpression *)self deleteToolIds];
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