@interface IFTSchemaIFTCollectionValue
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTCollectionValue)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTCollectionValue)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addValues:(id)values;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTCollectionValue

- (IFTSchemaIFTCollectionValue)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = IFTSchemaIFTCollectionValue;
  v5 = [(IFTSchemaIFTCollectionValue *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"typeIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTTypeIdentifier alloc] initWithDictionary:v6];
      [(IFTSchemaIFTCollectionValue *)v5 setTypeIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"values"];
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
              v15 = [[IFTSchemaIFTValue alloc] initWithDictionary:v14];
              [(IFTSchemaIFTCollectionValue *)v5 addValues:v15];
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

- (IFTSchemaIFTCollectionValue)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTCollectionValue *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTCollectionValue *)self dictionaryRepresentation];
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
  if (self->_typeIdentifier)
  {
    typeIdentifier = [(IFTSchemaIFTCollectionValue *)self typeIdentifier];
    dictionaryRepresentation = [typeIdentifier dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"typeIdentifier"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"typeIdentifier"];
    }
  }

  if ([(NSArray *)self->_values count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_values;
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

    [dictionary setObject:array forKeyedSubscript:@"values"];
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

  typeIdentifier = [(IFTSchemaIFTCollectionValue *)self typeIdentifier];
  typeIdentifier2 = [equalCopy typeIdentifier];
  if ((typeIdentifier != 0) == (typeIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  typeIdentifier3 = [(IFTSchemaIFTCollectionValue *)self typeIdentifier];
  if (typeIdentifier3)
  {
    v8 = typeIdentifier3;
    typeIdentifier4 = [(IFTSchemaIFTCollectionValue *)self typeIdentifier];
    typeIdentifier5 = [equalCopy typeIdentifier];
    v11 = [typeIdentifier4 isEqual:typeIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  typeIdentifier = [(IFTSchemaIFTCollectionValue *)self values];
  typeIdentifier2 = [equalCopy values];
  if ((typeIdentifier != 0) != (typeIdentifier2 == 0))
  {
    values = [(IFTSchemaIFTCollectionValue *)self values];
    if (!values)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = values;
    values2 = [(IFTSchemaIFTCollectionValue *)self values];
    values3 = [equalCopy values];
    v16 = [values2 isEqual:values3];

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
  typeIdentifier = [(IFTSchemaIFTCollectionValue *)self typeIdentifier];

  if (typeIdentifier)
  {
    typeIdentifier2 = [(IFTSchemaIFTCollectionValue *)self typeIdentifier];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_values;
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

- (void)addValues:(id)values
{
  valuesCopy = values;
  values = self->_values;
  v8 = valuesCopy;
  if (!values)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_values;
    self->_values = array;

    valuesCopy = v8;
    values = self->_values;
  }

  [(NSArray *)values addObject:valuesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTCollectionValue;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  typeIdentifier = [(IFTSchemaIFTCollectionValue *)self typeIdentifier];
  v7 = [typeIdentifier applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTCollectionValue *)self deleteTypeIdentifier];
  }

  values = [(IFTSchemaIFTCollectionValue *)self values];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:values underConditions:policyCopy];
  [(IFTSchemaIFTCollectionValue *)self setValues:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end