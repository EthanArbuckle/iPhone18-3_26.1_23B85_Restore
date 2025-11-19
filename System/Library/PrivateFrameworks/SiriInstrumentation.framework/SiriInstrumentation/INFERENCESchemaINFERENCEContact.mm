@interface INFERENCESchemaINFERENCEContact
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEContact)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEContact)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addAnonymizedHandleValues:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEContact

- (INFERENCESchemaINFERENCEContact)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = INFERENCESchemaINFERENCEContact;
  v5 = [(INFERENCESchemaINFERENCEContact *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"anonymizedContactIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(INFERENCESchemaINFERENCEContact *)v5 setAnonymizedContactIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"anonymizedHandleValues"];
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

- (INFERENCESchemaINFERENCEContact)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEContact *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEContact *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_anonymizedContactIdentifier)
  {
    v4 = [(INFERENCESchemaINFERENCEContact *)self anonymizedContactIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"anonymizedContactIdentifier"];
  }

  if (self->_anonymizedHandleValues)
  {
    v6 = [(INFERENCESchemaINFERENCEContact *)self anonymizedHandleValues];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"anonymizedHandleValues"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(INFERENCESchemaINFERENCEContact *)self anonymizedContactIdentifier];
  v6 = [v4 anonymizedContactIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(INFERENCESchemaINFERENCEContact *)self anonymizedContactIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(INFERENCESchemaINFERENCEContact *)self anonymizedContactIdentifier];
    v10 = [v4 anonymizedContactIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEContact *)self anonymizedHandleValues];
  v6 = [v4 anonymizedHandleValues];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(INFERENCESchemaINFERENCEContact *)self anonymizedHandleValues];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(INFERENCESchemaINFERENCEContact *)self anonymizedHandleValues];
    v15 = [v4 anonymizedHandleValues];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INFERENCESchemaINFERENCEContact *)self anonymizedContactIdentifier];

  if (v5)
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

- (void)addAnonymizedHandleValues:(id)a3
{
  v4 = a3;
  anonymizedHandleValues = self->_anonymizedHandleValues;
  v8 = v4;
  if (!anonymizedHandleValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_anonymizedHandleValues;
    self->_anonymizedHandleValues = v6;

    v4 = v8;
    anonymizedHandleValues = self->_anonymizedHandleValues;
  }

  [(NSArray *)anonymizedHandleValues addObject:v4];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end