@interface FLSchemaFLTaskEvaluation
- (BOOL)isEqual:(id)a3;
- (FLSchemaFLTaskEvaluation)initWithDictionary:(id)a3;
- (FLSchemaFLTaskEvaluation)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEvaluationNodes:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLSchemaFLTaskEvaluation

- (FLSchemaFLTaskEvaluation)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = FLSchemaFLTaskEvaluation;
  v5 = [(FLSchemaFLTaskEvaluation *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"actionResolutionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLTaskEvaluation setActionResolutionState:](v5, "setActionResolutionState:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"taskOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[FLSchemaFLTaskOutcome alloc] initWithDictionary:v7];
      [(FLSchemaFLTaskEvaluation *)v5 setTaskOutcome:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"evaluationNodes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v7;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[FLSchemaFLTaskEvaluationNode alloc] initWithDictionary:v15];
              [(FLSchemaFLTaskEvaluation *)v5 addEvaluationNodes:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
      }

      v7 = v19;
    }

    v17 = v5;
  }

  return v5;
}

- (FLSchemaFLTaskEvaluation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLSchemaFLTaskEvaluation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLSchemaFLTaskEvaluation *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(FLSchemaFLTaskEvaluation *)self actionResolutionState];
    v5 = @"FLACTIONRESOLUTIONSTATE_UNKNOWN";
    if (v4 == 1)
    {
      v5 = @"FLACTIONRESOLUTIONSTATE_INCOMPLETE";
    }

    if (v4 == 2)
    {
      v6 = @"FLACTIONRESOLUTIONSTATE_COMPLETE";
    }

    else
    {
      v6 = v5;
    }

    [v3 setObject:v6 forKeyedSubscript:@"actionResolutionState"];
  }

  if ([(NSArray *)self->_evaluationNodes count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_evaluationNodes;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"evaluationNodes"];
  }

  if (self->_taskOutcome)
  {
    v15 = [(FLSchemaFLTaskEvaluation *)self taskOutcome];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"taskOutcome"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"taskOutcome"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_actionResolutionState;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(FLSchemaFLTaskOutcome *)self->_taskOutcome hash]^ v3;
  return v4 ^ [(NSArray *)self->_evaluationNodes hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    actionResolutionState = self->_actionResolutionState;
    if (actionResolutionState != [v4 actionResolutionState])
    {
      goto LABEL_15;
    }
  }

  v6 = [(FLSchemaFLTaskEvaluation *)self taskOutcome];
  v7 = [v4 taskOutcome];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(FLSchemaFLTaskEvaluation *)self taskOutcome];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLSchemaFLTaskEvaluation *)self taskOutcome];
    v11 = [v4 taskOutcome];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(FLSchemaFLTaskEvaluation *)self evaluationNodes];
  v7 = [v4 evaluationNodes];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(FLSchemaFLTaskEvaluation *)self evaluationNodes];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(FLSchemaFLTaskEvaluation *)self evaluationNodes];
    v16 = [v4 evaluationNodes];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(FLSchemaFLTaskEvaluation *)self taskOutcome];

  if (v5)
  {
    v6 = [(FLSchemaFLTaskEvaluation *)self taskOutcome];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_evaluationNodes;
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

- (void)addEvaluationNodes:(id)a3
{
  v4 = a3;
  evaluationNodes = self->_evaluationNodes;
  v8 = v4;
  if (!evaluationNodes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_evaluationNodes;
    self->_evaluationNodes = v6;

    v4 = v8;
    evaluationNodes = self->_evaluationNodes;
  }

  [(NSArray *)evaluationNodes addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FLSchemaFLTaskEvaluation;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(FLSchemaFLTaskEvaluation *)self taskOutcome];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLSchemaFLTaskEvaluation *)self deleteTaskOutcome];
  }

  v9 = [(FLSchemaFLTaskEvaluation *)self evaluationNodes];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(FLSchemaFLTaskEvaluation *)self setEvaluationNodes:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end