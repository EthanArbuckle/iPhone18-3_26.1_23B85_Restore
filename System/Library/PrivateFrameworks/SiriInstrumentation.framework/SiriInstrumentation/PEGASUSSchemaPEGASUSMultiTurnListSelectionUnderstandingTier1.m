@interface PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)recommendationsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addRecommendations:(int)a3;
- (void)addResults:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1

- (PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1)initWithDictionary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1;
  v5 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)&v34 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"followupQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)v5 setFollowupQuery:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"results"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v31;
        do
        {
          v13 = 0;
          do
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v30 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v14 copy];
              [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)v5 addResults:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v11);
      }
    }

    v16 = [v4 objectForKeyedSubscript:@"recommendations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v6;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v27;
        do
        {
          v21 = 0;
          do
          {
            if (*v27 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v26 + 1) + 8 * v21);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 addRecommendations:](v5, "addRecommendations:", [v22 intValue]);
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
        }

        while (v19);
      }

      v6 = v25;
    }

    v23 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self dictionaryRepresentation];
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
  if (self->_followupQuery)
  {
    v4 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self followupQuery];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"followupQuery"];
  }

  if ([(NSArray *)self->_recommendations count])
  {
    v6 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self recommendations];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"recommendations"];
  }

  if (self->_results)
  {
    v8 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self results];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"results"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_followupQuery hash];
  v4 = [(NSArray *)self->_results hash]^ v3;
  return v4 ^ [(NSArray *)self->_recommendations hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self followupQuery];
  v6 = [v4 followupQuery];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self followupQuery];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self followupQuery];
    v10 = [v4 followupQuery];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self results];
  v6 = [v4 results];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self results];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self results];
    v15 = [v4 results];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self recommendations];
  v6 = [v4 recommendations];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self recommendations];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self recommendations];
    v20 = [v4 recommendations];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self followupQuery];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_results;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_recommendations;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15) intValue];
        PBDataWriterWriteInt32Field();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (int)recommendationsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_recommendations objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addRecommendations:(int)a3
{
  v3 = *&a3;
  recommendations = self->_recommendations;
  if (!recommendations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_recommendations;
    self->_recommendations = v6;

    recommendations = self->_recommendations;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)recommendations addObject:v8];
}

- (void)addResults:(id)a3
{
  v4 = a3;
  results = self->_results;
  v8 = v4;
  if (!results)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_results;
    self->_results = v6;

    v4 = v8;
    results = self->_results;
  }

  [(NSArray *)results addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self deleteFollowupQuery];
    [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self deleteResults];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self deleteFollowupQuery];
    [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self deleteResults];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self deleteFollowupQuery];
    [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self deleteResults];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self deleteFollowupQuery];
    [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self deleteResults];
  }

  if ([v4 isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self deleteFollowupQuery];
    [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self deleteResults];
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