@interface SUGSchemaSUGSuggestionsGeneratedTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUGSchemaSUGSuggestionsGeneratedTier1)initWithDictionary:(id)dictionary;
- (SUGSchemaSUGSuggestionsGeneratedTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addSuggestions:(id)suggestions;
- (void)writeTo:(id)to;
@end

@implementation SUGSchemaSUGSuggestionsGeneratedTier1

- (SUGSchemaSUGSuggestionsGeneratedTier1)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = SUGSchemaSUGSuggestionsGeneratedTier1;
  v5 = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SUGSchemaSUGSuggestionsGeneratedTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"suggestions"];
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
              v15 = [[SUGSchemaSUGSuggestionTier1 alloc] initWithDictionary:v14];
              [(SUGSchemaSUGSuggestionsGeneratedTier1 *)v5 addSuggestions:v15];
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

- (SUGSchemaSUGSuggestionsGeneratedTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self dictionaryRepresentation];
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
  if (self->_linkId)
  {
    linkId = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_suggestions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_suggestions;
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

    [dictionary setObject:array forKeyedSubscript:@"suggestions"];
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

  linkId = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_11;
  }

  linkId3 = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  linkId = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self suggestions];
  linkId2 = [equalCopy suggestions];
  if ((linkId != 0) != (linkId2 == 0))
  {
    suggestions = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self suggestions];
    if (!suggestions)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = suggestions;
    suggestions2 = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self suggestions];
    suggestions3 = [equalCopy suggestions];
    v16 = [suggestions2 isEqual:suggestions3];

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
  linkId = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_suggestions;
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
  v12.receiver = self;
  v12.super_class = SUGSchemaSUGSuggestionsGeneratedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self deleteSuggestions];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self deleteSuggestions];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self deleteSuggestions];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self deleteSuggestions];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self deleteSuggestions];
  }

  linkId = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self deleteLinkId];
  }

  suggestions = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self suggestions];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:suggestions underConditions:policyCopy];
  [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self setSuggestions:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end