@interface CSDMessagingConversationParticipantDidJoinContext
- (BOOL)isEqual:(id)a3;
- (NSSet)identityProvidingTUConversationMembers;
- (NSSet)otherInvitedTUHandles;
- (NSSet)tuConversationMembers;
- (NSSet)tuLightweightMembers;
- (id)allTUConversationMembers;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLightweightMembers:(id)a3;
- (void)addMembers:(id)a3;
- (void)addOtherInvitedHandles:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsGFTDowngradeToOneToOneAvailable:(BOOL)a3;
- (void)setHasIsGondolaCallingAvailable:(BOOL)a3;
- (void)setHasIsLightweight:(BOOL)a3;
- (void)setHasIsMomentsAvailable:(BOOL)a3;
- (void)setHasIsNearbySharePlay:(BOOL)a3;
- (void)setHasIsPersonaAvailable:(BOOL)a3;
- (void)setHasIsPhotosSharePlayAvailable:(BOOL)a3;
- (void)setHasIsScreenSharingAvailable:(BOOL)a3;
- (void)setHasIsSpatialPersonaEnabled:(BOOL)a3;
- (void)setHasIsTranslationAvailable:(BOOL)a3;
- (void)setHasIsUPlusNDowngradeAvailable:(BOOL)a3;
- (void)setHasIsUPlusOneAVLessAvailable:(BOOL)a3;
- (void)setHasIsUPlusOneScreenSharingAvailable:(BOOL)a3;
- (void)setHasIsUPlusOneVisionToVisionAvailable:(BOOL)a3;
- (void)setHasIsUpgradeToVideo:(BOOL)a3;
- (void)setHasSharePlayProtocolVersion:(BOOL)a3;
- (void)setHasSupportsLeaveContext:(BOOL)a3;
- (void)setHasSupportsRequestToScreenShare:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)setHasVideo:(BOOL)a3;
- (void)setHasVideoEnabled:(BOOL)a3;
- (void)setHasVisionCallEstablishmentVersion:(BOOL)a3;
- (void)setHasVisionFeatureVersion:(BOOL)a3;
- (void)setOtherInvitedTUHandles:(id)a3;
- (void)setTuConversationMembers:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationParticipantDidJoinContext

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)addMembers:(id)a3
{
  v4 = a3;
  members = self->_members;
  v8 = v4;
  if (!members)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_members;
    self->_members = v6;

    v4 = v8;
    members = self->_members;
  }

  [(NSMutableArray *)members addObject:v4];
}

- (void)setHasIsMomentsAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasVideo:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasIsScreenSharingAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
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

- (void)setHasIsPersonaAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
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

