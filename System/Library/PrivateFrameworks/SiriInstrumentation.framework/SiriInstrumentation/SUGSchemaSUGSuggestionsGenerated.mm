@interface SUGSchemaSUGSuggestionsGenerated
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUGSchemaSUGSuggestionsGenerated)initWithDictionary:(id)dictionary;
- (SUGSchemaSUGSuggestionsGenerated)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addSuggestions:(id)suggestions;
- (void)writeTo:(id)to;
@end

@implementation SUGSchemaSUGSuggestionsGenerated

- (SUGSchemaSUGSuggestionsGenerated)initWithDictionary:(id)dictionary
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = SUGSchemaSUGSuggestionsGenerated;
  v5 = [(SUGSchemaSUGSuggestionsGenerated *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestions"];
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

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"invocationType", v26}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestionsGenerated setInvocationType:](v5, "setInvocationType:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"generationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(SUGSchemaSUGSuggestionsGenerated *)v5 setGenerationId:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"generationTag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(SUGSchemaSUGSuggestionsGenerated *)v5 setGenerationTag:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"autoCompleteQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[SUGSchemaSUGAutoCompleteQuery alloc] initWithDictionary:v20];
      [(SUGSchemaSUGSuggestionsGenerated *)v5 setAutoCompleteQuery:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
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

- (SUGSchemaSUGSuggestionsGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUGSchemaSUGSuggestionsGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUGSchemaSUGSuggestionsGenerated *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_autoCompleteQuery)
  {
    autoCompleteQuery = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];
    dictionaryRepresentation = [autoCompleteQuery dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"autoCompleteQuery"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"autoCompleteQuery"];
    }
  }

  if (self->_generationId)
  {
    generationId = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];
    dictionaryRepresentation2 = [generationId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"generationId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"generationId"];
    }
  }

  if (self->_generationTag)
  {
    generationTag = [(SUGSchemaSUGSuggestionsGenerated *)self generationTag];
    v11 = [generationTag copy];
    [dictionary setObject:v11 forKeyedSubscript:@"generationTag"];
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

    [dictionary setObject:v13 forKeyedSubscript:@"invocationType"];
  }

  if (self->_linkId)
  {
    linkId = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];
    dictionaryRepresentation3 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_suggestions count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null4];
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }

    [dictionary setObject:array forKeyedSubscript:@"suggestions"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v26];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  suggestions = [(SUGSchemaSUGSuggestionsGenerated *)self suggestions];
  suggestions2 = [equalCopy suggestions];
  if ((suggestions != 0) == (suggestions2 == 0))
  {
    goto LABEL_29;
  }

  suggestions3 = [(SUGSchemaSUGSuggestionsGenerated *)self suggestions];
  if (suggestions3)
  {
    v8 = suggestions3;
    suggestions4 = [(SUGSchemaSUGSuggestionsGenerated *)self suggestions];
    suggestions5 = [equalCopy suggestions];
    v11 = [suggestions4 isEqual:suggestions5];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[56] & 1))
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    invocationType = self->_invocationType;
    if (invocationType != [equalCopy invocationType])
    {
      goto LABEL_30;
    }
  }

  suggestions = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];
  suggestions2 = [equalCopy generationId];
  if ((suggestions != 0) == (suggestions2 == 0))
  {
    goto LABEL_29;
  }

  generationId = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];
  if (generationId)
  {
    v14 = generationId;
    generationId2 = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];
    generationId3 = [equalCopy generationId];
    v17 = [generationId2 isEqual:generationId3];

    if (!v17)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  suggestions = [(SUGSchemaSUGSuggestionsGenerated *)self generationTag];
  suggestions2 = [equalCopy generationTag];
  if ((suggestions != 0) == (suggestions2 == 0))
  {
    goto LABEL_29;
  }

  generationTag = [(SUGSchemaSUGSuggestionsGenerated *)self generationTag];
  if (generationTag)
  {
    v19 = generationTag;
    generationTag2 = [(SUGSchemaSUGSuggestionsGenerated *)self generationTag];
    generationTag3 = [equalCopy generationTag];
    v22 = [generationTag2 isEqual:generationTag3];

    if (!v22)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  suggestions = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];
  suggestions2 = [equalCopy autoCompleteQuery];
  if ((suggestions != 0) == (suggestions2 == 0))
  {
    goto LABEL_29;
  }

  autoCompleteQuery = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];
  if (autoCompleteQuery)
  {
    v24 = autoCompleteQuery;
    autoCompleteQuery2 = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];
    autoCompleteQuery3 = [equalCopy autoCompleteQuery];
    v27 = [autoCompleteQuery2 isEqual:autoCompleteQuery3];

    if (!v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  suggestions = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];
  suggestions2 = [equalCopy linkId];
  if ((suggestions != 0) != (suggestions2 == 0))
  {
    linkId = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];
    if (!linkId)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = linkId;
    linkId2 = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];
    linkId3 = [equalCopy linkId];
    v32 = [linkId2 isEqual:linkId3];

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

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  generationId = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];

  if (generationId)
  {
    generationId2 = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];
    PBDataWriterWriteSubmessage();
  }

  generationTag = [(SUGSchemaSUGSuggestionsGenerated *)self generationTag];

  if (generationTag)
  {
    PBDataWriterWriteStringField();
  }

  autoCompleteQuery = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];

  if (autoCompleteQuery)
  {
    autoCompleteQuery2 = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];
    PBDataWriterWriteSubmessage();
  }

  linkId = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];

  if (linkId)
  {
    linkId2 = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  suggestions = self->_suggestions;
  v8 = suggestionsCopy;
  if (!suggestions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_suggestions;
    self->_suggestions = array;

    suggestionsCopy = v8;
    suggestions = self->_suggestions;
  }

  [(NSArray *)suggestions addObject:suggestionsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v18.receiver = self;
  v18.super_class = SUGSchemaSUGSuggestionsGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:policyCopy];
  suggestions = [(SUGSchemaSUGSuggestionsGenerated *)self suggestions];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:suggestions underConditions:policyCopy];
  [(SUGSchemaSUGSuggestionsGenerated *)self setSuggestions:v7];

  generationId = [(SUGSchemaSUGSuggestionsGenerated *)self generationId];
  v9 = [generationId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v9 suppressMessage];

  if (suppressMessage)
  {
    [(SUGSchemaSUGSuggestionsGenerated *)self deleteGenerationId];
  }

  autoCompleteQuery = [(SUGSchemaSUGSuggestionsGenerated *)self autoCompleteQuery];
  v12 = [autoCompleteQuery applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
  {
    [(SUGSchemaSUGSuggestionsGenerated *)self deleteAutoCompleteQuery];
  }

  linkId = [(SUGSchemaSUGSuggestionsGenerated *)self linkId];
  v15 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v15 suppressMessage];

  if (suppressMessage3)
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