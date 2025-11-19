@interface CSDMessagingConversationMessage
- (BOOL)constitutesLetMeInApproval;
- (BOOL)isEqual:(id)a3;
- (NSSet)tuInvitationPreferences;
- (NSUUID)conversationGroupUUID;
- (TUConversationInvitationContext)tuInvitationContext;
- (TUConversationLink)tuConversationLink;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAvMode:(id)a3;
- (int)StringAsEnclosedEncryptedType:(id)a3;
- (int)StringAsPresentationMode:(id)a3;
- (int)StringAsType:(id)a3;
- (int)avMode;
- (int)enclosedEncryptedType;
- (int)presentationMode;
- (int)type;
- (unint64_t)hash;
- (unint64_t)resolvedPresentationMode;
- (void)addActiveLightweightParticipants:(id)a3;
- (void)addActiveParticipants:(id)a3;
- (void)addActivitySessions:(id)a3;
- (void)addAddedMembers:(id)a3;
- (void)addInvitationPreferences:(id)a3;
- (void)addLightweightMembers:(id)a3;
- (void)addRemovedMembers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setConversationGroupUUID:(id)a3;
- (void)setHasDisconnectedReason:(BOOL)a3;
- (void)setHasEnclosedEncryptedType:(BOOL)a3;
- (void)setHasGuestModeEnabled:(BOOL)a3;
- (void)setHasIsLetMeInApproved:(BOOL)a3;
- (void)setHasIsNearbySession:(BOOL)a3;
- (void)setHasPresentationMode:(BOOL)a3;
- (void)setHasRequestBlobRecoveryOptions:(BOOL)a3;
- (void)setHasShouldSuppressInCallUI:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)setTUInvitationContext:(id)a3;
- (void)setTUInvitationPreferences:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationMessage

- (BOOL)constitutesLetMeInApproval
{
  if (![(CSDMessagingConversationMessage *)self hasType]|| [(CSDMessagingConversationMessage *)self type]!= 16 || ![(CSDMessagingConversationMessage *)self hasIsLetMeInApproved])
  {
    return 0;
  }

  return [(CSDMessagingConversationMessage *)self isLetMeInApproved];
}

- (TUConversationLink)tuConversationLink
{
  if ([(CSDMessagingConversationMessage *)self hasLink])
  {
    v3 = [(CSDMessagingConversationMessage *)self link];
    v4 = [v3 tuConversationLink];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)resolvedPresentationMode
{
  if (![(CSDMessagingConversationMessage *)self hasPresentationMode])
  {
    return [(CSDMessagingConversationMessage *)self avMode]== 0;
  }

  v3 = [(CSDMessagingConversationMessage *)self presentationMode];
  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
  }
}

- (NSSet)tuInvitationPreferences
{
  v3 = +[NSMutableSet set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CSDMessagingConversationMessage *)self invitationPreferences];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) tuInvitationPreference];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (NSUUID)conversationGroupUUID
{
  v3 = [(CSDMessagingConversationMessage *)self conversationGroupUUIDString];
  if (v3)
  {
    v4 = [NSUUID alloc];
    v5 = [(CSDMessagingConversationMessage *)self conversationGroupUUIDString];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setConversationGroupUUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(CSDMessagingConversationMessage *)self setConversationGroupUUIDString:v4];
}

- (void)setTUInvitationPreferences:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [CSDMessagingConversationInvitationPreference invitationPreferenceWithTUConversationInvitationPreference:*(*(&v10 + 1) + 8 * v8)];
        [(CSDMessagingConversationMessage *)self addInvitationPreferences:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (TUConversationInvitationContext)tuInvitationContext
{
  if ([(CSDMessagingConversationMessage *)self hasInvitationContext])
  {
    v3 = objc_alloc_init(TUConversationInvitationContext);
    v4 = [(CSDMessagingConversationMessage *)self invitationContext];
    v5 = [v4 nearbyStableDeviceIdentifiers];
    [v3 setNearbyStableDeviceIdentifiers:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTUInvitationContext:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = objc_alloc_init(CSDMessagingInvitationContext);
    v5 = [v8 nearbyStableDeviceIdentifiers];

    if (v5)
    {
      v6 = [v8 nearbyStableDeviceIdentifiers];
      v7 = [NSMutableArray arrayWithArray:v6];
      [(CSDMessagingInvitationContext *)v4 setNearbyStableDeviceIdentifiers:v7];
    }

    [(CSDMessagingConversationMessage *)self setInvitationContext:v4];
  }

  else
  {
    [(CSDMessagingConversationMessage *)self setInvitationContext:0];
  }
}

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)type
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Invitation"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Upgrade"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AddMember"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"BlobRecoveryRequest"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"BlobRecoveryResponse"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RespondedElsewhere"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AddActivitySession"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Decline"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"LetMeInRequest"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"LinkCreated"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"NicknameUpdated"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"EncryptedConversationMessage"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"LetMeInDelegation"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"LetMeInDelegationResponse"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"LetMeInResponse"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"RemoveMember"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"RemoveActivitySession"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"RequestVideoUpgrade"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"UpdateActivity"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"LinkInvalidated"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"AddLightweightMember"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"LinkChanged"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"UpdateActivityImage"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"GuestModeUpdated"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"Endorse"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"AddHighlight"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"RemoveHighlight"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"UpdateJoinedMetadata"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"ParticipantUpdated"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"RegisterMessagesGroupUUID"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"ScreenShareRequest"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"ScreenShareResponse"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"SharePlayAvailable"])
  {
    v4 = 37;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasShouldSuppressInCallUI:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)addActiveParticipants:(id)a3
{
  v4 = a3;
  activeParticipants = self->_activeParticipants;
  v8 = v4;
  if (!activeParticipants)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_activeParticipants;
    self->_activeParticipants = v6;

    v4 = v8;
    activeParticipants = self->_activeParticipants;
  }

  [(NSMutableArray *)activeParticipants addObject:v4];
}

- (void)addAddedMembers:(id)a3
{
  v4 = a3;
  addedMembers = self->_addedMembers;
  v8 = v4;
  if (!addedMembers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_addedMembers;
    self->_addedMembers = v6;

    v4 = v8;
    addedMembers = self->_addedMembers;
  }

  [(NSMutableArray *)addedMembers addObject:v4];
}

- (void)setHasDisconnectedReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
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

