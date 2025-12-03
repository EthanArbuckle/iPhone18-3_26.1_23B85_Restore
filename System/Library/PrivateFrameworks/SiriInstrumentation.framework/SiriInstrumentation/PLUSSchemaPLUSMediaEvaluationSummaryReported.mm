@interface PLUSSchemaPLUSMediaEvaluationSummaryReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaEvaluationSummaryReported)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSMediaEvaluationSummaryReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addGroundTruthSummaries:(id)summaries;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSMediaEvaluationSummaryReported

- (PLUSSchemaPLUSMediaEvaluationSummaryReported)initWithDictionary:(id)dictionary
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = PLUSSchemaPLUSMediaEvaluationSummaryReported;
  v5 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)v5 setOriginalRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)v5 setResultCandidateId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"playUserFeedback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaEvaluationSummaryReported setPlayUserFeedback:](v5, "setPlayUserFeedback:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"suggestionEvaluation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[PLUSSchemaPLUSMediaSuggestionEvaluation alloc] initWithDictionary:v11];
      [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)v5 setSuggestionEvaluation:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"groundTruthSummaries"];
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

    v21 = [dictionaryCopy objectForKeyedSubscript:{@"configuredState", v25, v26, v27, v28, v29}];
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

- (PLUSSchemaPLUSMediaEvaluationSummaryReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self dictionaryRepresentation];
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
  if (self->_configuredState)
  {
    configuredState = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];
    dictionaryRepresentation = [configuredState dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"configuredState"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"configuredState"];
    }
  }

  if ([(NSArray *)self->_groundTruthSummaries count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"groundTruthSummaries"];
  }

  if (self->_originalRequestId)
  {
    originalRequestId = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];
    dictionaryRepresentation3 = [originalRequestId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"originalRequestId"];
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

    [dictionary setObject:v19 forKeyedSubscript:{@"playUserFeedback", v26}];
  }

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self resultCandidateId];
    v21 = [resultCandidateId copy];
    [dictionary setObject:v21 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_suggestionEvaluation)
  {
    suggestionEvaluation = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];
    dictionaryRepresentation4 = [suggestionEvaluation dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"suggestionEvaluation"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"suggestionEvaluation"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v26];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  originalRequestId = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];
  originalRequestId2 = [equalCopy originalRequestId];
  if ((originalRequestId != 0) == (originalRequestId2 == 0))
  {
    goto LABEL_29;
  }

  originalRequestId3 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];
  if (originalRequestId3)
  {
    v8 = originalRequestId3;
    originalRequestId4 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];
    originalRequestId5 = [equalCopy originalRequestId];
    v11 = [originalRequestId4 isEqual:originalRequestId5];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  originalRequestId = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self resultCandidateId];
  originalRequestId2 = [equalCopy resultCandidateId];
  if ((originalRequestId != 0) == (originalRequestId2 == 0))
  {
    goto LABEL_29;
  }

  resultCandidateId = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self resultCandidateId];
  if (resultCandidateId)
  {
    v13 = resultCandidateId;
    resultCandidateId2 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v16 = [resultCandidateId2 isEqual:resultCandidateId3];

    if (!v16)
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
    playUserFeedback = self->_playUserFeedback;
    if (playUserFeedback != [equalCopy playUserFeedback])
    {
      goto LABEL_30;
    }
  }

  originalRequestId = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];
  originalRequestId2 = [equalCopy suggestionEvaluation];
  if ((originalRequestId != 0) == (originalRequestId2 == 0))
  {
    goto LABEL_29;
  }

  suggestionEvaluation = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];
  if (suggestionEvaluation)
  {
    v19 = suggestionEvaluation;
    suggestionEvaluation2 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];
    suggestionEvaluation3 = [equalCopy suggestionEvaluation];
    v22 = [suggestionEvaluation2 isEqual:suggestionEvaluation3];

    if (!v22)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  originalRequestId = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self groundTruthSummaries];
  originalRequestId2 = [equalCopy groundTruthSummaries];
  if ((originalRequestId != 0) == (originalRequestId2 == 0))
  {
    goto LABEL_29;
  }

  groundTruthSummaries = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self groundTruthSummaries];
  if (groundTruthSummaries)
  {
    v24 = groundTruthSummaries;
    groundTruthSummaries2 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self groundTruthSummaries];
    groundTruthSummaries3 = [equalCopy groundTruthSummaries];
    v27 = [groundTruthSummaries2 isEqual:groundTruthSummaries3];

    if (!v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  originalRequestId = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];
  originalRequestId2 = [equalCopy configuredState];
  if ((originalRequestId != 0) != (originalRequestId2 == 0))
  {
    configuredState = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];
    if (!configuredState)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = configuredState;
    configuredState2 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];
    configuredState3 = [equalCopy configuredState];
    v32 = [configuredState2 isEqual:configuredState3];

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
  originalRequestId = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];

  if (originalRequestId)
  {
    originalRequestId2 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  suggestionEvaluation = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];

  if (suggestionEvaluation)
  {
    suggestionEvaluation2 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];
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

  configuredState = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];

  if (configuredState)
  {
    configuredState2 = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addGroundTruthSummaries:(id)summaries
{
  summariesCopy = summaries;
  groundTruthSummaries = self->_groundTruthSummaries;
  v8 = summariesCopy;
  if (!groundTruthSummaries)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_groundTruthSummaries;
    self->_groundTruthSummaries = array;

    summariesCopy = v8;
    groundTruthSummaries = self->_groundTruthSummaries;
  }

  [(NSArray *)groundTruthSummaries addObject:summariesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v18.receiver = self;
  v18.super_class = PLUSSchemaPLUSMediaEvaluationSummaryReported;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:policyCopy];
  originalRequestId = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self originalRequestId];
  v7 = [originalRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self deleteOriginalRequestId];
  }

  suggestionEvaluation = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self suggestionEvaluation];
  v10 = [suggestionEvaluation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self deleteSuggestionEvaluation];
  }

  groundTruthSummaries = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self groundTruthSummaries];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:groundTruthSummaries underConditions:policyCopy];
  [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self setGroundTruthSummaries:v13];

  configuredState = [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self configuredState];
  v15 = [configuredState applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v15 suppressMessage];

  if (suppressMessage3)
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