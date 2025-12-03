@interface FLSchemaFLActionEvaluationEnded
- (BOOL)isEqual:(id)equal;
- (FLSchemaFLActionEvaluationEnded)initWithDictionary:(id)dictionary;
- (FLSchemaFLActionEvaluationEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCandidateEvaluations:(id)evaluations;
- (void)setHasEvaluationType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation FLSchemaFLActionEvaluationEnded

- (FLSchemaFLActionEvaluationEnded)initWithDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = FLSchemaFLActionEvaluationEnded;
  v5 = [(FLSchemaFLActionEvaluationEnded *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ifSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLSchemaFLActionEvaluationEnded *)v5 setIfSessionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"actionStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLActionEvaluationEnded setActionStatementId:](v5, "setActionStatementId:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"taskEvaluation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[FLSchemaFLTaskEvaluation alloc] initWithDictionary:v9];
      [(FLSchemaFLActionEvaluationEnded *)v5 setTaskEvaluation:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"candidateEvaluations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v9;
      v23 = v6;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [[FLSchemaFLCandidateEvaluation alloc] initWithDictionary:v17];
              [(FLSchemaFLActionEvaluationEnded *)v5 addCandidateEvaluations:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v14);
      }

      v6 = v23;
      v9 = v22;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"evaluationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLActionEvaluationEnded setEvaluationType:](v5, "setEvaluationType:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (FLSchemaFLActionEvaluationEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLSchemaFLActionEvaluationEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLSchemaFLActionEvaluationEnded *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLSchemaFLActionEvaluationEnded actionStatementId](self, "actionStatementId")}];
    [dictionary setObject:v4 forKeyedSubscript:@"actionStatementId"];
  }

  if ([(NSArray *)self->_candidateEvaluations count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = self->_candidateEvaluations;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
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

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    [dictionary setObject:array forKeyedSubscript:@"candidateEvaluations"];
  }

  if ((*&self->_has & 2) != 0)
  {
    evaluationType = [(FLSchemaFLActionEvaluationEnded *)self evaluationType];
    v14 = @"FLEVALUATIONTYPE_UNKNOWN";
    if (evaluationType == 1)
    {
      v14 = @"FLEVALUATIONTYPE_FAST_EVALUATOR";
    }

    if (evaluationType == 2)
    {
      v15 = @"FLEVALUATIONTYPE_FULL_EVALUATOR";
    }

    else
    {
      v15 = v14;
    }

    [dictionary setObject:v15 forKeyedSubscript:@"evaluationType"];
  }

  if (self->_ifSessionId)
  {
    ifSessionId = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];
    dictionaryRepresentation2 = [ifSessionId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ifSessionId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ifSessionId"];
    }
  }

  if (self->_taskEvaluation)
  {
    taskEvaluation = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];
    dictionaryRepresentation3 = [taskEvaluation dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"taskEvaluation"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"taskEvaluation"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_ifSessionId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_actionStatementId;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(FLSchemaFLTaskEvaluation *)self->_taskEvaluation hash];
  v6 = [(NSArray *)self->_candidateEvaluations hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_evaluationType;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  ifSessionId = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];
  ifSessionId2 = [equalCopy ifSessionId];
  if ((ifSessionId != 0) == (ifSessionId2 == 0))
  {
    goto LABEL_19;
  }

  ifSessionId3 = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];
  if (ifSessionId3)
  {
    v8 = ifSessionId3;
    ifSessionId4 = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];
    ifSessionId5 = [equalCopy ifSessionId];
    v11 = [ifSessionId4 isEqual:ifSessionId5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[44] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    actionStatementId = self->_actionStatementId;
    if (actionStatementId != [equalCopy actionStatementId])
    {
      goto LABEL_20;
    }
  }

  ifSessionId = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];
  ifSessionId2 = [equalCopy taskEvaluation];
  if ((ifSessionId != 0) == (ifSessionId2 == 0))
  {
    goto LABEL_19;
  }

  taskEvaluation = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];
  if (taskEvaluation)
  {
    v14 = taskEvaluation;
    taskEvaluation2 = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];
    taskEvaluation3 = [equalCopy taskEvaluation];
    v17 = [taskEvaluation2 isEqual:taskEvaluation3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  ifSessionId = [(FLSchemaFLActionEvaluationEnded *)self candidateEvaluations];
  ifSessionId2 = [equalCopy candidateEvaluations];
  if ((ifSessionId != 0) == (ifSessionId2 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  candidateEvaluations = [(FLSchemaFLActionEvaluationEnded *)self candidateEvaluations];
  if (candidateEvaluations)
  {
    v19 = candidateEvaluations;
    candidateEvaluations2 = [(FLSchemaFLActionEvaluationEnded *)self candidateEvaluations];
    candidateEvaluations3 = [equalCopy candidateEvaluations];
    v22 = [candidateEvaluations2 isEqual:candidateEvaluations3];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v25 = (*&self->_has >> 1) & 1;
  if (v25 == ((equalCopy[44] >> 1) & 1))
  {
    if (!v25 || (evaluationType = self->_evaluationType, evaluationType == [equalCopy evaluationType]))
    {
      v23 = 1;
      goto LABEL_21;
    }
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  ifSessionId = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];

  if (ifSessionId)
  {
    ifSessionId2 = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  taskEvaluation = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];

  if (taskEvaluation)
  {
    taskEvaluation2 = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_candidateEvaluations;
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

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasEvaluationType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addCandidateEvaluations:(id)evaluations
{
  evaluationsCopy = evaluations;
  candidateEvaluations = self->_candidateEvaluations;
  v8 = evaluationsCopy;
  if (!candidateEvaluations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateEvaluations;
    self->_candidateEvaluations = array;

    evaluationsCopy = v8;
    candidateEvaluations = self->_candidateEvaluations;
  }

  [(NSArray *)candidateEvaluations addObject:evaluationsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = FLSchemaFLActionEvaluationEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  ifSessionId = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];
  v7 = [ifSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLSchemaFLActionEvaluationEnded *)self deleteIfSessionId];
  }

  taskEvaluation = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];
  v10 = [taskEvaluation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLSchemaFLActionEvaluationEnded *)self deleteTaskEvaluation];
  }

  candidateEvaluations = [(FLSchemaFLActionEvaluationEnded *)self candidateEvaluations];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:candidateEvaluations underConditions:policyCopy];
  [(FLSchemaFLActionEvaluationEnded *)self setCandidateEvaluations:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end