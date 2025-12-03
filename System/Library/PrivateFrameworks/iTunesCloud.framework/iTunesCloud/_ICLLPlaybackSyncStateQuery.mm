@interface _ICLLPlaybackSyncStateQuery
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addParticipantStates:(uint64_t)states;
- (uint64_t)addTransportControlStates:(uint64_t)states;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _ICLLPlaybackSyncStateQuery

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_participantStates hash];
  v4 = [(NSMutableArray *)self->_transportControlStates hash];
  v5 = [(NSString *)self->_currentItemId hash];
  v6 = [(NSString *)self->_initialAVSyncStartItemId hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_initialAVSyncInitiator;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  participantStates = self->_participantStates;
  if (participantStates | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)participantStates isEqual:?])
    {
      goto LABEL_12;
    }
  }

  transportControlStates = self->_transportControlStates;
  if (transportControlStates | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)transportControlStates isEqual:?])
    {
      goto LABEL_12;
    }
  }

  currentItemId = self->_currentItemId;
  if (currentItemId | *(equalCopy + 1))
  {
    if (![(NSString *)currentItemId isEqual:?])
    {
      goto LABEL_12;
    }
  }

  initialAVSyncStartItemId = self->_initialAVSyncStartItemId;
  if (initialAVSyncStartItemId | *(equalCopy + 2))
  {
    if (![(NSString *)initialAVSyncStartItemId isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v9 = (*(equalCopy + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0)
    {
LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }

    if (self->_initialAVSyncInitiator)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_12;
    }

    v9 = 1;
  }

LABEL_13:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_participantStates;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v27 + 1) + 8 * v10) copyWithZone:zone];
        [(_ICLLPlaybackSyncStateQuery *)v5 addParticipantStates:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = self->_transportControlStates;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v23 + 1) + 8 * v16) copyWithZone:{zone, v23}];
        [(_ICLLPlaybackSyncStateQuery *)v5 addTransportControlStates:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_currentItemId copyWithZone:zone];
  v19 = *(v5 + 8);
  *(v5 + 8) = v18;

  v20 = [(NSString *)self->_initialAVSyncStartItemId copyWithZone:zone];
  v21 = *(v5 + 16);
  *(v5 + 16) = v20;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_initialAVSyncInitiator;
    *(v5 + 44) |= 1u;
  }

  return v5;
}

- (uint64_t)addParticipantStates:(uint64_t)states
{
  v3 = a2;
  v4 = v3;
  if (states)
  {
    v5 = *(states + 24);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(states + 24);
      *(states + 24) = v6;

      v5 = *(states + 24);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)addTransportControlStates:(uint64_t)states
{
  v3 = a2;
  v4 = v3;
  if (states)
  {
    v5 = *(states + 32);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(states + 32);
      *(states + 32) = v6;

      v5 = *(states + 32);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_participantStates;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_transportControlStates;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
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

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (self->_currentItemId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_initialAVSyncStartItemId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  participantStates = self->_participantStates;
  if (participantStates)
  {
    [dictionary setObject:participantStates forKey:@"participantStates"];
  }

  transportControlStates = self->_transportControlStates;
  if (transportControlStates)
  {
    [v4 setObject:transportControlStates forKey:@"transportControlStates"];
  }

  currentItemId = self->_currentItemId;
  if (currentItemId)
  {
    [v4 setObject:currentItemId forKey:@"currentItemId"];
  }

  initialAVSyncStartItemId = self->_initialAVSyncStartItemId;
  if (initialAVSyncStartItemId)
  {
    [v4 setObject:initialAVSyncStartItemId forKey:@"initialAVSyncStartItemId"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_initialAVSyncInitiator];
    [v4 setObject:v9 forKey:@"initialAVSyncInitiator"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLPlaybackSyncStateQuery;
  v4 = [(_ICLLPlaybackSyncStateQuery *)&v8 description];
  dictionaryRepresentation = [(_ICLLPlaybackSyncStateQuery *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end