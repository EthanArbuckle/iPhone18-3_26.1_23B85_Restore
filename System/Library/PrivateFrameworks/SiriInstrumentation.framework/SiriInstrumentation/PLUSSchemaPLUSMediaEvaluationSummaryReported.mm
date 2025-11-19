@interface PLUSSchemaPLUSMediaEvaluationSummaryReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaEvaluationSummaryReported)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSMediaEvaluationSummaryReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addGroundTruthSummaries:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSMediaEvaluationSummaryReported

- (PLUSSchemaPLUSMediaEvaluationSummaryReported)initWithDictionary:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = PLUSSchemaPLUSMediaEvaluationSummaryReported;
  v5 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)v5 setOriginalRequestId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)v5 setResultCandidateId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"playUserFeedback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaEvaluationSummaryReported setPlayUserFeedback:](v5, "setPlayUserFeedback:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"suggestionEvaluation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[PLUSSchemaPLUSMediaSuggestionEvaluation alloc] initWithDictionary:v11];
      [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)v5 setSuggestionEvaluation:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"groundTruthSummaries"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v11;
      v26 = v10;
      v27 = v8;
      v28 = v6;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v30;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v30 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v29 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[PLUSSchemaPLUSMediaGroundTruthSummary alloc] initWithDictionary:v19];
              [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)v5 addGroundTruthSummaries:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v16);
      }

      v8 = v27;
      v6 = v28;
      v11 = v25;
    }

    v21 = [v4 objectForKeyedSubscript:{@"configuredState", v25, v26, v27, v28, v29}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[PLUSSchemaPLUSMediaConfiguredState alloc] initWithDictionary:v21];
      [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)v5 setConfiguredState:v22];
    }

    v23 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSMediaEvaluationSummaryReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self dictionaryRepresentation];
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
  if (self->_configuredState)
  {
    v4 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"configuredState"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"configuredState"];
    }
  }

  if ([(NSArray *)self->_groundTruthSummaries count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = self->_groundTruthSummaries;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"groundTruthSummaries"];
  }

  if (self->_originalRequestId)
  {
    v15 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"originalRequestId"];
    }
  }

  if (*&self->_has)
  {
    v18 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self playUserFeedback]- 1;
    if (v18 > 6)
    {
      v19 = @"PLUSMEDIAPLAYMEDIARESULT_UNKNOWN";
    }

    else
    {
      v19 = off_1E78E0790[v18];
    }

    [v3 setObject:v19 forKeyedSubscript:{@"playUserFeedback", v26}];
  }

  if (self->_resultCandidateId)
  {
    v20 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self resultCandidateId];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_suggestionEvaluation)
  {
    v22 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"suggestionEvaluation"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"suggestionEvaluation"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v26];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalRequestId hash];
  v4 = [(NSString *)self->_resultCandidateId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_playUserFeedback;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(PLUSSchemaPLUSMediaSuggestionEvaluation *)self->_suggestionEvaluation hash];
  v7 = [(NSArray *)self->_groundTruthSummaries hash];
  return v6 ^ v7 ^ [(PLUSSchemaPLUSMediaConfiguredState *)self->_configuredState hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];
  v6 = [v4 originalRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v7 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];
    v10 = [v4 originalRequestId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self resultCandidateId];
  v6 = [v4 resultCandidateId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v12 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self resultCandidateId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self resultCandidateId];
    v15 = [v4 resultCandidateId];
    v16 = [v14 isEqual:v15];

    if (!v16)
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
    playUserFeedback = self->_playUserFeedback;
    if (playUserFeedback != [v4 playUserFeedback])
    {
      goto LABEL_30;
    }
  }

  v5 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];
  v6 = [v4 suggestionEvaluation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v18 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];
  if (v18)
  {
    v19 = v18;
    v20 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];
    v21 = [v4 suggestionEvaluation];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self groundTruthSummaries];
  v6 = [v4 groundTruthSummaries];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v23 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self groundTruthSummaries];
  if (v23)
  {
    v24 = v23;
    v25 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self groundTruthSummaries];
    v26 = [v4 groundTruthSummaries];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];
  v6 = [v4 configuredState];
  if ((v5 != 0) != (v6 == 0))
  {
    v28 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];
    if (!v28)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = v28;
    v30 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];
    v31 = [v4 configuredState];
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
  v5 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];

  if (v5)
  {
    v6 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self resultCandidateId];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v8 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];

  if (v8)
  {
    v9 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];
    PBDataWriterWriteSubmessage();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_groundTruthSummaries;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v15 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];

  if (v15)
  {
    v16 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addGroundTruthSummaries:(id)a3
{
  v4 = a3;
  groundTruthSummaries = self->_groundTruthSummaries;
  v8 = v4;
  if (!groundTruthSummaries)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_groundTruthSummaries;
    self->_groundTruthSummaries = v6;

    v4 = v8;
    groundTruthSummaries = self->_groundTruthSummaries;
  }

  [(NSArray *)groundTruthSummaries addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PLUSSchemaPLUSMediaEvaluationSummaryReported;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self deleteOriginalRequestId];
  }

  v9 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self deleteSuggestionEvaluation];
  }

  v12 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self groundTruthSummaries];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self setGroundTruthSummaries:v13];

  v14 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];
  v15 = [v14 applySensitiveConditionsPolicy:v4];
  v16 = [v15 suppressMessage];

  if (v16)
  {
    [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self deleteConfiguredState];
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