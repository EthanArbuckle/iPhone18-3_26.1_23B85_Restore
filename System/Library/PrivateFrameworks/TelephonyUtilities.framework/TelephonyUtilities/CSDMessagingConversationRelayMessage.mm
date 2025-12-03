@interface CSDMessagingConversationRelayMessage
- (BOOL)isEqual:(id)equal;
- (CSDMessagingConversationRelayMessage)initWithConversation:(id)conversation;
- (CSDMessagingConversationRelayMessage)initWithRemoteMembers:(id)members;
- (NSSet)tuConversationMembers;
- (NSSet)tuConversationParticipants;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAvMode:(id)mode;
- (int)StringAsState:(id)state;
- (int)StringAsType:(id)type;
- (int)avMode;
- (int)state;
- (int)type;
- (int64_t)relayType;
- (int64_t)tuState;
- (unint64_t)hash;
- (unint64_t)tuAVMode;
- (void)addActiveParticipants:(id)participants;
- (void)addRemoteMembers:(id)members;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setConversationMembers:(id)members;
- (void)setHasLocallyCreated:(BOOL)created;
- (void)setHasState:(BOOL)state;
- (void)setHasType:(BOOL)type;
- (void)setHasVersion:(BOOL)version;
- (void)setStateforTUState:(int64_t)state;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationRelayMessage

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ConversationCreated"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ConversationChanged"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ConversationRemoved"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)state
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_state;
  }

  else
  {
    return 0;
  }
}