- (void)setHasIsLightweight:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasIsGondolaCallingAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasVideoEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasSharePlayProtocolVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasIsGFTDowngradeToOneToOneAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasIsUPlusNDowngradeAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasSupportsLeaveContext:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasIsUPlusOneScreenSharingAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasIsSpatialPersonaEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasIsUPlusOneAVLessAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasVisionFeatureVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasVisionCallEstablishmentVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasIsUPlusOneVisionToVisionAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasSupportsRequestToScreenShare:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasIsPhotosSharePlayAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasIsTranslationAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasIsNearbySharePlay:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasIsUpgradeToVideo:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  if ([(NSMutableArray *)self->_members count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_members, "count")}];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v6 = self->_members;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v79 objects:v85 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v80;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v80 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v79 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v79 objects:v85 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"members"];
  }

  message = self->_message;
  if (message)
  {
    v13 = [(CSDMessagingConversationMessage *)message dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"message"];
  }

  messagesGroupUUIDString = self->_messagesGroupUUIDString;
  if (messagesGroupUUIDString)
  {
    [v3 setObject:messagesGroupUUIDString forKey:@"messagesGroupUUIDString"];
  }

  messagesGroupName = self->_messagesGroupName;
  if (messagesGroupName)
  {
    [v3 setObject:messagesGroupName forKey:@"messagesGroupName"];
  }

  if (*(&self->_has + 1))
  {
    v16 = [NSNumber numberWithBool:self->_isMomentsAvailable];
    [v3 setObject:v16 forKey:@"isMomentsAvailable"];
  }

  activitySession = self->_activitySession;
  if (activitySession)
  {
    v18 = [(CSDMessagingConversationActivitySession *)activitySession dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"activitySession"];
  }

  has = self->_has;
  if ((*&has & 0x400000) != 0)
  {
    v20 = [NSNumber numberWithBool:self->_video];
    [v3 setObject:v20 forKey:@"video"];

    has = self->_has;
  }

  if ((*&has & 0x1000) != 0)
  {
    v21 = [NSNumber numberWithBool:self->_isScreenSharingAvailable];
    [v3 setObject:v21 forKey:@"isScreenSharingAvailable"];
  }

  providerIdentifier = self->_providerIdentifier;
  if (providerIdentifier)
  {
    [v3 setObject:providerIdentifier forKey:@"providerIdentifier"];
  }

  if ([(NSMutableArray *)self->_otherInvitedHandles count])
  {
    v23 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_otherInvitedHandles, "count")}];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v24 = self->_otherInvitedHandles;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v75 objects:v84 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v76;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v76 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v75 + 1) + 8 * j) dictionaryRepresentation];
          [v23 addObject:v29];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v75 objects:v84 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKey:@"otherInvitedHandles"];
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    v30 = [NSNumber numberWithBool:self->_isPersonaAvailable];
    [v3 setObject:v30 forKey:@"isPersonaAvailable"];
  }

  if ([(NSMutableArray *)self->_lightweightMembers count])
  {
    v31 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_lightweightMembers, "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v32 = self->_lightweightMembers;
    v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v72;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v72 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v71 + 1) + 8 * k) dictionaryRepresentation];
          [v31 addObject:v37];
        }

        v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v71 objects:v83 count:16];
      }

      while (v34);
    }

    [v3 setObject:v31 forKey:@"lightweightMembers"];
  }

  v38 = self->_has;
  if ((*&v38 & 0x80) != 0)
  {
    v57 = [NSNumber numberWithBool:self->_isLightweight];
    [v3 setObject:v57 forKey:@"isLightweight"];

    v38 = self->_has;
    if ((*&v38 & 0x40) == 0)
    {
LABEL_50:
      if ((*&v38 & 0x800000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_85;
    }
  }

  else if ((*&v38 & 0x40) == 0)
  {
    goto LABEL_50;
  }

  v58 = [NSNumber numberWithBool:self->_isGondolaCallingAvailable, v71];
  [v3 setObject:v58 forKey:@"isGondolaCallingAvailable"];

  v38 = self->_has;
  if ((*&v38 & 0x800000) == 0)
  {
LABEL_51:
    if ((*&v38 & 2) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_86;
  }

LABEL_85:
  v59 = [NSNumber numberWithBool:self->_videoEnabled, v71];
  [v3 setObject:v59 forKey:@"videoEnabled"];

  v38 = self->_has;
  if ((*&v38 & 2) == 0)
  {
LABEL_52:
    if ((*&v38 & 0x20) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_86:
  v60 = [NSNumber numberWithUnsignedInt:self->_sharePlayProtocolVersion, v71];
  [v3 setObject:v60 forKey:@"sharePlayProtocolVersion"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_53:
    v39 = [NSNumber numberWithBool:self->_isGFTDowngradeToOneToOneAvailable, v71];
    [v3 setObject:v39 forKey:@"isGFTDowngradeToOneToOneAvailable"];
  }

LABEL_54:
  participantAssociation = self->_participantAssociation;
  if (participantAssociation)
  {
    v41 = [(CSDMessagingConversationParticipantAssociation *)participantAssociation dictionaryRepresentation];
    [v3 setObject:v41 forKey:@"participantAssociation"];
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    v42 = [NSNumber numberWithBool:self->_isUPlusNDowngradeAvailable];
    [v3 setObject:v42 forKey:@"isUPlusNDowngradeAvailable"];
  }

  collaborationIdentifier = self->_collaborationIdentifier;
  if (collaborationIdentifier)
  {
    [v3 setObject:collaborationIdentifier forKey:@"collaborationIdentifier"];
  }

  v44 = self->_has;
  if ((*&v44 & 0x100000) != 0)
  {
    v61 = [NSNumber numberWithBool:self->_supportsLeaveContext];
    [v3 setObject:v61 forKey:@"supportsLeaveContext"];

    v44 = self->_has;
    if ((*&v44 & 0x20000) == 0)
    {
LABEL_62:
      if ((*&v44 & 0x2000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_90;
    }
  }

  else if ((*&v44 & 0x20000) == 0)
  {
    goto LABEL_62;
  }

  v62 = [NSNumber numberWithBool:self->_isUPlusOneScreenSharingAvailable, v71];
  [v3 setObject:v62 forKey:@"isUPlusOneScreenSharingAvailable"];

  v44 = self->_has;
  if ((*&v44 & 0x2000) == 0)
  {
LABEL_63:
    if ((*&v44 & 0x10000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_91;
  }

LABEL_90:
  v63 = [NSNumber numberWithBool:self->_isSpatialPersonaEnabled, v71];
  [v3 setObject:v63 forKey:@"isSpatialPersonaEnabled"];

  v44 = self->_has;
  if ((*&v44 & 0x10000) == 0)
  {
LABEL_64:
    if ((*&v44 & 0x10) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_92;
  }

LABEL_91:
  v64 = [NSNumber numberWithBool:self->_isUPlusOneAVLessAvailable, v71];
  [v3 setObject:v64 forKey:@"isUPlusOneAVLessAvailable"];

  v44 = self->_has;
  if ((*&v44 & 0x10) == 0)
  {
LABEL_65:
    if ((*&v44 & 8) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_92:
  v65 = [NSNumber numberWithUnsignedInt:self->_visionFeatureVersion, v71];
  [v3 setObject:v65 forKey:@"visionFeatureVersion"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_66:
    v45 = [NSNumber numberWithUnsignedInt:self->_visionCallEstablishmentVersion, v71];
    [v3 setObject:v45 forKey:@"visionCallEstablishmentVersion"];
  }

LABEL_67:
  screenSharingRequest = self->_screenSharingRequest;
  if (screenSharingRequest)
  {
    v47 = [(CSDMessagingScreenShareContext *)screenSharingRequest dictionaryRepresentation];
    [v3 setObject:v47 forKey:@"screenSharingRequest"];
  }

  v48 = self->_has;
  if ((*&v48 & 0x40000) != 0)
  {
    v66 = [NSNumber numberWithBool:self->_isUPlusOneVisionToVisionAvailable];
    [v3 setObject:v66 forKey:@"isUPlusOneVisionToVisionAvailable"];

    v48 = self->_has;
    if ((*&v48 & 0x200000) == 0)
    {
LABEL_71:
      if ((*&v48 & 0x800) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  else if ((*&v48 & 0x200000) == 0)
  {
    goto LABEL_71;
  }

  v67 = [NSNumber numberWithBool:self->_supportsRequestToScreenShare, v71];
  [v3 setObject:v67 forKey:@"supportsRequestToScreenShare"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_72:
    v49 = [NSNumber numberWithBool:self->_isPhotosSharePlayAvailable, v71];
    [v3 setObject:v49 forKey:@"isPhotosSharePlayAvailable"];
  }

LABEL_73:
  stableDeviceIdentifier = self->_stableDeviceIdentifier;
  if (stableDeviceIdentifier)
  {
    [v3 setObject:stableDeviceIdentifier forKey:@"stableDeviceIdentifier"];
  }

  participantCluster = self->_participantCluster;
  if (participantCluster)
  {
    v52 = [(CSDMessagingConversationParticipantCluster *)participantCluster dictionaryRepresentation];
    [v3 setObject:v52 forKey:@"participantCluster"];
  }

  v53 = self->_has;
  if ((*&v53 & 0x4000) != 0)
  {
    v68 = [NSNumber numberWithBool:self->_isTranslationAvailable];
    [v3 setObject:v68 forKey:@"isTranslationAvailable"];

    v53 = self->_has;
    if ((*&v53 & 0x200) == 0)
    {
LABEL_79:
      if ((*&v53 & 0x80000) == 0)
      {
        goto LABEL_80;
      }

LABEL_99:
      v70 = [NSNumber numberWithBool:self->_isUpgradeToVideo, v71];
      [v3 setObject:v70 forKey:@"isUpgradeToVideo"];

      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }
  }

  else if ((*&v53 & 0x200) == 0)
  {
    goto LABEL_79;
  }

  v69 = [NSNumber numberWithBool:self->_isNearbySharePlay, v71];
  [v3 setObject:v69 forKey:@"isNearbySharePlay"];

  v53 = self->_has;
  if ((*&v53 & 0x80000) != 0)
  {
    goto LABEL_99;
  }

LABEL_80:
  if (*&v53)
  {
LABEL_81:
    v54 = [NSNumber numberWithUnsignedInt:self->_nearbyFeatureVersion, v71];
    [v3 setObject:v54 forKey:@"nearbyFeatureVersion"];
  }

LABEL_82:
  v55 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v6 = self->_members;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v61;
    do
    {
      v10 = 0;
      do
      {
        if (*v61 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v60 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v8);
  }

  if (self->_message)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_messagesGroupUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messagesGroupName)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_has + 1))
  {
    isMomentsAvailable = self->_isMomentsAvailable;
    PBDataWriterWriteBOOLField();
  }

  if (self->_activitySession)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((*&has & 0x400000) != 0)
  {
    video = self->_video;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((*&has & 0x1000) != 0)
  {
    isScreenSharingAvailable = self->_isScreenSharingAvailable;
    PBDataWriterWriteBOOLField();
  }

  if (self->_providerIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v16 = self->_otherInvitedHandles;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v57;
    do
    {
      v20 = 0;
      do
      {
        if (*v57 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v56 + 1) + 8 * v20);
        PBDataWriterWriteSubmessage();
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v18);
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    isPersonaAvailable = self->_isPersonaAvailable;
    PBDataWriterWriteBOOLField();
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v23 = self->_lightweightMembers;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v53;
    do
    {
      v27 = 0;
      do
      {
        if (*v53 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v52 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v25);
  }

  v29 = self->_has;
  if ((*&v29 & 0x80) != 0)
  {
    isLightweight = self->_isLightweight;
    PBDataWriterWriteBOOLField();
    v29 = self->_has;
    if ((*&v29 & 0x40) == 0)
    {
LABEL_44:
      if ((*&v29 & 0x800000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_79;
    }
  }

  else if ((*&v29 & 0x40) == 0)
  {
    goto LABEL_44;
  }

  isGondolaCallingAvailable = self->_isGondolaCallingAvailable;
  PBDataWriterWriteBOOLField();
  v29 = self->_has;
  if ((*&v29 & 0x800000) == 0)
  {
LABEL_45:
    if ((*&v29 & 2) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_80;
  }

LABEL_79:
  videoEnabled = self->_videoEnabled;
  PBDataWriterWriteBOOLField();
  v29 = self->_has;
  if ((*&v29 & 2) == 0)
  {
LABEL_46:
    if ((*&v29 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_80:
  sharePlayProtocolVersion = self->_sharePlayProtocolVersion;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_47:
    isGFTDowngradeToOneToOneAvailable = self->_isGFTDowngradeToOneToOneAvailable;
    PBDataWriterWriteBOOLField();
  }

LABEL_48:
  if (self->_participantAssociation)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    isUPlusNDowngradeAvailable = self->_isUPlusNDowngradeAvailable;
    PBDataWriterWriteBOOLField();
  }

  if (self->_collaborationIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v32 = self->_has;
  if ((*&v32 & 0x100000) != 0)
  {
    supportsLeaveContext = self->_supportsLeaveContext;
    PBDataWriterWriteBOOLField();
    v32 = self->_has;
    if ((*&v32 & 0x20000) == 0)
    {
LABEL_56:
      if ((*&v32 & 0x2000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_84;
    }
  }

  else if ((*&v32 & 0x20000) == 0)
  {
    goto LABEL_56;
  }

  isUPlusOneScreenSharingAvailable = self->_isUPlusOneScreenSharingAvailable;
  PBDataWriterWriteBOOLField();
  v32 = self->_has;
  if ((*&v32 & 0x2000) == 0)
  {
LABEL_57:
    if ((*&v32 & 0x10000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_85;
  }

LABEL_84:
  isSpatialPersonaEnabled = self->_isSpatialPersonaEnabled;
  PBDataWriterWriteBOOLField();
  v32 = self->_has;
  if ((*&v32 & 0x10000) == 0)
  {
LABEL_58:
    if ((*&v32 & 0x10) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_86;
  }

LABEL_85:
  isUPlusOneAVLessAvailable = self->_isUPlusOneAVLessAvailable;
  PBDataWriterWriteBOOLField();
  v32 = self->_has;
  if ((*&v32 & 0x10) == 0)
  {
LABEL_59:
    if ((*&v32 & 8) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_86:
  visionFeatureVersion = self->_visionFeatureVersion;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_60:
    visionCallEstablishmentVersion = self->_visionCallEstablishmentVersion;
    PBDataWriterWriteUint32Field();
  }

LABEL_61:
  if (self->_screenSharingRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  v34 = self->_has;
  if ((*&v34 & 0x40000) != 0)
  {
    isUPlusOneVisionToVisionAvailable = self->_isUPlusOneVisionToVisionAvailable;
    PBDataWriterWriteBOOLField();
    v34 = self->_has;
    if ((*&v34 & 0x200000) == 0)
    {
LABEL_65:
      if ((*&v34 & 0x800) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }
  }

  else if ((*&v34 & 0x200000) == 0)
  {
    goto LABEL_65;
  }

  supportsRequestToScreenShare = self->_supportsRequestToScreenShare;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_66:
    isPhotosSharePlayAvailable = self->_isPhotosSharePlayAvailable;
    PBDataWriterWriteBOOLField();
  }

LABEL_67:
  if (self->_stableDeviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_participantCluster)
  {
    PBDataWriterWriteSubmessage();
  }

  v36 = self->_has;
  if ((*&v36 & 0x4000) != 0)
  {
    isTranslationAvailable = self->_isTranslationAvailable;
    PBDataWriterWriteBOOLField();
    v36 = self->_has;
    if ((*&v36 & 0x200) == 0)
    {
LABEL_73:
      if ((*&v36 & 0x80000) == 0)
      {
        goto LABEL_74;
      }

LABEL_93:
      isUpgradeToVideo = self->_isUpgradeToVideo;
      PBDataWriterWriteBOOLField();
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }
  }

  else if ((*&v36 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  isNearbySharePlay = self->_isNearbySharePlay;
  PBDataWriterWriteBOOLField();
  v36 = self->_has;
  if ((*&v36 & 0x80000) != 0)
  {
    goto LABEL_93;
  }

LABEL_74:
  if (*&v36)
  {
LABEL_75:
    nearbyFeatureVersion = self->_nearbyFeatureVersion;
    PBDataWriterWriteUint32Field();
  }

LABEL_76:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[32] = self->_version;
    v4[40] |= 4u;
  }

  v24 = v4;
  if ([(CSDMessagingConversationParticipantDidJoinContext *)self membersCount])
  {
    [v24 clearMembers];
    v5 = [(CSDMessagingConversationParticipantDidJoinContext *)self membersCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(CSDMessagingConversationParticipantDidJoinContext *)self membersAtIndex:i];
        [v24 addMembers:v8];
      }
    }
  }

  if (self->_message)
  {
    [v24 setMessage:?];
  }

  v9 = v24;
  if (self->_messagesGroupUUIDString)
  {
    [v24 setMessagesGroupUUIDString:?];
    v9 = v24;
  }

  if (self->_messagesGroupName)
  {
    [v24 setMessagesGroupName:?];
    v9 = v24;
  }

  if (*(&self->_has + 1))
  {
    v9[143] = self->_isMomentsAvailable;
    *(v9 + 40) |= 0x100u;
  }

  if (self->_activitySession)
  {
    [v24 setActivitySession:?];
    v9 = v24;
  }

  has = self->_has;
  if ((*&has & 0x400000) != 0)
  {
    v9[157] = self->_video;
    *(v9 + 40) |= 0x400000u;
    has = self->_has;
  }

  if ((*&has & 0x1000) != 0)
  {
    v9[147] = self->_isScreenSharingAvailable;
    *(v9 + 40) |= 0x1000u;
  }

  if (self->_providerIdentifier)
  {
    [v24 setProviderIdentifier:?];
  }

  if ([(CSDMessagingConversationParticipantDidJoinContext *)self otherInvitedHandlesCount])
  {
    [v24 clearOtherInvitedHandles];
    v11 = [(CSDMessagingConversationParticipantDidJoinContext *)self otherInvitedHandlesCount];
    if (v11)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(CSDMessagingConversationParticipantDidJoinContext *)self otherInvitedHandlesAtIndex:j];
        [v24 addOtherInvitedHandles:v14];
      }
    }
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    *(v24 + 145) = self->_isPersonaAvailable;
    *(v24 + 40) |= 0x400u;
  }

  if ([(CSDMessagingConversationParticipantDidJoinContext *)self lightweightMembersCount])
  {
    [v24 clearLightweightMembers];
    v15 = [(CSDMessagingConversationParticipantDidJoinContext *)self lightweightMembersCount];
    if (v15)
    {
      v16 = v15;
      for (k = 0; k != v16; ++k)
      {
        v18 = [(CSDMessagingConversationParticipantDidJoinContext *)self lightweightMembersAtIndex:k];
        [v24 addLightweightMembers:v18];
      }
    }
  }

  v19 = self->_has;
  v20 = v24;
  if ((*&v19 & 0x80) != 0)
  {
    *(v24 + 142) = self->_isLightweight;
    *(v24 + 40) |= 0x80u;
    v19 = self->_has;
    if ((*&v19 & 0x40) == 0)
    {
LABEL_35:
      if ((*&v19 & 0x800000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_72;
    }
  }

  else if ((*&v19 & 0x40) == 0)
  {
    goto LABEL_35;
  }

  *(v24 + 141) = self->_isGondolaCallingAvailable;
  *(v24 + 40) |= 0x40u;
  v19 = self->_has;
  if ((*&v19 & 0x800000) == 0)
  {
LABEL_36:
    if ((*&v19 & 2) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v24 + 158) = self->_videoEnabled;
  *(v24 + 40) |= 0x800000u;
  v19 = self->_has;
  if ((*&v19 & 2) == 0)
  {
LABEL_37:
    if ((*&v19 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_73:
  *(v24 + 28) = self->_sharePlayProtocolVersion;
  *(v24 + 40) |= 2u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_38:
    *(v24 + 140) = self->_isGFTDowngradeToOneToOneAvailable;
    *(v24 + 40) |= 0x20u;
  }

LABEL_39:
  if (self->_participantAssociation)
  {
    [v24 setParticipantAssociation:?];
    v20 = v24;
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    v20[150] = self->_isUPlusNDowngradeAvailable;
    *(v20 + 40) |= 0x8000u;
  }

  if (self->_collaborationIdentifier)
  {
    [v24 setCollaborationIdentifier:?];
    v20 = v24;
  }

  v21 = self->_has;
  if ((*&v21 & 0x100000) != 0)
  {
    v20[155] = self->_supportsLeaveContext;
    *(v20 + 40) |= 0x100000u;
    v21 = self->_has;
    if ((*&v21 & 0x20000) == 0)
    {
LABEL_47:
      if ((*&v21 & 0x2000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_77;
    }
  }

  else if ((*&v21 & 0x20000) == 0)
  {
    goto LABEL_47;
  }

  v20[152] = self->_isUPlusOneScreenSharingAvailable;
  *(v20 + 40) |= 0x20000u;
  v21 = self->_has;
  if ((*&v21 & 0x2000) == 0)
  {
LABEL_48:
    if ((*&v21 & 0x10000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_78;
  }

LABEL_77:
  v20[148] = self->_isSpatialPersonaEnabled;
  *(v20 + 40) |= 0x2000u;
  v21 = self->_has;
  if ((*&v21 & 0x10000) == 0)
  {
LABEL_49:
    if ((*&v21 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_79;
  }

LABEL_78:
  v20[151] = self->_isUPlusOneAVLessAvailable;
  *(v20 + 40) |= 0x10000u;
  v21 = self->_has;
  if ((*&v21 & 0x10) == 0)
  {
LABEL_50:
    if ((*&v21 & 8) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_79:
  *(v20 + 34) = self->_visionFeatureVersion;
  *(v20 + 40) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_51:
    *(v20 + 33) = self->_visionCallEstablishmentVersion;
    *(v20 + 40) |= 8u;
  }

LABEL_52:
  if (self->_screenSharingRequest)
  {
    [v24 setScreenSharingRequest:?];
    v20 = v24;
  }

  v22 = self->_has;
  if ((*&v22 & 0x40000) != 0)
  {
    v20[153] = self->_isUPlusOneVisionToVisionAvailable;
    *(v20 + 40) |= 0x40000u;
    v22 = self->_has;
    if ((*&v22 & 0x200000) == 0)
    {
LABEL_56:
      if ((*&v22 & 0x800) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  else if ((*&v22 & 0x200000) == 0)
  {
    goto LABEL_56;
  }

  v20[156] = self->_supportsRequestToScreenShare;
  *(v20 + 40) |= 0x200000u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_57:
    v20[146] = self->_isPhotosSharePlayAvailable;
    *(v20 + 40) |= 0x800u;
  }

LABEL_58:
  if (self->_stableDeviceIdentifier)
  {
    [v24 setStableDeviceIdentifier:?];
    v20 = v24;
  }

  if (self->_participantCluster)
  {
    [v24 setParticipantCluster:?];
    v20 = v24;
  }

  v23 = self->_has;
  if ((*&v23 & 0x4000) != 0)
  {
    v20[149] = self->_isTranslationAvailable;
    *(v20 + 40) |= 0x4000u;
    v23 = self->_has;
    if ((*&v23 & 0x200) == 0)
    {
LABEL_64:
      if ((*&v23 & 0x80000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_86;
    }
  }

  else if ((*&v23 & 0x200) == 0)
  {
    goto LABEL_64;
  }

  v20[144] = self->_isNearbySharePlay;
  *(v20 + 40) |= 0x200u;
  v23 = self->_has;
  if ((*&v23 & 0x80000) == 0)
  {
LABEL_65:
    if ((*&v23 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_86:
  v20[154] = self->_isUpgradeToVideo;
  *(v20 + 40) |= 0x80000u;
  if (*&self->_has)
  {
LABEL_66:
    *(v20 + 16) = self->_nearbyFeatureVersion;
    *(v20 + 40) |= 1u;
  }

LABEL_67:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[32] = self->_version;
    v5[40] |= 4u;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v7 = self->_members;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v60;
    do
    {
      v11 = 0;
      do
      {
        if (*v60 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v59 + 1) + 8 * v11) copyWithZone:a3];
        [v6 addMembers:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v9);
  }

  v13 = [(CSDMessagingConversationMessage *)self->_message copyWithZone:a3];
  v14 = *(v6 + 5);
  *(v6 + 5) = v13;

  v15 = [(NSString *)self->_messagesGroupUUIDString copyWithZone:a3];
  v16 = *(v6 + 7);
  *(v6 + 7) = v15;

  v17 = [(NSString *)self->_messagesGroupName copyWithZone:a3];
  v18 = *(v6 + 6);
  *(v6 + 6) = v17;

  if (*(&self->_has + 1))
  {
    *(v6 + 143) = self->_isMomentsAvailable;
    *(v6 + 40) |= 0x100u;
  }

  v19 = [(CSDMessagingConversationActivitySession *)self->_activitySession copyWithZone:a3];
  v20 = *(v6 + 1);
  *(v6 + 1) = v19;

  has = self->_has;
  if ((*&has & 0x400000) != 0)
  {
    *(v6 + 157) = self->_video;
    *(v6 + 40) |= 0x400000u;
    has = self->_has;
  }

  if ((*&has & 0x1000) != 0)
  {
    *(v6 + 147) = self->_isScreenSharingAvailable;
    *(v6 + 40) |= 0x1000u;
  }

  v22 = [(NSString *)self->_providerIdentifier copyWithZone:a3];
  v23 = *(v6 + 12);
  *(v6 + 12) = v22;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v24 = self->_otherInvitedHandles;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v56;
    do
    {
      v28 = 0;
      do
      {
        if (*v56 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v55 + 1) + 8 * v28) copyWithZone:a3];
        [v6 addOtherInvitedHandles:v29];

        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v26);
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    *(v6 + 145) = self->_isPersonaAvailable;
    *(v6 + 40) |= 0x400u;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v30 = self->_lightweightMembers;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v52;
    do
    {
      v34 = 0;
      do
      {
        if (*v52 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v51 + 1) + 8 * v34) copyWithZone:{a3, v51}];
        [v6 addLightweightMembers:v35];

        v34 = v34 + 1;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v32);
  }

  v36 = self->_has;
  if ((*&v36 & 0x80) != 0)
  {
    *(v6 + 142) = self->_isLightweight;
    *(v6 + 40) |= 0x80u;
    v36 = self->_has;
    if ((*&v36 & 0x40) == 0)
    {
LABEL_34:
      if ((*&v36 & 0x800000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_59;
    }
  }

  else if ((*&v36 & 0x40) == 0)
  {
    goto LABEL_34;
  }

  *(v6 + 141) = self->_isGondolaCallingAvailable;
  *(v6 + 40) |= 0x40u;
  v36 = self->_has;
  if ((*&v36 & 0x800000) == 0)
  {
LABEL_35:
    if ((*&v36 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v6 + 158) = self->_videoEnabled;
  *(v6 + 40) |= 0x800000u;
  v36 = self->_has;
  if ((*&v36 & 2) == 0)
  {
LABEL_36:
    if ((*&v36 & 0x20) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_60:
  *(v6 + 28) = self->_sharePlayProtocolVersion;
  *(v6 + 40) |= 2u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_37:
    *(v6 + 140) = self->_isGFTDowngradeToOneToOneAvailable;
    *(v6 + 40) |= 0x20u;
  }

LABEL_38:
  v37 = [(CSDMessagingConversationParticipantAssociation *)self->_participantAssociation copyWithZone:a3, v51];
  v38 = *(v6 + 10);
  *(v6 + 10) = v37;

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    *(v6 + 150) = self->_isUPlusNDowngradeAvailable;
    *(v6 + 40) |= 0x8000u;
  }

  v39 = [(NSString *)self->_collaborationIdentifier copyWithZone:a3];
  v40 = *(v6 + 2);
  *(v6 + 2) = v39;

  v41 = self->_has;
  if ((*&v41 & 0x100000) != 0)
  {
    *(v6 + 155) = self->_supportsLeaveContext;
    *(v6 + 40) |= 0x100000u;
    v41 = self->_has;
    if ((*&v41 & 0x20000) == 0)
    {
LABEL_42:
      if ((*&v41 & 0x2000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_64;
    }
  }

  else if ((*&v41 & 0x20000) == 0)
  {
    goto LABEL_42;
  }

  *(v6 + 152) = self->_isUPlusOneScreenSharingAvailable;
  *(v6 + 40) |= 0x20000u;
  v41 = self->_has;
  if ((*&v41 & 0x2000) == 0)
  {
LABEL_43:
    if ((*&v41 & 0x10000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v6 + 148) = self->_isSpatialPersonaEnabled;
  *(v6 + 40) |= 0x2000u;
  v41 = self->_has;
  if ((*&v41 & 0x10000) == 0)
  {
LABEL_44:
    if ((*&v41 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v6 + 151) = self->_isUPlusOneAVLessAvailable;
  *(v6 + 40) |= 0x10000u;
  v41 = self->_has;
  if ((*&v41 & 0x10) == 0)
  {
LABEL_45:
    if ((*&v41 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_66:
  *(v6 + 34) = self->_visionFeatureVersion;
  *(v6 + 40) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_46:
    *(v6 + 33) = self->_visionCallEstablishmentVersion;
    *(v6 + 40) |= 8u;
  }

LABEL_47:
  v42 = [(CSDMessagingScreenShareContext *)self->_screenSharingRequest copyWithZone:a3];
  v43 = *(v6 + 13);
  *(v6 + 13) = v42;

  v44 = self->_has;
  if ((*&v44 & 0x40000) != 0)
  {
    *(v6 + 153) = self->_isUPlusOneVisionToVisionAvailable;
    *(v6 + 40) |= 0x40000u;
    v44 = self->_has;
    if ((*&v44 & 0x200000) == 0)
    {
LABEL_49:
      if ((*&v44 & 0x800) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }
  }

  else if ((*&v44 & 0x200000) == 0)
  {
    goto LABEL_49;
  }

  *(v6 + 156) = self->_supportsRequestToScreenShare;
  *(v6 + 40) |= 0x200000u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_50:
    *(v6 + 146) = self->_isPhotosSharePlayAvailable;
    *(v6 + 40) |= 0x800u;
  }

LABEL_51:
  v45 = [(NSString *)self->_stableDeviceIdentifier copyWithZone:a3];
  v46 = *(v6 + 15);
  *(v6 + 15) = v45;

  v47 = [(CSDMessagingConversationParticipantCluster *)self->_participantCluster copyWithZone:a3];
  v48 = *(v6 + 11);
  *(v6 + 11) = v47;

  v49 = self->_has;
  if ((*&v49 & 0x4000) != 0)
  {
    *(v6 + 149) = self->_isTranslationAvailable;
    *(v6 + 40) |= 0x4000u;
    v49 = self->_has;
    if ((*&v49 & 0x200) == 0)
    {
LABEL_53:
      if ((*&v49 & 0x80000) == 0)
      {
        goto LABEL_54;
      }

LABEL_73:
      *(v6 + 154) = self->_isUpgradeToVideo;
      *(v6 + 40) |= 0x80000u;
      if ((*&self->_has & 1) == 0)
      {
        return v6;
      }

      goto LABEL_55;
    }
  }

  else if ((*&v49 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  *(v6 + 144) = self->_isNearbySharePlay;
  *(v6 + 40) |= 0x200u;
  v49 = self->_has;
  if ((*&v49 & 0x80000) != 0)
  {
    goto LABEL_73;
  }

LABEL_54:
  if (*&v49)
  {
LABEL_55:
    *(v6 + 16) = self->_nearbyFeatureVersion;
    *(v6 + 40) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_209;
  }

  v5 = *(v4 + 40);
  if ((*&self->_has & 4) != 0)
  {
    if ((v5 & 4) == 0 || self->_version != *(v4 + 32))
    {
      goto LABEL_209;
    }
  }

  else if ((v5 & 4) != 0)
  {
    goto LABEL_209;
  }

  members = self->_members;
  if (members | *(v4 + 4) && ![(NSMutableArray *)members isEqual:?])
  {
    goto LABEL_209;
  }

  message = self->_message;
  if (message | *(v4 + 5))
  {
    if (![(CSDMessagingConversationMessage *)message isEqual:?])
    {
      goto LABEL_209;
    }
  }

  messagesGroupUUIDString = self->_messagesGroupUUIDString;
  if (messagesGroupUUIDString | *(v4 + 7))
  {
    if (![(NSString *)messagesGroupUUIDString isEqual:?])
    {
      goto LABEL_209;
    }
  }

  messagesGroupName = self->_messagesGroupName;
  if (messagesGroupName | *(v4 + 6))
  {
    if (![(NSString *)messagesGroupName isEqual:?])
    {
      goto LABEL_209;
    }
  }

  has = self->_has;
  v11 = *(v4 + 40);
  if ((*&has & 0x100) != 0)
  {
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_209;
    }

    v20 = *(v4 + 143);
    if (self->_isMomentsAvailable)
    {
      if ((*(v4 + 143) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 143))
    {
      goto LABEL_209;
    }
  }

  else if ((v11 & 0x100) != 0)
  {
    goto LABEL_209;
  }

  activitySession = self->_activitySession;
  if (activitySession | *(v4 + 1))
  {
    if (![(CSDMessagingConversationActivitySession *)activitySession isEqual:?])
    {
      goto LABEL_209;
    }

    has = self->_has;
  }

  v13 = *(v4 + 40);
  if ((*&has & 0x400000) != 0)
  {
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_209;
    }

    v21 = *(v4 + 157);
    if (self->_video)
    {
      if ((*(v4 + 157) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 157))
    {
      goto LABEL_209;
    }
  }

  else if ((v13 & 0x400000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_209;
    }

    v22 = *(v4 + 147);
    if (self->_isScreenSharingAvailable)
    {
      if ((*(v4 + 147) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 147))
    {
      goto LABEL_209;
    }
  }

  else if ((v13 & 0x1000) != 0)
  {
    goto LABEL_209;
  }

  providerIdentifier = self->_providerIdentifier;
  if (providerIdentifier | *(v4 + 12) && ![(NSString *)providerIdentifier isEqual:?])
  {
    goto LABEL_209;
  }

  otherInvitedHandles = self->_otherInvitedHandles;
  if (otherInvitedHandles | *(v4 + 9))
  {
    if (![(NSMutableArray *)otherInvitedHandles isEqual:?])
    {
      goto LABEL_209;
    }
  }

  v16 = self->_has;
  v17 = *(v4 + 40);
  if ((*&v16 & 0x400) != 0)
  {
    if ((v17 & 0x400) == 0)
    {
      goto LABEL_209;
    }

    v23 = *(v4 + 145);
    if (self->_isPersonaAvailable)
    {
      if ((*(v4 + 145) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 145))
    {
      goto LABEL_209;
    }
  }

  else if ((v17 & 0x400) != 0)
  {
    goto LABEL_209;
  }

  lightweightMembers = self->_lightweightMembers;
  if (lightweightMembers | *(v4 + 3))
  {
    if (![(NSMutableArray *)lightweightMembers isEqual:?])
    {
      goto LABEL_209;
    }

    v16 = self->_has;
  }

  v19 = *(v4 + 40);
  if ((*&v16 & 0x80) != 0)
  {
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_209;
    }

    v24 = *(v4 + 142);
    if (self->_isLightweight)
    {
      if ((*(v4 + 142) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 142))
    {
      goto LABEL_209;
    }
  }

  else if ((v19 & 0x80) != 0)
  {
    goto LABEL_209;
  }

  if ((*&v16 & 0x40) != 0)
  {
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_209;
    }

    v25 = *(v4 + 141);
    if (self->_isGondolaCallingAvailable)
    {
      if ((*(v4 + 141) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 141))
    {
      goto LABEL_209;
    }
  }

  else if ((v19 & 0x40) != 0)
  {
    goto LABEL_209;
  }

  if ((*&v16 & 0x800000) != 0)
  {
    if ((v19 & 0x800000) == 0)
    {
      goto LABEL_209;
    }

    v26 = *(v4 + 158);
    if (self->_videoEnabled)
    {
      if ((*(v4 + 158) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 158))
    {
      goto LABEL_209;
    }
  }

  else if ((v19 & 0x800000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&v16 & 2) != 0)
  {
    if ((v19 & 2) == 0 || self->_sharePlayProtocolVersion != *(v4 + 28))
    {
      goto LABEL_209;
    }
  }

  else if ((v19 & 2) != 0)
  {
    goto LABEL_209;
  }

  if ((*&v16 & 0x20) != 0)
  {
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_209;
    }

    v31 = *(v4 + 140);
    if (self->_isGFTDowngradeToOneToOneAvailable)
    {
      if ((*(v4 + 140) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 140))
    {
      goto LABEL_209;
    }
  }

  else if ((v19 & 0x20) != 0)
  {
    goto LABEL_209;
  }

  participantAssociation = self->_participantAssociation;
  if (participantAssociation | *(v4 + 10))
  {
    if (![(CSDMessagingConversationParticipantAssociation *)participantAssociation isEqual:?])
    {
      goto LABEL_209;
    }

    v16 = self->_has;
  }

  v28 = *(v4 + 40);
  if ((*&v16 & 0x8000) != 0)
  {
    if ((v28 & 0x8000) == 0)
    {
      goto LABEL_209;
    }

    v32 = *(v4 + 150);
    if (self->_isUPlusNDowngradeAvailable)
    {
      if ((*(v4 + 150) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 150))
    {
      goto LABEL_209;
    }
  }

  else if ((v28 & 0x8000) != 0)
  {
    goto LABEL_209;
  }

  collaborationIdentifier = self->_collaborationIdentifier;
  if (collaborationIdentifier | *(v4 + 2))
  {
    if (![(NSString *)collaborationIdentifier isEqual:?])
    {
      goto LABEL_209;
    }

    v16 = self->_has;
  }

  v30 = *(v4 + 40);
  if ((*&v16 & 0x100000) != 0)
  {
    if ((v30 & 0x100000) == 0)
    {
      goto LABEL_209;
    }

    v33 = *(v4 + 155);
    if (self->_supportsLeaveContext)
    {
      if ((*(v4 + 155) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 155))
    {
      goto LABEL_209;
    }
  }

  else if ((v30 & 0x100000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&v16 & 0x20000) != 0)
  {
    if ((v30 & 0x20000) == 0)
    {
      goto LABEL_209;
    }

    v34 = *(v4 + 152);
    if (self->_isUPlusOneScreenSharingAvailable)
    {
      if ((*(v4 + 152) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 152))
    {
      goto LABEL_209;
    }
  }

  else if ((v30 & 0x20000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&v16 & 0x2000) != 0)
  {
    if ((v30 & 0x2000) == 0)
    {
      goto LABEL_209;
    }

    v35 = *(v4 + 148);
    if (self->_isSpatialPersonaEnabled)
    {
      if ((*(v4 + 148) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 148))
    {
      goto LABEL_209;
    }
  }

  else if ((v30 & 0x2000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&v16 & 0x10000) != 0)
  {
    if ((v30 & 0x10000) == 0)
    {
      goto LABEL_209;
    }

    v36 = *(v4 + 151);
    if (self->_isUPlusOneAVLessAvailable)
    {
      if ((*(v4 + 151) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 151))
    {
      goto LABEL_209;
    }
  }

  else if ((v30 & 0x10000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&v16 & 0x10) != 0)
  {
    if ((v30 & 0x10) == 0 || self->_visionFeatureVersion != *(v4 + 34))
    {
      goto LABEL_209;
    }
  }

  else if ((v30 & 0x10) != 0)
  {
    goto LABEL_209;
  }

  if ((*&v16 & 8) != 0)
  {
    if ((v30 & 8) == 0 || self->_visionCallEstablishmentVersion != *(v4 + 33))
    {
      goto LABEL_209;
    }
  }

  else if ((v30 & 8) != 0)
  {
    goto LABEL_209;
  }

  screenSharingRequest = self->_screenSharingRequest;
  if (screenSharingRequest | *(v4 + 13))
  {
    if (![(CSDMessagingScreenShareContext *)screenSharingRequest isEqual:?])
    {
      goto LABEL_209;
    }

    v16 = self->_has;
  }

  v38 = *(v4 + 40);
  if ((*&v16 & 0x40000) != 0)
  {
    if ((v38 & 0x40000) == 0)
    {
      goto LABEL_209;
    }

    v39 = *(v4 + 153);
    if (self->_isUPlusOneVisionToVisionAvailable)
    {
      if ((*(v4 + 153) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 153))
    {
      goto LABEL_209;
    }
  }

  else if ((v38 & 0x40000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&v16 & 0x200000) != 0)
  {
    if ((v38 & 0x200000) == 0)
    {
      goto LABEL_209;
    }

    v40 = *(v4 + 156);
    if (self->_supportsRequestToScreenShare)
    {
      if ((*(v4 + 156) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 156))
    {
      goto LABEL_209;
    }
  }

  else if ((v38 & 0x200000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&v16 & 0x800) != 0)
  {
    if ((v38 & 0x800) == 0)
    {
      goto LABEL_209;
    }

    v41 = *(v4 + 146);
    if (self->_isPhotosSharePlayAvailable)
    {
      if ((*(v4 + 146) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 146))
    {
      goto LABEL_209;
    }
  }

  else if ((v38 & 0x800) != 0)
  {
    goto LABEL_209;
  }

  stableDeviceIdentifier = self->_stableDeviceIdentifier;
  if (stableDeviceIdentifier | *(v4 + 15) && ![(NSString *)stableDeviceIdentifier isEqual:?])
  {
    goto LABEL_209;
  }

  participantCluster = self->_participantCluster;
  if (participantCluster | *(v4 + 11))
  {
    if (![(CSDMessagingConversationParticipantCluster *)participantCluster isEqual:?])
    {
      goto LABEL_209;
    }
  }

  v44 = self->_has;
  v45 = *(v4 + 40);
  if ((*&v44 & 0x4000) != 0)
  {
    if ((v45 & 0x4000) == 0)
    {
      goto LABEL_209;
    }

    v46 = *(v4 + 149);
    if (self->_isTranslationAvailable)
    {
      if ((*(v4 + 149) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 149))
    {
      goto LABEL_209;
    }
  }

  else if ((v45 & 0x4000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&v44 & 0x200) != 0)
  {
    if ((v45 & 0x200) == 0)
    {
      goto LABEL_209;
    }

    v48 = *(v4 + 144);
    if (self->_isNearbySharePlay)
    {
      if ((*(v4 + 144) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 144))
    {
      goto LABEL_209;
    }
  }

  else if ((v45 & 0x200) != 0)
  {
    goto LABEL_209;
  }

  if ((*&v44 & 0x80000) == 0)
  {
    if ((v45 & 0x80000) == 0)
    {
      goto LABEL_193;
    }

LABEL_209:
    v47 = 0;
    goto LABEL_210;
  }

  if ((v45 & 0x80000) == 0)
  {
    goto LABEL_209;
  }

  v49 = *(v4 + 154);
  if (self->_isUpgradeToVideo)
  {
    if ((*(v4 + 154) & 1) == 0)
    {
      goto LABEL_209;
    }
  }

  else if (*(v4 + 154))
  {
    goto LABEL_209;
  }

LABEL_193:
  if (*&v44)
  {
    if ((v45 & 1) == 0 || self->_nearbyFeatureVersion != *(v4 + 16))
    {
      goto LABEL_209;
    }

    v47 = 1;
  }

  else
  {
    v47 = (*(v4 + 40) & 1) == 0;
  }

LABEL_210:

  return v47;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v46 = 2654435761 * self->_version;
  }

  else
  {
    v46 = 0;
  }

  v45 = [(NSMutableArray *)self->_members hash];
  v44 = [(CSDMessagingConversationMessage *)self->_message hash];
  v43 = [(NSString *)self->_messagesGroupUUIDString hash];
  v42 = [(NSString *)self->_messagesGroupName hash];
  if (*(&self->_has + 1))
  {
    v41 = 2654435761 * self->_isMomentsAvailable;
  }

  else
  {
    v41 = 0;
  }

  v40 = [(CSDMessagingConversationActivitySession *)self->_activitySession hash];
  has = self->_has;
  if ((*&has & 0x400000) != 0)
  {
    v39 = 2654435761 * self->_video;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v39 = 0;
    if ((*&has & 0x1000) != 0)
    {
LABEL_9:
      v38 = 2654435761 * self->_isScreenSharingAvailable;
      goto LABEL_12;
    }
  }

  v38 = 0;
LABEL_12:
  v37 = [(NSString *)self->_providerIdentifier hash];
  v36 = [(NSMutableArray *)self->_otherInvitedHandles hash];
  if ((*(&self->_has + 1) & 4) != 0)
  {
    v35 = 2654435761 * self->_isPersonaAvailable;
  }

  else
  {
    v35 = 0;
  }

  v34 = [(NSMutableArray *)self->_lightweightMembers hash];
  v4 = self->_has;
  if ((*&v4 & 0x80) != 0)
  {
    v33 = 2654435761 * self->_isLightweight;
    if ((*&v4 & 0x40) != 0)
    {
LABEL_17:
      v32 = 2654435761 * self->_isGondolaCallingAvailable;
      if ((*&v4 & 0x800000) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v33 = 0;
    if ((*&v4 & 0x40) != 0)
    {
      goto LABEL_17;
    }
  }

  v32 = 0;
  if ((*&v4 & 0x800000) != 0)
  {
LABEL_18:
    v31 = 2654435761 * self->_videoEnabled;
    if ((*&v4 & 2) != 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    v30 = 0;
    if ((*&v4 & 0x20) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

LABEL_23:
  v31 = 0;
  if ((*&v4 & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  v30 = 2654435761 * self->_sharePlayProtocolVersion;
  if ((*&v4 & 0x20) != 0)
  {
LABEL_20:
    v29 = 2654435761 * self->_isGFTDowngradeToOneToOneAvailable;
    goto LABEL_26;
  }

LABEL_25:
  v29 = 0;
LABEL_26:
  v28 = [(CSDMessagingConversationParticipantAssociation *)self->_participantAssociation hash];
  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    v27 = 2654435761 * self->_isUPlusNDowngradeAvailable;
  }

  else
  {
    v27 = 0;
  }

  v26 = [(NSString *)self->_collaborationIdentifier hash];
  v5 = self->_has;
  if ((*&v5 & 0x100000) != 0)
  {
    v25 = 2654435761 * self->_supportsLeaveContext;
    if ((*&v5 & 0x20000) != 0)
    {
LABEL_31:
      v24 = 2654435761 * self->_isUPlusOneScreenSharingAvailable;
      if ((*&v5 & 0x2000) != 0)
      {
        goto LABEL_32;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v25 = 0;
    if ((*&v5 & 0x20000) != 0)
    {
      goto LABEL_31;
    }
  }

  v24 = 0;
  if ((*&v5 & 0x2000) != 0)
  {
LABEL_32:
    v23 = 2654435761 * self->_isSpatialPersonaEnabled;
    if ((*&v5 & 0x10000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

LABEL_38:
  v23 = 0;
  if ((*&v5 & 0x10000) != 0)
  {
LABEL_33:
    v21 = 2654435761 * self->_isUPlusOneAVLessAvailable;
    if ((*&v5 & 0x10) != 0)
    {
      goto LABEL_34;
    }

LABEL_40:
    v6 = 0;
    if ((*&v5 & 8) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

LABEL_39:
  v21 = 0;
  if ((*&v5 & 0x10) == 0)
  {
    goto LABEL_40;
  }

LABEL_34:
  v6 = 2654435761 * self->_visionFeatureVersion;
  if ((*&v5 & 8) != 0)
  {
LABEL_35:
    v7 = 2654435761 * self->_visionCallEstablishmentVersion;
    goto LABEL_42;
  }

LABEL_41:
  v7 = 0;
LABEL_42:
  v8 = [(CSDMessagingScreenShareContext *)self->_screenSharingRequest hash];
  v9 = self->_has;
  if ((*&v9 & 0x40000) == 0)
  {
    v10 = 0;
    if ((*&v9 & 0x200000) != 0)
    {
      goto LABEL_44;
    }

LABEL_47:
    v11 = 0;
    if ((*&v9 & 0x800) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_48;
  }

  v10 = 2654435761 * self->_isUPlusOneVisionToVisionAvailable;
  if ((*&v9 & 0x200000) == 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  v11 = 2654435761 * self->_supportsRequestToScreenShare;
  if ((*&v9 & 0x800) != 0)
  {
LABEL_45:
    v12 = 2654435761 * self->_isPhotosSharePlayAvailable;
    goto LABEL_49;
  }

LABEL_48:
  v12 = 0;
LABEL_49:
  v13 = [(NSString *)self->_stableDeviceIdentifier hash];
  v14 = [(CSDMessagingConversationParticipantCluster *)self->_participantCluster hash];
  v15 = self->_has;
  if ((*&v15 & 0x4000) != 0)
  {
    v16 = 2654435761 * self->_isTranslationAvailable;
    if ((*&v15 & 0x200) != 0)
    {
LABEL_51:
      v17 = 2654435761 * self->_isNearbySharePlay;
      if ((*&v15 & 0x80000) != 0)
      {
        goto LABEL_52;
      }

LABEL_56:
      v18 = 0;
      if (*&v15)
      {
        goto LABEL_53;
      }

LABEL_57:
      v19 = 0;
      return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v17 ^ v18 ^ v19;
    }
  }

  else
  {
    v16 = 0;
    if ((*&v15 & 0x200) != 0)
    {
      goto LABEL_51;
    }
  }

  v17 = 0;
  if ((*&v15 & 0x80000) == 0)
  {
    goto LABEL_56;
  }

LABEL_52:
  v18 = 2654435761 * self->_isUpgradeToVideo;
  if ((*&v15 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_53:
  v19 = 2654435761 * self->_nearbyFeatureVersion;
  return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*(v4 + 160) & 4) != 0)
  {
    self->_version = *(v4 + 32);
    *&self->_has |= 4u;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = *(v4 + 4);
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CSDMessagingConversationParticipantDidJoinContext *)self addMembers:*(*(&v44 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v8);
  }

  message = self->_message;
  v12 = *(v5 + 5);
  if (message)
  {
    if (v12)
    {
      [(CSDMessagingConversationMessage *)message mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)self setMessage:?];
  }

  if (*(v5 + 7))
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)self setMessagesGroupUUIDString:?];
  }

  if (*(v5 + 6))
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)self setMessagesGroupName:?];
  }

  if (*(v5 + 161))
  {
    self->_isMomentsAvailable = *(v5 + 143);
    *&self->_has |= 0x100u;
  }

  activitySession = self->_activitySession;
  v14 = *(v5 + 1);
  if (activitySession)
  {
    if (v14)
    {
      [(CSDMessagingConversationActivitySession *)activitySession mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)self setActivitySession:?];
  }

  v15 = *(v5 + 40);
  if ((v15 & 0x400000) != 0)
  {
    self->_video = *(v5 + 157);
    *&self->_has |= 0x400000u;
    v15 = *(v5 + 40);
  }

  if ((v15 & 0x1000) != 0)
  {
    self->_isScreenSharingAvailable = *(v5 + 147);
    *&self->_has |= 0x1000u;
  }

  if (*(v5 + 12))
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)self setProviderIdentifier:?];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = *(v5 + 9);
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(CSDMessagingConversationParticipantDidJoinContext *)self addOtherInvitedHandles:*(*(&v40 + 1) + 8 * j)];
      }

      v18 = [v16 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v18);
  }

  if ((*(v5 + 161) & 4) != 0)
  {
    self->_isPersonaAvailable = *(v5 + 145);
    *&self->_has |= 0x400u;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = *(v5 + 3);
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    do
    {
      for (k = 0; k != v23; k = k + 1)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(CSDMessagingConversationParticipantDidJoinContext *)self addLightweightMembers:*(*(&v36 + 1) + 8 * k), v36];
      }

      v23 = [v21 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v23);
  }

  v26 = *(v5 + 40);
  if ((v26 & 0x80) != 0)
  {
    self->_isLightweight = *(v5 + 142);
    *&self->_has |= 0x80u;
    v26 = *(v5 + 40);
    if ((v26 & 0x40) == 0)
    {
LABEL_50:
      if ((v26 & 0x800000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
    }
  }

  else if ((v26 & 0x40) == 0)
  {
    goto LABEL_50;
  }

  self->_isGondolaCallingAvailable = *(v5 + 141);
  *&self->_has |= 0x40u;
  v26 = *(v5 + 40);
  if ((v26 & 0x800000) == 0)
  {
LABEL_51:
    if ((v26 & 2) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_videoEnabled = *(v5 + 158);
  *&self->_has |= 0x800000u;
  v26 = *(v5 + 40);
  if ((v26 & 2) == 0)
  {
LABEL_52:
    if ((v26 & 0x20) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_60:
  self->_sharePlayProtocolVersion = *(v5 + 28);
  *&self->_has |= 2u;
  if ((*(v5 + 40) & 0x20) != 0)
  {
LABEL_53:
    self->_isGFTDowngradeToOneToOneAvailable = *(v5 + 140);
    *&self->_has |= 0x20u;
  }

LABEL_54:
  participantAssociation = self->_participantAssociation;
  v28 = *(v5 + 10);
  if (participantAssociation)
  {
    if (v28)
    {
      [(CSDMessagingConversationParticipantAssociation *)participantAssociation mergeFrom:?];
    }
  }

  else if (v28)
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)self setParticipantAssociation:?];
  }

  if ((*(v5 + 161) & 0x80) != 0)
  {
    self->_isUPlusNDowngradeAvailable = *(v5 + 150);
    *&self->_has |= 0x8000u;
  }

  if (*(v5 + 2))
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)self setCollaborationIdentifier:?];
  }

  v29 = *(v5 + 40);
  if ((v29 & 0x100000) != 0)
  {
    self->_supportsLeaveContext = *(v5 + 155);
    *&self->_has |= 0x100000u;
    v29 = *(v5 + 40);
    if ((v29 & 0x20000) == 0)
    {
LABEL_70:
      if ((v29 & 0x2000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_80;
    }
  }

  else if ((v29 & 0x20000) == 0)
  {
    goto LABEL_70;
  }

  self->_isUPlusOneScreenSharingAvailable = *(v5 + 152);
  *&self->_has |= 0x20000u;
  v29 = *(v5 + 40);
  if ((v29 & 0x2000) == 0)
  {
LABEL_71:
    if ((v29 & 0x10000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_isSpatialPersonaEnabled = *(v5 + 148);
  *&self->_has |= 0x2000u;
  v29 = *(v5 + 40);
  if ((v29 & 0x10000) == 0)
  {
LABEL_72:
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_isUPlusOneAVLessAvailable = *(v5 + 151);
  *&self->_has |= 0x10000u;
  v29 = *(v5 + 40);
  if ((v29 & 0x10) == 0)
  {
LABEL_73:
    if ((v29 & 8) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_82:
  self->_visionFeatureVersion = *(v5 + 34);
  *&self->_has |= 0x10u;
  if ((*(v5 + 40) & 8) != 0)
  {
LABEL_74:
    self->_visionCallEstablishmentVersion = *(v5 + 33);
    *&self->_has |= 8u;
  }

LABEL_75:
  screenSharingRequest = self->_screenSharingRequest;
  v31 = *(v5 + 13);
  if (screenSharingRequest)
  {
    if (v31)
    {
      [(CSDMessagingScreenShareContext *)screenSharingRequest mergeFrom:?];
    }
  }

  else if (v31)
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)self setScreenSharingRequest:?];
  }

  v32 = *(v5 + 40);
  if ((v32 & 0x40000) != 0)
  {
    self->_isUPlusOneVisionToVisionAvailable = *(v5 + 153);
    *&self->_has |= 0x40000u;
    v32 = *(v5 + 40);
    if ((v32 & 0x200000) == 0)
    {
LABEL_88:
      if ((v32 & 0x800) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_89;
    }
  }

  else if ((v32 & 0x200000) == 0)
  {
    goto LABEL_88;
  }

  self->_supportsRequestToScreenShare = *(v5 + 156);
  *&self->_has |= 0x200000u;
  if ((*(v5 + 40) & 0x800) != 0)
  {
LABEL_89:
    self->_isPhotosSharePlayAvailable = *(v5 + 146);
    *&self->_has |= 0x800u;
  }

LABEL_90:
  if (*(v5 + 15))
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)self setStableDeviceIdentifier:?];
  }

  participantCluster = self->_participantCluster;
  v34 = *(v5 + 11);
  if (participantCluster)
  {
    if (v34)
    {
      [(CSDMessagingConversationParticipantCluster *)participantCluster mergeFrom:?];
    }
  }

  else if (v34)
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)self setParticipantCluster:?];
  }

  v35 = *(v5 + 40);
  if ((v35 & 0x4000) != 0)
  {
    self->_isTranslationAvailable = *(v5 + 149);
    *&self->_has |= 0x4000u;
    v35 = *(v5 + 40);
    if ((v35 & 0x200) == 0)
    {
LABEL_102:
      if ((v35 & 0x80000) == 0)
      {
        goto LABEL_103;
      }

LABEL_108:
      self->_isUpgradeToVideo = *(v5 + 154);
      *&self->_has |= 0x80000u;
      if ((*(v5 + 40) & 1) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    }
  }

  else if ((v35 & 0x200) == 0)
  {
    goto LABEL_102;
  }

  self->_isNearbySharePlay = *(v5 + 144);
  *&self->_has |= 0x200u;
  v35 = *(v5 + 40);
  if ((v35 & 0x80000) != 0)
  {
    goto LABEL_108;
  }

LABEL_103:
  if (v35)
  {
LABEL_104:
    self->_nearbyFeatureVersion = *(v5 + 16);
    *&self->_has |= 1u;
  }

LABEL_105:
}

- (id)allTUConversationMembers
{
  v3 = [(CSDMessagingConversationParticipantDidJoinContext *)self members];
  v4 = [v3 count];
  v5 = [(CSDMessagingConversationParticipantDidJoinContext *)self lightweightMembers];
  v6 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", &v4[[v5 count]]);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(CSDMessagingConversationParticipantDidJoinContext *)self members];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v25 + 1) + 8 * i) tuConversationMember];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [(CSDMessagingConversationParticipantDidJoinContext *)self lightweightMembers];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * j) tuConversationMember];
        if (v18)
        {
          [v6 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = [v6 copy];

  return v19;
}

- (NSSet)identityProvidingTUConversationMembers
{
  v3 = [(CSDMessagingConversationParticipantDidJoinContext *)self members];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);

  v5 = [(CSDMessagingConversationParticipantDidJoinContext *)self allTUConversationMembers];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 association];
        v12 = [v11 type];

        if (v12 != 2)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (NSSet)tuConversationMembers
{
  v3 = [(CSDMessagingConversationParticipantDidJoinContext *)self members];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);

  v5 = [(CSDMessagingConversationParticipantDidJoinContext *)self allTUConversationMembers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 isLightweightMember] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (void)setTuConversationMembers:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
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

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 isLightweightMember];
        v11 = [CSDMessagingConversationMember memberWithTUConversationMember:v9];
        if (v10)
        {
          [(CSDMessagingConversationParticipantDidJoinContext *)self addLightweightMembers:v11];
        }

        else
        {
          [(CSDMessagingConversationParticipantDidJoinContext *)self addMembers:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (NSSet)otherInvitedTUHandles
{
  v3 = [(CSDMessagingConversationParticipantDidJoinContext *)self otherInvitedHandles];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CSDMessagingConversationParticipantDidJoinContext *)self otherInvitedHandles];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) tuHandle];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (void)setOtherInvitedTUHandles:(id)a3
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

        v9 = [CSDMessagingHandle handleWithTUHandle:*(*(&v10 + 1) + 8 * v8)];
        [(CSDMessagingConversationParticipantDidJoinContext *)self addOtherInvitedHandles:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (NSSet)tuLightweightMembers
{
  v3 = [(CSDMessagingConversationParticipantDidJoinContext *)self lightweightMembers];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);

  v5 = [(CSDMessagingConversationParticipantDidJoinContext *)self allTUConversationMembers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isLightweightMember])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CSDMessagingConversationParticipantDidJoinContext;
  v3 = [(CSDMessagingConversationParticipantDidJoinContext *)&v8 description];
  v4 = [(CSDMessagingConversationParticipantDidJoinContext *)self dictionaryRepresentation];
  v5 = TULoggableStringForObject();
  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

@end