@interface PLUSSchemaPLUSSuggesterQueried
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggesterQueried)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSSuggesterQueried)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addMatchedResults:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSSuggesterQueried

- (PLUSSchemaPLUSSuggesterQueried)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PLUSSchemaPLUSSuggesterQueried;
  v5 = [(PLUSSchemaPLUSSuggesterQueried *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"suggestionDomainMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSSuggestionDomainMetadata alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggesterQueried *)v5 setSuggestionDomainMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSSuggesterQueried *)v5 setOriginalRequestId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"matchedResults"];
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

    v18 = [v4 objectForKeyedSubscript:{@"matchedResultsPopulated", v21, v22, v23}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggesterQueried setMatchedResultsPopulated:](v5, "setMatchedResultsPopulated:", [v18 BOOLValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggesterQueried)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggesterQueried *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSSuggesterQueried *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_matchedResults count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"matchedResults"];
  }

  if (*(&self->_matchedResultsPopulated + 1))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSSuggesterQueried matchedResultsPopulated](self, "matchedResultsPopulated")}];
    [v3 setObject:v12 forKeyedSubscript:@"matchedResultsPopulated"];
  }

  if (self->_originalRequestId)
  {
    v13 = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"originalRequestId"];
    }
  }

  if (self->_suggestionDomainMetadata)
  {
    v16 = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"suggestionDomainMetadata"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"suggestionDomainMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v20];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];
  v6 = [v4 suggestionDomainMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];
    v10 = [v4 suggestionDomainMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];
  v6 = [v4 originalRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];
    v15 = [v4 originalRequestId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSSuggesterQueried *)self matchedResults];
  v6 = [v4 matchedResults];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(PLUSSchemaPLUSSuggesterQueried *)self matchedResults];
  if (v17)
  {
    v18 = v17;
    v19 = [(PLUSSchemaPLUSSuggesterQueried *)self matchedResults];
    v20 = [v4 matchedResults];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (*(&self->_matchedResultsPopulated + 1) == (v4[33] & 1))
  {
    if (!*(&self->_matchedResultsPopulated + 1) || (matchedResultsPopulated = self->_matchedResultsPopulated, matchedResultsPopulated == [v4 matchedResultsPopulated]))
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

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];

  if (v5)
  {
    v6 = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];

  if (v7)
  {
    v8 = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];
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

- (void)addMatchedResults:(id)a3
{
  v4 = a3;
  matchedResults = self->_matchedResults;
  v8 = v4;
  if (!matchedResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchedResults;
    self->_matchedResults = v6;

    v4 = v8;
    matchedResults = self->_matchedResults;
  }

  [(NSArray *)matchedResults addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PLUSSchemaPLUSSuggesterQueried;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSSuggesterQueried *)self suggestionDomainMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PLUSSchemaPLUSSuggesterQueried *)self deleteSuggestionDomainMetadata];
  }

  v9 = [(PLUSSchemaPLUSSuggesterQueried *)self originalRequestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PLUSSchemaPLUSSuggesterQueried *)self deleteOriginalRequestId];
  }

  v12 = [(PLUSSchemaPLUSSuggesterQueried *)self matchedResults];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
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