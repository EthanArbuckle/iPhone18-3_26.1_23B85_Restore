@interface PLUSSchemaPLUSMediaSuggestionEvaluation
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaSuggestionEvaluation)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSMediaSuggestionEvaluation)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEntitySummaries:(id)a3;
- (void)addPommesAlternativeEntityIds:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSMediaSuggestionEvaluation

- (PLUSSchemaPLUSMediaSuggestionEvaluation)initWithDictionary:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = PLUSSchemaPLUSMediaSuggestionEvaluation;
  v5 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)&v36 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"entitySummaries"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v33;
        do
        {
          v11 = 0;
          do
          {
            if (*v33 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v32 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[PLUSSchemaPLUSMediaCandidateEntity alloc] initWithDictionary:v12];
              [(PLUSSchemaPLUSMediaSuggestionEvaluation *)v5 addEntitySummaries:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"pommesAlternativeEntityIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        do
        {
          v19 = 0;
          do
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v28 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [v20 copy];
              [(PLUSSchemaPLUSMediaSuggestionEvaluation *)v5 addPommesAlternativeEntityIds:v21];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v17);
      }
    }

    v22 = [v4 objectForKeyedSubscript:{@"pommesSelectedMediaEntityAdamId", v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(PLUSSchemaPLUSMediaSuggestionEvaluation *)v5 setPommesSelectedMediaEntityAdamId:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"inferredMediaEntityAdamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(PLUSSchemaPLUSMediaSuggestionEvaluation *)v5 setInferredMediaEntityAdamId:v25];
    }

    v26 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSMediaSuggestionEvaluation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_entitySummaries count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_entitySummaries;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"entitySummaries"];
  }

  if (self->_inferredMediaEntityAdamId)
  {
    v12 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self inferredMediaEntityAdamId];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"inferredMediaEntityAdamId"];
  }

  if (self->_pommesAlternativeEntityIds)
  {
    v14 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesAlternativeEntityIds];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"pommesAlternativeEntityIds"];
  }

  if (self->_pommesSelectedMediaEntityAdamId)
  {
    v16 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesSelectedMediaEntityAdamId];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"pommesSelectedMediaEntityAdamId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_entitySummaries hash];
  v4 = [(NSArray *)self->_pommesAlternativeEntityIds hash]^ v3;
  v5 = [(NSString *)self->_pommesSelectedMediaEntityAdamId hash];
  return v4 ^ v5 ^ [(NSString *)self->_inferredMediaEntityAdamId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self entitySummaries];
  v6 = [v4 entitySummaries];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self entitySummaries];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self entitySummaries];
    v10 = [v4 entitySummaries];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesAlternativeEntityIds];
  v6 = [v4 pommesAlternativeEntityIds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesAlternativeEntityIds];
  if (v12)
  {
    v13 = v12;
    v14 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesAlternativeEntityIds];
    v15 = [v4 pommesAlternativeEntityIds];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesSelectedMediaEntityAdamId];
  v6 = [v4 pommesSelectedMediaEntityAdamId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesSelectedMediaEntityAdamId];
  if (v17)
  {
    v18 = v17;
    v19 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesSelectedMediaEntityAdamId];
    v20 = [v4 pommesSelectedMediaEntityAdamId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self inferredMediaEntityAdamId];
  v6 = [v4 inferredMediaEntityAdamId];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self inferredMediaEntityAdamId];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self inferredMediaEntityAdamId];
    v25 = [v4 inferredMediaEntityAdamId];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_entitySummaries;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_pommesAlternativeEntityIds;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesSelectedMediaEntityAdamId];

  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self inferredMediaEntityAdamId];

  if (v16)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addPommesAlternativeEntityIds:(id)a3
{
  v4 = a3;
  pommesAlternativeEntityIds = self->_pommesAlternativeEntityIds;
  v8 = v4;
  if (!pommesAlternativeEntityIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pommesAlternativeEntityIds;
    self->_pommesAlternativeEntityIds = v6;

    v4 = v8;
    pommesAlternativeEntityIds = self->_pommesAlternativeEntityIds;
  }

  [(NSArray *)pommesAlternativeEntityIds addObject:v4];
}

- (void)addEntitySummaries:(id)a3
{
  v4 = a3;
  entitySummaries = self->_entitySummaries;
  v8 = v4;
  if (!entitySummaries)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_entitySummaries;
    self->_entitySummaries = v6;

    v4 = v8;
    entitySummaries = self->_entitySummaries;
  }

  [(NSArray *)entitySummaries addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSMediaSuggestionEvaluation;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesAlternativeEntityIds];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deleteInferredMediaEntityAdamId];
  }

  if ([v4 isConditionSet:4])
  {
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesAlternativeEntityIds];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deleteInferredMediaEntityAdamId];
  }

  if ([v4 isConditionSet:5])
  {
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesAlternativeEntityIds];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deleteInferredMediaEntityAdamId];
  }

  if ([v4 isConditionSet:6])
  {
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesAlternativeEntityIds];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deleteInferredMediaEntityAdamId];
  }

  if ([v4 isConditionSet:7])
  {
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesAlternativeEntityIds];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deleteInferredMediaEntityAdamId];
  }

  v6 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self entitySummaries];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self setEntitySummaries:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end