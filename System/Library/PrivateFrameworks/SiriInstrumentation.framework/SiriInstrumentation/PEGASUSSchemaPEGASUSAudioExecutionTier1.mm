@interface PEGASUSSchemaPEGASUSAudioExecutionTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioExecutionTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSAudioExecutionTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAudioInternalSignals:(id)signals;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSAudioExecutionTier1

- (PEGASUSSchemaPEGASUSAudioExecutionTier1)initWithDictionary:(id)dictionary
{
  v31 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = PEGASUSSchemaPEGASUSAudioExecutionTier1;
  v5 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"audioLaunchId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)v5 setAudioLaunchId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"audioType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)v5 setAudioType:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"audioInternalSignals"];
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

    v18 = [dictionaryCopy objectForKeyedSubscript:@"audioUnderstandingTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PEGASUSSchemaPEGASUSAudioUnderstandingTier1 alloc] initWithDictionary:v18];
      [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)v5 setAudioUnderstandingTier1:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"audioQueueStateInfoTier1"];
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

- (PEGASUSSchemaPEGASUSAudioExecutionTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_audioInternalSignals)
  {
    audioInternalSignals = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioInternalSignals];
    v5 = [audioInternalSignals copy];
    [dictionary setObject:v5 forKeyedSubscript:@"audioInternalSignals"];
  }

  if (self->_audioLaunchId)
  {
    audioLaunchId = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioLaunchId];
    v7 = [audioLaunchId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"audioLaunchId"];
  }

  if (self->_audioQueueStateInfoTier1)
  {
    audioQueueStateInfoTier1 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];
    dictionaryRepresentation = [audioQueueStateInfoTier1 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioQueueStateInfoTier1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioQueueStateInfoTier1"];
    }
  }

  if (self->_audioType)
  {
    audioType = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioType];
    v12 = [audioType copy];
    [dictionary setObject:v12 forKeyedSubscript:@"audioType"];
  }

  if (self->_audioUnderstandingTier1)
  {
    audioUnderstandingTier1 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];
    dictionaryRepresentation2 = [audioUnderstandingTier1 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"audioUnderstandingTier1"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"audioUnderstandingTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_audioLaunchId hash];
  v4 = [(NSString *)self->_audioType hash]^ v3;
  v5 = [(NSArray *)self->_audioInternalSignals hash];
  v6 = v4 ^ v5 ^ [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self->_audioUnderstandingTier1 hash];
  return v6 ^ [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)self->_audioQueueStateInfoTier1 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  audioLaunchId = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioLaunchId];
  audioLaunchId2 = [equalCopy audioLaunchId];
  if ((audioLaunchId != 0) == (audioLaunchId2 == 0))
  {
    goto LABEL_26;
  }

  audioLaunchId3 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioLaunchId];
  if (audioLaunchId3)
  {
    v8 = audioLaunchId3;
    audioLaunchId4 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioLaunchId];
    audioLaunchId5 = [equalCopy audioLaunchId];
    v11 = [audioLaunchId4 isEqual:audioLaunchId5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  audioLaunchId = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioType];
  audioLaunchId2 = [equalCopy audioType];
  if ((audioLaunchId != 0) == (audioLaunchId2 == 0))
  {
    goto LABEL_26;
  }

  audioType = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioType];
  if (audioType)
  {
    v13 = audioType;
    audioType2 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioType];
    audioType3 = [equalCopy audioType];
    v16 = [audioType2 isEqual:audioType3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  audioLaunchId = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioInternalSignals];
  audioLaunchId2 = [equalCopy audioInternalSignals];
  if ((audioLaunchId != 0) == (audioLaunchId2 == 0))
  {
    goto LABEL_26;
  }

  audioInternalSignals = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioInternalSignals];
  if (audioInternalSignals)
  {
    v18 = audioInternalSignals;
    audioInternalSignals2 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioInternalSignals];
    audioInternalSignals3 = [equalCopy audioInternalSignals];
    v21 = [audioInternalSignals2 isEqual:audioInternalSignals3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  audioLaunchId = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];
  audioLaunchId2 = [equalCopy audioUnderstandingTier1];
  if ((audioLaunchId != 0) == (audioLaunchId2 == 0))
  {
    goto LABEL_26;
  }

  audioUnderstandingTier1 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];
  if (audioUnderstandingTier1)
  {
    v23 = audioUnderstandingTier1;
    audioUnderstandingTier12 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];
    audioUnderstandingTier13 = [equalCopy audioUnderstandingTier1];
    v26 = [audioUnderstandingTier12 isEqual:audioUnderstandingTier13];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  audioLaunchId = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];
  audioLaunchId2 = [equalCopy audioQueueStateInfoTier1];
  if ((audioLaunchId != 0) != (audioLaunchId2 == 0))
  {
    audioQueueStateInfoTier1 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];
    if (!audioQueueStateInfoTier1)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = audioQueueStateInfoTier1;
    audioQueueStateInfoTier12 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];
    audioQueueStateInfoTier13 = [equalCopy audioQueueStateInfoTier1];
    v31 = [audioQueueStateInfoTier12 isEqual:audioQueueStateInfoTier13];

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

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  audioLaunchId = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioLaunchId];

  if (audioLaunchId)
  {
    PBDataWriterWriteStringField();
  }

  audioType = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioType];

  if (audioType)
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

  audioUnderstandingTier1 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];

  if (audioUnderstandingTier1)
  {
    audioUnderstandingTier12 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];
    PBDataWriterWriteSubmessage();
  }

  audioQueueStateInfoTier1 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];

  if (audioQueueStateInfoTier1)
  {
    audioQueueStateInfoTier12 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addAudioInternalSignals:(id)signals
{
  signalsCopy = signals;
  audioInternalSignals = self->_audioInternalSignals;
  v8 = signalsCopy;
  if (!audioInternalSignals)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioInternalSignals;
    self->_audioInternalSignals = array;

    signalsCopy = v8;
    audioInternalSignals = self->_audioInternalSignals;
  }

  [(NSArray *)audioInternalSignals addObject:signalsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PEGASUSSchemaPEGASUSAudioExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioLaunchId];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioType];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioInternalSignals];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioLaunchId];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioType];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioInternalSignals];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioLaunchId];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioType];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioInternalSignals];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioLaunchId];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioType];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioInternalSignals];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioLaunchId];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioType];
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioInternalSignals];
  }

  audioUnderstandingTier1 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioUnderstandingTier1];
  v7 = [audioUnderstandingTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self deleteAudioUnderstandingTier1];
  }

  audioQueueStateInfoTier1 = [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self audioQueueStateInfoTier1];
  v10 = [audioQueueStateInfoTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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