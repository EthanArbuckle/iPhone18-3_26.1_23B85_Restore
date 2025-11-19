@interface SUGSchemaSUGSuggestionsGenerated
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SUGSchemaSUGSuggestionsGenerated)initWithDictionary:(id)a3;
- (SUGSchemaSUGSuggestionsGenerated)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addSuggestions:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SUGSchemaSUGSuggestionsGenerated

- (SUGSchemaSUGSuggestionsGenerated)initWithDictionary:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = SUGSchemaSUGSuggestionsGenerated;
  v5 = [(SUGSchemaSUGSuggestionsGenerated *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"suggestions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v27;
        do
        {
          v11 = 0;
          do
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v26 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [SUGSchemaSUGSuggestion alloc];
              v14 = [(SUGSchemaSUGSuggestion *)v13 initWithDictionary:v12, v26];
              [(SUGSchemaSUGSuggestionsGenerated *)v5 addSuggestions:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v9);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"invocationType", v26}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestionsGenerated setInvocationType:](v5, "setInvocationType:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"generationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(SUGSchemaSUGSuggestionsGenerated *)v5 setGenerationId:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"generationTag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(SUGSchemaSUGSuggestionsGenerated *)v5 setGenerationTag:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"autoCompleteQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[SUGSchemaSUGAutoCompleteQuery alloc] initWithDictionary:v20];
      [(SUGSchemaSUGSuggestionsGenerated *)v5 setAutoCompleteQuery:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[SISchemaUUID alloc] initWithDictionary:v22];
      [(SUGSchemaSUGSuggestionsGenerated *)v5 setLinkId:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (SUGSchemaSUGSuggestionsGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SUGSchemaSUGSuggestionsGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SUGSchemaSUGSuggestionsGenerated *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_autoCompleteQuery)
  {
    v4 = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"autoCompleteQuery"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"autoCompleteQuery"];
    }
  }

  if (self->_generationId)
  {
    v7 = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"generationId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"generationId"];
    }
  }

  if (self->_generationTag)
  {
    v10 = [(SUGSchemaSUGSuggestionsGenerated *)self generationTag];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"generationTag"];
  }

  if (*&self->_has)
  {
    v12 = [(SUGSchemaSUGSuggestionsGenerated *)self invocationType]- 1;
    if (v12 > 9)
    {
      v13 = @"SUGINVOCATIONTYPE_UNKNOWN";
    }

    else
    {
      v13 = off_1E78E7CA8[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"invocationType"];
  }

  if (self->_linkId)
  {
    v14 = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_suggestions count])
  {
    v17 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = self->_suggestions;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          if (v23)
          {
            [v17 addObject:v23];
          }

          else
          {
            v24 = [MEMORY[0x1E695DFB0] null];
            [v17 addObject:v24];
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }

    [v3 setObject:v17 forKeyedSubscript:@"suggestions"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v26];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_suggestions hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_invocationType;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(SISchemaUUID *)self->_generationId hash];
  v7 = v5 ^ v6 ^ [(NSString *)self->_generationTag hash];
  v8 = [(SUGSchemaSUGAutoCompleteQuery *)self->_autoCompleteQuery hash];
  return v7 ^ v8 ^ [(SISchemaUUID *)self->_linkId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = [(SUGSchemaSUGSuggestionsGenerated *)self suggestions];
  v6 = [v4 suggestions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v7 = [(SUGSchemaSUGSuggestionsGenerated *)self suggestions];
  if (v7)
  {
    v8 = v7;
    v9 = [(SUGSchemaSUGSuggestionsGenerated *)self suggestions];
    v10 = [v4 suggestions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[56] & 1))
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    invocationType = self->_invocationType;
    if (invocationType != [v4 invocationType])
    {
      goto LABEL_30;
    }
  }

  v5 = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];
  v6 = [v4 generationId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v13 = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];
  if (v13)
  {
    v14 = v13;
    v15 = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];
    v16 = [v4 generationId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(SUGSchemaSUGSuggestionsGenerated *)self generationTag];
  v6 = [v4 generationTag];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v18 = [(SUGSchemaSUGSuggestionsGenerated *)self generationTag];
  if (v18)
  {
    v19 = v18;
    v20 = [(SUGSchemaSUGSuggestionsGenerated *)self generationTag];
    v21 = [v4 generationTag];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];
  v6 = [v4 autoCompleteQuery];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v23 = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];
  if (v23)
  {
    v24 = v23;
    v25 = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];
    v26 = [v4 autoCompleteQuery];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) != (v6 == 0))
  {
    v28 = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];
    if (!v28)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = v28;
    v30 = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];
    v31 = [v4 linkId];
    v32 = [v30 isEqual:v31];

    if (v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_29:
  }

LABEL_30:
  v33 = 0;
LABEL_31:

  return v33;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_suggestions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v10 = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];

  if (v10)
  {
    v11 = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(SUGSchemaSUGSuggestionsGenerated *)self generationTag];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];

  if (v13)
  {
    v14 = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];

  if (v15)
  {
    v16 = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addSuggestions:(id)a3
{
  v4 = a3;
  suggestions = self->_suggestions;
  v8 = v4;
  if (!suggestions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_suggestions;
    self->_suggestions = v6;

    v4 = v8;
    suggestions = self->_suggestions;
  }

  [(NSArray *)suggestions addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SUGSchemaSUGSuggestionsGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:v4];
  v6 = [(SUGSchemaSUGSuggestionsGenerated *)self suggestions];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(SUGSchemaSUGSuggestionsGenerated *)self setSuggestions:v7];

  v8 = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];
  v9 = [v8 applySensitiveConditionsPolicy:v4];
  v10 = [v9 suppressMessage];

  if (v10)
  {
    [(SUGSchemaSUGSuggestionsGenerated *)self deleteGenerationId];
  }

  v11 = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(SUGSchemaSUGSuggestionsGenerated *)self deleteAutoCompleteQuery];
  }

  v14 = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];
  v15 = [v14 applySensitiveConditionsPolicy:v4];
  v16 = [v15 suppressMessage];

  if (v16)
  {
    [(SUGSchemaSUGSuggestionsGenerated *)self deleteLinkId];
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