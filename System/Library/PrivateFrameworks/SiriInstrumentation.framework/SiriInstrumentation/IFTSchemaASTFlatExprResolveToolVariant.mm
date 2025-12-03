@interface IFTSchemaASTFlatExprResolveToolVariant
- (BOOL)isEqual:(id)equal;
- (IFTSchemaASTFlatExprResolveToolVariant)initWithDictionary:(id)dictionary;
- (IFTSchemaASTFlatExprResolveToolVariant)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addToolIds:(id)ids;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaASTFlatExprResolveToolVariant

- (IFTSchemaASTFlatExprResolveToolVariant)initWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = IFTSchemaASTFlatExprResolveToolVariant;
  v5 = [(IFTSchemaASTFlatExprResolveToolVariant *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaASTFlatExprResolveToolVariant setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"toolIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          v12 = 0;
          do
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [v13 copy];
              [(IFTSchemaASTFlatExprResolveToolVariant *)v5 addToolIds:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v10);
      }
    }

    v15 = v5;
  }

  return v5;
}

- (IFTSchemaASTFlatExprResolveToolVariant)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaASTFlatExprResolveToolVariant *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaASTFlatExprResolveToolVariant *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaASTFlatExprResolveToolVariant exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_toolIds)
  {
    toolIds = [(IFTSchemaASTFlatExprResolveToolVariant *)self toolIds];
    v6 = [toolIds copy];
    [dictionary setObject:v6 forKeyedSubscript:@"toolIds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_exists;
  }

  else
  {
    v2 = 0;
  }

  return [(NSArray *)self->_toolIds hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (exists = self->_exists, exists == [equalCopy exists]))
      {
        toolIds = [(IFTSchemaASTFlatExprResolveToolVariant *)self toolIds];
        toolIds2 = [equalCopy toolIds];
        v8 = toolIds2;
        if ((toolIds != 0) != (toolIds2 == 0))
        {
          toolIds3 = [(IFTSchemaASTFlatExprResolveToolVariant *)self toolIds];
          if (!toolIds3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = toolIds3;
          toolIds4 = [(IFTSchemaASTFlatExprResolveToolVariant *)self toolIds];
          toolIds5 = [equalCopy toolIds];
          v13 = [toolIds4 isEqual:toolIds5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
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
  v8.super_class = IFTSchemaASTFlatExprResolveToolVariant;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(IFTSchemaASTFlatExprResolveToolVariant *)self deleteToolIds];
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