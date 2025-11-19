@interface MHSchemaMHAssistantDaemonAudioStartRecordingEnded
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHAssistantDaemonAudioStartRecordingEnded)initWithDictionary:(id)a3;
- (MHSchemaMHAssistantDaemonAudioStartRecordingEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addActiveSessionDisplayIds:(id)a3;
- (void)addFanInfo:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHAssistantDaemonAudioStartRecordingEnded

- (MHSchemaMHAssistantDaemonAudioStartRecordingEnded)initWithDictionary:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = MHSchemaMHAssistantDaemonAudioStartRecordingEnded;
  v5 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"activeSessionDisplayIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v28 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)v5 addActiveSessionDisplayIds:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"fanInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v24 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [[MHSchemaMHAssistantDaemonAudioFanInfo alloc] initWithDictionary:v20];
              [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)v5 addFanInfo:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v17);
      }
    }

    v22 = v5;
  }

  return v5;
}

- (MHSchemaMHAssistantDaemonAudioStartRecordingEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_activeSessionDisplayIds)
  {
    v4 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self activeSessionDisplayIds];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"activeSessionDisplayIds"];
  }

  if ([(NSArray *)self->_fanInfos count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_fanInfos;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"fanInfo"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v15];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self activeSessionDisplayIds];
  v6 = [v4 activeSessionDisplayIds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self activeSessionDisplayIds];
  if (v7)
  {
    v8 = v7;
    v9 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self activeSessionDisplayIds];
    v10 = [v4 activeSessionDisplayIds];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self fanInfos];
  v6 = [v4 fanInfos];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self fanInfos];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self fanInfos];
    v15 = [v4 fanInfos];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_activeSessionDisplayIds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_fanInfos;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)addFanInfo:(id)a3
{
  v4 = a3;
  fanInfos = self->_fanInfos;
  v8 = v4;
  if (!fanInfos)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_fanInfos;
    self->_fanInfos = v6;

    v4 = v8;
    fanInfos = self->_fanInfos;
  }

  [(NSArray *)fanInfos addObject:v4];
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
  v9.receiver = self;
  v9.super_class = MHSchemaMHAssistantDaemonAudioStartRecordingEnded;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self fanInfos:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self setFanInfos:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end