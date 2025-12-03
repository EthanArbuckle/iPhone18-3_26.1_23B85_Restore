@interface _ICLLCommandMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)clearOneofValuesForCommand;
- (void)setClientInfo:(uint64_t)info;
- (void)setMoveItem:(uint64_t)item;
- (void)setRemoveItem:(uint64_t)item;
- (void)writeTo:(id)to;
@end

@implementation _ICLLCommandMessage

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_command;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_ICLLPlaybackSyncCommand *)self->_playbackSync hash]^ v3;
  v5 = [(_ICLLAddQueueItemsCommand *)self->_addItems hash];
  v6 = v4 ^ v5 ^ [(_ICLLRemoveQueueItemCommand *)self->_removeItem hash];
  v7 = [(_ICLLMoveQueueItemCommand *)self->_moveItem hash];
  v8 = v7 ^ [(_ICLLCurrentItemChangeCommand *)self->_currentItemChange hash];
  v9 = v6 ^ v8 ^ [(_ICLLPlaybackControlSettingsCommand *)self->_playbackControlSettings hash];
  v10 = [(_ICLLReactionCommand *)self->_reaction hash];
  v11 = v10 ^ [(_ICLLClientInfoCommand *)self->_clientInfo hash];
  v12 = v11 ^ [(_ICLLReplaceQueueItemsCommand *)self->_replaceQueueItems hash];
  v13 = v9 ^ v12 ^ [(_ICLLPlayNowQueueItemsCommand *)self->_playNowQueueItems hash];
  return v13 ^ [(_ICLLCurrentItemTransitionCommand *)self->_currentItemTransition hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 104) & 1) == 0 || self->_command != *(equalCopy + 6))
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 104))
  {
LABEL_29:
    v16 = 0;
    goto LABEL_30;
  }

  playbackSync = self->_playbackSync;
  if (playbackSync | *(equalCopy + 9) && ![(_ICLLPlaybackSyncCommand *)playbackSync isEqual:?])
  {
    goto LABEL_29;
  }

  addItems = self->_addItems;
  if (addItems | *(equalCopy + 1))
  {
    if (![(_ICLLAddQueueItemsCommand *)addItems isEqual:?])
    {
      goto LABEL_29;
    }
  }

  removeItem = self->_removeItem;
  if (removeItem | *(equalCopy + 11))
  {
    if (![(_ICLLRemoveQueueItemCommand *)removeItem isEqual:?])
    {
      goto LABEL_29;
    }
  }

  moveItem = self->_moveItem;
  if (moveItem | *(equalCopy + 6))
  {
    if (![(_ICLLMoveQueueItemCommand *)moveItem isEqual:?])
    {
      goto LABEL_29;
    }
  }

  currentItemChange = self->_currentItemChange;
  if (currentItemChange | *(equalCopy + 4))
  {
    if (![(_ICLLCurrentItemChangeCommand *)currentItemChange isEqual:?])
    {
      goto LABEL_29;
    }
  }

  playbackControlSettings = self->_playbackControlSettings;
  if (playbackControlSettings | *(equalCopy + 8))
  {
    if (![(_ICLLPlaybackControlSettingsCommand *)playbackControlSettings isEqual:?])
    {
      goto LABEL_29;
    }
  }

  reaction = self->_reaction;
  if (reaction | *(equalCopy + 10))
  {
    if (![(_ICLLReactionCommand *)reaction isEqual:?])
    {
      goto LABEL_29;
    }
  }

  clientInfo = self->_clientInfo;
  if (clientInfo | *(equalCopy + 2))
  {
    if (![(_ICLLClientInfoCommand *)clientInfo isEqual:?])
    {
      goto LABEL_29;
    }
  }

  replaceQueueItems = self->_replaceQueueItems;
  if (replaceQueueItems | *(equalCopy + 12))
  {
    if (![(_ICLLReplaceQueueItemsCommand *)replaceQueueItems isEqual:?])
    {
      goto LABEL_29;
    }
  }

  playNowQueueItems = self->_playNowQueueItems;
  if (playNowQueueItems | *(equalCopy + 7))
  {
    if (![(_ICLLPlayNowQueueItemsCommand *)playNowQueueItems isEqual:?])
    {
      goto LABEL_29;
    }
  }

  currentItemTransition = self->_currentItemTransition;
  if (currentItemTransition | *(equalCopy + 5))
  {
    v16 = [(_ICLLCurrentItemTransitionCommand *)currentItemTransition isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_30:

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_command;
    *(v5 + 104) |= 1u;
  }

  v7 = [(_ICLLPlaybackSyncCommand *)self->_playbackSync copyWithZone:zone];
  v8 = v6[9];
  v6[9] = v7;

  v9 = [(_ICLLAddQueueItemsCommand *)self->_addItems copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(_ICLLRemoveQueueItemCommand *)self->_removeItem copyWithZone:zone];
  v12 = v6[11];
  v6[11] = v11;

  v13 = [(_ICLLMoveQueueItemCommand *)self->_moveItem copyWithZone:zone];
  v14 = v6[6];
  v6[6] = v13;

  v15 = [(_ICLLCurrentItemChangeCommand *)self->_currentItemChange copyWithZone:zone];
  v16 = v6[4];
  v6[4] = v15;

  v17 = [(_ICLLPlaybackControlSettingsCommand *)self->_playbackControlSettings copyWithZone:zone];
  v18 = v6[8];
  v6[8] = v17;

  v19 = [(_ICLLReactionCommand *)self->_reaction copyWithZone:zone];
  v20 = v6[10];
  v6[10] = v19;

  v21 = [(_ICLLClientInfoCommand *)self->_clientInfo copyWithZone:zone];
  v22 = v6[2];
  v6[2] = v21;

  v23 = [(_ICLLReplaceQueueItemsCommand *)self->_replaceQueueItems copyWithZone:zone];
  v24 = v6[12];
  v6[12] = v23;

  v25 = [(_ICLLPlayNowQueueItemsCommand *)self->_playNowQueueItems copyWithZone:zone];
  v26 = v6[7];
  v6[7] = v25;

  v27 = [(_ICLLCurrentItemTransitionCommand *)self->_currentItemTransition copyWithZone:zone];
  v28 = v6[5];
  v6[5] = v27;

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_playbackSync)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_addItems)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_removeItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_moveItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_currentItemChange)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_playbackControlSettings)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_reaction)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_clientInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_replaceQueueItems)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_playNowQueueItems)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_currentItemTransition)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)clearOneofValuesForCommand
{
  if (self)
  {
    *(self + 104) &= ~1u;
    *(self + 24) = 0;
    v2 = *(self + 72);
    *(self + 72) = 0;

    v3 = *(self + 8);
    *(self + 8) = 0;

    v4 = *(self + 88);
    *(self + 88) = 0;

    v5 = *(self + 48);
    *(self + 48) = 0;

    v6 = *(self + 32);
    *(self + 32) = 0;

    v7 = *(self + 64);
    *(self + 64) = 0;

    v8 = *(self + 80);
    *(self + 80) = 0;

    v9 = *(self + 16);
    *(self + 16) = 0;

    v10 = *(self + 96);
    *(self + 96) = 0;

    v11 = *(self + 56);
    *(self + 56) = 0;

    v12 = *(self + 40);
    *(self + 40) = 0;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  playbackSync = self->_playbackSync;
  if (playbackSync)
  {
    dictionaryRepresentation = [(_ICLLPlaybackSyncCommand *)playbackSync dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"playbackSync"];
  }

  addItems = self->_addItems;
  if (addItems)
  {
    dictionaryRepresentation2 = [(_ICLLAddQueueItemsCommand *)addItems dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"addItems"];
  }

  removeItem = self->_removeItem;
  if (removeItem)
  {
    dictionaryRepresentation3 = [(_ICLLRemoveQueueItemCommand *)removeItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"removeItem"];
  }

  moveItem = self->_moveItem;
  if (moveItem)
  {
    dictionaryRepresentation4 = [(_ICLLMoveQueueItemCommand *)moveItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"moveItem"];
  }

  currentItemChange = self->_currentItemChange;
  if (currentItemChange)
  {
    dictionaryRepresentation5 = [(_ICLLCurrentItemChangeCommand *)currentItemChange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"currentItemChange"];
  }

  playbackControlSettings = self->_playbackControlSettings;
  if (playbackControlSettings)
  {
    dictionaryRepresentation6 = [(_ICLLPlaybackControlSettingsCommand *)playbackControlSettings dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"playbackControlSettings"];
  }

  reaction = self->_reaction;
  if (reaction)
  {
    dictionaryRepresentation7 = [(_ICLLReactionCommand *)reaction dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"reaction"];
  }

  clientInfo = self->_clientInfo;
  if (clientInfo)
  {
    dictionaryRepresentation8 = [(_ICLLClientInfoCommand *)clientInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"clientInfo"];
  }

  replaceQueueItems = self->_replaceQueueItems;
  if (replaceQueueItems)
  {
    dictionaryRepresentation9 = [(_ICLLReplaceQueueItemsCommand *)replaceQueueItems dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation9 forKey:@"replaceQueueItems"];
  }

  playNowQueueItems = self->_playNowQueueItems;
  if (playNowQueueItems)
  {
    dictionaryRepresentation10 = [(_ICLLPlayNowQueueItemsCommand *)playNowQueueItems dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation10 forKey:@"playNowQueueItems"];
  }

  currentItemTransition = self->_currentItemTransition;
  if (currentItemTransition)
  {
    dictionaryRepresentation11 = [(_ICLLCurrentItemTransitionCommand *)currentItemTransition dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation11 forKey:@"currentItemTransition"];
  }

  if (*&self->_has)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInt:self->_command];
    [dictionary setObject:v26 forKey:@"command"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLCommandMessage;
  v4 = [(_ICLLCommandMessage *)&v8 description];
  dictionaryRepresentation = [(_ICLLCommandMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setRemoveItem:(uint64_t)item
{
  v4 = a2;
  if (item)
  {
    [(_ICLLCommandMessage *)item clearOneofValuesForCommand];
    *(item + 104) |= 1u;
    *(item + 24) = 3;
    objc_storeStrong((item + 88), a2);
  }
}

- (void)setMoveItem:(uint64_t)item
{
  v4 = a2;
  if (item)
  {
    [(_ICLLCommandMessage *)item clearOneofValuesForCommand];
    *(item + 104) |= 1u;
    *(item + 24) = 4;
    objc_storeStrong((item + 48), a2);
  }
}

- (void)setClientInfo:(uint64_t)info
{
  v4 = a2;
  if (info)
  {
    [(_ICLLCommandMessage *)info clearOneofValuesForCommand];
    *(info + 104) |= 1u;
    *(info + 24) = 8;
    objc_storeStrong((info + 16), a2);
  }
}

@end