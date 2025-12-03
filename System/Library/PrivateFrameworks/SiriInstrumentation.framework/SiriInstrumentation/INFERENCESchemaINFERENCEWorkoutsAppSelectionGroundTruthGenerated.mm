@interface INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addInferenceWorkoutsAppSelectionTrainingDependentSignals:(id)signals;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated

- (INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated;
  v5 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"inferenceWorkoutsAppSelectionTrainingIndependentSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)v5 setInferenceWorkoutsAppSelectionTrainingIndependentSignals:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"inferenceWorkoutsAppSelectionTrainingDependentSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v6;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals alloc] initWithDictionary:v14];
              [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)v5 addInferenceWorkoutsAppSelectionTrainingDependentSignals:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v11);
      }

      v6 = v18;
    }

    v16 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_inferenceWorkoutsAppSelectionTrainingDependentSignals count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_inferenceWorkoutsAppSelectionTrainingDependentSignals;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"inferenceWorkoutsAppSelectionTrainingDependentSignals"];
  }

  if (self->_inferenceWorkoutsAppSelectionTrainingIndependentSignals)
  {
    inferenceWorkoutsAppSelectionTrainingIndependentSignals = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self inferenceWorkoutsAppSelectionTrainingIndependentSignals];
    dictionaryRepresentation2 = [inferenceWorkoutsAppSelectionTrainingIndependentSignals dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"inferenceWorkoutsAppSelectionTrainingIndependentSignals"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"inferenceWorkoutsAppSelectionTrainingIndependentSignals"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  inferenceWorkoutsAppSelectionTrainingIndependentSignals = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self inferenceWorkoutsAppSelectionTrainingIndependentSignals];
  inferenceWorkoutsAppSelectionTrainingIndependentSignals2 = [equalCopy inferenceWorkoutsAppSelectionTrainingIndependentSignals];
  if ((inferenceWorkoutsAppSelectionTrainingIndependentSignals != 0) == (inferenceWorkoutsAppSelectionTrainingIndependentSignals2 == 0))
  {
    goto LABEL_11;
  }

  inferenceWorkoutsAppSelectionTrainingIndependentSignals3 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self inferenceWorkoutsAppSelectionTrainingIndependentSignals];
  if (inferenceWorkoutsAppSelectionTrainingIndependentSignals3)
  {
    v8 = inferenceWorkoutsAppSelectionTrainingIndependentSignals3;
    inferenceWorkoutsAppSelectionTrainingIndependentSignals4 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self inferenceWorkoutsAppSelectionTrainingIndependentSignals];
    inferenceWorkoutsAppSelectionTrainingIndependentSignals5 = [equalCopy inferenceWorkoutsAppSelectionTrainingIndependentSignals];
    v11 = [inferenceWorkoutsAppSelectionTrainingIndependentSignals4 isEqual:inferenceWorkoutsAppSelectionTrainingIndependentSignals5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  inferenceWorkoutsAppSelectionTrainingIndependentSignals = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self inferenceWorkoutsAppSelectionTrainingDependentSignals];
  inferenceWorkoutsAppSelectionTrainingIndependentSignals2 = [equalCopy inferenceWorkoutsAppSelectionTrainingDependentSignals];
  if ((inferenceWorkoutsAppSelectionTrainingIndependentSignals != 0) != (inferenceWorkoutsAppSelectionTrainingIndependentSignals2 == 0))
  {
    inferenceWorkoutsAppSelectionTrainingDependentSignals = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self inferenceWorkoutsAppSelectionTrainingDependentSignals];
    if (!inferenceWorkoutsAppSelectionTrainingDependentSignals)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = inferenceWorkoutsAppSelectionTrainingDependentSignals;
    inferenceWorkoutsAppSelectionTrainingDependentSignals2 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self inferenceWorkoutsAppSelectionTrainingDependentSignals];
    inferenceWorkoutsAppSelectionTrainingDependentSignals3 = [equalCopy inferenceWorkoutsAppSelectionTrainingDependentSignals];
    v16 = [inferenceWorkoutsAppSelectionTrainingDependentSignals2 isEqual:inferenceWorkoutsAppSelectionTrainingDependentSignals3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  inferenceWorkoutsAppSelectionTrainingIndependentSignals = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self inferenceWorkoutsAppSelectionTrainingIndependentSignals];

  if (inferenceWorkoutsAppSelectionTrainingIndependentSignals)
  {
    inferenceWorkoutsAppSelectionTrainingIndependentSignals2 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self inferenceWorkoutsAppSelectionTrainingIndependentSignals];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_inferenceWorkoutsAppSelectionTrainingDependentSignals;
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

- (void)addInferenceWorkoutsAppSelectionTrainingDependentSignals:(id)signals
{
  signalsCopy = signals;
  inferenceWorkoutsAppSelectionTrainingDependentSignals = self->_inferenceWorkoutsAppSelectionTrainingDependentSignals;
  v8 = signalsCopy;
  if (!inferenceWorkoutsAppSelectionTrainingDependentSignals)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_inferenceWorkoutsAppSelectionTrainingDependentSignals;
    self->_inferenceWorkoutsAppSelectionTrainingDependentSignals = array;

    signalsCopy = v8;
    inferenceWorkoutsAppSelectionTrainingDependentSignals = self->_inferenceWorkoutsAppSelectionTrainingDependentSignals;
  }

  [(NSArray *)inferenceWorkoutsAppSelectionTrainingDependentSignals addObject:signalsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  inferenceWorkoutsAppSelectionTrainingIndependentSignals = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self inferenceWorkoutsAppSelectionTrainingIndependentSignals];
  v7 = [inferenceWorkoutsAppSelectionTrainingIndependentSignals applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self deleteInferenceWorkoutsAppSelectionTrainingIndependentSignals];
  }

  inferenceWorkoutsAppSelectionTrainingDependentSignals = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self inferenceWorkoutsAppSelectionTrainingDependentSignals];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:inferenceWorkoutsAppSelectionTrainingDependentSignals underConditions:policyCopy];
  [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self setInferenceWorkoutsAppSelectionTrainingDependentSignals:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end