- (void)setHasIsLetMeInApproved:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)enclosedEncryptedType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_enclosedEncryptedType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEnclosedEncryptedType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)StringAsEnclosedEncryptedType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Invitation"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Upgrade"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AddMember"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"BlobRecoveryRequest"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"BlobRecoveryResponse"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RespondedElsewhere"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AddActivitySession"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Decline"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"LetMeInRequest"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"LinkCreated"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"NicknameUpdated"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"EncryptedConversationMessage"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"LetMeInDelegation"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"LetMeInDelegationResponse"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"LetMeInResponse"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"RemoveMember"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"RemoveActivitySession"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"RequestVideoUpgrade"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"UpdateActivity"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"LinkInvalidated"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"AddLightweightMember"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"LinkChanged"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"UpdateActivityImage"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"GuestModeUpdated"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"Endorse"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"AddHighlight"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"RemoveHighlight"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"UpdateJoinedMetadata"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"ParticipantUpdated"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"RegisterMessagesGroupUUID"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"ScreenShareRequest"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"ScreenShareResponse"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"SharePlayAvailable"])
  {
    v4 = 37;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addInvitationPreferences:(id)a3
{
  v4 = a3;
  invitationPreferences = self->_invitationPreferences;
  v8 = v4;
  if (!invitationPreferences)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_invitationPreferences;
    self->_invitationPreferences = v6;

    v4 = v8;
    invitationPreferences = self->_invitationPreferences;
  }

  [(NSMutableArray *)invitationPreferences addObject:v4];
}

