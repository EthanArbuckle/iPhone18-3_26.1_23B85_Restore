@interface MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1)initWithDictionary:(id)dictionary;
- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addActiveSessionDisplayIds:(id)ids;
- (void)setHasAudioSessionMode:(BOOL)mode;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1

- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"activeSessionDisplayIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v14 copy];
              [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)v5 addActiveSessionDisplayIds:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"audioSessionCategory", v20}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 setAudioSessionCategory:](v5, "setAudioSessionCategory:", [v16 intValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"audioSessionMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 setAudioSessionMode:](v5, "setAudioSessionMode:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self dictionaryRepresentation];
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
  if (self->_activeSessionDisplayIds)
  {
    activeSessionDisplayIds = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self activeSessionDisplayIds];
    v5 = [activeSessionDisplayIds copy];
    [dictionary setObject:v5 forKeyedSubscript:@"activeSessionDisplayIds"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self audioSessionCategory]- 1;
    if (v7 > 0x1A)
    {
      v8 = @"MHAUDIOSESSIONCATEGORY_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D9070[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"audioSessionCategory"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self audioSessionMode]- 1;
    if (v9 > 0x1C)
    {
      v10 = @"MHAUDIOSESSIONMODE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78D9148[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"audioSessionMode"];
  }

  if (self->_linkId)
  {
    linkId = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSArray *)self->_activeSessionDisplayIds hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_audioSessionCategory;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_audioSessionMode;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  linkId = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_11;
  }

  linkId3 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  linkId = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self activeSessionDisplayIds];
  linkId2 = [equalCopy activeSessionDisplayIds];
  if ((linkId != 0) == (linkId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  activeSessionDisplayIds = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self activeSessionDisplayIds];
  if (activeSessionDisplayIds)
  {
    v13 = activeSessionDisplayIds;
    activeSessionDisplayIds2 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self activeSessionDisplayIds];
    activeSessionDisplayIds3 = [equalCopy activeSessionDisplayIds];
    v16 = [activeSessionDisplayIds2 isEqual:activeSessionDisplayIds3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = equalCopy[32];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      audioSessionCategory = self->_audioSessionCategory;
      if (audioSessionCategory != [equalCopy audioSessionCategory])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[32];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (audioSessionMode = self->_audioSessionMode, audioSessionMode == [equalCopy audioSessionMode]))
      {
        v17 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  linkId = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_activeSessionDisplayIds;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteStringField();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasAudioSessionMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addActiveSessionDisplayIds:(id)ids
{
  idsCopy = ids;
  activeSessionDisplayIds = self->_activeSessionDisplayIds;
  v8 = idsCopy;
  if (!activeSessionDisplayIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_activeSessionDisplayIds;
    self->_activeSessionDisplayIds = array;

    idsCopy = v8;
    activeSessionDisplayIds = self->_activeSessionDisplayIds;
  }

  [(NSArray *)activeSessionDisplayIds addObject:idsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self deleteActiveSessionDisplayIds];
  }

  linkId = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self deleteLinkId];
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