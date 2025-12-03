@interface INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addInferenceCommsAppSelectionTrainingAppDependentSignals:(id)signals;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated

- (INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated;
  v5 = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"inferenceCommsAppSelectionTrainingAppIndependentSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)v5 setInferenceCommsAppSelectionTrainingAppIndependentSignals:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"inferenceCommsAppSelectionTrainingAppDependentSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v6;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          v13 = 0;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals alloc] initWithDictionary:v14];
              [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)v5 addInferenceCommsAppSelectionTrainingAppDependentSignals:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v11);
      }

      v6 = v20;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"crrCommsAppSelectionJointId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)v5 setCrrCommsAppSelectionJointId:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self dictionaryRepresentation];
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
  if (self->_crrCommsAppSelectionJointId)
  {
    crrCommsAppSelectionJointId = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self crrCommsAppSelectionJointId];
    dictionaryRepresentation = [crrCommsAppSelectionJointId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"crrCommsAppSelectionJointId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"crrCommsAppSelectionJointId"];
    }
  }

  if ([(NSArray *)self->_inferenceCommsAppSelectionTrainingAppDependentSignals count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_inferenceCommsAppSelectionTrainingAppDependentSignals;
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

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"inferenceCommsAppSelectionTrainingAppDependentSignals"];
  }

  if (self->_inferenceCommsAppSelectionTrainingAppIndependentSignals)
  {
    inferenceCommsAppSelectionTrainingAppIndependentSignals = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self inferenceCommsAppSelectionTrainingAppIndependentSignals];
    dictionaryRepresentation3 = [inferenceCommsAppSelectionTrainingAppIndependentSignals dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"inferenceCommsAppSelectionTrainingAppIndependentSignals"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"inferenceCommsAppSelectionTrainingAppIndependentSignals"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals *)self->_inferenceCommsAppSelectionTrainingAppIndependentSignals hash];
  v4 = [(NSArray *)self->_inferenceCommsAppSelectionTrainingAppDependentSignals hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_crrCommsAppSelectionJointId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  inferenceCommsAppSelectionTrainingAppIndependentSignals = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self inferenceCommsAppSelectionTrainingAppIndependentSignals];
  inferenceCommsAppSelectionTrainingAppIndependentSignals2 = [equalCopy inferenceCommsAppSelectionTrainingAppIndependentSignals];
  if ((inferenceCommsAppSelectionTrainingAppIndependentSignals != 0) == (inferenceCommsAppSelectionTrainingAppIndependentSignals2 == 0))
  {
    goto LABEL_16;
  }

  inferenceCommsAppSelectionTrainingAppIndependentSignals3 = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self inferenceCommsAppSelectionTrainingAppIndependentSignals];
  if (inferenceCommsAppSelectionTrainingAppIndependentSignals3)
  {
    v8 = inferenceCommsAppSelectionTrainingAppIndependentSignals3;
    inferenceCommsAppSelectionTrainingAppIndependentSignals4 = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self inferenceCommsAppSelectionTrainingAppIndependentSignals];
    inferenceCommsAppSelectionTrainingAppIndependentSignals5 = [equalCopy inferenceCommsAppSelectionTrainingAppIndependentSignals];
    v11 = [inferenceCommsAppSelectionTrainingAppIndependentSignals4 isEqual:inferenceCommsAppSelectionTrainingAppIndependentSignals5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  inferenceCommsAppSelectionTrainingAppIndependentSignals = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self inferenceCommsAppSelectionTrainingAppDependentSignals];
  inferenceCommsAppSelectionTrainingAppIndependentSignals2 = [equalCopy inferenceCommsAppSelectionTrainingAppDependentSignals];
  if ((inferenceCommsAppSelectionTrainingAppIndependentSignals != 0) == (inferenceCommsAppSelectionTrainingAppIndependentSignals2 == 0))
  {
    goto LABEL_16;
  }

  inferenceCommsAppSelectionTrainingAppDependentSignals = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self inferenceCommsAppSelectionTrainingAppDependentSignals];
  if (inferenceCommsAppSelectionTrainingAppDependentSignals)
  {
    v13 = inferenceCommsAppSelectionTrainingAppDependentSignals;
    inferenceCommsAppSelectionTrainingAppDependentSignals2 = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self inferenceCommsAppSelectionTrainingAppDependentSignals];
    inferenceCommsAppSelectionTrainingAppDependentSignals3 = [equalCopy inferenceCommsAppSelectionTrainingAppDependentSignals];
    v16 = [inferenceCommsAppSelectionTrainingAppDependentSignals2 isEqual:inferenceCommsAppSelectionTrainingAppDependentSignals3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  inferenceCommsAppSelectionTrainingAppIndependentSignals = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self crrCommsAppSelectionJointId];
  inferenceCommsAppSelectionTrainingAppIndependentSignals2 = [equalCopy crrCommsAppSelectionJointId];
  if ((inferenceCommsAppSelectionTrainingAppIndependentSignals != 0) != (inferenceCommsAppSelectionTrainingAppIndependentSignals2 == 0))
  {
    crrCommsAppSelectionJointId = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self crrCommsAppSelectionJointId];
    if (!crrCommsAppSelectionJointId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = crrCommsAppSelectionJointId;
    crrCommsAppSelectionJointId2 = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self crrCommsAppSelectionJointId];
    crrCommsAppSelectionJointId3 = [equalCopy crrCommsAppSelectionJointId];
    v21 = [crrCommsAppSelectionJointId2 isEqual:crrCommsAppSelectionJointId3];

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

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  inferenceCommsAppSelectionTrainingAppIndependentSignals = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self inferenceCommsAppSelectionTrainingAppIndependentSignals];

  if (inferenceCommsAppSelectionTrainingAppIndependentSignals)
  {
    inferenceCommsAppSelectionTrainingAppIndependentSignals2 = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self inferenceCommsAppSelectionTrainingAppIndependentSignals];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_inferenceCommsAppSelectionTrainingAppDependentSignals;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  crrCommsAppSelectionJointId = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self crrCommsAppSelectionJointId];

  if (crrCommsAppSelectionJointId)
  {
    crrCommsAppSelectionJointId2 = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self crrCommsAppSelectionJointId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addInferenceCommsAppSelectionTrainingAppDependentSignals:(id)signals
{
  signalsCopy = signals;
  inferenceCommsAppSelectionTrainingAppDependentSignals = self->_inferenceCommsAppSelectionTrainingAppDependentSignals;
  v8 = signalsCopy;
  if (!inferenceCommsAppSelectionTrainingAppDependentSignals)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_inferenceCommsAppSelectionTrainingAppDependentSignals;
    self->_inferenceCommsAppSelectionTrainingAppDependentSignals = array;

    signalsCopy = v8;
    inferenceCommsAppSelectionTrainingAppDependentSignals = self->_inferenceCommsAppSelectionTrainingAppDependentSignals;
  }

  [(NSArray *)inferenceCommsAppSelectionTrainingAppDependentSignals addObject:signalsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  inferenceCommsAppSelectionTrainingAppIndependentSignals = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self inferenceCommsAppSelectionTrainingAppIndependentSignals];
  v7 = [inferenceCommsAppSelectionTrainingAppIndependentSignals applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self deleteInferenceCommsAppSelectionTrainingAppIndependentSignals];
  }

  inferenceCommsAppSelectionTrainingAppDependentSignals = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self inferenceCommsAppSelectionTrainingAppDependentSignals];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:inferenceCommsAppSelectionTrainingAppDependentSignals underConditions:policyCopy];
  [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self setInferenceCommsAppSelectionTrainingAppDependentSignals:v10];

  crrCommsAppSelectionJointId = [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self crrCommsAppSelectionJointId];
  v12 = [crrCommsAppSelectionJointId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self deleteCrrCommsAppSelectionJointId];
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