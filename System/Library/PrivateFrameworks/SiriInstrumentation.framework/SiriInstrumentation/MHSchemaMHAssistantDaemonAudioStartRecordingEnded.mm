@interface MHSchemaMHAssistantDaemonAudioStartRecordingEnded
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAssistantDaemonAudioStartRecordingEnded)initWithDictionary:(id)dictionary;
- (MHSchemaMHAssistantDaemonAudioStartRecordingEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addActiveSessionDisplayIds:(id)ids;
- (void)addFanInfo:(id)info;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAssistantDaemonAudioStartRecordingEnded

- (MHSchemaMHAssistantDaemonAudioStartRecordingEnded)initWithDictionary:(id)dictionary
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = MHSchemaMHAssistantDaemonAudioStartRecordingEnded;
  v5 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"activeSessionDisplayIds"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:@"fanInfo"];
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

- (MHSchemaMHAssistantDaemonAudioStartRecordingEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_activeSessionDisplayIds)
  {
    activeSessionDisplayIds = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self activeSessionDisplayIds];
    v5 = [activeSessionDisplayIds copy];
    [dictionary setObject:v5 forKeyedSubscript:@"activeSessionDisplayIds"];
  }

  if ([(NSArray *)self->_fanInfos count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"fanInfo"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v15];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  activeSessionDisplayIds = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self activeSessionDisplayIds];
  activeSessionDisplayIds2 = [equalCopy activeSessionDisplayIds];
  if ((activeSessionDisplayIds != 0) == (activeSessionDisplayIds2 == 0))
  {
    goto LABEL_11;
  }

  activeSessionDisplayIds3 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self activeSessionDisplayIds];
  if (activeSessionDisplayIds3)
  {
    v8 = activeSessionDisplayIds3;
    activeSessionDisplayIds4 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self activeSessionDisplayIds];
    activeSessionDisplayIds5 = [equalCopy activeSessionDisplayIds];
    v11 = [activeSessionDisplayIds4 isEqual:activeSessionDisplayIds5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  activeSessionDisplayIds = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self fanInfos];
  activeSessionDisplayIds2 = [equalCopy fanInfos];
  if ((activeSessionDisplayIds != 0) != (activeSessionDisplayIds2 == 0))
  {
    fanInfos = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self fanInfos];
    if (!fanInfos)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = fanInfos;
    fanInfos2 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self fanInfos];
    fanInfos3 = [equalCopy fanInfos];
    v16 = [fanInfos2 isEqual:fanInfos3];

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
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)addFanInfo:(id)info
{
  infoCopy = info;
  fanInfos = self->_fanInfos;
  v8 = infoCopy;
  if (!fanInfos)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_fanInfos;
    self->_fanInfos = array;

    infoCopy = v8;
    fanInfos = self->_fanInfos;
  }

  [(NSArray *)fanInfos addObject:infoCopy];
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
  v9.receiver = self;
  v9.super_class = MHSchemaMHAssistantDaemonAudioStartRecordingEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MHSchemaMHAssistantDaemonAudioStartRecordingEnded *)self fanInfos:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

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