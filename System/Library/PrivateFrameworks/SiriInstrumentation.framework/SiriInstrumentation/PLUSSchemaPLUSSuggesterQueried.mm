@interface PLUSSchemaPLUSSuggesterQueried
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggesterQueried)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSuggesterQueried)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addMatchedResults:(id)results;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSuggesterQueried

- (PLUSSchemaPLUSSuggesterQueried)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = PLUSSchemaPLUSSuggesterQueried;
  v5 = [(PLUSSchemaPLUSSuggesterQueried *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionDomainMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSSuggestionDomainMetadata alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggesterQueried *)v5 setSuggestionDomainMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSSuggesterQueried *)v5 setOriginalRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"matchedResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v8;
      v22 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[PLUSSchemaPLUSSuggestionMatchResult alloc] initWithDictionary:v16];
              [(PLUSSchemaPLUSSuggesterQueried *)v5 addMatchedResults:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v13);
      }

      v8 = v21;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:{@"matchedResultsPopulated", v21, v22, v23}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggesterQueried setMatchedResultsPopulated:](v5, "setMatchedResultsPopulated:", [v18 BOOLValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggesterQueried)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggesterQueried *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSuggesterQueried *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_matchedResults count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = self->_matchedResults;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"matchedResults"];
  }

  if (*(&self->_matchedResultsPopulated + 1))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSSuggesterQueried matchedResultsPopulated](self, "matchedResultsPopulated")}];
    [dictionary setObject:v12 forKeyedSubscript:@"matchedResultsPopulated"];
  }

  if (self->_originalRequestId)
  {
    originalRequestId = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];
    dictionaryRepresentation2 = [originalRequestId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"originalRequestId"];
    }
  }

  if (self->_suggestionDomainMetadata)
  {
    suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];
    dictionaryRepresentation3 = [suggestionDomainMetadata dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"suggestionDomainMetadata"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"suggestionDomainMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v20];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PLUSSchemaPLUSSuggestionDomainMetadata *)self->_suggestionDomainMetadata hash];
  v4 = [(SISchemaUUID *)self->_originalRequestId hash];
  v5 = [(NSArray *)self->_matchedResults hash];
  if (*(&self->_matchedResultsPopulated + 1))
  {
    v6 = 2654435761 * self->_matchedResultsPopulated;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];
  suggestionDomainMetadata2 = [equalCopy suggestionDomainMetadata];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_16;
  }

  suggestionDomainMetadata3 = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];
  if (suggestionDomainMetadata3)
  {
    v8 = suggestionDomainMetadata3;
    suggestionDomainMetadata4 = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];
    suggestionDomainMetadata5 = [equalCopy suggestionDomainMetadata];
    v11 = [suggestionDomainMetadata4 isEqual:suggestionDomainMetadata5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];
  suggestionDomainMetadata2 = [equalCopy originalRequestId];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_16;
  }

  originalRequestId = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];
  if (originalRequestId)
  {
    v13 = originalRequestId;
    originalRequestId2 = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];
    originalRequestId3 = [equalCopy originalRequestId];
    v16 = [originalRequestId2 isEqual:originalRequestId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterQueried *)self matchedResults];
  suggestionDomainMetadata2 = [equalCopy matchedResults];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  matchedResults = [(PLUSSchemaPLUSSuggesterQueried *)self matchedResults];
  if (matchedResults)
  {
    v18 = matchedResults;
    matchedResults2 = [(PLUSSchemaPLUSSuggesterQueried *)self matchedResults];
    matchedResults3 = [equalCopy matchedResults];
    v21 = [matchedResults2 isEqual:matchedResults3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (*(&self->_matchedResultsPopulated + 1) == (equalCopy[33] & 1))
  {
    if (!*(&self->_matchedResultsPopulated + 1) || (matchedResultsPopulated = self->_matchedResultsPopulated, matchedResultsPopulated == [equalCopy matchedResultsPopulated]))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];

  if (suggestionDomainMetadata)
  {
    suggestionDomainMetadata2 = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];
    PBDataWriterWriteSubmessage();
  }

  originalRequestId = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];

  if (originalRequestId)
  {
    originalRequestId2 = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_matchedResults;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  if (*(&self->_matchedResultsPopulated + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)addMatchedResults:(id)results
{
  resultsCopy = results;
  matchedResults = self->_matchedResults;
  v8 = resultsCopy;
  if (!matchedResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchedResults;
    self->_matchedResults = array;

    resultsCopy = v8;
    matchedResults = self->_matchedResults;
  }

  [(NSArray *)matchedResults addObject:resultsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = PLUSSchemaPLUSSuggesterQueried;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];
  v7 = [suggestionDomainMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSSuggesterQueried *)self deleteSuggestionDomainMetadata];
  }

  originalRequestId = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];
  v10 = [originalRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSSuggesterQueried *)self deleteOriginalRequestId];
  }

  matchedResults = [(PLUSSchemaPLUSSuggesterQueried *)self matchedResults];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:matchedResults underConditions:policyCopy];
  [(PLUSSchemaPLUSSuggesterQueried *)self setMatchedResults:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end