- (void)setHasState:(BOOL)state
{
  if (state)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"ConversationStateWaiting"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"ConversationStatePreparing"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"ConversationStateJoining"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"ConversationStateJoined"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"ConversationStateLeaving"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLocallyCreated:(BOOL)created
{
  if (created)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addRemoteMembers:(id)members
{
  membersCopy = members;
  remoteMembers = self->_remoteMembers;
  v8 = membersCopy;
  if (!remoteMembers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_remoteMembers;
    self->_remoteMembers = v6;

    membersCopy = v8;
    remoteMembers = self->_remoteMembers;
  }

  [(NSMutableArray *)remoteMembers addObject:membersCopy];
}

- (void)addActiveParticipants:(id)participants
{
  participantsCopy = participants;
  activeParticipants = self->_activeParticipants;
  v8 = participantsCopy;
  if (!activeParticipants)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_activeParticipants;
    self->_activeParticipants = v6;

    participantsCopy = v8;
    activeParticipants = self->_activeParticipants;
  }

  [(NSMutableArray *)activeParticipants addObject:participantsCopy];
}

- (int)avMode
{
  if (*&self->_has)
  {
    return self->_avMode;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAvMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Audio"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Video"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationRelayMessage;
  v3 = [(CSDMessagingConversationRelayMessage *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingConversationRelayMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  type = self->_type;
  if (type >= 3)
  {
    v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v7 = off_10061C560[type];
  }

  [v3 setObject:v7 forKey:@"type"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    state = self->_state;
    if (state >= 5)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_state];
    }

    else
    {
      v9 = off_10061C578[state];
    }

    [v3 setObject:v9 forKey:@"state"];
  }

LABEL_14:
  uUIDString = self->_uUIDString;
  if (uUIDString)
  {
    [v3 setObject:uUIDString forKey:@"UUIDString"];
  }

  groupUUIDString = self->_groupUUIDString;
  if (groupUUIDString)
  {
    [v3 setObject:groupUUIDString forKey:@"groupUUIDString"];
  }

  messagesGroupUUIDString = self->_messagesGroupUUIDString;
  if (messagesGroupUUIDString)
  {
    [v3 setObject:messagesGroupUUIDString forKey:@"messagesGroupUUIDString"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v13 = [NSNumber numberWithBool:self->_locallyCreated];
    [v3 setObject:v13 forKey:@"locallyCreated"];
  }

  initiator = self->_initiator;
  if (initiator)
  {
    dictionaryRepresentation = [(CSDMessagingHandle *)initiator dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"initiator"];
  }

  localMember = self->_localMember;
  if (localMember)
  {
    dictionaryRepresentation2 = [(CSDMessagingConversationMember *)localMember dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"localMember"];
  }

  if ([(NSMutableArray *)self->_remoteMembers count])
  {
    v18 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_remoteMembers, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = self->_remoteMembers;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v42;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v42 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
          [v18 addObject:dictionaryRepresentation3];
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKey:@"remoteMembers"];
  }

  if ([(NSMutableArray *)self->_activeParticipants count])
  {
    v25 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_activeParticipants, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v26 = self->_activeParticipants;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v38;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v38 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation4 = [*(*(&v37 + 1) + 8 * j) dictionaryRepresentation];
          [v25 addObject:dictionaryRepresentation4];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKey:@"activeParticipants"];
  }

  if (*&self->_has)
  {
    avMode = self->_avMode;
    if (avMode >= 3)
    {
      v33 = [NSString stringWithFormat:@"(unknown: %i)", self->_avMode];
    }

    else
    {
      v33 = off_10061C5A0[avMode];
    }

    [v3 setObject:v33 forKey:@"avMode"];
  }

  reportData = self->_reportData;
  if (reportData)
  {
    dictionaryRepresentation5 = [(CSDMessagingConversationReport *)reportData dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation5 forKey:@"reportData"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  type = self->_type;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    state = self->_state;
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  if (self->_uUIDString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_groupUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messagesGroupUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    locallyCreated = self->_locallyCreated;
    PBDataWriterWriteBOOLField();
  }

  if (self->_initiator)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_localMember)
  {
    PBDataWriterWriteSubmessage();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_remoteMembers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_activeParticipants;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  if (*&self->_has)
  {
    avMode = self->_avMode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_reportData)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[22] = self->_version;
    *(toCopy + 96) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[19] = self->_type;
  *(toCopy + 96) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    toCopy[18] = self->_state;
    *(toCopy + 96) |= 2u;
  }

LABEL_5:
  v15 = toCopy;
  if (self->_uUIDString)
  {
    [toCopy setUUIDString:?];
    toCopy = v15;
  }

  if (self->_groupUUIDString)
  {
    [v15 setGroupUUIDString:?];
    toCopy = v15;
  }

  if (self->_messagesGroupUUIDString)
  {
    [v15 setMessagesGroupUUIDString:?];
    toCopy = v15;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(toCopy + 92) = self->_locallyCreated;
    *(toCopy + 96) |= 0x10u;
  }

  if (self->_initiator)
  {
    [v15 setInitiator:?];
  }

  if (self->_localMember)
  {
    [v15 setLocalMember:?];
  }

  if ([(CSDMessagingConversationRelayMessage *)self remoteMembersCount])
  {
    [v15 clearRemoteMembers];
    remoteMembersCount = [(CSDMessagingConversationRelayMessage *)self remoteMembersCount];
    if (remoteMembersCount)
    {
      v7 = remoteMembersCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CSDMessagingConversationRelayMessage *)self remoteMembersAtIndex:i];
        [v15 addRemoteMembers:v9];
      }
    }
  }

  if ([(CSDMessagingConversationRelayMessage *)self activeParticipantsCount])
  {
    [v15 clearActiveParticipants];
    activeParticipantsCount = [(CSDMessagingConversationRelayMessage *)self activeParticipantsCount];
    if (activeParticipantsCount)
    {
      v11 = activeParticipantsCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(CSDMessagingConversationRelayMessage *)self activeParticipantsAtIndex:j];
        [v15 addActiveParticipants:v13];
      }
    }
  }

  v14 = v15;
  if (*&self->_has)
  {
    v15[4] = self->_avMode;
    *(v15 + 96) |= 1u;
  }

  if (self->_reportData)
  {
    [v15 setReportData:?];
    v14 = v15;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5[22] = self->_version;
    *(v5 + 96) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v5[19] = self->_type;
  *(v5 + 96) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5[18] = self->_state;
    *(v5 + 96) |= 2u;
  }

