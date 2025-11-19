@interface FLSchemaFLActionEvaluationEnded
- (BOOL)isEqual:(id)a3;
- (FLSchemaFLActionEvaluationEnded)initWithDictionary:(id)a3;
- (FLSchemaFLActionEvaluationEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCandidateEvaluations:(id)a3;
- (void)setHasEvaluationType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLSchemaFLActionEvaluationEnded

- (FLSchemaFLActionEvaluationEnded)initWithDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = FLSchemaFLActionEvaluationEnded;
  v5 = [(FLSchemaFLActionEvaluationEnded *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ifSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLSchemaFLActionEvaluationEnded *)v5 setIfSessionId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"actionStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLActionEvaluationEnded setActionStatementId:](v5, "setActionStatementId:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"taskEvaluation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[FLSchemaFLTaskEvaluation alloc] initWithDictionary:v9];
      [(FLSchemaFLActionEvaluationEnded *)v5 setTaskEvaluation:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"candidateEvaluations"];
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

    v19 = [v4 objectForKeyedSubscript:@"evaluationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLActionEvaluationEnded setEvaluationType:](v5, "setEvaluationType:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (FLSchemaFLActionEvaluationEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLSchemaFLActionEvaluationEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLSchemaFLActionEvaluationEnded *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLSchemaFLActionEvaluationEnded actionStatementId](self, "actionStatementId")}];
    [v3 setObject:v4 forKeyedSubscript:@"actionStatementId"];
  }

  if ([(NSArray *)self->_candidateEvaluations count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
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

          v11 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          if (v11)
          {
            [v5 addObject:v11];
          }

          else
          {
            v12 = [MEMORY[0x1E695DFB0] null];
            [v5 addObject:v12];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKeyedSubscript:@"candidateEvaluations"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = [(FLSchemaFLActionEvaluationEnded *)self evaluationType];
    v14 = @"FLEVALUATIONTYPE_UNKNOWN";
    if (v13 == 1)
    {
      v14 = @"FLEVALUATIONTYPE_FAST_EVALUATOR";
    }

    if (v13 == 2)
    {
      v15 = @"FLEVALUATIONTYPE_FULL_EVALUATOR";
    }

    else
    {
      v15 = v14;
    }

    [v3 setObject:v15 forKeyedSubscript:@"evaluationType"];
  }

  if (self->_ifSessionId)
  {
    v16 = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"ifSessionId"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"ifSessionId"];
    }
  }

  if (self->_taskEvaluation)
  {
    v19 = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"taskEvaluation"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"taskEvaluation"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];
  v6 = [v4 ifSessionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];
    v10 = [v4 ifSessionId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[44] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    actionStatementId = self->_actionStatementId;
    if (actionStatementId != [v4 actionStatementId])
    {
      goto LABEL_20;
    }
  }

  v5 = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];
  v6 = [v4 taskEvaluation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];
  if (v13)
  {
    v14 = v13;
    v15 = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];
    v16 = [v4 taskEvaluation];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(FLSchemaFLActionEvaluationEnded *)self candidateEvaluations];
  v6 = [v4 candidateEvaluations];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  v18 = [(FLSchemaFLActionEvaluationEnded *)self candidateEvaluations];
  if (v18)
  {
    v19 = v18;
    v20 = [(FLSchemaFLActionEvaluationEnded *)self candidateEvaluations];
    v21 = [v4 candidateEvaluations];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v25 = (*&self->_has >> 1) & 1;
  if (v25 == ((v4[44] >> 1) & 1))
  {
    if (!v25 || (evaluationType = self->_evaluationType, evaluationType == [v4 evaluationType]))
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

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];

  if (v5)
  {
    v6 = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v7 = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];

  if (v7)
  {
    v8 = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];
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

- (void)setHasEvaluationType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addCandidateEvaluations:(id)a3
{
  v4 = a3;
  candidateEvaluations = self->_candidateEvaluations;
  v8 = v4;
  if (!candidateEvaluations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateEvaluations;
    self->_candidateEvaluations = v6;

    v4 = v8;
    candidateEvaluations = self->_candidateEvaluations;
  }

  [(NSArray *)candidateEvaluations addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FLSchemaFLActionEvaluationEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(FLSchemaFLActionEvaluationEnded *)self ifSessionId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLSchemaFLActionEvaluationEnded *)self deleteIfSessionId];
  }

  v9 = [(FLSchemaFLActionEvaluationEnded *)self taskEvaluation];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLSchemaFLActionEvaluationEnded *)self deleteTaskEvaluation];
  }

  v12 = [(FLSchemaFLActionEvaluationEnded *)self candidateEvaluations];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
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