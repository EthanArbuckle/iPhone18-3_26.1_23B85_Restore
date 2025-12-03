@interface PLUSSchemaPLUSMediaSuggestionEvaluation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaSuggestionEvaluation)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSMediaSuggestionEvaluation)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEntitySummaries:(id)summaries;
- (void)addPommesAlternativeEntityIds:(id)ids;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSMediaSuggestionEvaluation

- (PLUSSchemaPLUSMediaSuggestionEvaluation)initWithDictionary:(id)dictionary
{
  v39 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v36.receiver = self;
  v36.super_class = PLUSSchemaPLUSMediaSuggestionEvaluation;
  v5 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)&v36 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"entitySummaries"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:@"pommesAlternativeEntityIds"];
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

    v22 = [dictionaryCopy objectForKeyedSubscript:{@"pommesSelectedMediaEntityAdamId", v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(PLUSSchemaPLUSMediaSuggestionEvaluation *)v5 setPommesSelectedMediaEntityAdamId:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"inferredMediaEntityAdamId"];
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

- (PLUSSchemaPLUSMediaSuggestionEvaluation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_entitySummaries count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"entitySummaries"];
  }

  if (self->_inferredMediaEntityAdamId)
  {
    inferredMediaEntityAdamId = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self inferredMediaEntityAdamId];
    v13 = [inferredMediaEntityAdamId copy];
    [dictionary setObject:v13 forKeyedSubscript:@"inferredMediaEntityAdamId"];
  }

  if (self->_pommesAlternativeEntityIds)
  {
    pommesAlternativeEntityIds = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesAlternativeEntityIds];
    v15 = [pommesAlternativeEntityIds copy];
    [dictionary setObject:v15 forKeyedSubscript:@"pommesAlternativeEntityIds"];
  }

  if (self->_pommesSelectedMediaEntityAdamId)
  {
    pommesSelectedMediaEntityAdamId = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesSelectedMediaEntityAdamId];
    v17 = [pommesSelectedMediaEntityAdamId copy];
    [dictionary setObject:v17 forKeyedSubscript:@"pommesSelectedMediaEntityAdamId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_entitySummaries hash];
  v4 = [(NSArray *)self->_pommesAlternativeEntityIds hash]^ v3;
  v5 = [(NSString *)self->_pommesSelectedMediaEntityAdamId hash];
  return v4 ^ v5 ^ [(NSString *)self->_inferredMediaEntityAdamId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  entitySummaries = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self entitySummaries];
  entitySummaries2 = [equalCopy entitySummaries];
  if ((entitySummaries != 0) == (entitySummaries2 == 0))
  {
    goto LABEL_21;
  }

  entitySummaries3 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self entitySummaries];
  if (entitySummaries3)
  {
    v8 = entitySummaries3;
    entitySummaries4 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self entitySummaries];
    entitySummaries5 = [equalCopy entitySummaries];
    v11 = [entitySummaries4 isEqual:entitySummaries5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  entitySummaries = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesAlternativeEntityIds];
  entitySummaries2 = [equalCopy pommesAlternativeEntityIds];
  if ((entitySummaries != 0) == (entitySummaries2 == 0))
  {
    goto LABEL_21;
  }

  pommesAlternativeEntityIds = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesAlternativeEntityIds];
  if (pommesAlternativeEntityIds)
  {
    v13 = pommesAlternativeEntityIds;
    pommesAlternativeEntityIds2 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesAlternativeEntityIds];
    pommesAlternativeEntityIds3 = [equalCopy pommesAlternativeEntityIds];
    v16 = [pommesAlternativeEntityIds2 isEqual:pommesAlternativeEntityIds3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  entitySummaries = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesSelectedMediaEntityAdamId];
  entitySummaries2 = [equalCopy pommesSelectedMediaEntityAdamId];
  if ((entitySummaries != 0) == (entitySummaries2 == 0))
  {
    goto LABEL_21;
  }

  pommesSelectedMediaEntityAdamId = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesSelectedMediaEntityAdamId];
  if (pommesSelectedMediaEntityAdamId)
  {
    v18 = pommesSelectedMediaEntityAdamId;
    pommesSelectedMediaEntityAdamId2 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesSelectedMediaEntityAdamId];
    pommesSelectedMediaEntityAdamId3 = [equalCopy pommesSelectedMediaEntityAdamId];
    v21 = [pommesSelectedMediaEntityAdamId2 isEqual:pommesSelectedMediaEntityAdamId3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  entitySummaries = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self inferredMediaEntityAdamId];
  entitySummaries2 = [equalCopy inferredMediaEntityAdamId];
  if ((entitySummaries != 0) != (entitySummaries2 == 0))
  {
    inferredMediaEntityAdamId = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self inferredMediaEntityAdamId];
    if (!inferredMediaEntityAdamId)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = inferredMediaEntityAdamId;
    inferredMediaEntityAdamId2 = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self inferredMediaEntityAdamId];
    inferredMediaEntityAdamId3 = [equalCopy inferredMediaEntityAdamId];
    v26 = [inferredMediaEntityAdamId2 isEqual:inferredMediaEntityAdamId3];

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

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  pommesSelectedMediaEntityAdamId = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self pommesSelectedMediaEntityAdamId];

  if (pommesSelectedMediaEntityAdamId)
  {
    PBDataWriterWriteStringField();
  }

  inferredMediaEntityAdamId = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self inferredMediaEntityAdamId];

  if (inferredMediaEntityAdamId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addPommesAlternativeEntityIds:(id)ids
{
  idsCopy = ids;
  pommesAlternativeEntityIds = self->_pommesAlternativeEntityIds;
  v8 = idsCopy;
  if (!pommesAlternativeEntityIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pommesAlternativeEntityIds;
    self->_pommesAlternativeEntityIds = array;

    idsCopy = v8;
    pommesAlternativeEntityIds = self->_pommesAlternativeEntityIds;
  }

  [(NSArray *)pommesAlternativeEntityIds addObject:idsCopy];
}

- (void)addEntitySummaries:(id)summaries
{
  summariesCopy = summaries;
  entitySummaries = self->_entitySummaries;
  v8 = summariesCopy;
  if (!entitySummaries)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_entitySummaries;
    self->_entitySummaries = array;

    summariesCopy = v8;
    entitySummaries = self->_entitySummaries;
  }

  [(NSArray *)entitySummaries addObject:summariesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSMediaSuggestionEvaluation;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesAlternativeEntityIds];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deleteInferredMediaEntityAdamId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesAlternativeEntityIds];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deleteInferredMediaEntityAdamId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesAlternativeEntityIds];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deleteInferredMediaEntityAdamId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesAlternativeEntityIds];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deleteInferredMediaEntityAdamId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesAlternativeEntityIds];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deletePommesSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self deleteInferredMediaEntityAdamId];
  }

  entitySummaries = [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self entitySummaries];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:entitySummaries underConditions:policyCopy];
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