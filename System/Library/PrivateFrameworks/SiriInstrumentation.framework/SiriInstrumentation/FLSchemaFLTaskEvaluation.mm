@interface FLSchemaFLTaskEvaluation
- (BOOL)isEqual:(id)equal;
- (FLSchemaFLTaskEvaluation)initWithDictionary:(id)dictionary;
- (FLSchemaFLTaskEvaluation)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEvaluationNodes:(id)nodes;
- (void)writeTo:(id)to;
@end

@implementation FLSchemaFLTaskEvaluation

- (FLSchemaFLTaskEvaluation)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = FLSchemaFLTaskEvaluation;
  v5 = [(FLSchemaFLTaskEvaluation *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionResolutionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLTaskEvaluation setActionResolutionState:](v5, "setActionResolutionState:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"taskOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[FLSchemaFLTaskOutcome alloc] initWithDictionary:v7];
      [(FLSchemaFLTaskEvaluation *)v5 setTaskOutcome:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"evaluationNodes"];
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

- (FLSchemaFLTaskEvaluation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLSchemaFLTaskEvaluation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLSchemaFLTaskEvaluation *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    actionResolutionState = [(FLSchemaFLTaskEvaluation *)self actionResolutionState];
    v5 = @"FLACTIONRESOLUTIONSTATE_UNKNOWN";
    if (actionResolutionState == 1)
    {
      v5 = @"FLACTIONRESOLUTIONSTATE_INCOMPLETE";
    }

    if (actionResolutionState == 2)
    {
      v6 = @"FLACTIONRESOLUTIONSTATE_COMPLETE";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"actionResolutionState"];
  }

  if ([(NSArray *)self->_evaluationNodes count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"evaluationNodes"];
  }

  if (self->_taskOutcome)
  {
    taskOutcome = [(FLSchemaFLTaskEvaluation *)self taskOutcome];
    dictionaryRepresentation2 = [taskOutcome dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"taskOutcome"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"taskOutcome"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    actionResolutionState = self->_actionResolutionState;
    if (actionResolutionState != [equalCopy actionResolutionState])
    {
      goto LABEL_15;
    }
  }

  taskOutcome = [(FLSchemaFLTaskEvaluation *)self taskOutcome];
  taskOutcome2 = [equalCopy taskOutcome];
  if ((taskOutcome != 0) == (taskOutcome2 == 0))
  {
    goto LABEL_14;
  }

  taskOutcome3 = [(FLSchemaFLTaskEvaluation *)self taskOutcome];
  if (taskOutcome3)
  {
    v9 = taskOutcome3;
    taskOutcome4 = [(FLSchemaFLTaskEvaluation *)self taskOutcome];
    taskOutcome5 = [equalCopy taskOutcome];
    v12 = [taskOutcome4 isEqual:taskOutcome5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  taskOutcome = [(FLSchemaFLTaskEvaluation *)self evaluationNodes];
  taskOutcome2 = [equalCopy evaluationNodes];
  if ((taskOutcome != 0) != (taskOutcome2 == 0))
  {
    evaluationNodes = [(FLSchemaFLTaskEvaluation *)self evaluationNodes];
    if (!evaluationNodes)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = evaluationNodes;
    evaluationNodes2 = [(FLSchemaFLTaskEvaluation *)self evaluationNodes];
    evaluationNodes3 = [equalCopy evaluationNodes];
    v17 = [evaluationNodes2 isEqual:evaluationNodes3];

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

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  taskOutcome = [(FLSchemaFLTaskEvaluation *)self taskOutcome];

  if (taskOutcome)
  {
    taskOutcome2 = [(FLSchemaFLTaskEvaluation *)self taskOutcome];
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

- (void)addEvaluationNodes:(id)nodes
{
  nodesCopy = nodes;
  evaluationNodes = self->_evaluationNodes;
  v8 = nodesCopy;
  if (!evaluationNodes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_evaluationNodes;
    self->_evaluationNodes = array;

    nodesCopy = v8;
    evaluationNodes = self->_evaluationNodes;
  }

  [(NSArray *)evaluationNodes addObject:nodesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = FLSchemaFLTaskEvaluation;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  taskOutcome = [(FLSchemaFLTaskEvaluation *)self taskOutcome];
  v7 = [taskOutcome applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLSchemaFLTaskEvaluation *)self deleteTaskOutcome];
  }

  evaluationNodes = [(FLSchemaFLTaskEvaluation *)self evaluationNodes];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:evaluationNodes underConditions:policyCopy];
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