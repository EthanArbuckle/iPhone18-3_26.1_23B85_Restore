@interface INFERENCESchemaINFERENCEContact
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEContact)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEContact)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addAnonymizedHandleValues:(id)values;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEContact

- (INFERENCESchemaINFERENCEContact)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = INFERENCESchemaINFERENCEContact;
  v5 = [(INFERENCESchemaINFERENCEContact *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"anonymizedContactIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(INFERENCESchemaINFERENCEContact *)v5 setAnonymizedContactIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"anonymizedHandleValues"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          v13 = 0;
          do
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v14 copy];
              [(INFERENCESchemaINFERENCEContact *)v5 addAnonymizedHandleValues:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v11);
      }
    }

    v16 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEContact)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEContact *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEContact *)self dictionaryRepresentation];
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
  if (self->_anonymizedContactIdentifier)
  {
    anonymizedContactIdentifier = [(INFERENCESchemaINFERENCEContact *)self anonymizedContactIdentifier];
    v5 = [anonymizedContactIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"anonymizedContactIdentifier"];
  }

  if (self->_anonymizedHandleValues)
  {
    anonymizedHandleValues = [(INFERENCESchemaINFERENCEContact *)self anonymizedHandleValues];
    v7 = [anonymizedHandleValues copy];
    [dictionary setObject:v7 forKeyedSubscript:@"anonymizedHandleValues"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  anonymizedContactIdentifier = [(INFERENCESchemaINFERENCEContact *)self anonymizedContactIdentifier];
  anonymizedContactIdentifier2 = [equalCopy anonymizedContactIdentifier];
  if ((anonymizedContactIdentifier != 0) == (anonymizedContactIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  anonymizedContactIdentifier3 = [(INFERENCESchemaINFERENCEContact *)self anonymizedContactIdentifier];
  if (anonymizedContactIdentifier3)
  {
    v8 = anonymizedContactIdentifier3;
    anonymizedContactIdentifier4 = [(INFERENCESchemaINFERENCEContact *)self anonymizedContactIdentifier];
    anonymizedContactIdentifier5 = [equalCopy anonymizedContactIdentifier];
    v11 = [anonymizedContactIdentifier4 isEqual:anonymizedContactIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  anonymizedContactIdentifier = [(INFERENCESchemaINFERENCEContact *)self anonymizedHandleValues];
  anonymizedContactIdentifier2 = [equalCopy anonymizedHandleValues];
  if ((anonymizedContactIdentifier != 0) != (anonymizedContactIdentifier2 == 0))
  {
    anonymizedHandleValues = [(INFERENCESchemaINFERENCEContact *)self anonymizedHandleValues];
    if (!anonymizedHandleValues)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = anonymizedHandleValues;
    anonymizedHandleValues2 = [(INFERENCESchemaINFERENCEContact *)self anonymizedHandleValues];
    anonymizedHandleValues3 = [equalCopy anonymizedHandleValues];
    v16 = [anonymizedHandleValues2 isEqual:anonymizedHandleValues3];

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
  anonymizedContactIdentifier = [(INFERENCESchemaINFERENCEContact *)self anonymizedContactIdentifier];

  if (anonymizedContactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_anonymizedHandleValues;
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

        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addAnonymizedHandleValues:(id)values
{
  valuesCopy = values;
  anonymizedHandleValues = self->_anonymizedHandleValues;
  v8 = valuesCopy;
  if (!anonymizedHandleValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_anonymizedHandleValues;
    self->_anonymizedHandleValues = array;

    valuesCopy = v8;
    anonymizedHandleValues = self->_anonymizedHandleValues;
  }

  [(NSArray *)anonymizedHandleValues addObject:valuesCopy];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end