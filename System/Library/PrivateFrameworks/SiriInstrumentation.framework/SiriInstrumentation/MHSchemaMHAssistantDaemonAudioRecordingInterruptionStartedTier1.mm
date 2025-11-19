@interface MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1)initWithDictionary:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addActiveSessionDisplayIds:(id)a3;
- (void)setHasAudioSessionMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1

- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"activeSessionDisplayIds"];
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

    v16 = [v4 objectForKeyedSubscript:{@"audioSessionCategory", v20}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 setAudioSessionCategory:](v5, "setAudioSessionCategory:", [v16 intValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"audioSessionMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 setAudioSessionMode:](v5, "setAudioSessionMode:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self dictionaryRepresentation];
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
  if (self->_activeSessionDisplayIds)
  {
    v4 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self activeSessionDisplayIds];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"activeSessionDisplayIds"];
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

    [v3 setObject:v8 forKeyedSubscript:@"audioSessionCategory"];
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

    [v3 setObject:v10 forKeyedSubscript:@"audioSessionMode"];
  }

  if (self->_linkId)
  {
    v11 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"linkId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self activeSessionDisplayIds];
  v6 = [v4 activeSessionDisplayIds];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self activeSessionDisplayIds];
  if (v12)
  {
    v13 = v12;
    v14 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self activeSessionDisplayIds];
    v15 = [v4 activeSessionDisplayIds];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[32];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      audioSessionCategory = self->_audioSessionCategory;
      if (audioSessionCategory != [v4 audioSessionCategory])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[32];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (audioSessionMode = self->_audioSessionMode, audioSessionMode == [v4 audioSessionMode]))
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

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];

  if (v5)
  {
    v6 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];
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

- (void)setHasAudioSessionMode:(BOOL)a3
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

- (void)addActiveSessionDisplayIds:(id)a3
{
  v4 = a3;
  activeSessionDisplayIds = self->_activeSessionDisplayIds;
  v8 = v4;
  if (!activeSessionDisplayIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_activeSessionDisplayIds;
    self->_activeSessionDisplayIds = v6;

    v4 = v8;
    activeSessionDisplayIds = self->_activeSessionDisplayIds;
  }

  [(NSArray *)activeSessionDisplayIds addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self deleteActiveSessionDisplayIds];
  }

  v6 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
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