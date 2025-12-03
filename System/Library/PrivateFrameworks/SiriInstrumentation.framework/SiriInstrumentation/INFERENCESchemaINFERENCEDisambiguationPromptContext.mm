@interface INFERENCESchemaINFERENCEDisambiguationPromptContext
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEDisambiguationPromptContext)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEDisambiguationPromptContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addAnonymizedEntitiesPresented:(id)presented;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEDisambiguationPromptContext

- (INFERENCESchemaINFERENCEDisambiguationPromptContext)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = INFERENCESchemaINFERENCEDisambiguationPromptContext;
  v5 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"anonymizedEntitiesPresented"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:{@"anonymizedEntitySelected", v18}];
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

- (INFERENCESchemaINFERENCEDisambiguationPromptContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self dictionaryRepresentation];
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
  if (self->_anonymizedEntitiesPresenteds)
  {
    anonymizedEntitiesPresenteds = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitiesPresenteds];
    v5 = [anonymizedEntitiesPresenteds copy];
    [dictionary setObject:v5 forKeyedSubscript:@"anonymizedEntitiesPresented"];
  }

  if (self->_anonymizedEntitySelected)
  {
    anonymizedEntitySelected = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitySelected];
    v7 = [anonymizedEntitySelected copy];
    [dictionary setObject:v7 forKeyedSubscript:@"anonymizedEntitySelected"];
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

  anonymizedEntitiesPresenteds = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitiesPresenteds];
  anonymizedEntitiesPresenteds2 = [equalCopy anonymizedEntitiesPresenteds];
  if ((anonymizedEntitiesPresenteds != 0) == (anonymizedEntitiesPresenteds2 == 0))
  {
    goto LABEL_11;
  }

  anonymizedEntitiesPresenteds3 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitiesPresenteds];
  if (anonymizedEntitiesPresenteds3)
  {
    v8 = anonymizedEntitiesPresenteds3;
    anonymizedEntitiesPresenteds4 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitiesPresenteds];
    anonymizedEntitiesPresenteds5 = [equalCopy anonymizedEntitiesPresenteds];
    v11 = [anonymizedEntitiesPresenteds4 isEqual:anonymizedEntitiesPresenteds5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  anonymizedEntitiesPresenteds = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitySelected];
  anonymizedEntitiesPresenteds2 = [equalCopy anonymizedEntitySelected];
  if ((anonymizedEntitiesPresenteds != 0) != (anonymizedEntitiesPresenteds2 == 0))
  {
    anonymizedEntitySelected = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitySelected];
    if (!anonymizedEntitySelected)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = anonymizedEntitySelected;
    anonymizedEntitySelected2 = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitySelected];
    anonymizedEntitySelected3 = [equalCopy anonymizedEntitySelected];
    v16 = [anonymizedEntitySelected2 isEqual:anonymizedEntitySelected3];

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

  anonymizedEntitySelected = [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self anonymizedEntitySelected];

  if (anonymizedEntitySelected)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addAnonymizedEntitiesPresented:(id)presented
{
  presentedCopy = presented;
  anonymizedEntitiesPresenteds = self->_anonymizedEntitiesPresenteds;
  v8 = presentedCopy;
  if (!anonymizedEntitiesPresenteds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_anonymizedEntitiesPresenteds;
    self->_anonymizedEntitiesPresenteds = array;

    presentedCopy = v8;
    anonymizedEntitiesPresenteds = self->_anonymizedEntitiesPresenteds;
  }

  [(NSArray *)anonymizedEntitiesPresenteds addObject:presentedCopy];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end