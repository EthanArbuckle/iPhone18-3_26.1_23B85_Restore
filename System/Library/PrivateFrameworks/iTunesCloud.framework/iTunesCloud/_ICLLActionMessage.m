@interface _ICLLActionMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)clearOneofValuesForAction;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLActionMessage

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v20 = 2654435761 * self->_action;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v19 = 2654435761 * self->_originatorId;
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_6:
  v18 = [(_ICLLPlaybackSyncAction *)self->_playbackSync hash];
  v17 = [(_ICLLAddQueueItemsAction *)self->_addItems hash];
  v16 = [(_ICLLRemoveQueueItemAction *)self->_removeItem hash];
  v15 = [(_ICLLMoveQueueItemAction *)self->_moveItem hash];
  v14 = [(_ICLLCurrentItemChangeAction *)self->_currentItemChange hash];
  v3 = [(_ICLLReactionAction *)self->_reaction hash];
  v4 = [(_ICLLParticipantChangeAction *)self->_participantChange hash];
  v5 = [(_ICLLServerNoticeAction *)self->_serverNotice hash];
  v6 = [(_ICLLClientInfoAction *)self->_clientInfo hash];
  v7 = [(_ICLLReplaceQueueItemsAction *)self->_replaceQueueItems hash];
  v8 = [(NSString *)self->_originatorUUID hash];
  v9 = [(_ICLLPlayNowQueueItemsAction *)self->_playNowQueueItems hash];
  v10 = [(_ICLLCurrentItemTransitionAction *)self->_currentItemTransition hash];
  v11 = [(_ICLLQueueSyncAction *)self->_queueSync hash];
  if ((*&self->_has & 4) != 0)
  {
    v12 = 2654435761 * self->_displayNotice;
  }

  else
  {
    v12 = 0;
  }

  return v19 ^ v20 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(_ICLLDisplayMessage *)self->_displayMessage hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 148) & 2) == 0 || self->_action != *(v4 + 4))
    {
      goto LABEL_45;
    }
  }

  else if ((*(v4 + 148) & 2) != 0)
  {
    goto LABEL_45;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 148) & 1) == 0 || self->_originatorId != *(v4 + 1))
    {
      goto LABEL_45;
    }
  }

  else if (*(v4 + 148))
  {
    goto LABEL_45;
  }

  playbackSync = self->_playbackSync;
  if (playbackSync | *(v4 + 12) && ![(_ICLLPlaybackSyncAction *)playbackSync isEqual:?])
  {
    goto LABEL_45;
  }

  addItems = self->_addItems;
  if (addItems | *(v4 + 3))
  {
    if (![(_ICLLAddQueueItemsAction *)addItems isEqual:?])
    {
      goto LABEL_45;
    }
  }

  removeItem = self->_removeItem;
  if (removeItem | *(v4 + 15))
  {
    if (![(_ICLLRemoveQueueItemAction *)removeItem isEqual:?])
    {
      goto LABEL_45;
    }
  }

  moveItem = self->_moveItem;
  if (moveItem | *(v4 + 8))
  {
    if (![(_ICLLMoveQueueItemAction *)moveItem isEqual:?])
    {
      goto LABEL_45;
    }
  }

  currentItemChange = self->_currentItemChange;
  if (currentItemChange | *(v4 + 5))
  {
    if (![(_ICLLCurrentItemChangeAction *)currentItemChange isEqual:?])
    {
      goto LABEL_45;
    }
  }

  reaction = self->_reaction;
  if (reaction | *(v4 + 14))
  {
    if (![(_ICLLReactionAction *)reaction isEqual:?])
    {
      goto LABEL_45;
    }
  }

  participantChange = self->_participantChange;
  if (participantChange | *(v4 + 10))
  {
    if (![(_ICLLParticipantChangeAction *)participantChange isEqual:?])
    {
      goto LABEL_45;
    }
  }

  serverNotice = self->_serverNotice;
  if (serverNotice | *(v4 + 17))
  {
    if (![(_ICLLServerNoticeAction *)serverNotice isEqual:?])
    {
      goto LABEL_45;
    }
  }

  clientInfo = self->_clientInfo;
  if (clientInfo | *(v4 + 4))
  {
    if (![(_ICLLClientInfoAction *)clientInfo isEqual:?])
    {
      goto LABEL_45;
    }
  }

  replaceQueueItems = self->_replaceQueueItems;
  if (replaceQueueItems | *(v4 + 16))
  {
    if (![(_ICLLReplaceQueueItemsAction *)replaceQueueItems isEqual:?])
    {
      goto LABEL_45;
    }
  }

  originatorUUID = self->_originatorUUID;
  if (originatorUUID | *(v4 + 9))
  {
    if (![(NSString *)originatorUUID isEqual:?])
    {
      goto LABEL_45;
    }
  }

  playNowQueueItems = self->_playNowQueueItems;
  if (playNowQueueItems | *(v4 + 11))
  {
    if (![(_ICLLPlayNowQueueItemsAction *)playNowQueueItems isEqual:?])
    {
      goto LABEL_45;
    }
  }

  currentItemTransition = self->_currentItemTransition;
  if (currentItemTransition | *(v4 + 6))
  {
    if (![(_ICLLCurrentItemTransitionAction *)currentItemTransition isEqual:?])
    {
      goto LABEL_45;
    }
  }

  queueSync = self->_queueSync;
  if (queueSync | *(v4 + 13))
  {
    if (![(_ICLLQueueSyncAction *)queueSync isEqual:?])
    {
      goto LABEL_45;
    }
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 148) & 4) == 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    v20 = 0;
    goto LABEL_46;
  }

  if ((*(v4 + 148) & 4) == 0)
  {
    goto LABEL_45;
  }

  if (self->_displayNotice)
  {
    if ((*(v4 + 144) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (*(v4 + 144))
  {
    goto LABEL_45;
  }

LABEL_42:
  displayMessage = self->_displayMessage;
  if (displayMessage | *(v4 + 7))
  {
    v20 = [(_ICLLDisplayMessage *)displayMessage isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_46:

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_action;
    *(v5 + 148) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_originatorId;
    *(v5 + 148) |= 1u;
  }

  v8 = [(_ICLLPlaybackSyncAction *)self->_playbackSync copyWithZone:a3];
  v9 = *(v6 + 96);
  *(v6 + 96) = v8;

  v10 = [(_ICLLAddQueueItemsAction *)self->_addItems copyWithZone:a3];
  v11 = *(v6 + 24);
  *(v6 + 24) = v10;

  v12 = [(_ICLLRemoveQueueItemAction *)self->_removeItem copyWithZone:a3];
  v13 = *(v6 + 120);
  *(v6 + 120) = v12;

  v14 = [(_ICLLMoveQueueItemAction *)self->_moveItem copyWithZone:a3];
  v15 = *(v6 + 64);
  *(v6 + 64) = v14;

  v16 = [(_ICLLCurrentItemChangeAction *)self->_currentItemChange copyWithZone:a3];
  v17 = *(v6 + 40);
  *(v6 + 40) = v16;

  v18 = [(_ICLLReactionAction *)self->_reaction copyWithZone:a3];
  v19 = *(v6 + 112);
  *(v6 + 112) = v18;

  v20 = [(_ICLLParticipantChangeAction *)self->_participantChange copyWithZone:a3];
  v21 = *(v6 + 80);
  *(v6 + 80) = v20;

  v22 = [(_ICLLServerNoticeAction *)self->_serverNotice copyWithZone:a3];
  v23 = *(v6 + 136);
  *(v6 + 136) = v22;

  v24 = [(_ICLLClientInfoAction *)self->_clientInfo copyWithZone:a3];
  v25 = *(v6 + 32);
  *(v6 + 32) = v24;

  v26 = [(_ICLLReplaceQueueItemsAction *)self->_replaceQueueItems copyWithZone:a3];
  v27 = *(v6 + 128);
  *(v6 + 128) = v26;

  v28 = [(NSString *)self->_originatorUUID copyWithZone:a3];
  v29 = *(v6 + 72);
  *(v6 + 72) = v28;

  v30 = [(_ICLLPlayNowQueueItemsAction *)self->_playNowQueueItems copyWithZone:a3];
  v31 = *(v6 + 88);
  *(v6 + 88) = v30;

  v32 = [(_ICLLCurrentItemTransitionAction *)self->_currentItemTransition copyWithZone:a3];
  v33 = *(v6 + 48);
  *(v6 + 48) = v32;

  v34 = [(_ICLLQueueSyncAction *)self->_queueSync copyWithZone:a3];
  v35 = *(v6 + 104);
  *(v6 + 104) = v34;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 144) = self->_displayNotice;
    *(v6 + 148) |= 4u;
  }

  v36 = [(_ICLLDisplayMessage *)self->_displayMessage copyWithZone:a3];
  v37 = *(v6 + 56);
  *(v6 + 56) = v36;

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }

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

  if (self->_reaction)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_participantChange)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_serverNotice)
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

  if (self->_originatorUUID)
  {
    PBDataWriterWriteStringField();
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

  if (self->_queueSync)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v5;
  }

  if (self->_displayMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)clearOneofValuesForAction
{
  if (a1)
  {
    *(a1 + 148) &= ~2u;
    *(a1 + 16) = 0;
    v2 = *(a1 + 96);
    *(a1 + 96) = 0;

    v3 = *(a1 + 24);
    *(a1 + 24) = 0;

    v4 = *(a1 + 120);
    *(a1 + 120) = 0;

    v5 = *(a1 + 64);
    *(a1 + 64) = 0;

    v6 = *(a1 + 40);
    *(a1 + 40) = 0;

    v7 = *(a1 + 112);
    *(a1 + 112) = 0;

    v8 = *(a1 + 80);
    *(a1 + 80) = 0;

    v9 = *(a1 + 136);
    *(a1 + 136) = 0;

    v10 = *(a1 + 32);
    *(a1 + 32) = 0;

    v11 = *(a1 + 128);
    *(a1 + 128) = 0;

    v12 = *(a1 + 88);
    *(a1 + 88) = 0;

    v13 = *(a1 + 48);
    *(a1 + 48) = 0;

    v14 = *(a1 + 104);
    *(a1 + 104) = 0;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_originatorId];
    [v3 setObject:v4 forKey:@"originatorId"];
  }

  playbackSync = self->_playbackSync;
  if (playbackSync)
  {
    v6 = [(_ICLLPlaybackSyncAction *)playbackSync dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"playbackSync"];
  }

  addItems = self->_addItems;
  if (addItems)
  {
    v8 = [(_ICLLAddQueueItemsAction *)addItems dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"addItems"];
  }

  removeItem = self->_removeItem;
  if (removeItem)
  {
    v10 = [(_ICLLRemoveQueueItemAction *)removeItem dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"removeItem"];
  }

  moveItem = self->_moveItem;
  if (moveItem)
  {
    v12 = [(_ICLLMoveQueueItemAction *)moveItem dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"moveItem"];
  }

  currentItemChange = self->_currentItemChange;
  if (currentItemChange)
  {
    v14 = [(_ICLLCurrentItemChangeAction *)currentItemChange dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"currentItemChange"];
  }

  reaction = self->_reaction;
  if (reaction)
  {
    v16 = [(_ICLLReactionAction *)reaction dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"reaction"];
  }

  participantChange = self->_participantChange;
  if (participantChange)
  {
    v18 = [(_ICLLParticipantChangeAction *)participantChange dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"participantChange"];
  }

  serverNotice = self->_serverNotice;
  if (serverNotice)
  {
    v20 = [(_ICLLServerNoticeAction *)serverNotice dictionaryRepresentation];
    [v3 setObject:v20 forKey:@"serverNotice"];
  }

  clientInfo = self->_clientInfo;
  if (clientInfo)
  {
    v22 = [(_ICLLClientInfoAction *)clientInfo dictionaryRepresentation];
    [v3 setObject:v22 forKey:@"clientInfo"];
  }

  replaceQueueItems = self->_replaceQueueItems;
  if (replaceQueueItems)
  {
    v24 = [(_ICLLReplaceQueueItemsAction *)replaceQueueItems dictionaryRepresentation];
    [v3 setObject:v24 forKey:@"replaceQueueItems"];
  }

  playNowQueueItems = self->_playNowQueueItems;
  if (playNowQueueItems)
  {
    v26 = [(_ICLLPlayNowQueueItemsAction *)playNowQueueItems dictionaryRepresentation];
    [v3 setObject:v26 forKey:@"playNowQueueItems"];
  }

  currentItemTransition = self->_currentItemTransition;
  if (currentItemTransition)
  {
    v28 = [(_ICLLCurrentItemTransitionAction *)currentItemTransition dictionaryRepresentation];
    [v3 setObject:v28 forKey:@"currentItemTransition"];
  }

  queueSync = self->_queueSync;
  if (queueSync)
  {
    v30 = [(_ICLLQueueSyncAction *)queueSync dictionaryRepresentation];
    [v3 setObject:v30 forKey:@"queueSync"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithInt:self->_action];
    [v3 setObject:v31 forKey:@"action"];
  }

  originatorUUID = self->_originatorUUID;
  if (originatorUUID)
  {
    [v3 setObject:originatorUUID forKey:@"originatorUUID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_displayNotice];
    [v3 setObject:v33 forKey:@"displayNotice"];
  }

  displayMessage = self->_displayMessage;
  if (displayMessage)
  {
    v35 = [(_ICLLDisplayMessage *)displayMessage dictionaryRepresentation];
    [v3 setObject:v35 forKey:@"displayMessage"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLActionMessage;
  v4 = [(_ICLLActionMessage *)&v8 description];
  v5 = [(_ICLLActionMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end