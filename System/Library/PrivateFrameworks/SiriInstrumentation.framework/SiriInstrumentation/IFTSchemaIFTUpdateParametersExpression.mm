@interface IFTSchemaIFTUpdateParametersExpression
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTUpdateParametersExpression)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTUpdateParametersExpression)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addUpdates:(id)updates;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTUpdateParametersExpression

- (IFTSchemaIFTUpdateParametersExpression)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = IFTSchemaIFTUpdateParametersExpression;
  v5 = [(IFTSchemaIFTUpdateParametersExpression *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"callStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v6];
      [(IFTSchemaIFTUpdateParametersExpression *)v5 setCallStatementId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"updates"];
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
              v15 = [[IFTSchemaIFTUpdateParameter alloc] initWithDictionary:v14];
              [(IFTSchemaIFTUpdateParametersExpression *)v5 addUpdates:v15];
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

- (IFTSchemaIFTUpdateParametersExpression)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTUpdateParametersExpression *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTUpdateParametersExpression *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_callStatementId)
  {
    callStatementId = [(IFTSchemaIFTUpdateParametersExpression *)self callStatementId];
    dictionaryRepresentation = [callStatementId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"callStatementId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"callStatementId"];
    }
  }

  if ([(NSArray *)self->_updates count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_updates;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"updates"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  callStatementId = [(IFTSchemaIFTUpdateParametersExpression *)self callStatementId];
  callStatementId2 = [equalCopy callStatementId];
  if ((callStatementId != 0) == (callStatementId2 == 0))
  {
    goto LABEL_11;
  }

  callStatementId3 = [(IFTSchemaIFTUpdateParametersExpression *)self callStatementId];
  if (callStatementId3)
  {
    v8 = callStatementId3;
    callStatementId4 = [(IFTSchemaIFTUpdateParametersExpression *)self callStatementId];
    callStatementId5 = [equalCopy callStatementId];
    v11 = [callStatementId4 isEqual:callStatementId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  callStatementId = [(IFTSchemaIFTUpdateParametersExpression *)self updates];
  callStatementId2 = [equalCopy updates];
  if ((callStatementId != 0) != (callStatementId2 == 0))
  {
    updates = [(IFTSchemaIFTUpdateParametersExpression *)self updates];
    if (!updates)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = updates;
    updates2 = [(IFTSchemaIFTUpdateParametersExpression *)self updates];
    updates3 = [equalCopy updates];
    v16 = [updates2 isEqual:updates3];

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
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  callStatementId = [(IFTSchemaIFTUpdateParametersExpression *)self callStatementId];

  if (callStatementId)
  {
    callStatementId2 = [(IFTSchemaIFTUpdateParametersExpression *)self callStatementId];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_updates;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)addUpdates:(id)updates
{
  updatesCopy = updates;
  updates = self->_updates;
  v8 = updatesCopy;
  if (!updates)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_updates;
    self->_updates = array;

    updatesCopy = v8;
    updates = self->_updates;
  }

  [(NSArray *)updates addObject:updatesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTUpdateParametersExpression;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  callStatementId = [(IFTSchemaIFTUpdateParametersExpression *)self callStatementId];
  v7 = [callStatementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTUpdateParametersExpression *)self deleteCallStatementId];
  }

  updates = [(IFTSchemaIFTUpdateParametersExpression *)self updates];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:updates underConditions:policyCopy];
  [(IFTSchemaIFTUpdateParametersExpression *)self setUpdates:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end