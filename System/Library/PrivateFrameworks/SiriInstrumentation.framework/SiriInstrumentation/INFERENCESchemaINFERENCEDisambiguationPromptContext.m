@interface INFERENCESchemaINFERENCEDisambiguationPromptContext
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEDisambiguationPromptContext)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEDisambiguationPromptContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addAnonymizedEntitiesPresented:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEDisambiguationPromptContext

- (INFERENCESchemaINFERENCEDisambiguationPromptContext)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = INFERENCESchemaINFERENCEDisambiguationPromptContext;
  v5 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"anonymizedEntitiesPresented"];
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
              v13 = [v12 copy];
              [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)v5 addAnonymizedEntitiesPresented:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:{@"anonymizedEntitySelected", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)v5 setAnonymizedEntitySelected:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEDisambiguationPromptContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self dictionaryRepresentation];
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
  if (self->_anonymizedEntitiesPresenteds)
  {
    v4 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitiesPresenteds];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"anonymizedEntitiesPresented"];
  }

  if (self->_anonymizedEntitySelected)
  {
    v6 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitySelected];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"anonymizedEntitySelected"];
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

  v5 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitiesPresenteds];
  v6 = [v4 anonymizedEntitiesPresenteds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitiesPresenteds];
  if (v7)
  {
    v8 = v7;
    v9 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitiesPresenteds];
    v10 = [v4 anonymizedEntitiesPresenteds];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitySelected];
  v6 = [v4 anonymizedEntitySelected];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitySelected];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitySelected];
    v15 = [v4 anonymizedEntitySelected];
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
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_anonymizedEntitiesPresenteds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitySelected];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addAnonymizedEntitiesPresented:(id)a3
{
  v4 = a3;
  anonymizedEntitiesPresenteds = self->_anonymizedEntitiesPresenteds;
  v8 = v4;
  if (!anonymizedEntitiesPresenteds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_anonymizedEntitiesPresenteds;
    self->_anonymizedEntitiesPresenteds = v6;

    v4 = v8;
    anonymizedEntitiesPresenteds = self->_anonymizedEntitiesPresenteds;
  }

  [(NSArray *)anonymizedEntitiesPresenteds addObject:v4];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end