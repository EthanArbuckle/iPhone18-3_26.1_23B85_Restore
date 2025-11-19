@interface _ICLLCommandMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)clearOneofValuesForCommand;
- (void)setClientInfo:(uint64_t)a1;
- (void)setMoveItem:(uint64_t)a1;
- (void)setRemoveItem:(uint64_t)a1;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 104) & 1) == 0 || self->_command != *(v4 + 6))
    {
      goto LABEL_29;
    }
  }

  else if (*(v4 + 104))
  {
LABEL_29:
    v16 = 0;
    goto LABEL_30;
  }

  playbackSync = self->_playbackSync;
  if (playbackSync | *(v4 + 9) && ![(_ICLLPlaybackSyncCommand *)playbackSync isEqual:?])
  {
    goto LABEL_29;
  }

  addItems = self->_addItems;
  if (addItems | *(v4 + 1))
  {
    if (![(_ICLLAddQueueItemsCommand *)addItems isEqual:?])
    {
      goto LABEL_29;
    }
  }

  removeItem = self->_removeItem;
  if (removeItem | *(v4 + 11))
  {
    if (![(_ICLLRemoveQueueItemCommand *)removeItem isEqual:?])
    {
      goto LABEL_29;
    }
  }

  moveItem = self->_moveItem;
  if (moveItem | *(v4 + 6))
  {
    if (![(_ICLLMoveQueueItemCommand *)moveItem isEqual:?])
    {
      goto LABEL_29;
    }
  }

  currentItemChange = self->_currentItemChange;
  if (currentItemChange | *(v4 + 4))
  {
    if (![(_ICLLCurrentItemChangeCommand *)currentItemChange isEqual:?])
    {
      goto LABEL_29;
    }
  }

  playbackControlSettings = self->_playbackControlSettings;
  if (playbackControlSettings | *(v4 + 8))
  {
    if (![(_ICLLPlaybackControlSettingsCommand *)playbackControlSettings isEqual:?])
    {
      goto LABEL_29;
    }
  }

  reaction = self->_reaction;
  if (reaction | *(v4 + 10))
  {
    if (![(_ICLLReactionCommand *)reaction isEqual:?])
    {
      goto LABEL_29;
    }
  }

  clientInfo = self->_clientInfo;
  if (clientInfo | *(v4 + 2))
  {
    if (![(_ICLLClientInfoCommand *)clientInfo isEqual:?])
    {
      goto LABEL_29;
    }
  }

  replaceQueueItems = self->_replaceQueueItems;
  if (replaceQueueItems | *(v4 + 12))
  {
    if (![(_ICLLReplaceQueueItemsCommand *)replaceQueueItems isEqual:?])
    {
      goto LABEL_29;
    }
  }

  playNowQueueItems = self->_playNowQueueItems;
  if (playNowQueueItems | *(v4 + 7))
  {
    if (![(_ICLLPlayNowQueueItemsCommand *)playNowQueueItems isEqual:?])
    {
      goto LABEL_29;
    }
  }

  currentItemTransition = self->_currentItemTransition;
  if (currentItemTransition | *(v4 + 5))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_command;
    *(v5 + 104) |= 1u;
  }

  v7 = [(_ICLLPlaybackSyncCommand *)self->_playbackSync copyWithZone:a3];
  v8 = v6[9];
  v6[9] = v7;

  v9 = [(_ICLLAddQueueItemsCommand *)self->_addItems copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(_ICLLRemoveQueueItemCommand *)self->_removeItem copyWithZone:a3];
  v12 = v6[11];
  v6[11] = v11;

  v13 = [(_ICLLMoveQueueItemCommand *)self->_moveItem copyWithZone:a3];
  v14 = v6[6];
  v6[6] = v13;

  v15 = [(_ICLLCurrentItemChangeCommand *)self->_currentItemChange copyWithZone:a3];
  v16 = v6[4];
  v6[4] = v15;

  v17 = [(_ICLLPlaybackControlSettingsCommand *)self->_playbackControlSettings copyWithZone:a3];
  v18 = v6[8];
  v6[8] = v17;

  v19 = [(_ICLLReactionCommand *)self->_reaction copyWithZone:a3];
  v20 = v6[10];
  v6[10] = v19;

  v21 = [(_ICLLClientInfoCommand *)self->_clientInfo copyWithZone:a3];
  v22 = v6[2];
  v6[2] = v21;

  v23 = [(_ICLLReplaceQueueItemsCommand *)self->_replaceQueueItems copyWithZone:a3];
  v24 = v6[12];
  v6[12] = v23;

  v25 = [(_ICLLPlayNowQueueItemsCommand *)self->_playNowQueueItems copyWithZone:a3];
  v26 = v6[7];
  v6[7] = v25;

  v27 = [(_ICLLCurrentItemTransitionCommand *)self->_currentItemTransition copyWithZone:a3];
  v28 = v6[5];
  v6[5] = v27;

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_playbackSync)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_addItems)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_removeItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_moveItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_currentItemChange)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_playbackControlSettings)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_reaction)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_clientInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_replaceQueueItems)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_playNowQueueItems)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_currentItemTransition)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)clearOneofValuesForCommand
{
  if (a1)
  {
    *(a1 + 104) &= ~1u;
    *(a1 + 24) = 0;
    v2 = *(a1 + 72);
    *(a1 + 72) = 0;

    v3 = *(a1 + 8);
    *(a1 + 8) = 0;

    v4 = *(a1 + 88);
    *(a1 + 88) = 0;

    v5 = *(a1 + 48);
    *(a1 + 48) = 0;

    v6 = *(a1 + 32);
    *(a1 + 32) = 0;

    v7 = *(a1 + 64);
    *(a1 + 64) = 0;

    v8 = *(a1 + 80);
    *(a1 + 80) = 0;

    v9 = *(a1 + 16);
    *(a1 + 16) = 0;

    v10 = *(a1 + 96);
    *(a1 + 96) = 0;

    v11 = *(a1 + 56);
    *(a1 + 56) = 0;

    v12 = *(a1 + 40);
    *(a1 + 40) = 0;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  playbackSync = self->_playbackSync;
  if (playbackSync)
  {
    v5 = [(_ICLLPlaybackSyncCommand *)playbackSync dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"playbackSync"];
  }

  addItems = self->_addItems;
  if (addItems)
  {
    v7 = [(_ICLLAddQueueItemsCommand *)addItems dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"addItems"];
  }

  removeItem = self->_removeItem;
  if (removeItem)
  {
    v9 = [(_ICLLRemoveQueueItemCommand *)removeItem dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"removeItem"];
  }

  moveItem = self->_moveItem;
  if (moveItem)
  {
    v11 = [(_ICLLMoveQueueItemCommand *)moveItem dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"moveItem"];
  }

  currentItemChange = self->_currentItemChange;
  if (currentItemChange)
  {
    v13 = [(_ICLLCurrentItemChangeCommand *)currentItemChange dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"currentItemChange"];
  }

  playbackControlSettings = self->_playbackControlSettings;
  if (playbackControlSettings)
  {
    v15 = [(_ICLLPlaybackControlSettingsCommand *)playbackControlSettings dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"playbackControlSettings"];
  }

  reaction = self->_reaction;
  if (reaction)
  {
    v17 = [(_ICLLReactionCommand *)reaction dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"reaction"];
  }

  clientInfo = self->_clientInfo;
  if (clientInfo)
  {
    v19 = [(_ICLLClientInfoCommand *)clientInfo dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"clientInfo"];
  }

  replaceQueueItems = self->_replaceQueueItems;
  if (replaceQueueItems)
  {
    v21 = [(_ICLLReplaceQueueItemsCommand *)replaceQueueItems dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"replaceQueueItems"];
  }

  playNowQueueItems = self->_playNowQueueItems;
  if (playNowQueueItems)
  {
    v23 = [(_ICLLPlayNowQueueItemsCommand *)playNowQueueItems dictionaryRepresentation];
    [v3 setObject:v23 forKey:@"playNowQueueItems"];
  }

  currentItemTransition = self->_currentItemTransition;
  if (currentItemTransition)
  {
    v25 = [(_ICLLCurrentItemTransitionCommand *)currentItemTransition dictionaryRepresentation];
    [v3 setObject:v25 forKey:@"currentItemTransition"];
  }

  if (*&self->_has)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInt:self->_command];
    [v3 setObject:v26 forKey:@"command"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLCommandMessage;
  v4 = [(_ICLLCommandMessage *)&v8 description];
  v5 = [(_ICLLCommandMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setRemoveItem:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
    *(a1 + 104) |= 1u;
    *(a1 + 24) = 3;
    objc_storeStrong((a1 + 88), a2);
  }
}

- (void)setMoveItem:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
    *(a1 + 104) |= 1u;
    *(a1 + 24) = 4;
    objc_storeStrong((a1 + 48), a2);
  }
}

- (void)setClientInfo:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
    *(a1 + 104) |= 1u;
    *(a1 + 24) = 8;
    objc_storeStrong((a1 + 16), a2);
  }
}

@end