- (void)addRemovedMembers:(id)a3
{
  v4 = a3;
  removedMembers = self->_removedMembers;
  v8 = v4;
  if (!removedMembers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_removedMembers;
    self->_removedMembers = v6;

    v4 = v8;
    removedMembers = self->_removedMembers;
  }

  [(NSMutableArray *)removedMembers addObject:v4];
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

- (void)setHasGuestModeEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
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

- (void)setHasRequestBlobRecoveryOptions:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)presentationMode
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_presentationMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPresentationMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)StringAsPresentationMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AVLessSharePlay"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ContinuitySession"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsNearbySession:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationMessage;
  v3 = [(CSDMessagingConversationMessage *)&v7 description];
  v4 = [(CSDMessagingConversationMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v42 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v42 forKey:@"version"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  type = self->_type;
  if (type < 0x26 && ((0x3FFFE9FF7FuLL >> type) & 1) != 0)
  {
    v44 = off_10061EED0[type];
  }

  else
  {
    v44 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
  }

  [v3 setObject:v44 forKey:@"type"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_4:
    v5 = [NSNumber numberWithBool:self->_shouldSuppressInCallUI];
    [v3 setObject:v5 forKey:@"shouldSuppressInCallUI"];
  }

LABEL_5:
  if ([(NSMutableArray *)self->_activeParticipants count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_activeParticipants, "count")}];
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v7 = self->_activeParticipants;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v118 objects:v128 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v119;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v119 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v118 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v118 objects:v128 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"activeParticipants"];
  }

  conversationGroupUUIDString = self->_conversationGroupUUIDString;
  if (conversationGroupUUIDString)
  {
    [v3 setObject:conversationGroupUUIDString forKey:@"conversationGroupUUIDString"];
  }

  if ([(NSMutableArray *)self->_addedMembers count])
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_addedMembers, "count")}];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v15 = self->_addedMembers;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v114 objects:v127 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v115;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v115 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v114 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v114 objects:v127 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"addedMembers"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v21 = [NSNumber numberWithUnsignedInt:self->_disconnectedReason];
    [v3 setObject:v21 forKey:@"disconnectedReason"];
  }

  protoUpgradeSessionUUID = self->_protoUpgradeSessionUUID;
  if (protoUpgradeSessionUUID)
  {
    [v3 setObject:protoUpgradeSessionUUID forKey:@"protoUpgradeSessionUUID"];
  }

  if ([(NSMutableArray *)self->_activitySessions count])
  {
    v23 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_activitySessions, "count")}];
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v24 = self->_activitySessions;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v110 objects:v126 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v111;
      do
      {
        for (k = 0; k != v26; k = k + 1)
        {
          if (*v111 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v110 + 1) + 8 * k) dictionaryRepresentation];
          [v23 addObject:v29];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v110 objects:v126 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKey:@"activitySessions"];
  }

  nickname = self->_nickname;
  if (nickname)
  {
    [v3 setObject:nickname forKey:@"nickname"];
  }

  link = self->_link;
  if (link)
  {
    v32 = [(CSDMessagingConversationLink *)link dictionaryRepresentation];
    [v3 setObject:v32 forKey:@"link"];
  }

  reportData = self->_reportData;
  if (reportData)
  {
    v34 = [(CSDMessagingConversationReport *)reportData dictionaryRepresentation];
    [v3 setObject:v34 forKey:@"reportData"];
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v35 = [NSNumber numberWithBool:self->_isLetMeInApproved];
    [v3 setObject:v35 forKey:@"isLetMeInApproved"];
  }

  encryptedMessage = self->_encryptedMessage;
  if (encryptedMessage)
  {
    v37 = [(CSDMessagingEncryptedConversationMessage *)encryptedMessage dictionaryRepresentation];
    [v3 setObject:v37 forKey:@"encryptedMessage"];
  }

  letMeInDelegationHandle = self->_letMeInDelegationHandle;
  if (letMeInDelegationHandle)
  {
    [v3 setObject:letMeInDelegationHandle forKey:@"letMeInDelegationHandle"];
  }

  letMeInDelegationUUID = self->_letMeInDelegationUUID;
  if (letMeInDelegationUUID)
  {
    [v3 setObject:letMeInDelegationUUID forKey:@"letMeInDelegationUUID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    enclosedEncryptedType = self->_enclosedEncryptedType;
    if (enclosedEncryptedType < 0x26 && ((0x3FFFE9FF7FuLL >> enclosedEncryptedType) & 1) != 0)
    {
      v41 = off_10061EED0[enclosedEncryptedType];
    }

    else
    {
      v41 = [NSString stringWithFormat:@"(unknown: %i)", self->_enclosedEncryptedType];
    }

    [v3 setObject:v41 forKey:@"enclosedEncryptedType"];
  }

  if ([(NSMutableArray *)self->_invitationPreferences count])
  {
    v45 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_invitationPreferences, "count")}];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v46 = self->_invitationPreferences;
    v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v106 objects:v125 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v107;
      do
      {
        for (m = 0; m != v48; m = m + 1)
        {
          if (*v107 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = [*(*(&v106 + 1) + 8 * m) dictionaryRepresentation];
          [v45 addObject:v51];
        }

        v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v106 objects:v125 count:16];
      }

      while (v48);
    }

    [v3 setObject:v45 forKey:@"invitationPreferences"];
  }

  if ([(NSMutableArray *)self->_removedMembers count])
  {
    v52 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_removedMembers, "count")}];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v53 = self->_removedMembers;
    v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v102 objects:v124 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v103;
      do
      {
        for (n = 0; n != v55; n = n + 1)
        {
          if (*v103 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = [*(*(&v102 + 1) + 8 * n) dictionaryRepresentation];
          [v52 addObject:v58];
        }

        v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v102 objects:v124 count:16];
      }

      while (v55);
    }

    [v3 setObject:v52 forKey:@"removedMembers"];
  }

  if ([(NSMutableArray *)self->_lightweightMembers count])
  {
    v59 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_lightweightMembers, "count")}];
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v60 = self->_lightweightMembers;
    v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v98 objects:v123 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v99;
      do
      {
        for (ii = 0; ii != v62; ii = ii + 1)
        {
          if (*v99 != v63)
          {
            objc_enumerationMutation(v60);
          }

          v65 = [*(*(&v98 + 1) + 8 * ii) dictionaryRepresentation];
          [v59 addObject:v65];
        }

        v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v98 objects:v123 count:16];
      }

      while (v62);
    }

    [v3 setObject:v59 forKey:@"lightweightMembers"];
  }

  if ([(NSMutableArray *)self->_activeLightweightParticipants count])
  {
    v66 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_activeLightweightParticipants, "count")}];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v67 = self->_activeLightweightParticipants;
    v68 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v94 objects:v122 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v95;
      do
      {
        for (jj = 0; jj != v69; jj = jj + 1)
        {
          if (*v95 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = [*(*(&v94 + 1) + 8 * jj) dictionaryRepresentation];
          [v66 addObject:v72];
        }

        v69 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v94 objects:v122 count:16];
      }

      while (v69);
    }

    [v3 setObject:v66 forKey:@"activeLightweightParticipants"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v73 = [NSNumber numberWithBool:self->_guestModeEnabled];
    [v3 setObject:v73 forKey:@"guestModeEnabled"];
  }

  highlightIdentifier = self->_highlightIdentifier;
  if (highlightIdentifier)
  {
    [v3 setObject:highlightIdentifier forKey:@"highlightIdentifier"];
  }

  joinedMetadata = self->_joinedMetadata;
  if (joinedMetadata)
  {
    v76 = [(CSDMessagingConversationJoinedMetadata *)joinedMetadata dictionaryRepresentation];
    [v3 setObject:v76 forKey:@"joinedMetadata"];
  }

  stagedActivitySession = self->_stagedActivitySession;
  if (stagedActivitySession)
  {
    v78 = [(CSDMessagingConversationActivitySession *)stagedActivitySession dictionaryRepresentation];
    [v3 setObject:v78 forKey:@"stagedActivitySession"];
  }

  v79 = self->_has;
  if (v79)
  {
    avMode = self->_avMode;
    if (avMode >= 3)
    {
      v81 = [NSString stringWithFormat:@"(unknown: %i)", self->_avMode];
    }

    else
    {
      v81 = off_10061F000[avMode];
    }

    [v3 setObject:v81 forKey:@"avMode"];

    v79 = self->_has;
  }

  if ((v79 & 0x10) != 0)
  {
    v82 = [NSNumber numberWithInt:self->_requestBlobRecoveryOptions];
    [v3 setObject:v82 forKey:@"requestBlobRecoveryOptions"];
  }

  screenShareContext = self->_screenShareContext;
  if (screenShareContext)
  {
    v84 = [(CSDMessagingScreenShareContext *)screenShareContext dictionaryRepresentation];
    [v3 setObject:v84 forKey:@"screenShareContext"];
  }

  if ((*&self->_has & 8) != 0)
  {
    presentationMode = self->_presentationMode;
    if (presentationMode >= 3)
    {
      v86 = [NSString stringWithFormat:@"(unknown: %i)", self->_presentationMode];
    }

    else
    {
      v86 = off_10061F018[presentationMode];
    }

    [v3 setObject:v86 forKey:@"presentationMode"];
  }

  invitationContext = self->_invitationContext;
  if (invitationContext)
  {
    v88 = [(CSDMessagingInvitationContext *)invitationContext dictionaryRepresentation];
    [v3 setObject:v88 forKey:@"invitationContext"];
  }

  if ((*&self->_has & 0x200) != 0)
  {
    v89 = [NSNumber numberWithBool:self->_isNearbySession];
    [v3 setObject:v89 forKey:@"isNearbySession"];
  }

  sharePlayAvailable = self->_sharePlayAvailable;
  if (sharePlayAvailable)
  {
    v91 = [(CSDMessagingSharePlayAvailable *)sharePlayAvailable dictionaryRepresentation];
    [v3 setObject:v91 forKey:@"sharePlayAvailable"];
  }

  v92 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  type = self->_type;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_4:
    shouldSuppressInCallUI = self->_shouldSuppressInCallUI;
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v7 = self->_activeParticipants;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v84 objects:v94 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v85;
    do
    {
      v11 = 0;
      do
      {
        if (*v85 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v84 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v84 objects:v94 count:16];
    }

    while (v9);
  }

  if (self->_conversationGroupUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v13 = self->_addedMembers;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v80 objects:v93 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v81;
    do
    {
      v17 = 0;
      do
      {
        if (*v81 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v80 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v80 objects:v93 count:16];
    }

    while (v15);
  }

  if ((*&self->_has & 2) != 0)
  {
    disconnectedReason = self->_disconnectedReason;
    PBDataWriterWriteUint32Field();
  }

  if (self->_protoUpgradeSessionUUID)
  {
    PBDataWriterWriteStringField();
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v20 = self->_activitySessions;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v76 objects:v92 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v77;
    do
    {
      v24 = 0;
      do
      {
        if (*v77 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v76 + 1) + 8 * v24);
        PBDataWriterWriteSubmessage();
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v76 objects:v92 count:16];
    }

    while (v22);
  }

  if (self->_nickname)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_link)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_reportData)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x100) != 0)
  {
    isLetMeInApproved = self->_isLetMeInApproved;
    PBDataWriterWriteBOOLField();
  }

  if (self->_encryptedMessage)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_letMeInDelegationHandle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_letMeInDelegationUUID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    enclosedEncryptedType = self->_enclosedEncryptedType;
    PBDataWriterWriteInt32Field();
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v28 = self->_invitationPreferences;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v72 objects:v91 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v73;
    do
    {
      v32 = 0;
      do
      {
        if (*v73 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v72 + 1) + 8 * v32);
        PBDataWriterWriteSubmessage();
        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v72 objects:v91 count:16];
    }

    while (v30);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v34 = self->_removedMembers;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v68 objects:v90 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v69;
    do
    {
      v38 = 0;
      do
      {
        if (*v69 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v68 + 1) + 8 * v38);
        PBDataWriterWriteSubmessage();
        v38 = v38 + 1;
      }

      while (v36 != v38);
      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v68 objects:v90 count:16];
    }

    while (v36);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v40 = self->_lightweightMembers;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v64 objects:v89 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v65;
    do
    {
      v44 = 0;
      do
      {
        if (*v65 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v64 + 1) + 8 * v44);
        PBDataWriterWriteSubmessage();
        v44 = v44 + 1;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v64 objects:v89 count:16];
    }

    while (v42);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v46 = self->_activeLightweightParticipants;
  v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v60 objects:v88 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v61;
    do
    {
      v50 = 0;
      do
      {
        if (*v61 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v60 + 1) + 8 * v50);
        PBDataWriterWriteSubmessage();
        v50 = v50 + 1;
      }

      while (v48 != v50);
      v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v60 objects:v88 count:16];
    }

    while (v48);
  }

  if ((*&self->_has & 0x80) != 0)
  {
    guestModeEnabled = self->_guestModeEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_highlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_joinedMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_stagedActivitySession)
  {
    PBDataWriterWriteSubmessage();
  }

  v53 = self->_has;
  if (v53)
  {
    avMode = self->_avMode;
    PBDataWriterWriteInt32Field();
    v53 = self->_has;
  }

  if ((v53 & 0x10) != 0)
  {
    requestBlobRecoveryOptions = self->_requestBlobRecoveryOptions;
    PBDataWriterWriteInt32Field();
  }

  if (self->_screenShareContext)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    presentationMode = self->_presentationMode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_invitationContext)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x200) != 0)
  {
    isNearbySession = self->_isNearbySession;
    PBDataWriterWriteBOOLField();
  }

  if (self->_sharePlayAvailable)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
    if ((has & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_81:
    v4[52] = self->_type;
    *(v4 + 110) |= 0x20u;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4[53] = self->_version;
  *(v4 + 110) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_81;
  }

LABEL_3:
  if ((has & 0x400) != 0)
  {
LABEL_4:
    *(v4 + 219) = self->_shouldSuppressInCallUI;
    *(v4 + 110) |= 0x400u;
  }

LABEL_5:
  v37 = v4;
  if ([(CSDMessagingConversationMessage *)self activeParticipantsCount])
  {
    [v37 clearActiveParticipants];
    v6 = [(CSDMessagingConversationMessage *)self activeParticipantsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CSDMessagingConversationMessage *)self activeParticipantsAtIndex:i];
        [v37 addActiveParticipants:v9];
      }
    }
  }

  if (self->_conversationGroupUUIDString)
  {
    [v37 setConversationGroupUUIDString:?];
  }

  if ([(CSDMessagingConversationMessage *)self addedMembersCount])
  {
    [v37 clearAddedMembers];
    v10 = [(CSDMessagingConversationMessage *)self addedMembersCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(CSDMessagingConversationMessage *)self addedMembersAtIndex:j];
        [v37 addAddedMembers:v13];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v37 + 14) = self->_disconnectedReason;
    *(v37 + 110) |= 2u;
  }

  if (self->_protoUpgradeSessionUUID)
  {
    [v37 setProtoUpgradeSessionUUID:?];
  }

  if ([(CSDMessagingConversationMessage *)self activitySessionsCount])
  {
    [v37 clearActivitySessions];
    v14 = [(CSDMessagingConversationMessage *)self activitySessionsCount];
    if (v14)
    {
      v15 = v14;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(CSDMessagingConversationMessage *)self activitySessionsAtIndex:k];
        [v37 addActivitySessions:v17];
      }
    }
  }

  if (self->_nickname)
  {
    [v37 setNickname:?];
  }

  v18 = v37;
  if (self->_link)
  {
    [v37 setLink:?];
    v18 = v37;
  }

  if (self->_reportData)
  {
    [v37 setReportData:?];
    v18 = v37;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v18[217] = self->_isLetMeInApproved;
    *(v18 + 110) |= 0x100u;
  }

  if (self->_encryptedMessage)
  {
    [v37 setEncryptedMessage:?];
    v18 = v37;
  }

  if (self->_letMeInDelegationHandle)
  {
    [v37 setLetMeInDelegationHandle:?];
    v18 = v37;
  }

  if (self->_letMeInDelegationUUID)
  {
    [v37 setLetMeInDelegationUUID:?];
    v18 = v37;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v18 + 15) = self->_enclosedEncryptedType;
    *(v18 + 110) |= 4u;
  }

  if ([(CSDMessagingConversationMessage *)self invitationPreferencesCount])
  {
    [v37 clearInvitationPreferences];
    v19 = [(CSDMessagingConversationMessage *)self invitationPreferencesCount];
    if (v19)
    {
      v20 = v19;
      for (m = 0; m != v20; ++m)
      {
        v22 = [(CSDMessagingConversationMessage *)self invitationPreferencesAtIndex:m];
        [v37 addInvitationPreferences:v22];
      }
    }
  }

  if ([(CSDMessagingConversationMessage *)self removedMembersCount])
  {
    [v37 clearRemovedMembers];
    v23 = [(CSDMessagingConversationMessage *)self removedMembersCount];
    if (v23)
    {
      v24 = v23;
      for (n = 0; n != v24; ++n)
      {
        v26 = [(CSDMessagingConversationMessage *)self removedMembersAtIndex:n];
        [v37 addRemovedMembers:v26];
      }
    }
  }

  if ([(CSDMessagingConversationMessage *)self lightweightMembersCount])
  {
    [v37 clearLightweightMembers];
    v27 = [(CSDMessagingConversationMessage *)self lightweightMembersCount];
    if (v27)
    {
      v28 = v27;
      for (ii = 0; ii != v28; ++ii)
      {
        v30 = [(CSDMessagingConversationMessage *)self lightweightMembersAtIndex:ii];
        [v37 addLightweightMembers:v30];
      }
    }
  }

  if ([(CSDMessagingConversationMessage *)self activeLightweightParticipantsCount])
  {
    [v37 clearActiveLightweightParticipants];
    v31 = [(CSDMessagingConversationMessage *)self activeLightweightParticipantsCount];
    if (v31)
    {
      v32 = v31;
      for (jj = 0; jj != v32; ++jj)
      {
        v34 = [(CSDMessagingConversationMessage *)self activeLightweightParticipantsAtIndex:jj];
        [v37 addActiveLightweightParticipants:v34];
      }
    }
  }

  v35 = v37;
  if ((*&self->_has & 0x80) != 0)
  {
    *(v37 + 216) = self->_guestModeEnabled;
    *(v37 + 110) |= 0x80u;
  }

  if (self->_highlightIdentifier)
  {
    [v37 setHighlightIdentifier:?];
    v35 = v37;
  }

  if (self->_joinedMetadata)
  {
    [v37 setJoinedMetadata:?];
    v35 = v37;
  }

  if (self->_stagedActivitySession)
  {
    [v37 setStagedActivitySession:?];
    v35 = v37;
  }

  v36 = self->_has;
  if (v36)
  {
    v35[10] = self->_avMode;
    *(v35 + 110) |= 1u;
    v36 = self->_has;
  }

  if ((v36 & 0x10) != 0)
  {
    v35[44] = self->_requestBlobRecoveryOptions;
    *(v35 + 110) |= 0x10u;
  }

  if (self->_screenShareContext)
  {
    [v37 setScreenShareContext:?];
    v35 = v37;
  }

  if ((*&self->_has & 8) != 0)
  {
    v35[36] = self->_presentationMode;
    *(v35 + 110) |= 8u;
  }

  if (self->_invitationContext)
  {
    [v37 setInvitationContext:?];
    v35 = v37;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    *(v35 + 218) = self->_isNearbySession;
    *(v35 + 110) |= 0x200u;
  }

  if (self->_sharePlayAvailable)
  {
    [v37 setSharePlayAvailable:?];
    v35 = v37;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v5[53] = self->_version;
    *(v5 + 110) |= 0x40u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v5[52] = self->_type;
  *(v5 + 110) |= 0x20u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_4:
    *(v5 + 219) = self->_shouldSuppressInCallUI;
    *(v5 + 110) |= 0x400u;
  }

