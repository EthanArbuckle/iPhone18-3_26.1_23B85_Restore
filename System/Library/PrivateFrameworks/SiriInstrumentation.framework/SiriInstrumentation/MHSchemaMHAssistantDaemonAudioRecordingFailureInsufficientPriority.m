@interface MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority)initWithDictionary:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addActiveSessionDisplayIds:(id)a3;
- (void)setHasAudioSessionMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority

- (MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"activeSessionDisplayIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority *)v5 addActiveSessionDisplayIds:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:{@"audioSessionCategory", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority setAudioSessionCategory:](v5, "setAudioSessionCategory:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"audioSessionMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority setAudioSessionMode:](v5, "setAudioSessionMode:", [v15 intValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority *)self dictionaryRepresentation];
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
    v4 = [(MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority *)self activeSessionDisplayIds];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"activeSessionDisplayIds"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [(MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority *)self audioSessionCategory]- 1;
    if (v7 > 0x1A)
    {
      v8 = @"MHAUDIOSESSIONCATEGORY_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D8EB0[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"audioSessionCategory"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [(MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority *)self audioSessionMode]- 1;
    if (v9 > 0x1C)
    {
      v10 = @"MHAUDIOSESSIONMODE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78D8F88[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"audioSessionMode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_activeSessionDisplayIds hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_audioSessionCategory;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_audioSessionMode;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority *)self activeSessionDisplayIds];
  v6 = [v4 activeSessionDisplayIds];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority *)self activeSessionDisplayIds];
  if (v8)
  {
    v9 = v8;
    v10 = [(MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority *)self activeSessionDisplayIds];
    v11 = [v4 activeSessionDisplayIds];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    audioSessionCategory = self->_audioSessionCategory;
    if (audioSessionCategory == [v4 audioSessionCategory])
    {
      has = self->_has;
      v14 = v4[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    audioSessionMode = self->_audioSessionMode;
    if (audioSessionMode != [v4 audioSessionMode])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_activeSessionDisplayIds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end