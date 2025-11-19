@interface CSDMessagingConversation
- (BOOL)isEqual:(id)a3;
- (TUConversationLink)tuConversationLink;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAvMode:(id)a3;
- (int)avMode;
- (unint64_t)hash;
- (void)addActiveLightweightParticipants:(id)a3;
- (void)addActiveRemoteParticipants:(id)a3;
- (void)addActivitySessions:(id)a3;
- (void)addLightweightMembers:(id)a3;
- (void)addOtherInvitedHandles:(id)a3;
- (void)addRemoteMembers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLocallyCreated:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversation

- (TUConversationLink)tuConversationLink
{
  if ([(CSDMessagingConversation *)self hasLink])
  {
    v3 = [(CSDMessagingConversation *)self link];
    v4 = [v3 tuConversationLink];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasLocallyCreated:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addRemoteMembers:(id)a3
{
  v4 = a3;
  remoteMembers = self->_remoteMembers;
  v8 = v4;
  if (!remoteMembers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_remoteMembers;
    self->_remoteMembers = v6;

    v4 = v8;
    remoteMembers = self->_remoteMembers;
  }

  [(NSMutableArray *)remoteMembers addObject:v4];
}

- (void)addActiveRemoteParticipants:(id)a3
{
  v4 = a3;
  activeRemoteParticipants = self->_activeRemoteParticipants;
  v8 = v4;
  if (!activeRemoteParticipants)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_activeRemoteParticipants;
    self->_activeRemoteParticipants = v6;

    v4 = v8;
    activeRemoteParticipants = self->_activeRemoteParticipants;
  }

  [(NSMutableArray *)activeRemoteParticipants addObject:v4];
}

- (void)addActivitySessions:(id)a3
{
  v4 = a3;
  activitySessions = self->_activitySessions;
  v8 = v4;
  if (!activitySessions)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_activitySessions;
    self->_activitySessions = v6;

    v4 = v8;
    activitySessions = self->_activitySessions;
  }

  [(NSMutableArray *)activitySessions addObject:v4];
}

- (void)addOtherInvitedHandles:(id)a3
{
  v4 = a3;
  otherInvitedHandles = self->_otherInvitedHandles;
  v8 = v4;
  if (!otherInvitedHandles)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_otherInvitedHandles;
    self->_otherInvitedHandles = v6;

    v4 = v8;
    otherInvitedHandles = self->_otherInvitedHandles;
  }

  [(NSMutableArray *)otherInvitedHandles addObject:v4];
}

- (void)addLightweightMembers:(id)a3
{
  v4 = a3;
  lightweightMembers = self->_lightweightMembers;
  v8 = v4;
  if (!lightweightMembers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_lightweightMembers;
    self->_lightweightMembers = v6;

    v4 = v8;
    lightweightMembers = self->_lightweightMembers;
  }

  [(NSMutableArray *)lightweightMembers addObject:v4];
}

- (void)addActiveLightweightParticipants:(id)a3
{
  v4 = a3;
  activeLightweightParticipants = self->_activeLightweightParticipants;
  v8 = v4;
  if (!activeLightweightParticipants)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_activeLightweightParticipants;
    self->_activeLightweightParticipants = v6;

    v4 = v8;
    activeLightweightParticipants = self->_activeLightweightParticipants;
  }

  [(NSMutableArray *)activeLightweightParticipants addObject:v4];
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

