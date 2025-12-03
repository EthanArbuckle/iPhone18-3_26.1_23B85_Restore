@interface _ICLLActionMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)clearOneofValuesForAction;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 148) & 2) == 0 || self->_action != *(equalCopy + 4))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 148) & 2) != 0)
  {
    goto LABEL_45;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 148) & 1) == 0 || self->_originatorId != *(equalCopy + 1))
    {
      goto LABEL_45;
    }
  }

  else if (*(equalCopy + 148))
  {
    goto LABEL_45;
  }

  playbackSync = self->_playbackSync;
  if (playbackSync | *(equalCopy + 12) && ![(_ICLLPlaybackSyncAction *)playbackSync isEqual:?])
  {
    goto LABEL_45;
  }

  addItems = self->_addItems;
  if (addItems | *(equalCopy + 3))
  {
    if (![(_ICLLAddQueueItemsAction *)addItems isEqual:?])
    {
      goto LABEL_45;
    }
  }

  removeItem = self->_removeItem;
  if (removeItem | *(equalCopy + 15))
  {
    if (![(_ICLLRemoveQueueItemAction *)removeItem isEqual:?])
    {
      goto LABEL_45;
    }
  }

  moveItem = self->_moveItem;
  if (moveItem | *(equalCopy + 8))
  {
    if (![(_ICLLMoveQueueItemAction *)moveItem isEqual:?])
    {
      goto LABEL_45;
    }
  }

  currentItemChange = self->_currentItemChange;
  if (currentItemChange | *(equalCopy + 5))
  {
    if (![(_ICLLCurrentItemChangeAction *)currentItemChange isEqual:?])
    {
      goto LABEL_45;
    }
  }

  reaction = self->_reaction;
  if (reaction | *(equalCopy + 14))
  {
    if (![(_ICLLReactionAction *)reaction isEqual:?])
    {
      goto LABEL_45;
    }
  }

  participantChange = self->_participantChange;
  if (participantChange | *(equalCopy + 10))
  {
    if (![(_ICLLParticipantChangeAction *)participantChange isEqual:?])
    {
      goto LABEL_45;
    }
  }

  serverNotice = self->_serverNotice;
  if (serverNotice | *(equalCopy + 17))
  {
    if (![(_ICLLServerNoticeAction *)serverNotice isEqual:?])
    {
      goto LABEL_45;
    }
  }

  clientInfo = self->_clientInfo;
  if (clientInfo | *(equalCopy + 4))
  {
    if (![(_ICLLClientInfoAction *)clientInfo isEqual:?])
    {
      goto LABEL_45;
    }
  }

  replaceQueueItems = self->_replaceQueueItems;
  if (replaceQueueItems | *(equalCopy + 16))
  {
    if (![(_ICLLReplaceQueueItemsAction *)replaceQueueItems isEqual:?])
    {
      goto LABEL_45;
    }
  }

  originatorUUID = self->_originatorUUID;
  if (originatorUUID | *(equalCopy + 9))
  {
    if (![(NSString *)originatorUUID isEqual:?])
    {
      goto LABEL_45;
    }
  }

  playNowQueueItems = self->_playNowQueueItems;
  if (playNowQueueItems | *(equalCopy + 11))
  {
    if (![(_ICLLPlayNowQueueItemsAction *)playNowQueueItems isEqual:?])
    {
      goto LABEL_45;
    }
  }

  currentItemTransition = self->_currentItemTransition;
  if (currentItemTransition | *(equalCopy + 6))
  {
    if (![(_ICLLCurrentItemTransitionAction *)currentItemTransition isEqual:?])
    {
      goto LABEL_45;
    }
  }

  queueSync = self->_queueSync;
  if (queueSync | *(equalCopy + 13))
  {
    if (![(_ICLLQueueSyncAction *)queueSync isEqual:?])
    {
      goto LABEL_45;
    }
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 148) & 4) == 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    v20 = 0;
    goto LABEL_46;
  }

  if ((*(equalCopy + 148) & 4) == 0)
  {
    goto LABEL_45;
  }

  if (self->_displayNotice)
  {
    if ((*(equalCopy + 144) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (*(equalCopy + 144))
  {
    goto LABEL_45;
  }

LABEL_42:
  displayMessage = self->_displayMessage;
  if (displayMessage | *(equalCopy + 7))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(_ICLLPlaybackSyncAction *)self->_playbackSync copyWithZone:zone];
  v9 = *(v6 + 96);
  *(v6 + 96) = v8;

  v10 = [(_ICLLAddQueueItemsAction *)self->_addItems copyWithZone:zone];
  v11 = *(v6 + 24);
  *(v6 + 24) = v10;

  v12 = [(_ICLLRemoveQueueItemAction *)self->_removeItem copyWithZone:zone];
  v13 = *(v6 + 120);
  *(v6 + 120) = v12;

  v14 = [(_ICLLMoveQueueItemAction *)self->_moveItem copyWithZone:zone];
  v15 = *(v6 + 64);
  *(v6 + 64) = v14;

  v16 = [(_ICLLCurrentItemChangeAction *)self->_currentItemChange copyWithZone:zone];
  v17 = *(v6 + 40);
  *(v6 + 40) = v16;

  v18 = [(_ICLLReactionAction *)self->_reaction copyWithZone:zone];
  v19 = *(v6 + 112);
  *(v6 + 112) = v18;

  v20 = [(_ICLLParticipantChangeAction *)self->_participantChange copyWithZone:zone];
  v21 = *(v6 + 80);
  *(v6 + 80) = v20;

  v22 = [(_ICLLServerNoticeAction *)self->_serverNotice copyWithZone:zone];
  v23 = *(v6 + 136);
  *(v6 + 136) = v22;

  v24 = [(_ICLLClientInfoAction *)self->_clientInfo copyWithZone:zone];
  v25 = *(v6 + 32);
  *(v6 + 32) = v24;

  v26 = [(_ICLLReplaceQueueItemsAction *)self->_replaceQueueItems copyWithZone:zone];
  v27 = *(v6 + 128);
  *(v6 + 128) = v26;

  v28 = [(NSString *)self->_originatorUUID copyWithZone:zone];
  v29 = *(v6 + 72);
  *(v6 + 72) = v28;

  v30 = [(_ICLLPlayNowQueueItemsAction *)self->_playNowQueueItems copyWithZone:zone];
  v31 = *(v6 + 88);
  *(v6 + 88) = v30;

  v32 = [(_ICLLCurrentItemTransitionAction *)self->_currentItemTransition copyWithZone:zone];
  v33 = *(v6 + 48);
  *(v6 + 48) = v32;

  v34 = [(_ICLLQueueSyncAction *)self->_queueSync copyWithZone:zone];
  v35 = *(v6 + 104);
  *(v6 + 104) = v34;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 144) = self->_displayNotice;
    *(v6 + 148) |= 4u;
  }

  v36 = [(_ICLLDisplayMessage *)self->_displayMessage copyWithZone:zone];
  v37 = *(v6 + 56);
  *(v6 + 56) = v36;

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v5;
  }

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

  if (self->_reaction)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_participantChange)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_serverNotice)
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

  if (self->_originatorUUID)
  {
    PBDataWriterWriteStringField();
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

  if (self->_queueSync)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_displayMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)clearOneofValuesForAction
{
  if (self)
  {
    *(self + 148) &= ~2u;
    *(self + 16) = 0;
    v2 = *(self + 96);
    *(self + 96) = 0;

    v3 = *(self + 24);
    *(self + 24) = 0;

    v4 = *(self + 120);
    *(self + 120) = 0;

    v5 = *(self + 64);
    *(self + 64) = 0;

    v6 = *(self + 40);
    *(self + 40) = 0;

    v7 = *(self + 112);
    *(self + 112) = 0;

    v8 = *(self + 80);
    *(self + 80) = 0;

    v9 = *(self + 136);
    *(self + 136) = 0;

    v10 = *(self + 32);
    *(self + 32) = 0;

    v11 = *(self + 128);
    *(self + 128) = 0;

    v12 = *(self + 88);
    *(self + 88) = 0;

    v13 = *(self + 48);
    *(self + 48) = 0;

    v14 = *(self + 104);
    *(self + 104) = 0;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_originatorId];
    [dictionary setObject:v4 forKey:@"originatorId"];
  }

  playbackSync = self->_playbackSync;
  if (playbackSync)
  {
    dictionaryRepresentation = [(_ICLLPlaybackSyncAction *)playbackSync dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"playbackSync"];
  }

  addItems = self->_addItems;
  if (addItems)
  {
    dictionaryRepresentation2 = [(_ICLLAddQueueItemsAction *)addItems dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"addItems"];
  }

  removeItem = self->_removeItem;
  if (removeItem)
  {
    dictionaryRepresentation3 = [(_ICLLRemoveQueueItemAction *)removeItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"removeItem"];
  }

  moveItem = self->_moveItem;
  if (moveItem)
  {
    dictionaryRepresentation4 = [(_ICLLMoveQueueItemAction *)moveItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"moveItem"];
  }

  currentItemChange = self->_currentItemChange;
  if (currentItemChange)
  {
    dictionaryRepresentation5 = [(_ICLLCurrentItemChangeAction *)currentItemChange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"currentItemChange"];
  }

  reaction = self->_reaction;
  if (reaction)
  {
    dictionaryRepresentation6 = [(_ICLLReactionAction *)reaction dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"reaction"];
  }

  participantChange = self->_participantChange;
  if (participantChange)
  {
    dictionaryRepresentation7 = [(_ICLLParticipantChangeAction *)participantChange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"participantChange"];
  }

  serverNotice = self->_serverNotice;
  if (serverNotice)
  {
    dictionaryRepresentation8 = [(_ICLLServerNoticeAction *)serverNotice dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"serverNotice"];
  }

  clientInfo = self->_clientInfo;
  if (clientInfo)
  {
    dictionaryRepresentation9 = [(_ICLLClientInfoAction *)clientInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation9 forKey:@"clientInfo"];
  }

  replaceQueueItems = self->_replaceQueueItems;
  if (replaceQueueItems)
  {
    dictionaryRepresentation10 = [(_ICLLReplaceQueueItemsAction *)replaceQueueItems dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation10 forKey:@"replaceQueueItems"];
  }

  playNowQueueItems = self->_playNowQueueItems;
  if (playNowQueueItems)
  {
    dictionaryRepresentation11 = [(_ICLLPlayNowQueueItemsAction *)playNowQueueItems dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation11 forKey:@"playNowQueueItems"];
  }

  currentItemTransition = self->_currentItemTransition;
  if (currentItemTransition)
  {
    dictionaryRepresentation12 = [(_ICLLCurrentItemTransitionAction *)currentItemTransition dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation12 forKey:@"currentItemTransition"];
  }

  queueSync = self->_queueSync;
  if (queueSync)
  {
    dictionaryRepresentation13 = [(_ICLLQueueSyncAction *)queueSync dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation13 forKey:@"queueSync"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithInt:self->_action];
    [dictionary setObject:v31 forKey:@"action"];
  }

  originatorUUID = self->_originatorUUID;
  if (originatorUUID)
  {
    [dictionary setObject:originatorUUID forKey:@"originatorUUID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_displayNotice];
    [dictionary setObject:v33 forKey:@"displayNotice"];
  }

  displayMessage = self->_displayMessage;
  if (displayMessage)
  {
    dictionaryRepresentation14 = [(_ICLLDisplayMessage *)displayMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation14 forKey:@"displayMessage"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLActionMessage;
  v4 = [(_ICLLActionMessage *)&v8 description];
  dictionaryRepresentation = [(_ICLLActionMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end