@interface _ICLLQueryMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)clearOneofValuesForQuery;
- (void)setPlaybackSyncState:(uint64_t)state;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_query != *(equalCopy + 8))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  queue = self->_queue;
  if (queue | *(equalCopy + 5) && ![(_ICLLQueueQuery *)queue isEqual:?])
  {
    goto LABEL_15;
  }

  playbackSyncState = self->_playbackSyncState;
  if (playbackSyncState | *(equalCopy + 3))
  {
    if (![(_ICLLPlaybackSyncStateQuery *)playbackSyncState isEqual:?])
    {
      goto LABEL_15;
    }
  }

  playbackControlSettings = self->_playbackControlSettings;
  if (playbackControlSettings | *(equalCopy + 2))
  {
    if (![(_ICLLPlaybackControlSettingsQuery *)playbackControlSettings isEqual:?])
    {
      goto LABEL_15;
    }
  }

  participant = self->_participant;
  if (participant | *(equalCopy + 1))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_query;
    *(v5 + 48) |= 1u;
  }

  v7 = [(_ICLLQueueQuery *)self->_queue copyWithZone:zone];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(_ICLLPlaybackSyncStateQuery *)self->_playbackSyncState copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(_ICLLPlaybackControlSettingsQuery *)self->_playbackControlSettings copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(_ICLLParticipantQuery *)self->_participant copyWithZone:zone];
  v14 = v6[1];
  v6[1] = v13;

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_queue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_playbackSyncState)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_playbackControlSettings)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_participant)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)clearOneofValuesForQuery
{
  if (self)
  {
    *(self + 48) &= ~1u;
    *(self + 32) = 0;
    v2 = *(self + 40);
    *(self + 40) = 0;

    v3 = *(self + 24);
    *(self + 24) = 0;

    v4 = *(self + 16);
    *(self + 16) = 0;

    v5 = *(self + 8);
    *(self + 8) = 0;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  queue = self->_queue;
  if (queue)
  {
    dictionaryRepresentation = [(_ICLLQueueQuery *)queue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"queue"];
  }

  playbackSyncState = self->_playbackSyncState;
  if (playbackSyncState)
  {
    dictionaryRepresentation2 = [(_ICLLPlaybackSyncStateQuery *)playbackSyncState dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"playbackSyncState"];
  }

  playbackControlSettings = self->_playbackControlSettings;
  if (playbackControlSettings)
  {
    dictionaryRepresentation3 = [(_ICLLPlaybackControlSettingsQuery *)playbackControlSettings dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"playbackControlSettings"];
  }

  participant = self->_participant;
  if (participant)
  {
    dictionaryRepresentation4 = [(_ICLLParticipantQuery *)participant dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"participant"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:self->_query];
    [dictionary setObject:v12 forKey:@"query"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLQueryMessage;
  v4 = [(_ICLLQueryMessage *)&v8 description];
  dictionaryRepresentation = [(_ICLLQueryMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setPlaybackSyncState:(uint64_t)state
{
  v4 = a2;
  if (state)
  {
    [(_ICLLQueryMessage *)state clearOneofValuesForQuery];
    *(state + 48) |= 1u;
    *(state + 32) = 2;
    objc_storeStrong((state + 24), a2);
  }
}

@end