LABEL_5:
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v8 = self->_activeParticipants;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v104 objects:v114 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v105;
    do
    {
      v12 = 0;
      do
      {
        if (*v105 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v104 + 1) + 8 * v12) copyWithZone:a3];
        [v6 addActiveParticipants:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v104 objects:v114 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_conversationGroupUUIDString copyWithZone:a3];
  v15 = *(v6 + 6);
  *(v6 + 6) = v14;

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v16 = self->_addedMembers;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v100 objects:v113 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v101;
    do
    {
      v20 = 0;
      do
      {
        if (*v101 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v100 + 1) + 8 * v20) copyWithZone:a3];
        [v6 addAddedMembers:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v100 objects:v113 count:16];
    }

    while (v18);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 14) = self->_disconnectedReason;
    *(v6 + 110) |= 2u;
  }

  v22 = [(NSString *)self->_protoUpgradeSessionUUID copyWithZone:a3];
  v23 = *(v6 + 19);
  *(v6 + 19) = v22;

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v24 = self->_activitySessions;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v96 objects:v112 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v97;
    do
    {
      v28 = 0;
      do
      {
        if (*v97 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v96 + 1) + 8 * v28) copyWithZone:a3];
        [v6 addActivitySessions:v29];

        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v96 objects:v112 count:16];
    }

    while (v26);
  }

  v30 = [(NSString *)self->_nickname copyWithZone:a3];
  v31 = *(v6 + 17);
  *(v6 + 17) = v30;

  v32 = [(CSDMessagingConversationLink *)self->_link copyWithZone:a3];
  v33 = *(v6 + 16);
  *(v6 + 16) = v32;

  v34 = [(CSDMessagingConversationReport *)self->_reportData copyWithZone:a3];
  v35 = *(v6 + 21);
  *(v6 + 21) = v34;

  if ((*&self->_has & 0x100) != 0)
  {
    *(v6 + 217) = self->_isLetMeInApproved;
    *(v6 + 110) |= 0x100u;
  }

  v36 = [(CSDMessagingEncryptedConversationMessage *)self->_encryptedMessage copyWithZone:a3];
  v37 = *(v6 + 8);
  *(v6 + 8) = v36;

  v38 = [(NSString *)self->_letMeInDelegationHandle copyWithZone:a3];
  v39 = *(v6 + 13);
  *(v6 + 13) = v38;

  v40 = [(NSString *)self->_letMeInDelegationUUID copyWithZone:a3];
  v41 = *(v6 + 14);
  *(v6 + 14) = v40;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 15) = self->_enclosedEncryptedType;
    *(v6 + 110) |= 4u;
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v42 = self->_invitationPreferences;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v92 objects:v111 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v93;
    do
    {
      v46 = 0;
      do
      {
        if (*v93 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v92 + 1) + 8 * v46) copyWithZone:a3];
        [v6 addInvitationPreferences:v47];

        v46 = v46 + 1;
      }

      while (v44 != v46);
      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v92 objects:v111 count:16];
    }

    while (v44);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v48 = self->_removedMembers;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v88 objects:v110 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v89;
    do
    {
      v52 = 0;
      do
      {
        if (*v89 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = [*(*(&v88 + 1) + 8 * v52) copyWithZone:a3];
        [v6 addRemovedMembers:v53];

        v52 = v52 + 1;
      }

      while (v50 != v52);
      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v88 objects:v110 count:16];
    }

    while (v50);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v54 = self->_lightweightMembers;
  v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v84 objects:v109 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v85;
    do
    {
      v58 = 0;
      do
      {
        if (*v85 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = [*(*(&v84 + 1) + 8 * v58) copyWithZone:a3];
        [v6 addLightweightMembers:v59];

        v58 = v58 + 1;
      }

      while (v56 != v58);
      v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v84 objects:v109 count:16];
    }

    while (v56);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v60 = self->_activeLightweightParticipants;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v80 objects:v108 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v81;
    do
    {
      v64 = 0;
      do
      {
        if (*v81 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = [*(*(&v80 + 1) + 8 * v64) copyWithZone:{a3, v80}];
        [v6 addActiveLightweightParticipants:v65];

        v64 = v64 + 1;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v80 objects:v108 count:16];
    }

    while (v62);
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(v6 + 216) = self->_guestModeEnabled;
    *(v6 + 110) |= 0x80u;
  }

  v66 = [(NSString *)self->_highlightIdentifier copyWithZone:a3, v80];
  v67 = *(v6 + 9);
  *(v6 + 9) = v66;

  v68 = [(CSDMessagingConversationJoinedMetadata *)self->_joinedMetadata copyWithZone:a3];
  v69 = *(v6 + 12);
  *(v6 + 12) = v68;

  v70 = [(CSDMessagingConversationActivitySession *)self->_stagedActivitySession copyWithZone:a3];
  v71 = *(v6 + 25);
  *(v6 + 25) = v70;

  v72 = self->_has;
  if (v72)
  {
    *(v6 + 10) = self->_avMode;
    *(v6 + 110) |= 1u;
    v72 = self->_has;
  }

  if ((v72 & 0x10) != 0)
  {
    *(v6 + 44) = self->_requestBlobRecoveryOptions;
    *(v6 + 110) |= 0x10u;
  }

  v73 = [(CSDMessagingScreenShareContext *)self->_screenShareContext copyWithZone:a3];
  v74 = *(v6 + 23);
  *(v6 + 23) = v73;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 36) = self->_presentationMode;
    *(v6 + 110) |= 8u;
  }

  v75 = [(CSDMessagingInvitationContext *)self->_invitationContext copyWithZone:a3];
  v76 = *(v6 + 10);
  *(v6 + 10) = v75;

  if ((*&self->_has & 0x200) != 0)
  {
    *(v6 + 218) = self->_isNearbySession;
    *(v6 + 110) |= 0x200u;
  }

  v77 = [(CSDMessagingSharePlayAvailable *)self->_sharePlayAvailable copyWithZone:a3];
  v78 = *(v6 + 24);
  *(v6 + 24) = v77;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(v4 + 110);
  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_version != *(v4 + 53))
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_24;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_type != *(v4 + 52))
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 110) & 0x400) == 0)
    {
      goto LABEL_24;
    }

    v13 = *(v4 + 219);
    if (self->_shouldSuppressInCallUI)
    {
      if ((*(v4 + 219) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (*(v4 + 219))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 110) & 0x400) != 0)
  {
    goto LABEL_24;
  }

  activeParticipants = self->_activeParticipants;
  if (activeParticipants | *(v4 + 2) && ![(NSMutableArray *)activeParticipants isEqual:?])
  {
    goto LABEL_24;
  }

  conversationGroupUUIDString = self->_conversationGroupUUIDString;
  if (conversationGroupUUIDString | *(v4 + 6))
  {
    if (![(NSString *)conversationGroupUUIDString isEqual:?])
    {
      goto LABEL_24;
    }
  }

  addedMembers = self->_addedMembers;
  if (addedMembers | *(v4 + 4))
  {
    if (![(NSMutableArray *)addedMembers isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v10 = *(v4 + 110);
  if ((*&self->_has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_disconnectedReason != *(v4 + 14))
    {
      goto LABEL_24;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_24;
  }

  protoUpgradeSessionUUID = self->_protoUpgradeSessionUUID;
  if (protoUpgradeSessionUUID | *(v4 + 19) && ![(NSString *)protoUpgradeSessionUUID isEqual:?])
  {
    goto LABEL_24;
  }

  activitySessions = self->_activitySessions;
  if (activitySessions | *(v4 + 3))
  {
    if (![(NSMutableArray *)activitySessions isEqual:?])
    {
      goto LABEL_24;
    }
  }

  nickname = self->_nickname;
  if (nickname | *(v4 + 17))
  {
    if (![(NSString *)nickname isEqual:?])
    {
      goto LABEL_24;
    }
  }

  link = self->_link;
  if (link | *(v4 + 16))
  {
    if (![(CSDMessagingConversationLink *)link isEqual:?])
    {
      goto LABEL_24;
    }
  }

  reportData = self->_reportData;
  if (reportData | *(v4 + 21))
  {
    if (![(CSDMessagingConversationReport *)reportData isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v19 = *(v4 + 110);
  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 110) & 0x100) == 0)
    {
      goto LABEL_24;
    }

    v24 = *(v4 + 217);
    if (self->_isLetMeInApproved)
    {
      if ((*(v4 + 217) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (*(v4 + 217))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 110) & 0x100) != 0)
  {
    goto LABEL_24;
  }

  encryptedMessage = self->_encryptedMessage;
  if (encryptedMessage | *(v4 + 8) && ![(CSDMessagingEncryptedConversationMessage *)encryptedMessage isEqual:?])
  {
    goto LABEL_24;
  }

  letMeInDelegationHandle = self->_letMeInDelegationHandle;
  if (letMeInDelegationHandle | *(v4 + 13))
  {
    if (![(NSString *)letMeInDelegationHandle isEqual:?])
    {
      goto LABEL_24;
    }
  }

  letMeInDelegationUUID = self->_letMeInDelegationUUID;
  if (letMeInDelegationUUID | *(v4 + 14))
  {
    if (![(NSString *)letMeInDelegationUUID isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v23 = *(v4 + 110);
  if ((*&self->_has & 4) != 0)
  {
    if ((v23 & 4) == 0 || self->_enclosedEncryptedType != *(v4 + 15))
    {
      goto LABEL_24;
    }
  }

  else if ((v23 & 4) != 0)
  {
    goto LABEL_24;
  }

  invitationPreferences = self->_invitationPreferences;
  if (invitationPreferences | *(v4 + 11) && ![(NSMutableArray *)invitationPreferences isEqual:?])
  {
    goto LABEL_24;
  }

  removedMembers = self->_removedMembers;
  if (removedMembers | *(v4 + 20))
  {
    if (![(NSMutableArray *)removedMembers isEqual:?])
    {
      goto LABEL_24;
    }
  }

  lightweightMembers = self->_lightweightMembers;
  if (lightweightMembers | *(v4 + 15))
  {
    if (![(NSMutableArray *)lightweightMembers isEqual:?])
    {
      goto LABEL_24;
    }
  }

  activeLightweightParticipants = self->_activeLightweightParticipants;
  if (activeLightweightParticipants | *(v4 + 1))
  {
    if (![(NSMutableArray *)activeLightweightParticipants isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v29 = *(v4 + 110);
  if ((*&self->_has & 0x80) != 0)
  {
    if ((v29 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    v35 = *(v4 + 216);
    if (self->_guestModeEnabled)
    {
      if ((*(v4 + 216) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (*(v4 + 216))
    {
      goto LABEL_24;
    }
  }

  else if ((v29 & 0x80) != 0)
  {
    goto LABEL_24;
  }

  highlightIdentifier = self->_highlightIdentifier;
  if (highlightIdentifier | *(v4 + 9) && ![(NSString *)highlightIdentifier isEqual:?])
  {
    goto LABEL_24;
  }

  joinedMetadata = self->_joinedMetadata;
  if (joinedMetadata | *(v4 + 12))
  {
    if (![(CSDMessagingConversationJoinedMetadata *)joinedMetadata isEqual:?])
    {
      goto LABEL_24;
    }
  }

  stagedActivitySession = self->_stagedActivitySession;
  if (stagedActivitySession | *(v4 + 25))
  {
    if (![(CSDMessagingConversationActivitySession *)stagedActivitySession isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v33 = self->_has;
  v34 = *(v4 + 110);
  if (v33)
  {
    if ((v34 & 1) == 0 || self->_avMode != *(v4 + 10))
    {
      goto LABEL_24;
    }
  }

  else if (v34)
  {
    goto LABEL_24;
  }

  if ((v33 & 0x10) != 0)
  {
    if ((v34 & 0x10) == 0 || self->_requestBlobRecoveryOptions != *(v4 + 44))
    {
      goto LABEL_24;
    }
  }

  else if ((v34 & 0x10) != 0)
  {
    goto LABEL_24;
  }

  screenShareContext = self->_screenShareContext;
  if (screenShareContext | *(v4 + 23))
  {
    if (![(CSDMessagingScreenShareContext *)screenShareContext isEqual:?])
    {
      goto LABEL_24;
    }

    v33 = self->_has;
  }

  v37 = *(v4 + 110);
  if ((v33 & 8) != 0)
  {
    if ((v37 & 8) == 0 || self->_presentationMode != *(v4 + 36))
    {
      goto LABEL_24;
    }
  }

  else if ((v37 & 8) != 0)
  {
    goto LABEL_24;
  }

  invitationContext = self->_invitationContext;
  if (invitationContext | *(v4 + 10))
  {
    if (![(CSDMessagingInvitationContext *)invitationContext isEqual:?])
    {
      goto LABEL_24;
    }

    v33 = self->_has;
  }

  v39 = *(v4 + 110);
  if ((v33 & 0x200) == 0)
  {
    if ((*(v4 + 110) & 0x200) == 0)
    {
      goto LABEL_113;
    }

LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  if ((*(v4 + 110) & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v40 = *(v4 + 218);
  if (!self->_isNearbySession)
  {
    if ((*(v4 + 218) & 1) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_24;
  }

  if ((*(v4 + 218) & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_113:
  sharePlayAvailable = self->_sharePlayAvailable;
  if (sharePlayAvailable | *(v4 + 24))
  {
    v11 = [(CSDMessagingSharePlayAvailable *)sharePlayAvailable isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_25:

  return v11;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x40) == 0)
  {
    v36 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v35 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v36 = 2654435761 * self->_version;
  if ((has & 0x20) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v35 = 2654435761 * self->_type;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_4:
    v34 = 2654435761 * self->_shouldSuppressInCallUI;
    goto LABEL_8;
  }

LABEL_7:
  v34 = 0;
LABEL_8:
  v33 = [(NSMutableArray *)self->_activeParticipants hash];
  v32 = [(NSString *)self->_conversationGroupUUIDString hash];
  v31 = [(NSMutableArray *)self->_addedMembers hash];
  if ((*&self->_has & 2) != 0)
  {
    v30 = 2654435761 * self->_disconnectedReason;
  }

  else
  {
    v30 = 0;
  }

  v29 = [(NSString *)self->_protoUpgradeSessionUUID hash];
  v28 = [(NSMutableArray *)self->_activitySessions hash];
  v27 = [(NSString *)self->_nickname hash];
  v26 = [(CSDMessagingConversationLink *)self->_link hash];
  v25 = [(CSDMessagingConversationReport *)self->_reportData hash];
  if ((*&self->_has & 0x100) != 0)
  {
    v24 = 2654435761 * self->_isLetMeInApproved;
  }

  else
  {
    v24 = 0;
  }

  v23 = [(CSDMessagingEncryptedConversationMessage *)self->_encryptedMessage hash];
  v22 = [(NSString *)self->_letMeInDelegationHandle hash];
  v21 = [(NSString *)self->_letMeInDelegationUUID hash];
  if ((*&self->_has & 4) != 0)
  {
    v20 = 2654435761 * self->_enclosedEncryptedType;
  }

  else
  {
    v20 = 0;
  }

  v19 = [(NSMutableArray *)self->_invitationPreferences hash];
  v18 = [(NSMutableArray *)self->_removedMembers hash];
  v17 = [(NSMutableArray *)self->_lightweightMembers hash];
  v16 = [(NSMutableArray *)self->_activeLightweightParticipants hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v15 = 2654435761 * self->_guestModeEnabled;
  }

  else
  {
    v15 = 0;
  }

  v4 = [(NSString *)self->_highlightIdentifier hash];
  v5 = [(CSDMessagingConversationJoinedMetadata *)self->_joinedMetadata hash];
  v6 = [(CSDMessagingConversationActivitySession *)self->_stagedActivitySession hash];
  v7 = self->_has;
  if (v7)
  {
    v8 = 2654435761 * self->_avMode;
    if ((v7 & 0x10) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = 0;
    if ((v7 & 0x10) != 0)
    {
LABEL_22:
      v9 = 2654435761 * self->_requestBlobRecoveryOptions;
      goto LABEL_25;
    }
  }

  v9 = 0;
LABEL_25:
  v10 = [(CSDMessagingScreenShareContext *)self->_screenShareContext hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_presentationMode;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(CSDMessagingInvitationContext *)self->_invitationContext hash];
  if ((*&self->_has & 0x200) != 0)
  {
    v13 = 2654435761 * self->_isNearbySession;
  }

  else
  {
    v13 = 0;
  }

  return v35 ^ v36 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v4 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ [(CSDMessagingSharePlayAvailable *)self->_sharePlayAvailable hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 110);
  if ((v6 & 0x40) != 0)
  {
    self->_version = *(v4 + 53);
    *&self->_has |= 0x40u;
    v6 = *(v4 + 110);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_type = *(v4 + 52);
  *&self->_has |= 0x20u;
  if ((*(v4 + 110) & 0x400) != 0)
  {
LABEL_4:
    self->_shouldSuppressInCallUI = *(v4 + 219);
    *&self->_has |= 0x400u;
  }

LABEL_5:
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v83 objects:v93 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v84;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v84 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CSDMessagingConversationMessage *)self addActiveParticipants:*(*(&v83 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v83 objects:v93 count:16];
    }

    while (v9);
  }

  if (*(v5 + 6))
  {
    [(CSDMessagingConversationMessage *)self setConversationGroupUUIDString:?];
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v12 = *(v5 + 4);
  v13 = [v12 countByEnumeratingWithState:&v79 objects:v92 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v80;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v80 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(CSDMessagingConversationMessage *)self addAddedMembers:*(*(&v79 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v79 objects:v92 count:16];
    }

    while (v14);
  }

  if ((*(v5 + 110) & 2) != 0)
  {
    self->_disconnectedReason = *(v5 + 14);
    *&self->_has |= 2u;
  }

  if (*(v5 + 19))
  {
    [(CSDMessagingConversationMessage *)self setProtoUpgradeSessionUUID:?];
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v17 = *(v5 + 3);
  v18 = [v17 countByEnumeratingWithState:&v75 objects:v91 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v76;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v76 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(CSDMessagingConversationMessage *)self addActivitySessions:*(*(&v75 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v75 objects:v91 count:16];
    }

    while (v19);
  }

  if (*(v5 + 17))
  {
    [(CSDMessagingConversationMessage *)self setNickname:?];
  }

  link = self->_link;
  v23 = *(v5 + 16);
  if (link)
  {
    if (v23)
    {
      [(CSDMessagingConversationLink *)link mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(CSDMessagingConversationMessage *)self setLink:?];
  }

  reportData = self->_reportData;
  v25 = *(v5 + 21);
  if (reportData)
  {
    if (v25)
    {
      [(CSDMessagingConversationReport *)reportData mergeFrom:?];
    }
  }

  else if (v25)
  {
    [(CSDMessagingConversationMessage *)self setReportData:?];
  }

  if ((*(v5 + 110) & 0x100) != 0)
  {
    self->_isLetMeInApproved = *(v5 + 217);
    *&self->_has |= 0x100u;
  }

  encryptedMessage = self->_encryptedMessage;
  v27 = *(v5 + 8);
  if (encryptedMessage)
  {
    if (v27)
    {
      [(CSDMessagingEncryptedConversationMessage *)encryptedMessage mergeFrom:?];
    }
  }

  else if (v27)
  {
    [(CSDMessagingConversationMessage *)self setEncryptedMessage:?];
  }

  if (*(v5 + 13))
  {
    [(CSDMessagingConversationMessage *)self setLetMeInDelegationHandle:?];
  }

  if (*(v5 + 14))
  {
    [(CSDMessagingConversationMessage *)self setLetMeInDelegationUUID:?];
  }

  if ((*(v5 + 110) & 4) != 0)
  {
    self->_enclosedEncryptedType = *(v5 + 15);
    *&self->_has |= 4u;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v28 = *(v5 + 11);
  v29 = [v28 countByEnumeratingWithState:&v71 objects:v90 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v72;
    do
    {
      for (m = 0; m != v30; m = m + 1)
      {
        if (*v72 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [(CSDMessagingConversationMessage *)self addInvitationPreferences:*(*(&v71 + 1) + 8 * m)];
      }

      v30 = [v28 countByEnumeratingWithState:&v71 objects:v90 count:16];
    }

    while (v30);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v33 = *(v5 + 20);
  v34 = [v33 countByEnumeratingWithState:&v67 objects:v89 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v68;
    do
    {
      for (n = 0; n != v35; n = n + 1)
      {
        if (*v68 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [(CSDMessagingConversationMessage *)self addRemovedMembers:*(*(&v67 + 1) + 8 * n)];
      }

      v35 = [v33 countByEnumeratingWithState:&v67 objects:v89 count:16];
    }

    while (v35);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v38 = *(v5 + 15);
  v39 = [v38 countByEnumeratingWithState:&v63 objects:v88 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v64;
    do
    {
      for (ii = 0; ii != v40; ii = ii + 1)
      {
        if (*v64 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [(CSDMessagingConversationMessage *)self addLightweightMembers:*(*(&v63 + 1) + 8 * ii)];
      }

      v40 = [v38 countByEnumeratingWithState:&v63 objects:v88 count:16];
    }

    while (v40);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v43 = *(v5 + 1);
  v44 = [v43 countByEnumeratingWithState:&v59 objects:v87 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v60;
    do
    {
      for (jj = 0; jj != v45; jj = jj + 1)
      {
        if (*v60 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [(CSDMessagingConversationMessage *)self addActiveLightweightParticipants:*(*(&v59 + 1) + 8 * jj), v59];
      }

      v45 = [v43 countByEnumeratingWithState:&v59 objects:v87 count:16];
    }

    while (v45);
  }

  if ((*(v5 + 110) & 0x80) != 0)
  {
    self->_guestModeEnabled = *(v5 + 216);
    *&self->_has |= 0x80u;
  }

  if (*(v5 + 9))
  {
    [(CSDMessagingConversationMessage *)self setHighlightIdentifier:?];
  }

  joinedMetadata = self->_joinedMetadata;
  v49 = *(v5 + 12);
  if (joinedMetadata)
  {
    if (v49)
    {
      [(CSDMessagingConversationJoinedMetadata *)joinedMetadata mergeFrom:?];
    }
  }

  else if (v49)
  {
    [(CSDMessagingConversationMessage *)self setJoinedMetadata:?];
  }

  stagedActivitySession = self->_stagedActivitySession;
  v51 = *(v5 + 25);
  if (stagedActivitySession)
  {
    if (v51)
    {
      [(CSDMessagingConversationActivitySession *)stagedActivitySession mergeFrom:?];
    }
  }

  else if (v51)
  {
    [(CSDMessagingConversationMessage *)self setStagedActivitySession:?];
  }

  v52 = *(v5 + 110);
  if (v52)
  {
    self->_avMode = *(v5 + 10);
    *&self->_has |= 1u;
    v52 = *(v5 + 110);
  }

  if ((v52 & 0x10) != 0)
  {
    self->_requestBlobRecoveryOptions = *(v5 + 44);
    *&self->_has |= 0x10u;
  }

  screenShareContext = self->_screenShareContext;
  v54 = *(v5 + 23);
  if (screenShareContext)
  {
    if (v54)
    {
      [(CSDMessagingScreenShareContext *)screenShareContext mergeFrom:?];
    }
  }

  else if (v54)
  {
    [(CSDMessagingConversationMessage *)self setScreenShareContext:?];
  }

  if ((*(v5 + 110) & 8) != 0)
  {
    self->_presentationMode = *(v5 + 36);
    *&self->_has |= 8u;
  }

  invitationContext = self->_invitationContext;
  v56 = *(v5 + 10);
  if (invitationContext)
  {
    if (v56)
    {
      [(CSDMessagingInvitationContext *)invitationContext mergeFrom:?];
    }
  }

  else if (v56)
  {
    [(CSDMessagingConversationMessage *)self setInvitationContext:?];
  }

  if ((*(v5 + 110) & 0x200) != 0)
  {
    self->_isNearbySession = *(v5 + 218);
    *&self->_has |= 0x200u;
  }

  sharePlayAvailable = self->_sharePlayAvailable;
  v58 = *(v5 + 24);
  if (sharePlayAvailable)
  {
    if (v58)
    {
      [(CSDMessagingSharePlayAvailable *)sharePlayAvailable mergeFrom:?];
    }
  }

  else if (v58)
  {
    [(CSDMessagingConversationMessage *)self setSharePlayAvailable:?];
  }
}

@end