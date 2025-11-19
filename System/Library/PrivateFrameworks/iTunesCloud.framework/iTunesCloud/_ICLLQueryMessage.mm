@interface _ICLLQueryMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)clearOneofValuesForQuery;
- (void)setPlaybackSyncState:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLQueryMessage

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_query;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_ICLLQueueQuery *)self->_queue hash]^ v3;
  v5 = [(_ICLLPlaybackSyncStateQuery *)self->_playbackSyncState hash];
  v6 = v4 ^ v5 ^ [(_ICLLPlaybackControlSettingsQuery *)self->_playbackControlSettings hash];
  return v6 ^ [(_ICLLParticipantQuery *)self->_participant hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_query != *(v4 + 8))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  queue = self->_queue;
  if (queue | *(v4 + 5) && ![(_ICLLQueueQuery *)queue isEqual:?])
  {
    goto LABEL_15;
  }

  playbackSyncState = self->_playbackSyncState;
  if (playbackSyncState | *(v4 + 3))
  {
    if (![(_ICLLPlaybackSyncStateQuery *)playbackSyncState isEqual:?])
    {
      goto LABEL_15;
    }
  }

  playbackControlSettings = self->_playbackControlSettings;
  if (playbackControlSettings | *(v4 + 2))
  {
    if (![(_ICLLPlaybackControlSettingsQuery *)playbackControlSettings isEqual:?])
    {
      goto LABEL_15;
    }
  }

  participant = self->_participant;
  if (participant | *(v4 + 1))
  {
    v9 = [(_ICLLParticipantQuery *)participant isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_16:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_query;
    *(v5 + 48) |= 1u;
  }

  v7 = [(_ICLLQueueQuery *)self->_queue copyWithZone:a3];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(_ICLLPlaybackSyncStateQuery *)self->_playbackSyncState copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(_ICLLPlaybackControlSettingsQuery *)self->_playbackControlSettings copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(_ICLLParticipantQuery *)self->_participant copyWithZone:a3];
  v14 = v6[1];
  v6[1] = v13;

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_queue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_playbackSyncState)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_playbackControlSettings)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_participant)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)clearOneofValuesForQuery
{
  if (a1)
  {
    *(a1 + 48) &= ~1u;
    *(a1 + 32) = 0;
    v2 = *(a1 + 40);
    *(a1 + 40) = 0;

    v3 = *(a1 + 24);
    *(a1 + 24) = 0;

    v4 = *(a1 + 16);
    *(a1 + 16) = 0;

    v5 = *(a1 + 8);
    *(a1 + 8) = 0;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  queue = self->_queue;
  if (queue)
  {
    v5 = [(_ICLLQueueQuery *)queue dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"queue"];
  }

  playbackSyncState = self->_playbackSyncState;
  if (playbackSyncState)
  {
    v7 = [(_ICLLPlaybackSyncStateQuery *)playbackSyncState dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"playbackSyncState"];
  }

  playbackControlSettings = self->_playbackControlSettings;
  if (playbackControlSettings)
  {
    v9 = [(_ICLLPlaybackControlSettingsQuery *)playbackControlSettings dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"playbackControlSettings"];
  }

  participant = self->_participant;
  if (participant)
  {
    v11 = [(_ICLLParticipantQuery *)participant dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"participant"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:self->_query];
    [v3 setObject:v12 forKey:@"query"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLQueryMessage;
  v4 = [(_ICLLQueryMessage *)&v8 description];
  v5 = [(_ICLLQueryMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setPlaybackSyncState:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    [(_ICLLQueryMessage *)a1 clearOneofValuesForQuery];
    *(a1 + 48) |= 1u;
    *(a1 + 32) = 2;
    objc_storeStrong((a1 + 24), a2);
  }
}

@end