- (int)StringAsAvMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Audio"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Video"])
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
  v7.super_class = CSDMessagingConversation;
  v3 = [(CSDMessagingConversation *)&v7 description];
  v4 = [(CSDMessagingConversation *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

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

  if ((*&self->_has & 4) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_locallyCreated];
    [v3 setObject:v8 forKey:@"locallyCreated"];
  }

  initiator = self->_initiator;
  if (initiator)
  {
    v10 = [(CSDMessagingHandle *)initiator dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"initiator"];
  }

  localMember = self->_localMember;
  if (localMember)
  {
    v12 = [(CSDMessagingConversationMember *)localMember dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"localMember"];
  }

  if ([(NSMutableArray *)self->_remoteMembers count])
  {
    v13 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_remoteMembers, "count")}];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v14 = self->_remoteMembers;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v86 objects:v95 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v87;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v87 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v86 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v86 objects:v95 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"remoteMembers"];
  }

  if ([(NSMutableArray *)self->_activeRemoteParticipants count])
  {
    v20 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_activeRemoteParticipants, "count")}];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v21 = self->_activeRemoteParticipants;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v82 objects:v94 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v83;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v83 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v82 + 1) + 8 * j) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v82 objects:v94 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKey:@"activeRemoteParticipants"];
  }

  if ([(NSMutableArray *)self->_activitySessions count])
  {
    v27 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_activitySessions, "count")}];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v28 = self->_activitySessions;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v78 objects:v93 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v79;
      do
      {
        for (k = 0; k != v30; k = k + 1)
        {
          if (*v79 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v78 + 1) + 8 * k) dictionaryRepresentation];
          [v27 addObject:v33];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v78 objects:v93 count:16];
      }

      while (v30);
    }

    [v3 setObject:v27 forKey:@"activitySessions"];
  }

  link = self->_link;
  if (link)
  {
    v35 = [(CSDMessagingConversationLink *)link dictionaryRepresentation];
    [v3 setObject:v35 forKey:@"link"];
  }

  reportData = self->_reportData;
  if (reportData)
  {
    v37 = [(CSDMessagingConversationReport *)reportData dictionaryRepresentation];
    [v3 setObject:v37 forKey:@"reportData"];
  }

  conversationProviderIdentifier = self->_conversationProviderIdentifier;
  if (conversationProviderIdentifier)
  {
    [v3 setObject:conversationProviderIdentifier forKey:@"conversationProviderIdentifier"];
  }

  if ([(NSMutableArray *)self->_otherInvitedHandles count])
  {
    v39 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_otherInvitedHandles, "count")}];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v40 = self->_otherInvitedHandles;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v74 objects:v92 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v75;
      do
      {
        for (m = 0; m != v42; m = m + 1)
        {
          if (*v75 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [*(*(&v74 + 1) + 8 * m) dictionaryRepresentation];
          [v39 addObject:v45];
        }

        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v74 objects:v92 count:16];
      }

      while (v42);
    }

    [v3 setObject:v39 forKey:@"otherInvitedHandles"];
  }

  if ([(NSMutableArray *)self->_lightweightMembers count])
  {
    v46 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_lightweightMembers, "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v47 = self->_lightweightMembers;
    v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v70 objects:v91 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v71;
      do
      {
        for (n = 0; n != v49; n = n + 1)
        {
          if (*v71 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = [*(*(&v70 + 1) + 8 * n) dictionaryRepresentation];
          [v46 addObject:v52];
        }

        v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v70 objects:v91 count:16];
      }

      while (v49);
    }

    [v3 setObject:v46 forKey:@"lightweightMembers"];
  }

  if ([(NSMutableArray *)self->_activeLightweightParticipants count])
  {
    v53 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_activeLightweightParticipants, "count")}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v54 = self->_activeLightweightParticipants;
    v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v66 objects:v90 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v67;
      do
      {
        for (ii = 0; ii != v56; ii = ii + 1)
        {
          if (*v67 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = [*(*(&v66 + 1) + 8 * ii) dictionaryRepresentation];
          [v53 addObject:v59];
        }

        v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v66 objects:v90 count:16];
      }

      while (v56);
    }

    [v3 setObject:v53 forKey:@"activeLightweightParticipants"];
  }

  highlightIdentifier = self->_highlightIdentifier;
  if (highlightIdentifier)
  {
    [v3 setObject:highlightIdentifier forKey:@"highlightIdentifier"];
  }

  stagedActivitySession = self->_stagedActivitySession;
  if (stagedActivitySession)
  {
    v62 = [(CSDMessagingConversationActivitySession *)stagedActivitySession dictionaryRepresentation];
    [v3 setObject:v62 forKey:@"stagedActivitySession"];
  }

  if (*&self->_has)
  {
    avMode = self->_avMode;
    if (avMode >= 3)
    {
      v64 = [NSString stringWithFormat:@"(unknown: %i)", self->_avMode];
    }

    else
    {
      v64 = *(&off_10061CA18 + avMode);
    }

    [v3 setObject:v64 forKey:@"avMode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

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

  if ((*&self->_has & 4) != 0)
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

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v7 = self->_remoteMembers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v65;
    do
    {
      v11 = 0;
      do
      {
        if (*v65 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v64 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v9);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v13 = self->_activeRemoteParticipants;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v61;
    do
    {
      v17 = 0;
      do
      {
        if (*v61 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v60 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v60 objects:v72 count:16];
    }

    while (v15);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v19 = self->_activitySessions;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v56 objects:v71 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v57;
    do
    {
      v23 = 0;
      do
      {
        if (*v57 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v56 + 1) + 8 * v23);
        PBDataWriterWriteSubmessage();
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v56 objects:v71 count:16];
    }

    while (v21);
  }

  if (self->_link)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_reportData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_conversationProviderIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v25 = self->_otherInvitedHandles;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v52 objects:v70 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v53;
    do
    {
      v29 = 0;
      do
      {
        if (*v53 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v52 + 1) + 8 * v29);
        PBDataWriterWriteSubmessage();
        v29 = v29 + 1;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v52 objects:v70 count:16];
    }

    while (v27);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = self->_lightweightMembers;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v48 objects:v69 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v49;
    do
    {
      v35 = 0;
      do
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v48 + 1) + 8 * v35);
        PBDataWriterWriteSubmessage();
        v35 = v35 + 1;
      }

      while (v33 != v35);
      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v48 objects:v69 count:16];
    }

    while (v33);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v37 = self->_activeLightweightParticipants;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v44 objects:v68 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v45;
    do
    {
      v41 = 0;
      do
      {
        if (*v45 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v44 + 1) + 8 * v41);
        PBDataWriterWriteSubmessage();
        v41 = v41 + 1;
      }

      while (v39 != v41);
      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v44 objects:v68 count:16];
    }

    while (v39);
  }

  if (self->_highlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_stagedActivitySession)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    avMode = self->_avMode;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[36] = self->_version;
    *(v4 + 152) |= 2u;
  }

  v30 = v4;
  if (self->_uUIDString)
  {
    [v4 setUUIDString:?];
    v4 = v30;
  }

  if (self->_groupUUIDString)
  {
    [v30 setGroupUUIDString:?];
    v4 = v30;
  }

  if (self->_messagesGroupUUIDString)
  {
    [v30 setMessagesGroupUUIDString:?];
    v4 = v30;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 148) = self->_locallyCreated;
    *(v4 + 152) |= 4u;
  }

  if (self->_initiator)
  {
    [v30 setInitiator:?];
  }

  if (self->_localMember)
  {
    [v30 setLocalMember:?];
  }

  if ([(CSDMessagingConversation *)self remoteMembersCount])
  {
    [v30 clearRemoteMembers];
    v5 = [(CSDMessagingConversation *)self remoteMembersCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(CSDMessagingConversation *)self remoteMembersAtIndex:i];
        [v30 addRemoteMembers:v8];
      }
    }
  }

  if ([(CSDMessagingConversation *)self activeRemoteParticipantsCount])
  {
    [v30 clearActiveRemoteParticipants];
    v9 = [(CSDMessagingConversation *)self activeRemoteParticipantsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(CSDMessagingConversation *)self activeRemoteParticipantsAtIndex:j];
        [v30 addActiveRemoteParticipants:v12];
      }
    }
  }

  if ([(CSDMessagingConversation *)self activitySessionsCount])
  {
    [v30 clearActivitySessions];
    v13 = [(CSDMessagingConversation *)self activitySessionsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(CSDMessagingConversation *)self activitySessionsAtIndex:k];
        [v30 addActivitySessions:v16];
      }
    }
  }

  if (self->_link)
  {
    [v30 setLink:?];
  }

  if (self->_reportData)
  {
    [v30 setReportData:?];
  }

  if (self->_conversationProviderIdentifier)
  {
    [v30 setConversationProviderIdentifier:?];
  }

  if ([(CSDMessagingConversation *)self otherInvitedHandlesCount])
  {
    [v30 clearOtherInvitedHandles];
    v17 = [(CSDMessagingConversation *)self otherInvitedHandlesCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(CSDMessagingConversation *)self otherInvitedHandlesAtIndex:m];
        [v30 addOtherInvitedHandles:v20];
      }
    }
  }

  if ([(CSDMessagingConversation *)self lightweightMembersCount])
  {
    [v30 clearLightweightMembers];
    v21 = [(CSDMessagingConversation *)self lightweightMembersCount];
    if (v21)
    {
      v22 = v21;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(CSDMessagingConversation *)self lightweightMembersAtIndex:n];
        [v30 addLightweightMembers:v24];
      }
    }
  }

  if ([(CSDMessagingConversation *)self activeLightweightParticipantsCount])
  {
    [v30 clearActiveLightweightParticipants];
    v25 = [(CSDMessagingConversation *)self activeLightweightParticipantsCount];
    if (v25)
    {
      v26 = v25;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(CSDMessagingConversation *)self activeLightweightParticipantsAtIndex:ii];
        [v30 addActiveLightweightParticipants:v28];
      }
    }
  }

  if (self->_highlightIdentifier)
  {
    [v30 setHighlightIdentifier:?];
  }

  v29 = v30;
  if (self->_stagedActivitySession)
  {
    [v30 setStagedActivitySession:?];
    v29 = v30;
  }

  if (*&self->_has)
  {
    v29[8] = self->_avMode;
    *(v29 + 152) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[36] = self->_version;
    *(v5 + 152) |= 2u;
  }

  v7 = [(NSString *)self->_uUIDString copyWithZone:a3];
  v8 = v6[17];
  v6[17] = v7;

  v9 = [(NSString *)self->_groupUUIDString copyWithZone:a3];
  v10 = v6[6];
  v6[6] = v9;

  v11 = [(NSString *)self->_messagesGroupUUIDString copyWithZone:a3];
  v12 = v6[12];
  v6[12] = v11;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 148) = self->_locallyCreated;
    *(v6 + 152) |= 4u;
  }

  v13 = [(CSDMessagingHandle *)self->_initiator copyWithZone:a3];
  v14 = v6[8];
  v6[8] = v13;

  v15 = [(CSDMessagingConversationMember *)self->_localMember copyWithZone:a3];
  v16 = v6[11];
  v6[11] = v15;

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v17 = self->_remoteMembers;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v84 objects:v93 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v85;
    do
    {
      v21 = 0;
      do
      {
        if (*v85 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v84 + 1) + 8 * v21) copyWithZone:a3];
        [v6 addRemoteMembers:v22];

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v84 objects:v93 count:16];
    }

    while (v19);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v23 = self->_activeRemoteParticipants;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v80 objects:v92 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v81;
    do
    {
      v27 = 0;
      do
      {
        if (*v81 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v80 + 1) + 8 * v27) copyWithZone:a3];
        [v6 addActiveRemoteParticipants:v28];

        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v80 objects:v92 count:16];
    }

    while (v25);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v29 = self->_activitySessions;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v76 objects:v91 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v77;
    do
    {
      v33 = 0;
      do
      {
        if (*v77 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v76 + 1) + 8 * v33) copyWithZone:a3];
        [v6 addActivitySessions:v34];

        v33 = v33 + 1;
      }

      while (v31 != v33);
      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v76 objects:v91 count:16];
    }

    while (v31);
  }

  v35 = [(CSDMessagingConversationLink *)self->_link copyWithZone:a3];
  v36 = v6[10];
  v6[10] = v35;

  v37 = [(CSDMessagingConversationReport *)self->_reportData copyWithZone:a3];
  v38 = v6[15];
  v6[15] = v37;

  v39 = [(NSString *)self->_conversationProviderIdentifier copyWithZone:a3];
  v40 = v6[5];
  v6[5] = v39;

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v41 = self->_otherInvitedHandles;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v72 objects:v90 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v73;
    do
    {
      v45 = 0;
      do
      {
        if (*v73 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = [*(*(&v72 + 1) + 8 * v45) copyWithZone:a3];
        [v6 addOtherInvitedHandles:v46];

        v45 = v45 + 1;
      }

      while (v43 != v45);
      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v72 objects:v90 count:16];
    }

    while (v43);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v47 = self->_lightweightMembers;
  v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v68 objects:v89 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v69;
    do
    {
      v51 = 0;
      do
      {
        if (*v69 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = [*(*(&v68 + 1) + 8 * v51) copyWithZone:a3];
        [v6 addLightweightMembers:v52];

        v51 = v51 + 1;
      }

      while (v49 != v51);
      v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v68 objects:v89 count:16];
    }

    while (v49);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v53 = self->_activeLightweightParticipants;
  v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v64 objects:v88 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v65;
    do
    {
      v57 = 0;
      do
      {
        if (*v65 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = [*(*(&v64 + 1) + 8 * v57) copyWithZone:{a3, v64}];
        [v6 addActiveLightweightParticipants:v58];

        v57 = v57 + 1;
      }

      while (v55 != v57);
      v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v64 objects:v88 count:16];
    }

    while (v55);
  }

  v59 = [(NSString *)self->_highlightIdentifier copyWithZone:a3];
  v60 = v6[7];
  v6[7] = v59;

  v61 = [(CSDMessagingConversationActivitySession *)self->_stagedActivitySession copyWithZone:a3];
  v62 = v6[16];
  v6[16] = v61;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_avMode;
    *(v6 + 152) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  v5 = *(v4 + 152);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 152) & 2) == 0 || self->_version != *(v4 + 36))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 152) & 2) != 0)
  {
    goto LABEL_46;
  }

  uUIDString = self->_uUIDString;
  if (uUIDString | *(v4 + 17) && ![(NSString *)uUIDString isEqual:?])
  {
    goto LABEL_46;
  }

  groupUUIDString = self->_groupUUIDString;
  if (groupUUIDString | *(v4 + 6))
  {
    if (![(NSString *)groupUUIDString isEqual:?])
    {
      goto LABEL_46;
    }
  }

  messagesGroupUUIDString = self->_messagesGroupUUIDString;
  if (messagesGroupUUIDString | *(v4 + 12))
  {
    if (![(NSString *)messagesGroupUUIDString isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v9 = *(v4 + 152);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 152) & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_46:
    v23 = 0;
    goto LABEL_47;
  }

  if ((*(v4 + 152) & 4) == 0)
  {
    goto LABEL_46;
  }

  v25 = *(v4 + 148);
  if (self->_locallyCreated)
  {
    if ((*(v4 + 148) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (*(v4 + 148))
  {
    goto LABEL_46;
  }

LABEL_15:
  initiator = self->_initiator;
  if (initiator | *(v4 + 8) && ![(CSDMessagingHandle *)initiator isEqual:?])
  {
    goto LABEL_46;
  }

  localMember = self->_localMember;
  if (localMember | *(v4 + 11))
  {
    if (![(CSDMessagingConversationMember *)localMember isEqual:?])
    {
      goto LABEL_46;
    }
  }

  remoteMembers = self->_remoteMembers;
  if (remoteMembers | *(v4 + 14))
  {
    if (![(NSMutableArray *)remoteMembers isEqual:?])
    {
      goto LABEL_46;
    }
  }

  activeRemoteParticipants = self->_activeRemoteParticipants;
  if (activeRemoteParticipants | *(v4 + 2))
  {
    if (![(NSMutableArray *)activeRemoteParticipants isEqual:?])
    {
      goto LABEL_46;
    }
  }

  activitySessions = self->_activitySessions;
  if (activitySessions | *(v4 + 3))
  {
    if (![(NSMutableArray *)activitySessions isEqual:?])
    {
      goto LABEL_46;
    }
  }

  link = self->_link;
  if (link | *(v4 + 10))
  {
    if (![(CSDMessagingConversationLink *)link isEqual:?])
    {
      goto LABEL_46;
    }
  }

  reportData = self->_reportData;
  if (reportData | *(v4 + 15))
  {
    if (![(CSDMessagingConversationReport *)reportData isEqual:?])
    {
      goto LABEL_46;
    }
  }

  conversationProviderIdentifier = self->_conversationProviderIdentifier;
  if (conversationProviderIdentifier | *(v4 + 5))
  {
    if (![(NSString *)conversationProviderIdentifier isEqual:?])
    {
      goto LABEL_46;
    }
  }

  otherInvitedHandles = self->_otherInvitedHandles;
  if (otherInvitedHandles | *(v4 + 13))
  {
    if (![(NSMutableArray *)otherInvitedHandles isEqual:?])
    {
      goto LABEL_46;
    }
  }

  lightweightMembers = self->_lightweightMembers;
  if (lightweightMembers | *(v4 + 9))
  {
    if (![(NSMutableArray *)lightweightMembers isEqual:?])
    {
      goto LABEL_46;
    }
  }

  activeLightweightParticipants = self->_activeLightweightParticipants;
  if (activeLightweightParticipants | *(v4 + 1))
  {
    if (![(NSMutableArray *)activeLightweightParticipants isEqual:?])
    {
      goto LABEL_46;
    }
  }

  highlightIdentifier = self->_highlightIdentifier;
  if (highlightIdentifier | *(v4 + 7))
  {
    if (![(NSString *)highlightIdentifier isEqual:?])
    {
      goto LABEL_46;
    }
  }

  stagedActivitySession = self->_stagedActivitySession;
  if (stagedActivitySession | *(v4 + 16))
  {
    if (![(CSDMessagingConversationActivitySession *)stagedActivitySession isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v23 = (*(v4 + 152) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 152) & 1) == 0 || self->_avMode != *(v4 + 8))
    {
      goto LABEL_46;
    }

    v23 = 1;
  }

LABEL_47:

  return v23;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v22 = 2654435761 * self->_version;
  }

  else
  {
    v22 = 0;
  }

  v21 = [(NSString *)self->_uUIDString hash];
  v20 = [(NSString *)self->_groupUUIDString hash];
  v19 = [(NSString *)self->_messagesGroupUUIDString hash];
  if ((*&self->_has & 4) != 0)
  {
    v18 = 2654435761 * self->_locallyCreated;
  }

  else
  {
    v18 = 0;
  }

  v17 = [(CSDMessagingHandle *)self->_initiator hash];
  v16 = [(CSDMessagingConversationMember *)self->_localMember hash];
  v15 = [(NSMutableArray *)self->_remoteMembers hash];
  v14 = [(NSMutableArray *)self->_activeRemoteParticipants hash];
  v3 = [(NSMutableArray *)self->_activitySessions hash];
  v4 = [(CSDMessagingConversationLink *)self->_link hash];
  v5 = [(CSDMessagingConversationReport *)self->_reportData hash];
  v6 = [(NSString *)self->_conversationProviderIdentifier hash];
  v7 = [(NSMutableArray *)self->_otherInvitedHandles hash];
  v8 = [(NSMutableArray *)self->_lightweightMembers hash];
  v9 = [(NSMutableArray *)self->_activeLightweightParticipants hash];
  v10 = [(NSString *)self->_highlightIdentifier hash];
  v11 = [(CSDMessagingConversationActivitySession *)self->_stagedActivitySession hash];
  if (*&self->_has)
  {
    v12 = 2654435761 * self->_avMode;
  }

  else
  {
    v12 = 0;
  }

  return v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[38] & 2) != 0)
  {
    self->_version = v4[36];
    *&self->_has |= 2u;
  }

  if (*(v4 + 17))
  {
    [(CSDMessagingConversation *)self setUUIDString:?];
  }

  if (*(v5 + 6))
  {
    [(CSDMessagingConversation *)self setGroupUUIDString:?];
  }

  if (*(v5 + 12))
  {
    [(CSDMessagingConversation *)self setMessagesGroupUUIDString:?];
  }

  if ((*(v5 + 152) & 4) != 0)
  {
    self->_locallyCreated = *(v5 + 148);
    *&self->_has |= 4u;
  }

  initiator = self->_initiator;
  v7 = *(v5 + 8);
  if (initiator)
  {
    if (v7)
    {
      [(CSDMessagingHandle *)initiator mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(CSDMessagingConversation *)self setInitiator:?];
  }

  localMember = self->_localMember;
  v9 = *(v5 + 11);
  if (localMember)
  {
    if (v9)
    {
      [(CSDMessagingConversationMember *)localMember mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(CSDMessagingConversation *)self setLocalMember:?];
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v10 = *(v5 + 14);
  v11 = [v10 countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v67;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(CSDMessagingConversation *)self addRemoteMembers:*(*(&v66 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v66 objects:v75 count:16];
    }

    while (v12);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v15 = *(v5 + 2);
  v16 = [v15 countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v63;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v63 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(CSDMessagingConversation *)self addActiveRemoteParticipants:*(*(&v62 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v17);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v20 = *(v5 + 3);
  v21 = [v20 countByEnumeratingWithState:&v58 objects:v73 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v59;
    do
    {
      for (k = 0; k != v22; k = k + 1)
      {
        if (*v59 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(CSDMessagingConversation *)self addActivitySessions:*(*(&v58 + 1) + 8 * k)];
      }

      v22 = [v20 countByEnumeratingWithState:&v58 objects:v73 count:16];
    }

    while (v22);
  }

  link = self->_link;
  v26 = *(v5 + 10);
  if (link)
  {
    if (v26)
    {
      [(CSDMessagingConversationLink *)link mergeFrom:?];
    }
  }

  else if (v26)
  {
    [(CSDMessagingConversation *)self setLink:?];
  }

  reportData = self->_reportData;
  v28 = *(v5 + 15);
  if (reportData)
  {
    if (v28)
    {
      [(CSDMessagingConversationReport *)reportData mergeFrom:?];
    }
  }

  else if (v28)
  {
    [(CSDMessagingConversation *)self setReportData:?];
  }

  if (*(v5 + 5))
  {
    [(CSDMessagingConversation *)self setConversationProviderIdentifier:?];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v29 = *(v5 + 13);
  v30 = [v29 countByEnumeratingWithState:&v54 objects:v72 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v55;
    do
    {
      for (m = 0; m != v31; m = m + 1)
      {
        if (*v55 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [(CSDMessagingConversation *)self addOtherInvitedHandles:*(*(&v54 + 1) + 8 * m)];
      }

      v31 = [v29 countByEnumeratingWithState:&v54 objects:v72 count:16];
    }

    while (v31);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v34 = *(v5 + 9);
  v35 = [v34 countByEnumeratingWithState:&v50 objects:v71 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v51;
    do
    {
      for (n = 0; n != v36; n = n + 1)
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [(CSDMessagingConversation *)self addLightweightMembers:*(*(&v50 + 1) + 8 * n)];
      }

      v36 = [v34 countByEnumeratingWithState:&v50 objects:v71 count:16];
    }

    while (v36);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v39 = *(v5 + 1);
  v40 = [v39 countByEnumeratingWithState:&v46 objects:v70 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v47;
    do
    {
      for (ii = 0; ii != v41; ii = ii + 1)
      {
        if (*v47 != v42)
        {
          objc_enumerationMutation(v39);
        }

        [(CSDMessagingConversation *)self addActiveLightweightParticipants:*(*(&v46 + 1) + 8 * ii), v46];
      }

      v41 = [v39 countByEnumeratingWithState:&v46 objects:v70 count:16];
    }

    while (v41);
  }

  if (*(v5 + 7))
  {
    [(CSDMessagingConversation *)self setHighlightIdentifier:?];
  }

  stagedActivitySession = self->_stagedActivitySession;
  v45 = *(v5 + 16);
  if (stagedActivitySession)
  {
    if (v45)
    {
      [(CSDMessagingConversationActivitySession *)stagedActivitySession mergeFrom:?];
    }
  }

  else if (v45)
  {
    [(CSDMessagingConversation *)self setStagedActivitySession:?];
  }

  if (*(v5 + 152))
  {
    self->_avMode = *(v5 + 8);
    *&self->_has |= 1u;
  }
}

@end