LABEL_5:
  v8 = [(NSString *)self->_uUIDString copyWithZone:zone];
  v9 = v6[10];
  v6[10] = v8;

  v10 = [(NSString *)self->_groupUUIDString copyWithZone:zone];
  v11 = v6[3];
  v6[3] = v10;

  v12 = [(NSString *)self->_messagesGroupUUIDString copyWithZone:zone];
  v13 = v6[6];
  v6[6] = v12;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 92) = self->_locallyCreated;
    *(v6 + 96) |= 0x10u;
  }

  v14 = [(CSDMessagingHandle *)self->_initiator copyWithZone:zone];
  v15 = v6[4];
  v6[4] = v14;

  v16 = [(CSDMessagingConversationMember *)self->_localMember copyWithZone:zone];
  v17 = v6[5];
  v6[5] = v16;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = self->_remoteMembers;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v38;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v37 + 1) + 8 * i) copyWithZone:zone];
        [v6 addRemoteMembers:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v20);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = self->_activeParticipants;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v34;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v33 + 1) + 8 * j) copyWithZone:{zone, v33}];
        [v6 addActiveParticipants:v29];
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v26);
  }

  if (*&self->_has)
  {
    *(v6 + 4) = self->_avMode;
    *(v6 + 96) |= 1u;
  }

  v30 = [(CSDMessagingConversationReport *)self->_reportData copyWithZone:zone, v33];
  v31 = v6[8];
  v6[8] = v30;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = *(equalCopy + 96);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 96) & 8) == 0 || self->_version != *(equalCopy + 22))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 96) & 8) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 96) & 4) == 0 || self->_type != *(equalCopy + 19))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 96) & 4) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 96) & 2) == 0 || self->_state != *(equalCopy + 18))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 96) & 2) != 0)
  {
    goto LABEL_37;
  }

  uUIDString = self->_uUIDString;
  if (uUIDString | *(equalCopy + 10) && ![(NSString *)uUIDString isEqual:?])
  {
    goto LABEL_37;
  }

  groupUUIDString = self->_groupUUIDString;
  if (groupUUIDString | *(equalCopy + 3))
  {
    if (![(NSString *)groupUUIDString isEqual:?])
    {
      goto LABEL_37;
    }
  }

  messagesGroupUUIDString = self->_messagesGroupUUIDString;
  if (messagesGroupUUIDString | *(equalCopy + 6))
  {
    if (![(NSString *)messagesGroupUUIDString isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v9 = *(equalCopy + 96);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 96) & 0x10) == 0)
    {
      goto LABEL_37;
    }

    v17 = *(equalCopy + 92);
    if (self->_locallyCreated)
    {
      if ((*(equalCopy + 92) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 92))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 96) & 0x10) != 0)
  {
    goto LABEL_37;
  }

  initiator = self->_initiator;
  if (initiator | *(equalCopy + 4) && ![(CSDMessagingHandle *)initiator isEqual:?])
  {
    goto LABEL_37;
  }

  localMember = self->_localMember;
  if (localMember | *(equalCopy + 5))
  {
    if (![(CSDMessagingConversationMember *)localMember isEqual:?])
    {
      goto LABEL_37;
    }
  }

  remoteMembers = self->_remoteMembers;
  if (remoteMembers | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)remoteMembers isEqual:?])
    {
      goto LABEL_37;
    }
  }

  activeParticipants = self->_activeParticipants;
  if (activeParticipants | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)activeParticipants isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v14 = *(equalCopy + 96);
  if ((*&self->_has & 1) == 0)
  {
    if ((*(equalCopy + 96) & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_37:
    v15 = 0;
    goto LABEL_38;
  }

  if ((*(equalCopy + 96) & 1) == 0 || self->_avMode != *(equalCopy + 4))
  {
    goto LABEL_37;
  }

LABEL_46:
  reportData = self->_reportData;
  if (reportData | *(equalCopy + 8))
  {
    v15 = [(CSDMessagingConversationReport *)reportData isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_38:

  return v15;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) == 0)
  {
    v15 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v15 = 2654435761 * self->_version;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = 2654435761 * self->_type;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v13 = 2654435761 * self->_state;
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:
  v3 = [(NSString *)self->_uUIDString hash];
  v4 = [(NSString *)self->_groupUUIDString hash];
  v5 = [(NSString *)self->_messagesGroupUUIDString hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v6 = 2654435761 * self->_locallyCreated;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CSDMessagingHandle *)self->_initiator hash];
  v8 = [(CSDMessagingConversationMember *)self->_localMember hash];
  v9 = [(NSMutableArray *)self->_remoteMembers hash];
  v10 = [(NSMutableArray *)self->_activeParticipants hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_avMode;
  }

  else
  {
    v11 = 0;
  }

  return v14 ^ v15 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(CSDMessagingConversationReport *)self->_reportData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 96);
  if ((v6 & 8) != 0)
  {
    self->_version = *(fromCopy + 22);
    *&self->_has |= 8u;
    v6 = *(fromCopy + 96);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 96) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_type = *(fromCopy + 19);
  *&self->_has |= 4u;
  if ((*(fromCopy + 96) & 2) != 0)
  {
LABEL_4:
    self->_state = *(fromCopy + 18);
    *&self->_has |= 2u;
  }

LABEL_5:
  if (*(fromCopy + 10))
  {
    [(CSDMessagingConversationRelayMessage *)self setUUIDString:?];
  }

  if (*(v5 + 3))
  {
    [(CSDMessagingConversationRelayMessage *)self setGroupUUIDString:?];
  }

  if (*(v5 + 6))
  {
    [(CSDMessagingConversationRelayMessage *)self setMessagesGroupUUIDString:?];
  }

  if ((*(v5 + 96) & 0x10) != 0)
  {
    self->_locallyCreated = *(v5 + 92);
    *&self->_has |= 0x10u;
  }

  initiator = self->_initiator;
  v8 = *(v5 + 4);
  if (initiator)
  {
    if (v8)
    {
      [(CSDMessagingHandle *)initiator mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(CSDMessagingConversationRelayMessage *)self setInitiator:?];
  }

  localMember = self->_localMember;
  v10 = *(v5 + 5);
  if (localMember)
  {
    if (v10)
    {
      [(CSDMessagingConversationMember *)localMember mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(CSDMessagingConversationRelayMessage *)self setLocalMember:?];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = *(v5 + 7);
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(CSDMessagingConversationRelayMessage *)self addRemoteMembers:*(*(&v27 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v13);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = *(v5 + 1);
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(CSDMessagingConversationRelayMessage *)self addActiveParticipants:*(*(&v23 + 1) + 8 * j), v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  if (*(v5 + 96))
  {
    self->_avMode = *(v5 + 4);
    *&self->_has |= 1u;
  }

  reportData = self->_reportData;
  v22 = *(v5 + 8);
  if (reportData)
  {
    if (v22)
    {
      [(CSDMessagingConversationReport *)reportData mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(CSDMessagingConversationRelayMessage *)self setReportData:?];
  }
}

- (CSDMessagingConversationRelayMessage)initWithConversation:(id)conversation
{
  conversationCopy = conversation;
  remoteMembers = [conversationCopy remoteMembers];
  v6 = [(CSDMessagingConversationRelayMessage *)self initWithRemoteMembers:remoteMembers];

  -[CSDMessagingConversationRelayMessage setState:](v6, "setState:", [conversationCopy state]);
  uUID = [conversationCopy UUID];
  uUIDString = [uUID UUIDString];
  [(CSDMessagingConversationRelayMessage *)v6 setUUIDString:uUIDString];

  groupUUID = [conversationCopy groupUUID];
  uUIDString2 = [groupUUID UUIDString];
  [(CSDMessagingConversationRelayMessage *)v6 setGroupUUIDString:uUIDString2];

  messagesGroupUUID = [conversationCopy messagesGroupUUID];
  uUIDString3 = [messagesGroupUUID UUIDString];
  [(CSDMessagingConversationRelayMessage *)v6 setMessagesGroupUUIDString:uUIDString3];

  -[CSDMessagingConversationRelayMessage setLocallyCreated:](v6, "setLocallyCreated:", [conversationCopy isLocallyCreated]);
  initiator = [conversationCopy initiator];
  v14 = [CSDMessagingHandle handleWithTUHandle:initiator];
  [(CSDMessagingConversationRelayMessage *)v6 setInitiator:v14];

  v15 = [CSDMessagingConversationReport alloc];
  report = [conversationCopy report];
  v17 = [(CSDMessagingConversationReport *)v15 initWithTUConversationReport:report];
  [(CSDMessagingConversationRelayMessage *)v6 setReportData:v17];

  localMember = [conversationCopy localMember];
  v19 = [CSDMessagingConversationMember memberWithTUConversationMember:localMember];
  [(CSDMessagingConversationRelayMessage *)v6 setLocalMember:v19];

  v20 = objc_alloc_init(NSMutableArray);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  remoteMembers2 = [conversationCopy remoteMembers];
  v22 = [remoteMembers2 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v40;
    do
    {
      v25 = 0;
      do
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(remoteMembers2);
        }

        v26 = [CSDMessagingConversationMember memberWithTUConversationMember:*(*(&v39 + 1) + 8 * v25)];
        [v20 addObject:v26];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [remoteMembers2 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v23);
  }

  [(CSDMessagingConversationRelayMessage *)v6 setRemoteMembers:v20];
  v27 = objc_alloc_init(NSMutableArray);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
  v29 = [activeRemoteParticipants countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      v32 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(activeRemoteParticipants);
        }

        v33 = [CSDMessagingConversationParticipant participantWithTUConversationParticipant:*(*(&v35 + 1) + 8 * v32)];
        [v27 addObject:v33];

        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [activeRemoteParticipants countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v30);
  }

  [(CSDMessagingConversationRelayMessage *)v6 setActiveParticipants:v27];
  -[CSDMessagingConversationRelayMessage setAvMode:](v6, "setAvMode:", [conversationCopy avMode]);

  return v6;
}

- (CSDMessagingConversationRelayMessage)initWithRemoteMembers:(id)members
{
  membersCopy = members;
  v8.receiver = self;
  v8.super_class = CSDMessagingConversationRelayMessage;
  v5 = [(CSDMessagingConversationRelayMessage *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    [(CSDMessagingConversationRelayMessage *)v5 setRemoteMembers:v6];

    [(CSDMessagingConversationRelayMessage *)v5 setConversationMembers:membersCopy];
  }

  return v5;
}

- (NSSet)tuConversationMembers
{
  v3 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  remoteMembers = [(CSDMessagingConversationRelayMessage *)self remoteMembers];
  v5 = [remoteMembers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(remoteMembers);
        }

        tuConversationMember = [*(*(&v12 + 1) + 8 * i) tuConversationMember];
        [v3 addObject:tuConversationMember];
      }

      v6 = [remoteMembers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [NSSet setWithArray:v3];

  return v10;
}

- (NSSet)tuConversationParticipants
{
  v3 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  activeParticipants = [(CSDMessagingConversationRelayMessage *)self activeParticipants];
  v5 = [activeParticipants countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(activeParticipants);
        }

        csdConversationParticipant = [*(*(&v13 + 1) + 8 * i) csdConversationParticipant];
        tuConversationParticipant = [csdConversationParticipant tuConversationParticipant];

        [v3 addObject:tuConversationParticipant];
      }

      v6 = [activeParticipants countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (void)setConversationMembers:(id)members
{
  membersCopy = members;
  remoteMembers = [(CSDMessagingConversationRelayMessage *)self remoteMembers];

  if (remoteMembers)
  {
    remoteMembers2 = [(CSDMessagingConversationRelayMessage *)self remoteMembers];
    [remoteMembers2 removeAllObjects];
  }

  else
  {
    remoteMembers2 = objc_alloc_init(NSMutableArray);
    [(CSDMessagingConversationRelayMessage *)self setRemoteMembers:remoteMembers2];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = membersCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        remoteMembers3 = [(CSDMessagingConversationRelayMessage *)self remoteMembers];
        v14 = [CSDMessagingConversationMember memberWithTUConversationMember:v12];
        [remoteMembers3 addObject:v14];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)setStateforTUState:(int64_t)state
{
  if (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        return;
      }
    }

    else
    {
      [(CSDMessagingConversationRelayMessage *)self setState:?];
      state = 1;
    }
  }

  else if (state != 2 && state != 3 && state != 4)
  {
    return;
  }

  [(CSDMessagingConversationRelayMessage *)self setState:state];
}

- (int64_t)tuState
{
  v2 = [(CSDMessagingConversationRelayMessage *)self state]- 1;
  if (v2 < 4)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)tuAVMode
{
  avMode = [(CSDMessagingConversationRelayMessage *)self avMode];
  if (avMode == 2)
  {
    return 2;
  }

  else
  {
    return avMode == 1;
  }
}

- (int64_t)relayType
{
  type = [(CSDMessagingConversationRelayMessage *)self type];
  if (type == 1)
  {
    return 2;
  }

  else
  {
    return type == 2;
  }
}

@end