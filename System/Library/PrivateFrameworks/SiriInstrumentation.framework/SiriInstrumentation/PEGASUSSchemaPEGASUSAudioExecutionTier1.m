@interface PEGASUSSchemaPEGASUSAudioExecutionTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioExecutionTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSAudioExecutionTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAudioInternalSignals:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSAudioExecutionTier1

- (PEGASUSSchemaPEGASUSAudioExecutionTier1)initWithDictionary:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PEGASUSSchemaPEGASUSAudioExecutionTier1;
  v5 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)&v29 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioLaunchId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)v5 setAudioLaunchId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"audioType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)v5 setAudioType:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"audioInternalSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v6;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        do
        {
          v15 = 0;
          do
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v25 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v16 copy];
              [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)v5 addAudioInternalSignals:v17];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v13);
      }

      v6 = v24;
    }

    v18 = [v4 objectForKeyedSubscript:@"audioUnderstandingTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PEGASUSSchemaPEGASUSAudioUnderstandingTier1 alloc] initWithDictionary:v18];
      [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)v5 setAudioUnderstandingTier1:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"audioQueueStateInfoTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 alloc] initWithDictionary:v20];
      [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)v5 setAudioQueueStateInfoTier1:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAudioExecutionTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self dictionaryRepresentation];
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
  if (self->_audioInternalSignals)
  {
    v4 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioInternalSignals];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"audioInternalSignals"];
  }

  if (self->_audioLaunchId)
  {
    v6 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioLaunchId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"audioLaunchId"];
  }

  if (self->_audioQueueStateInfoTier1)
  {
    v8 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"audioQueueStateInfoTier1"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"audioQueueStateInfoTier1"];
    }
  }

  if (self->_audioType)
  {
    v11 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioType];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"audioType"];
  }

  if (self->_audioUnderstandingTier1)
  {
    v13 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"audioUnderstandingTier1"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"audioUnderstandingTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_audioLaunchId hash];
  v4 = [(NSString *)self->_audioType hash]^ v3;
  v5 = [(NSArray *)self->_audioInternalSignals hash];
  v6 = v4 ^ v5 ^ [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self->_audioUnderstandingTier1 hash];
  return v6 ^ [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)self->_audioQueueStateInfoTier1 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioLaunchId];
  v6 = [v4 audioLaunchId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioLaunchId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioLaunchId];
    v10 = [v4 audioLaunchId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioType];
  v6 = [v4 audioType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioType];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioType];
    v15 = [v4 audioType];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioInternalSignals];
  v6 = [v4 audioInternalSignals];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioInternalSignals];
  if (v17)
  {
    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioInternalSignals];
    v20 = [v4 audioInternalSignals];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];
  v6 = [v4 audioUnderstandingTier1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];
  if (v22)
  {
    v23 = v22;
    v24 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];
    v25 = [v4 audioUnderstandingTier1];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];
  v6 = [v4 audioQueueStateInfoTier1];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];
    v30 = [v4 audioQueueStateInfoTier1];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioLaunchId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioType];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_audioInternalSignals;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v12 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];

  if (v12)
  {
    v13 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];

  if (v14)
  {
    v15 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addAudioInternalSignals:(id)a3
{
  v4 = a3;
  audioInternalSignals = self->_audioInternalSignals;
  v8 = v4;
  if (!audioInternalSignals)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioInternalSignals;
    self->_audioInternalSignals = v6;

    v4 = v8;
    audioInternalSignals = self->_audioInternalSignals;
  }

  [(NSArray *)audioInternalSignals addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PEGASUSSchemaPEGASUSAudioExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioLaunchId];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioType];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioInternalSignals];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioLaunchId];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioType];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioInternalSignals];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioLaunchId];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioType];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioInternalSignals];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioLaunchId];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioType];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioInternalSignals];
  }

  if ([v4 isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioLaunchId];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioType];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioInternalSignals];
  }

  v6 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioUnderstandingTier1];
  }

  v9 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioQueueStateInfoTier1];
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