@interface CSDMessagingConversationParticipant
+ (id)participantWithCSDConversationJoinContext:(id)context;
+ (id)participantWithCSDConversationParticipant:(id)participant;
+ (id)participantWithTUConversationParticipant:(id)participant;
- (BOOL)isEqual:(id)equal;
- (CSDConversationParticipant)csdConversationParticipant;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAvMode:(id)mode;
- (int)StringAsPresentationMode:(id)mode;
- (int)avMode;
- (int)presentationMode;
- (unint64_t)hash;
- (unint64_t)resolvedPresentationMode;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAvMode:(BOOL)mode;
- (void)setHasGuestModeEnabled:(BOOL)enabled;
- (void)setHasIsGFTDowngradeToOneToOneAvailable:(BOOL)available;
- (void)setHasIsGondolaCallingAvailable:(BOOL)available;
- (void)setHasIsLightweight:(BOOL)lightweight;
- (void)setHasIsMomentsAvailable:(BOOL)available;
- (void)setHasIsNearbySharePlay:(BOOL)play;
- (void)setHasIsPersonaAvailable:(BOOL)available;
- (void)setHasIsPhotosSharePlayAvailable:(BOOL)available;
- (void)setHasIsScreenSharingAvailable:(BOOL)available;
- (void)setHasIsSpatialPersonaEnabled:(BOOL)enabled;
- (void)setHasIsTranslationAvailable:(BOOL)available;
- (void)setHasIsUPlusNDowngradeAvailable:(BOOL)available;
- (void)setHasIsUPlusOneAVLessAvailable:(BOOL)available;
- (void)setHasIsUPlusOneScreenSharingAvailable:(BOOL)available;
- (void)setHasIsUPlusOneVisionToVisionAvailable:(BOOL)available;
- (void)setHasNearbyFeatureVersion:(BOOL)version;
- (void)setHasOptions:(BOOL)options;
- (void)setHasPresentationMode:(BOOL)mode;
- (void)setHasSharePlayProtocolVersion:(BOOL)version;
- (void)setHasSpatialPersonaGenerationCounter:(BOOL)counter;
- (void)setHasSupportsLeaveContext:(BOOL)context;
- (void)setHasSupportsRequestToScreenShare:(BOOL)share;
- (void)setHasVersion:(BOOL)version;
- (void)setHasVisionCallEstablishmentVersion:(BOOL)version;
- (void)setHasVisionFeatureVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationParticipant

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasIsMomentsAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasIsScreenSharingAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasIsGondolaCallingAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasIsPersonaAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasIsLightweight:(BOOL)lightweight
{
  if (lightweight)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasSharePlayProtocolVersion:(BOOL)version
{
  if (version)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasOptions:(BOOL)options
{
  if (options)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasIsGFTDowngradeToOneToOneAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasGuestModeEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasIsUPlusNDowngradeAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (int)avMode
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_avMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAvMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
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

- (void)setHasSupportsLeaveContext:(BOOL)context
{
  if (context)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasIsUPlusOneScreenSharingAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasIsSpatialPersonaEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasIsUPlusOneAVLessAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasVisionFeatureVersion:(BOOL)version
{
  if (version)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasVisionCallEstablishmentVersion:(BOOL)version
{
  if (version)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasIsUPlusOneVisionToVisionAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasSupportsRequestToScreenShare:(BOOL)share
{
  if (share)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasSpatialPersonaGenerationCounter:(BOOL)counter
{
  if (counter)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasIsPhotosSharePlayAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (int)presentationMode
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_presentationMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPresentationMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (int)StringAsPresentationMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"AVLessSharePlay"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"ContinuitySession"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsTranslationAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasIsNearbySharePlay:(BOOL)play
{
  if (play)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasNearbyFeatureVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if (*&has)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:self->_identifier];
    [v3 setObject:v6 forKey:@"identifier"];
  }

  handle = self->_handle;
  if (handle)
  {
    dictionaryRepresentation = [(CSDMessagingHandle *)handle dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"handle"];
  }

  avcData = self->_avcData;
  if (avcData)
  {
    [v3 setObject:avcData forKey:@"avcData"];
  }

  v10 = self->_has;
  if ((*&v10 & 0x4000) != 0)
  {
    v18 = [NSNumber numberWithBool:self->_isMomentsAvailable];
    [v3 setObject:v18 forKey:@"isMomentsAvailable"];

    v10 = self->_has;
    if ((*&v10 & 0x40000) == 0)
    {
LABEL_11:
      if ((*&v10 & 0x1000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_40;
    }
  }

  else if ((*&v10 & 0x40000) == 0)
  {
    goto LABEL_11;
  }

  v19 = [NSNumber numberWithBool:self->_isScreenSharingAvailable];
  [v3 setObject:v19 forKey:@"isScreenSharingAvailable"];

  v10 = self->_has;
  if ((*&v10 & 0x1000) == 0)
  {
LABEL_12:
    if ((*&v10 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = [NSNumber numberWithBool:self->_isGondolaCallingAvailable];
  [v3 setObject:v20 forKey:@"isGondolaCallingAvailable"];

  v10 = self->_has;
  if ((*&v10 & 0x10000) == 0)
  {
LABEL_13:
    if ((*&v10 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  v21 = [NSNumber numberWithBool:self->_isPersonaAvailable];
  [v3 setObject:v21 forKey:@"isPersonaAvailable"];

  v10 = self->_has;
  if ((*&v10 & 0x2000) == 0)
  {
LABEL_14:
    if ((*&v10 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  v22 = [NSNumber numberWithBool:self->_isLightweight];
  [v3 setObject:v22 forKey:@"isLightweight"];

  v10 = self->_has;
  if ((*&v10 & 0x20) == 0)
  {
LABEL_15:
    if ((*&v10 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  v23 = [NSNumber numberWithUnsignedInt:self->_sharePlayProtocolVersion];
  [v3 setObject:v23 forKey:@"sharePlayProtocolVersion"];

  v10 = self->_has;
  if ((*&v10 & 8) == 0)
  {
LABEL_16:
    if ((*&v10 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  v24 = [NSNumber numberWithUnsignedInt:self->_options];
  [v3 setObject:v24 forKey:@"options"];

  v10 = self->_has;
  if ((*&v10 & 0x800) == 0)
  {
LABEL_17:
    if ((*&v10 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_45:
  v25 = [NSNumber numberWithBool:self->_isGFTDowngradeToOneToOneAvailable];
  [v3 setObject:v25 forKey:@"isGFTDowngradeToOneToOneAvailable"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    v11 = [NSNumber numberWithBool:self->_guestModeEnabled];
    [v3 setObject:v11 forKey:@"guestModeEnabled"];
  }

LABEL_19:
  association = self->_association;
  if (association)
  {
    dictionaryRepresentation2 = [(CSDMessagingConversationParticipantAssociation *)association dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"association"];
  }

  v14 = self->_has;
  if ((*&v14 & 0x200000) != 0)
  {
    v26 = [NSNumber numberWithBool:self->_isUPlusNDowngradeAvailable];
    [v3 setObject:v26 forKey:@"isUPlusNDowngradeAvailable"];

    v14 = self->_has;
    if ((*&v14 & 2) == 0)
    {
LABEL_23:
      if ((*&v14 & 0x2000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_62;
    }
  }

  else if ((*&v14 & 2) == 0)
  {
    goto LABEL_23;
  }

  avMode = self->_avMode;
  if (avMode >= 3)
  {
    v28 = [NSString stringWithFormat:@"(unknown: %i)", self->_avMode];
  }

  else
  {
    v28 = *(&off_100619F88 + avMode);
  }

  [v3 setObject:v28 forKey:@"avMode"];

  v14 = self->_has;
  if ((*&v14 & 0x2000000) == 0)
  {
LABEL_24:
    if ((*&v14 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_62:
  v39 = [NSNumber numberWithBool:self->_supportsLeaveContext];
  [v3 setObject:v39 forKey:@"supportsLeaveContext"];

  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_25:
    v15 = [NSNumber numberWithBool:self->_isUPlusOneScreenSharingAvailable];
    [v3 setObject:v15 forKey:@"isUPlusOneScreenSharingAvailable"];
  }

LABEL_26:
  personaHandshakeData = self->_personaHandshakeData;
  if (personaHandshakeData)
  {
    [v3 setObject:personaHandshakeData forKey:@"personaHandshakeData"];
  }

  v17 = self->_has;
  if ((*&v17 & 0x80000) != 0)
  {
    v29 = [NSNumber numberWithBool:self->_isSpatialPersonaEnabled];
    [v3 setObject:v29 forKey:@"isSpatialPersonaEnabled"];

    v17 = self->_has;
    if ((*&v17 & 0x400000) == 0)
    {
LABEL_30:
      if ((*&v17 & 0x200) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_52;
    }
  }

  else if ((*&v17 & 0x400000) == 0)
  {
    goto LABEL_30;
  }

  v30 = [NSNumber numberWithBool:self->_isUPlusOneAVLessAvailable];
  [v3 setObject:v30 forKey:@"isUPlusOneAVLessAvailable"];

  v17 = self->_has;
  if ((*&v17 & 0x200) == 0)
  {
LABEL_31:
    if ((*&v17 & 0x100) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_53;
  }

LABEL_52:
  v31 = [NSNumber numberWithUnsignedInt:self->_visionFeatureVersion];
  [v3 setObject:v31 forKey:@"visionFeatureVersion"];

  v17 = self->_has;
  if ((*&v17 & 0x100) == 0)
  {
LABEL_32:
    if ((*&v17 & 0x1000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_54;
  }

LABEL_53:
  v32 = [NSNumber numberWithUnsignedInt:self->_visionCallEstablishmentVersion];
  [v3 setObject:v32 forKey:@"visionCallEstablishmentVersion"];

  v17 = self->_has;
  if ((*&v17 & 0x1000000) == 0)
  {
LABEL_33:
    if ((*&v17 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_55;
  }

LABEL_54:
  v33 = [NSNumber numberWithBool:self->_isUPlusOneVisionToVisionAvailable];
  [v3 setObject:v33 forKey:@"isUPlusOneVisionToVisionAvailable"];

  v17 = self->_has;
  if ((*&v17 & 0x4000000) == 0)
  {
LABEL_34:
    if ((*&v17 & 0x40) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_56;
  }

LABEL_55:
  v34 = [NSNumber numberWithBool:self->_supportsRequestToScreenShare];
  [v3 setObject:v34 forKey:@"supportsRequestToScreenShare"];

  v17 = self->_has;
  if ((*&v17 & 0x40) == 0)
  {
LABEL_35:
    if ((*&v17 & 0x20000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_57;
  }

LABEL_56:
  v35 = [NSNumber numberWithUnsignedInt:self->_spatialPersonaGenerationCounter];
  [v3 setObject:v35 forKey:@"spatialPersonaGenerationCounter"];

  v17 = self->_has;
  if ((*&v17 & 0x20000) == 0)
  {
LABEL_36:
    if ((*&v17 & 0x10) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_58;
  }

LABEL_57:
  v36 = [NSNumber numberWithBool:self->_isPhotosSharePlayAvailable];
  [v3 setObject:v36 forKey:@"isPhotosSharePlayAvailable"];

  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_66;
  }

LABEL_58:
  presentationMode = self->_presentationMode;
  if (presentationMode >= 3)
  {
    v38 = [NSString stringWithFormat:@"(unknown: %i)", self->_presentationMode];
  }

  else
  {
    v38 = *(&off_100619FA0 + presentationMode);
  }

  [v3 setObject:v38 forKey:@"presentationMode"];

LABEL_66:
  stableDeviceIdentifier = self->_stableDeviceIdentifier;
  if (stableDeviceIdentifier)
  {
    [v3 setObject:stableDeviceIdentifier forKey:@"stableDeviceIdentifier"];
  }

  cluster = self->_cluster;
  if (cluster)
  {
    dictionaryRepresentation3 = [(CSDMessagingConversationParticipantCluster *)cluster dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"cluster"];
  }

  v43 = self->_has;
  if ((*&v43 & 0x100000) == 0)
  {
    if ((*&v43 & 0x8000) == 0)
    {
      goto LABEL_72;
    }

LABEL_76:
    v48 = [NSNumber numberWithBool:self->_isNearbySharePlay];
    [v3 setObject:v48 forKey:@"isNearbySharePlay"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v47 = [NSNumber numberWithBool:self->_isTranslationAvailable];
  [v3 setObject:v47 forKey:@"isTranslationAvailable"];

  v43 = self->_has;
  if ((*&v43 & 0x8000) != 0)
  {
    goto LABEL_76;
  }

LABEL_72:
  if ((*&v43 & 4) != 0)
  {
LABEL_73:
    v44 = [NSNumber numberWithUnsignedInt:self->_nearbyFeatureVersion];
    [v3 setObject:v44 forKey:@"nearbyFeatureVersion"];
  }

LABEL_74:
  v45 = v3;

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (*&has)
  {
    identifier = self->_identifier;
    PBDataWriterWriteUint64Field();
  }

  if (self->_handle)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_avcData)
  {
    PBDataWriterWriteDataField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x4000) != 0)
  {
    isMomentsAvailable = self->_isMomentsAvailable;
    PBDataWriterWriteBOOLField();
    v7 = self->_has;
    if ((*&v7 & 0x40000) == 0)
    {
LABEL_11:
      if ((*&v7 & 0x1000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_51;
    }
  }

  else if ((*&v7 & 0x40000) == 0)
  {
    goto LABEL_11;
  }

  isScreenSharingAvailable = self->_isScreenSharingAvailable;
  PBDataWriterWriteBOOLField();
  v7 = self->_has;
  if ((*&v7 & 0x1000) == 0)
  {
LABEL_12:
    if ((*&v7 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  isGondolaCallingAvailable = self->_isGondolaCallingAvailable;
  PBDataWriterWriteBOOLField();
  v7 = self->_has;
  if ((*&v7 & 0x10000) == 0)
  {
LABEL_13:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  isPersonaAvailable = self->_isPersonaAvailable;
  PBDataWriterWriteBOOLField();
  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_14:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  isLightweight = self->_isLightweight;
  PBDataWriterWriteBOOLField();
  v7 = self->_has;
  if ((*&v7 & 0x20) == 0)
  {
LABEL_15:
    if ((*&v7 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  sharePlayProtocolVersion = self->_sharePlayProtocolVersion;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 8) == 0)
  {
LABEL_16:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  options = self->_options;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_17:
    if ((*&v7 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_56:
  isGFTDowngradeToOneToOneAvailable = self->_isGFTDowngradeToOneToOneAvailable;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    guestModeEnabled = self->_guestModeEnabled;
    PBDataWriterWriteBOOLField();
  }

LABEL_19:
  if (self->_association)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = self->_has;
  if ((*&v9 & 0x200000) != 0)
  {
    isUPlusNDowngradeAvailable = self->_isUPlusNDowngradeAvailable;
    PBDataWriterWriteBOOLField();
    v9 = self->_has;
    if ((*&v9 & 2) == 0)
    {
LABEL_23:
      if ((*&v9 & 0x2000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_60;
    }
  }

  else if ((*&v9 & 2) == 0)
  {
    goto LABEL_23;
  }

  avMode = self->_avMode;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x2000000) == 0)
  {
LABEL_24:
    if ((*&v9 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_60:
  supportsLeaveContext = self->_supportsLeaveContext;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_25:
    isUPlusOneScreenSharingAvailable = self->_isUPlusOneScreenSharingAvailable;
    PBDataWriterWriteBOOLField();
  }

LABEL_26:
  if (self->_personaHandshakeData)
  {
    PBDataWriterWriteDataField();
  }

  v11 = self->_has;
  if ((*&v11 & 0x80000) != 0)
  {
    isSpatialPersonaEnabled = self->_isSpatialPersonaEnabled;
    PBDataWriterWriteBOOLField();
    v11 = self->_has;
    if ((*&v11 & 0x400000) == 0)
    {
LABEL_30:
      if ((*&v11 & 0x200) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_64;
    }
  }

  else if ((*&v11 & 0x400000) == 0)
  {
    goto LABEL_30;
  }

  isUPlusOneAVLessAvailable = self->_isUPlusOneAVLessAvailable;
  PBDataWriterWriteBOOLField();
  v11 = self->_has;
  if ((*&v11 & 0x200) == 0)
  {
LABEL_31:
    if ((*&v11 & 0x100) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  visionFeatureVersion = self->_visionFeatureVersion;
  PBDataWriterWriteUint32Field();
  v11 = self->_has;
  if ((*&v11 & 0x100) == 0)
  {
LABEL_32:
    if ((*&v11 & 0x1000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_66;
  }

LABEL_65:
  visionCallEstablishmentVersion = self->_visionCallEstablishmentVersion;
  PBDataWriterWriteUint32Field();
  v11 = self->_has;
  if ((*&v11 & 0x1000000) == 0)
  {
LABEL_33:
    if ((*&v11 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_67;
  }

LABEL_66:
  isUPlusOneVisionToVisionAvailable = self->_isUPlusOneVisionToVisionAvailable;
  PBDataWriterWriteBOOLField();
  v11 = self->_has;
  if ((*&v11 & 0x4000000) == 0)
  {
LABEL_34:
    if ((*&v11 & 0x40) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_68;
  }

LABEL_67:
  supportsRequestToScreenShare = self->_supportsRequestToScreenShare;
  PBDataWriterWriteBOOLField();
  v11 = self->_has;
  if ((*&v11 & 0x40) == 0)
  {
LABEL_35:
    if ((*&v11 & 0x20000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_69;
  }

LABEL_68:
  spatialPersonaGenerationCounter = self->_spatialPersonaGenerationCounter;
  PBDataWriterWriteUint32Field();
  v11 = self->_has;
  if ((*&v11 & 0x20000) == 0)
  {
LABEL_36:
    if ((*&v11 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_69:
  isPhotosSharePlayAvailable = self->_isPhotosSharePlayAvailable;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_37:
    presentationMode = self->_presentationMode;
    PBDataWriterWriteInt32Field();
  }

LABEL_38:
  if (self->_stableDeviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cluster)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = self->_has;
  if ((*&v13 & 0x100000) != 0)
  {
    isTranslationAvailable = self->_isTranslationAvailable;
    PBDataWriterWriteBOOLField();
    v13 = self->_has;
    if ((*&v13 & 0x8000) == 0)
    {
LABEL_44:
      if ((*&v13 & 4) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }
  }

  else if ((*&v13 & 0x8000) == 0)
  {
    goto LABEL_44;
  }

  isNearbySharePlay = self->_isNearbySharePlay;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_45:
    nearbyFeatureVersion = self->_nearbyFeatureVersion;
    PBDataWriterWriteUint32Field();
  }

LABEL_46:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    toCopy[24] = self->_version;
    toCopy[32] |= 0x80u;
    has = self->_has;
  }

  if (*&has)
  {
    *(toCopy + 1) = self->_identifier;
    toCopy[32] |= 1u;
  }

  v10 = toCopy;
  if (self->_handle)
  {
    [toCopy setHandle:?];
    toCopy = v10;
  }

  if (self->_avcData)
  {
    [v10 setAvcData:?];
    toCopy = v10;
  }

  v6 = self->_has;
  if ((*&v6 & 0x4000) != 0)
  {
    *(toCopy + 112) = self->_isMomentsAvailable;
    toCopy[32] |= 0x4000u;
    v6 = self->_has;
    if ((*&v6 & 0x40000) == 0)
    {
LABEL_11:
      if ((*&v6 & 0x1000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_51;
    }
  }

  else if ((*&v6 & 0x40000) == 0)
  {
    goto LABEL_11;
  }

  *(toCopy + 116) = self->_isScreenSharingAvailable;
  toCopy[32] |= 0x40000u;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_12:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(toCopy + 110) = self->_isGondolaCallingAvailable;
  toCopy[32] |= 0x1000u;
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_13:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(toCopy + 114) = self->_isPersonaAvailable;
  toCopy[32] |= 0x10000u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_14:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(toCopy + 111) = self->_isLightweight;
  toCopy[32] |= 0x2000u;
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_15:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  toCopy[19] = self->_sharePlayProtocolVersion;
  toCopy[32] |= 0x20u;
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_16:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  toCopy[15] = self->_options;
  toCopy[32] |= 8u;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_56:
  *(toCopy + 109) = self->_isGFTDowngradeToOneToOneAvailable;
  toCopy[32] |= 0x800u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    *(toCopy + 108) = self->_guestModeEnabled;
    toCopy[32] |= 0x400u;
  }

LABEL_19:
  if (self->_association)
  {
    [v10 setAssociation:?];
    toCopy = v10;
  }

  v7 = self->_has;
  if ((*&v7 & 0x200000) != 0)
  {
    *(toCopy + 119) = self->_isUPlusNDowngradeAvailable;
    toCopy[32] |= 0x200000u;
    v7 = self->_has;
    if ((*&v7 & 2) == 0)
    {
LABEL_23:
      if ((*&v7 & 0x2000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_60;
    }
  }

  else if ((*&v7 & 2) == 0)
  {
    goto LABEL_23;
  }

  toCopy[6] = self->_avMode;
  toCopy[32] |= 2u;
  v7 = self->_has;
  if ((*&v7 & 0x2000000) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_60:
  *(toCopy + 123) = self->_supportsLeaveContext;
  toCopy[32] |= 0x2000000u;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_25:
    *(toCopy + 121) = self->_isUPlusOneScreenSharingAvailable;
    toCopy[32] |= 0x800000u;
  }

LABEL_26:
  if (self->_personaHandshakeData)
  {
    [v10 setPersonaHandshakeData:?];
    toCopy = v10;
  }

  v8 = self->_has;
  if ((*&v8 & 0x80000) != 0)
  {
    *(toCopy + 117) = self->_isSpatialPersonaEnabled;
    toCopy[32] |= 0x80000u;
    v8 = self->_has;
    if ((*&v8 & 0x400000) == 0)
    {
LABEL_30:
      if ((*&v8 & 0x200) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_64;
    }
  }

  else if ((*&v8 & 0x400000) == 0)
  {
    goto LABEL_30;
  }

  *(toCopy + 120) = self->_isUPlusOneAVLessAvailable;
  toCopy[32] |= 0x400000u;
  v8 = self->_has;
  if ((*&v8 & 0x200) == 0)
  {
LABEL_31:
    if ((*&v8 & 0x100) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  toCopy[26] = self->_visionFeatureVersion;
  toCopy[32] |= 0x200u;
  v8 = self->_has;
  if ((*&v8 & 0x100) == 0)
  {
LABEL_32:
    if ((*&v8 & 0x1000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_66;
  }

LABEL_65:
  toCopy[25] = self->_visionCallEstablishmentVersion;
  toCopy[32] |= 0x100u;
  v8 = self->_has;
  if ((*&v8 & 0x1000000) == 0)
  {
LABEL_33:
    if ((*&v8 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(toCopy + 122) = self->_isUPlusOneVisionToVisionAvailable;
  toCopy[32] |= 0x1000000u;
  v8 = self->_has;
  if ((*&v8 & 0x4000000) == 0)
  {
LABEL_34:
    if ((*&v8 & 0x40) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(toCopy + 124) = self->_supportsRequestToScreenShare;
  toCopy[32] |= 0x4000000u;
  v8 = self->_has;
  if ((*&v8 & 0x40) == 0)
  {
LABEL_35:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_69;
  }

LABEL_68:
  toCopy[20] = self->_spatialPersonaGenerationCounter;
  toCopy[32] |= 0x40u;
  v8 = self->_has;
  if ((*&v8 & 0x20000) == 0)
  {
LABEL_36:
    if ((*&v8 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_69:
  *(toCopy + 115) = self->_isPhotosSharePlayAvailable;
  toCopy[32] |= 0x20000u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_37:
    toCopy[18] = self->_presentationMode;
    toCopy[32] |= 0x10u;
  }

LABEL_38:
  if (self->_stableDeviceIdentifier)
  {
    [v10 setStableDeviceIdentifier:?];
    toCopy = v10;
  }

  if (self->_cluster)
  {
    [v10 setCluster:?];
    toCopy = v10;
  }

  v9 = self->_has;
  if ((*&v9 & 0x100000) != 0)
  {
    *(toCopy + 118) = self->_isTranslationAvailable;
    toCopy[32] |= 0x100000u;
    v9 = self->_has;
    if ((*&v9 & 0x8000) == 0)
    {
LABEL_44:
      if ((*&v9 & 4) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }
  }

  else if ((*&v9 & 0x8000) == 0)
  {
    goto LABEL_44;
  }

  *(toCopy + 113) = self->_isNearbySharePlay;
  toCopy[32] |= 0x8000u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_45:
    toCopy[14] = self->_nearbyFeatureVersion;
    toCopy[32] |= 4u;
  }

LABEL_46:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v5[24] = self->_version;
    v5[32] |= 0x80u;
    has = self->_has;
  }

  if (*&has)
  {
    *(v5 + 1) = self->_identifier;
    v5[32] |= 1u;
  }

  v8 = [(CSDMessagingHandle *)self->_handle copyWithZone:zone];
  v9 = v6[6];
  v6[6] = v8;

  v10 = [(NSData *)self->_avcData copyWithZone:zone];
  v11 = v6[4];
  v6[4] = v10;

  v12 = self->_has;
  if ((*&v12 & 0x4000) != 0)
  {
    *(v6 + 112) = self->_isMomentsAvailable;
    *(v6 + 32) |= 0x4000u;
    v12 = self->_has;
    if ((*&v12 & 0x40000) == 0)
    {
LABEL_7:
      if ((*&v12 & 0x1000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }
  }

  else if ((*&v12 & 0x40000) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 116) = self->_isScreenSharingAvailable;
  *(v6 + 32) |= 0x40000u;
  v12 = self->_has;
  if ((*&v12 & 0x1000) == 0)
  {
LABEL_8:
    if ((*&v12 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v6 + 110) = self->_isGondolaCallingAvailable;
  *(v6 + 32) |= 0x1000u;
  v12 = self->_has;
  if ((*&v12 & 0x10000) == 0)
  {
LABEL_9:
    if ((*&v12 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v6 + 114) = self->_isPersonaAvailable;
  *(v6 + 32) |= 0x10000u;
  v12 = self->_has;
  if ((*&v12 & 0x2000) == 0)
  {
LABEL_10:
    if ((*&v12 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v6 + 111) = self->_isLightweight;
  *(v6 + 32) |= 0x2000u;
  v12 = self->_has;
  if ((*&v12 & 0x20) == 0)
  {
LABEL_11:
    if ((*&v12 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v6 + 19) = self->_sharePlayProtocolVersion;
  *(v6 + 32) |= 0x20u;
  v12 = self->_has;
  if ((*&v12 & 8) == 0)
  {
LABEL_12:
    if ((*&v12 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 15) = self->_options;
  *(v6 + 32) |= 8u;
  v12 = self->_has;
  if ((*&v12 & 0x800) == 0)
  {
LABEL_13:
    if ((*&v12 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_42:
  *(v6 + 109) = self->_isGFTDowngradeToOneToOneAvailable;
  *(v6 + 32) |= 0x800u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_14:
    *(v6 + 108) = self->_guestModeEnabled;
    *(v6 + 32) |= 0x400u;
  }

LABEL_15:
  v13 = [(CSDMessagingConversationParticipantAssociation *)self->_association copyWithZone:zone];
  v14 = v6[2];
  v6[2] = v13;

  v15 = self->_has;
  if ((*&v15 & 0x200000) != 0)
  {
    *(v6 + 119) = self->_isUPlusNDowngradeAvailable;
    *(v6 + 32) |= 0x200000u;
    v15 = self->_has;
    if ((*&v15 & 2) == 0)
    {
LABEL_17:
      if ((*&v15 & 0x2000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_46;
    }
  }

  else if ((*&v15 & 2) == 0)
  {
    goto LABEL_17;
  }

  *(v6 + 6) = self->_avMode;
  *(v6 + 32) |= 2u;
  v15 = self->_has;
  if ((*&v15 & 0x2000000) == 0)
  {
LABEL_18:
    if ((*&v15 & 0x800000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_46:
  *(v6 + 123) = self->_supportsLeaveContext;
  *(v6 + 32) |= 0x2000000u;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_19:
    *(v6 + 121) = self->_isUPlusOneScreenSharingAvailable;
    *(v6 + 32) |= 0x800000u;
  }

LABEL_20:
  v16 = [(NSData *)self->_personaHandshakeData copyWithZone:zone];
  v17 = v6[8];
  v6[8] = v16;

  v18 = self->_has;
  if ((*&v18 & 0x80000) != 0)
  {
    *(v6 + 117) = self->_isSpatialPersonaEnabled;
    *(v6 + 32) |= 0x80000u;
    v18 = self->_has;
    if ((*&v18 & 0x400000) == 0)
    {
LABEL_22:
      if ((*&v18 & 0x200) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_50;
    }
  }

  else if ((*&v18 & 0x400000) == 0)
  {
    goto LABEL_22;
  }

  *(v6 + 120) = self->_isUPlusOneAVLessAvailable;
  *(v6 + 32) |= 0x400000u;
  v18 = self->_has;
  if ((*&v18 & 0x200) == 0)
  {
LABEL_23:
    if ((*&v18 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v6 + 26) = self->_visionFeatureVersion;
  *(v6 + 32) |= 0x200u;
  v18 = self->_has;
  if ((*&v18 & 0x100) == 0)
  {
LABEL_24:
    if ((*&v18 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v6 + 25) = self->_visionCallEstablishmentVersion;
  *(v6 + 32) |= 0x100u;
  v18 = self->_has;
  if ((*&v18 & 0x1000000) == 0)
  {
LABEL_25:
    if ((*&v18 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 122) = self->_isUPlusOneVisionToVisionAvailable;
  *(v6 + 32) |= 0x1000000u;
  v18 = self->_has;
  if ((*&v18 & 0x4000000) == 0)
  {
LABEL_26:
    if ((*&v18 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 124) = self->_supportsRequestToScreenShare;
  *(v6 + 32) |= 0x4000000u;
  v18 = self->_has;
  if ((*&v18 & 0x40) == 0)
  {
LABEL_27:
    if ((*&v18 & 0x20000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v6 + 20) = self->_spatialPersonaGenerationCounter;
  *(v6 + 32) |= 0x40u;
  v18 = self->_has;
  if ((*&v18 & 0x20000) == 0)
  {
LABEL_28:
    if ((*&v18 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_55:
  *(v6 + 115) = self->_isPhotosSharePlayAvailable;
  *(v6 + 32) |= 0x20000u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_29:
    *(v6 + 18) = self->_presentationMode;
    *(v6 + 32) |= 0x10u;
  }

LABEL_30:
  v19 = [(NSString *)self->_stableDeviceIdentifier copyWithZone:zone];
  v20 = v6[11];
  v6[11] = v19;

  v21 = [(CSDMessagingConversationParticipantCluster *)self->_cluster copyWithZone:zone];
  v22 = v6[5];
  v6[5] = v21;

  v23 = self->_has;
  if ((*&v23 & 0x100000) == 0)
  {
    if ((*&v23 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

LABEL_58:
    *(v6 + 113) = self->_isNearbySharePlay;
    *(v6 + 32) |= 0x8000u;
    if ((*&self->_has & 4) == 0)
    {
      return v6;
    }

    goto LABEL_33;
  }

  *(v6 + 118) = self->_isTranslationAvailable;
  *(v6 + 32) |= 0x100000u;
  v23 = self->_has;
  if ((*&v23 & 0x8000) != 0)
  {
    goto LABEL_58;
  }

LABEL_32:
  if ((*&v23 & 4) != 0)
  {
LABEL_33:
    *(v6 + 14) = self->_nearbyFeatureVersion;
    *(v6 + 32) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_202;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_version != *(equalCopy + 24))
    {
      goto LABEL_202;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_202;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_identifier != *(equalCopy + 1))
    {
      goto LABEL_202;
    }
  }

  else if (v6)
  {
    goto LABEL_202;
  }

  handle = self->_handle;
  if (handle | *(equalCopy + 6) && ![(CSDMessagingHandle *)handle isEqual:?])
  {
    goto LABEL_202;
  }

  avcData = self->_avcData;
  if (avcData | *(equalCopy + 4))
  {
    if (![(NSData *)avcData isEqual:?])
    {
      goto LABEL_202;
    }
  }

  v9 = self->_has;
  v10 = *(equalCopy + 32);
  if ((*&v9 & 0x4000) != 0)
  {
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_202;
    }

    v11 = *(equalCopy + 112);
    if (self->_isMomentsAvailable)
    {
      if ((*(equalCopy + 112) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 112))
    {
      goto LABEL_202;
    }
  }

  else if ((v10 & 0x4000) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x40000) != 0)
  {
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_202;
    }

    v12 = *(equalCopy + 116);
    if (self->_isScreenSharingAvailable)
    {
      if ((*(equalCopy + 116) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 116))
    {
      goto LABEL_202;
    }
  }

  else if ((v10 & 0x40000) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x1000) != 0)
  {
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_202;
    }

    v13 = *(equalCopy + 110);
    if (self->_isGondolaCallingAvailable)
    {
      if ((*(equalCopy + 110) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 110))
    {
      goto LABEL_202;
    }
  }

  else if ((v10 & 0x1000) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x10000) != 0)
  {
    if ((v10 & 0x10000) == 0)
    {
      goto LABEL_202;
    }

    v14 = *(equalCopy + 114);
    if (self->_isPersonaAvailable)
    {
      if ((*(equalCopy + 114) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 114))
    {
      goto LABEL_202;
    }
  }

  else if ((v10 & 0x10000) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x2000) != 0)
  {
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_202;
    }

    v15 = *(equalCopy + 111);
    if (self->_isLightweight)
    {
      if ((*(equalCopy + 111) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 111))
    {
      goto LABEL_202;
    }
  }

  else if ((v10 & 0x2000) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0 || self->_sharePlayProtocolVersion != *(equalCopy + 19))
    {
      goto LABEL_202;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_options != *(equalCopy + 15))
    {
      goto LABEL_202;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x800) != 0)
  {
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_202;
    }

    v18 = *(equalCopy + 109);
    if (self->_isGFTDowngradeToOneToOneAvailable)
    {
      if ((*(equalCopy + 109) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 109))
    {
      goto LABEL_202;
    }
  }

  else if ((v10 & 0x800) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x400) != 0)
  {
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_202;
    }

    v19 = *(equalCopy + 108);
    if (self->_guestModeEnabled)
    {
      if ((*(equalCopy + 108) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 108))
    {
      goto LABEL_202;
    }
  }

  else if ((v10 & 0x400) != 0)
  {
    goto LABEL_202;
  }

  association = self->_association;
  if (association | *(equalCopy + 2))
  {
    if (![(CSDMessagingConversationParticipantAssociation *)association isEqual:?])
    {
      goto LABEL_202;
    }

    v9 = self->_has;
  }

  v17 = *(equalCopy + 32);
  if ((*&v9 & 0x200000) != 0)
  {
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_202;
    }

    v20 = *(equalCopy + 119);
    if (self->_isUPlusNDowngradeAvailable)
    {
      if ((*(equalCopy + 119) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 119))
    {
      goto LABEL_202;
    }
  }

  else if ((v17 & 0x200000) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 2) != 0)
  {
    if ((v17 & 2) == 0 || self->_avMode != *(equalCopy + 6))
    {
      goto LABEL_202;
    }
  }

  else if ((v17 & 2) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x2000000) != 0)
  {
    if ((v17 & 0x2000000) == 0)
    {
      goto LABEL_202;
    }

    v21 = *(equalCopy + 123);
    if (self->_supportsLeaveContext)
    {
      if ((*(equalCopy + 123) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 123))
    {
      goto LABEL_202;
    }
  }

  else if ((v17 & 0x2000000) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x800000) != 0)
  {
    if ((v17 & 0x800000) == 0)
    {
      goto LABEL_202;
    }

    v22 = *(equalCopy + 121);
    if (self->_isUPlusOneScreenSharingAvailable)
    {
      if ((*(equalCopy + 121) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 121))
    {
      goto LABEL_202;
    }
  }

  else if ((v17 & 0x800000) != 0)
  {
    goto LABEL_202;
  }

  personaHandshakeData = self->_personaHandshakeData;
  if (personaHandshakeData | *(equalCopy + 8))
  {
    if (![(NSData *)personaHandshakeData isEqual:?])
    {
      goto LABEL_202;
    }

    v9 = self->_has;
  }

  v24 = *(equalCopy + 32);
  if ((*&v9 & 0x80000) != 0)
  {
    if ((v24 & 0x80000) == 0)
    {
      goto LABEL_202;
    }

    v25 = *(equalCopy + 117);
    if (self->_isSpatialPersonaEnabled)
    {
      if ((*(equalCopy + 117) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 117))
    {
      goto LABEL_202;
    }
  }

  else if ((v24 & 0x80000) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x400000) != 0)
  {
    if ((v24 & 0x400000) == 0)
    {
      goto LABEL_202;
    }

    v26 = *(equalCopy + 120);
    if (self->_isUPlusOneAVLessAvailable)
    {
      if ((*(equalCopy + 120) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 120))
    {
      goto LABEL_202;
    }
  }

  else if ((v24 & 0x400000) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x200) != 0)
  {
    if ((v24 & 0x200) == 0 || self->_visionFeatureVersion != *(equalCopy + 26))
    {
      goto LABEL_202;
    }
  }

  else if ((v24 & 0x200) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x100) != 0)
  {
    if ((v24 & 0x100) == 0 || self->_visionCallEstablishmentVersion != *(equalCopy + 25))
    {
      goto LABEL_202;
    }
  }

  else if ((v24 & 0x100) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x1000000) != 0)
  {
    if ((v24 & 0x1000000) == 0)
    {
      goto LABEL_202;
    }

    v27 = *(equalCopy + 122);
    if (self->_isUPlusOneVisionToVisionAvailable)
    {
      if ((*(equalCopy + 122) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 122))
    {
      goto LABEL_202;
    }
  }

  else if ((v24 & 0x1000000) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x4000000) != 0)
  {
    if ((v24 & 0x4000000) == 0)
    {
      goto LABEL_202;
    }

    v28 = *(equalCopy + 124);
    if (self->_supportsRequestToScreenShare)
    {
      if ((*(equalCopy + 124) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 124))
    {
      goto LABEL_202;
    }
  }

  else if ((v24 & 0x4000000) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x40) != 0)
  {
    if ((v24 & 0x40) == 0 || self->_spatialPersonaGenerationCounter != *(equalCopy + 20))
    {
      goto LABEL_202;
    }
  }

  else if ((v24 & 0x40) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x20000) != 0)
  {
    if ((v24 & 0x20000) == 0)
    {
      goto LABEL_202;
    }

    v29 = *(equalCopy + 115);
    if (self->_isPhotosSharePlayAvailable)
    {
      if ((*(equalCopy + 115) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 115))
    {
      goto LABEL_202;
    }
  }

  else if ((v24 & 0x20000) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v9 & 0x10) != 0)
  {
    if ((v24 & 0x10) == 0 || self->_presentationMode != *(equalCopy + 18))
    {
      goto LABEL_202;
    }
  }

  else if ((v24 & 0x10) != 0)
  {
    goto LABEL_202;
  }

  stableDeviceIdentifier = self->_stableDeviceIdentifier;
  if (stableDeviceIdentifier | *(equalCopy + 11) && ![(NSString *)stableDeviceIdentifier isEqual:?])
  {
    goto LABEL_202;
  }

  cluster = self->_cluster;
  if (cluster | *(equalCopy + 5))
  {
    if (![(CSDMessagingConversationParticipantCluster *)cluster isEqual:?])
    {
      goto LABEL_202;
    }
  }

  v32 = self->_has;
  v33 = *(equalCopy + 32);
  if ((*&v32 & 0x100000) != 0)
  {
    if ((v33 & 0x100000) == 0)
    {
      goto LABEL_202;
    }

    v34 = *(equalCopy + 118);
    if (self->_isTranslationAvailable)
    {
      if ((*(equalCopy + 118) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(equalCopy + 118))
    {
      goto LABEL_202;
    }
  }

  else if ((v33 & 0x100000) != 0)
  {
    goto LABEL_202;
  }

  if ((*&v32 & 0x8000) != 0)
  {
    if ((v33 & 0x8000) != 0)
    {
      v35 = *(equalCopy + 113);
      if (self->_isNearbySharePlay)
      {
        if ((*(equalCopy + 113) & 1) == 0)
        {
          goto LABEL_202;
        }

        goto LABEL_197;
      }

      if ((*(equalCopy + 113) & 1) == 0)
      {
        goto LABEL_197;
      }
    }

LABEL_202:
    v36 = 0;
    goto LABEL_203;
  }

  if ((v33 & 0x8000) != 0)
  {
    goto LABEL_202;
  }

LABEL_197:
  if ((*&v32 & 4) != 0)
  {
    if ((v33 & 4) == 0 || self->_nearbyFeatureVersion != *(equalCopy + 14))
    {
      goto LABEL_202;
    }

    v36 = 1;
  }

  else
  {
    v36 = (*(equalCopy + 32) & 4) == 0;
  }

LABEL_203:

  return v36;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v41 = 2654435761 * self->_version;
    if (*&has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v41 = 0;
    if (*&has)
    {
LABEL_3:
      v40 = 2654435761u * self->_identifier;
      goto LABEL_6;
    }
  }

  v40 = 0;
LABEL_6:
  v39 = [(CSDMessagingHandle *)self->_handle hash];
  v38 = [(NSData *)self->_avcData hash];
  v4 = self->_has;
  if ((*&v4 & 0x4000) != 0)
  {
    v37 = 2654435761 * self->_isMomentsAvailable;
    if ((*&v4 & 0x40000) != 0)
    {
LABEL_8:
      v36 = 2654435761 * self->_isScreenSharingAvailable;
      if ((*&v4 & 0x1000) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v37 = 0;
    if ((*&v4 & 0x40000) != 0)
    {
      goto LABEL_8;
    }
  }

  v36 = 0;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_9:
    v35 = 2654435761 * self->_isGondolaCallingAvailable;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v35 = 0;
  if ((*&v4 & 0x10000) != 0)
  {
LABEL_10:
    v34 = 2654435761 * self->_isPersonaAvailable;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v34 = 0;
  if ((*&v4 & 0x2000) != 0)
  {
LABEL_11:
    v33 = 2654435761 * self->_isLightweight;
    if ((*&v4 & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v33 = 0;
  if ((*&v4 & 0x20) != 0)
  {
LABEL_12:
    v32 = 2654435761 * self->_sharePlayProtocolVersion;
    if ((*&v4 & 8) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v32 = 0;
  if ((*&v4 & 8) != 0)
  {
LABEL_13:
    v31 = 2654435761 * self->_options;
    if ((*&v4 & 0x800) != 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    v30 = 0;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_22:
  v31 = 0;
  if ((*&v4 & 0x800) == 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  v30 = 2654435761 * self->_isGFTDowngradeToOneToOneAvailable;
  if ((*&v4 & 0x400) != 0)
  {
LABEL_15:
    v29 = 2654435761 * self->_guestModeEnabled;
    goto LABEL_25;
  }

LABEL_24:
  v29 = 0;
LABEL_25:
  v28 = [(CSDMessagingConversationParticipantAssociation *)self->_association hash];
  v5 = self->_has;
  if ((*&v5 & 0x200000) != 0)
  {
    v27 = 2654435761 * self->_isUPlusNDowngradeAvailable;
    if ((*&v5 & 2) != 0)
    {
LABEL_27:
      v26 = 2654435761 * self->_avMode;
      if ((*&v5 & 0x2000000) != 0)
      {
        goto LABEL_28;
      }

LABEL_32:
      v25 = 0;
      if ((*&v5 & 0x800000) != 0)
      {
        goto LABEL_29;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v27 = 0;
    if ((*&v5 & 2) != 0)
    {
      goto LABEL_27;
    }
  }

  v26 = 0;
  if ((*&v5 & 0x2000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  v25 = 2654435761 * self->_supportsLeaveContext;
  if ((*&v5 & 0x800000) != 0)
  {
LABEL_29:
    v24 = 2654435761 * self->_isUPlusOneScreenSharingAvailable;
    goto LABEL_34;
  }

LABEL_33:
  v24 = 0;
LABEL_34:
  v23 = [(NSData *)self->_personaHandshakeData hash];
  v6 = self->_has;
  if ((*&v6 & 0x80000) != 0)
  {
    v22 = 2654435761 * self->_isSpatialPersonaEnabled;
    if ((*&v6 & 0x400000) != 0)
    {
LABEL_36:
      v21 = 2654435761 * self->_isUPlusOneAVLessAvailable;
      if ((*&v6 & 0x200) != 0)
      {
        goto LABEL_37;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v22 = 0;
    if ((*&v6 & 0x400000) != 0)
    {
      goto LABEL_36;
    }
  }

  v21 = 0;
  if ((*&v6 & 0x200) != 0)
  {
LABEL_37:
    v20 = 2654435761 * self->_visionFeatureVersion;
    if ((*&v6 & 0x100) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

LABEL_46:
  v20 = 0;
  if ((*&v6 & 0x100) != 0)
  {
LABEL_38:
    v7 = 2654435761 * self->_visionCallEstablishmentVersion;
    if ((*&v6 & 0x1000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_48;
  }

LABEL_47:
  v7 = 0;
  if ((*&v6 & 0x1000000) != 0)
  {
LABEL_39:
    v8 = 2654435761 * self->_isUPlusOneVisionToVisionAvailable;
    if ((*&v6 & 0x4000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_49;
  }

LABEL_48:
  v8 = 0;
  if ((*&v6 & 0x4000000) != 0)
  {
LABEL_40:
    v9 = 2654435761 * self->_supportsRequestToScreenShare;
    if ((*&v6 & 0x40) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_50;
  }

LABEL_49:
  v9 = 0;
  if ((*&v6 & 0x40) != 0)
  {
LABEL_41:
    v10 = 2654435761 * self->_spatialPersonaGenerationCounter;
    if ((*&v6 & 0x20000) != 0)
    {
      goto LABEL_42;
    }

LABEL_51:
    v11 = 0;
    if ((*&v6 & 0x10) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_52;
  }

LABEL_50:
  v10 = 0;
  if ((*&v6 & 0x20000) == 0)
  {
    goto LABEL_51;
  }

LABEL_42:
  v11 = 2654435761 * self->_isPhotosSharePlayAvailable;
  if ((*&v6 & 0x10) != 0)
  {
LABEL_43:
    v12 = 2654435761 * self->_presentationMode;
    goto LABEL_53;
  }

LABEL_52:
  v12 = 0;
LABEL_53:
  v13 = [(NSString *)self->_stableDeviceIdentifier hash];
  v14 = [(CSDMessagingConversationParticipantCluster *)self->_cluster hash];
  v15 = self->_has;
  if ((*&v15 & 0x100000) == 0)
  {
    v16 = 0;
    if ((*&v15 & 0x8000) != 0)
    {
      goto LABEL_55;
    }

LABEL_58:
    v17 = 0;
    if ((*&v15 & 4) != 0)
    {
      goto LABEL_56;
    }

LABEL_59:
    v18 = 0;
    return v40 ^ v41 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v17 ^ v18;
  }

  v16 = 2654435761 * self->_isTranslationAvailable;
  if ((*&v15 & 0x8000) == 0)
  {
    goto LABEL_58;
  }

LABEL_55:
  v17 = 2654435761 * self->_isNearbySharePlay;
  if ((*&v15 & 4) == 0)
  {
    goto LABEL_59;
  }

LABEL_56:
  v18 = 2654435761 * self->_nearbyFeatureVersion;
  return v40 ^ v41 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x80) != 0)
  {
    self->_version = *(fromCopy + 24);
    *&self->_has |= 0x80u;
    v6 = *(fromCopy + 32);
  }

  if (v6)
  {
    self->_identifier = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  handle = self->_handle;
  v8 = *(v5 + 6);
  v17 = v5;
  if (handle)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(CSDMessagingHandle *)handle mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(CSDMessagingConversationParticipant *)self setHandle:?];
  }

  v5 = v17;
LABEL_11:
  if (*(v5 + 4))
  {
    [(CSDMessagingConversationParticipant *)self setAvcData:?];
    v5 = v17;
  }

  v9 = *(v5 + 32);
  if ((v9 & 0x4000) != 0)
  {
    self->_isMomentsAvailable = *(v5 + 112);
    *&self->_has |= 0x4000u;
    v9 = *(v5 + 32);
    if ((v9 & 0x40000) == 0)
    {
LABEL_15:
      if ((v9 & 0x1000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((v9 & 0x40000) == 0)
  {
    goto LABEL_15;
  }

  self->_isScreenSharingAvailable = *(v5 + 116);
  *&self->_has |= 0x40000u;
  v9 = *(v5 + 32);
  if ((v9 & 0x1000) == 0)
  {
LABEL_16:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_isGondolaCallingAvailable = *(v5 + 110);
  *&self->_has |= 0x1000u;
  v9 = *(v5 + 32);
  if ((v9 & 0x10000) == 0)
  {
LABEL_17:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_isPersonaAvailable = *(v5 + 114);
  *&self->_has |= 0x10000u;
  v9 = *(v5 + 32);
  if ((v9 & 0x2000) == 0)
  {
LABEL_18:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_isLightweight = *(v5 + 111);
  *&self->_has |= 0x2000u;
  v9 = *(v5 + 32);
  if ((v9 & 0x20) == 0)
  {
LABEL_19:
    if ((v9 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_sharePlayProtocolVersion = *(v5 + 19);
  *&self->_has |= 0x20u;
  v9 = *(v5 + 32);
  if ((v9 & 8) == 0)
  {
LABEL_20:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_options = *(v5 + 15);
  *&self->_has |= 8u;
  v9 = *(v5 + 32);
  if ((v9 & 0x800) == 0)
  {
LABEL_21:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_33:
  self->_isGFTDowngradeToOneToOneAvailable = *(v5 + 109);
  *&self->_has |= 0x800u;
  if ((*(v5 + 32) & 0x400) != 0)
  {
LABEL_22:
    self->_guestModeEnabled = *(v5 + 108);
    *&self->_has |= 0x400u;
  }

LABEL_23:
  association = self->_association;
  v11 = *(v5 + 2);
  if (association)
  {
    if (!v11)
    {
      goto LABEL_38;
    }

    [(CSDMessagingConversationParticipantAssociation *)association mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_38;
    }

    [(CSDMessagingConversationParticipant *)self setAssociation:?];
  }

  v5 = v17;
LABEL_38:
  v12 = *(v5 + 32);
  if ((v12 & 0x200000) != 0)
  {
    self->_isUPlusNDowngradeAvailable = *(v5 + 119);
    *&self->_has |= 0x200000u;
    v12 = *(v5 + 32);
    if ((v12 & 2) == 0)
    {
LABEL_40:
      if ((v12 & 0x2000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_62;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_40;
  }

  self->_avMode = *(v5 + 6);
  *&self->_has |= 2u;
  v12 = *(v5 + 32);
  if ((v12 & 0x2000000) == 0)
  {
LABEL_41:
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_62:
  self->_supportsLeaveContext = *(v5 + 123);
  *&self->_has |= 0x2000000u;
  if ((*(v5 + 32) & 0x800000) != 0)
  {
LABEL_42:
    self->_isUPlusOneScreenSharingAvailable = *(v5 + 121);
    *&self->_has |= 0x800000u;
  }

LABEL_43:
  if (*(v5 + 8))
  {
    [(CSDMessagingConversationParticipant *)self setPersonaHandshakeData:?];
    v5 = v17;
  }

  v13 = *(v5 + 32);
  if ((v13 & 0x80000) != 0)
  {
    self->_isSpatialPersonaEnabled = *(v5 + 117);
    *&self->_has |= 0x80000u;
    v13 = *(v5 + 32);
    if ((v13 & 0x400000) == 0)
    {
LABEL_47:
      if ((v13 & 0x200) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_66;
    }
  }

  else if ((v13 & 0x400000) == 0)
  {
    goto LABEL_47;
  }

  self->_isUPlusOneAVLessAvailable = *(v5 + 120);
  *&self->_has |= 0x400000u;
  v13 = *(v5 + 32);
  if ((v13 & 0x200) == 0)
  {
LABEL_48:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_visionFeatureVersion = *(v5 + 26);
  *&self->_has |= 0x200u;
  v13 = *(v5 + 32);
  if ((v13 & 0x100) == 0)
  {
LABEL_49:
    if ((v13 & 0x1000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_visionCallEstablishmentVersion = *(v5 + 25);
  *&self->_has |= 0x100u;
  v13 = *(v5 + 32);
  if ((v13 & 0x1000000) == 0)
  {
LABEL_50:
    if ((v13 & 0x4000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_isUPlusOneVisionToVisionAvailable = *(v5 + 122);
  *&self->_has |= 0x1000000u;
  v13 = *(v5 + 32);
  if ((v13 & 0x4000000) == 0)
  {
LABEL_51:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_supportsRequestToScreenShare = *(v5 + 124);
  *&self->_has |= 0x4000000u;
  v13 = *(v5 + 32);
  if ((v13 & 0x40) == 0)
  {
LABEL_52:
    if ((v13 & 0x20000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_spatialPersonaGenerationCounter = *(v5 + 20);
  *&self->_has |= 0x40u;
  v13 = *(v5 + 32);
  if ((v13 & 0x20000) == 0)
  {
LABEL_53:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_71:
  self->_isPhotosSharePlayAvailable = *(v5 + 115);
  *&self->_has |= 0x20000u;
  if ((*(v5 + 32) & 0x10) != 0)
  {
LABEL_54:
    self->_presentationMode = *(v5 + 18);
    *&self->_has |= 0x10u;
  }

LABEL_55:
  if (*(v5 + 11))
  {
    [(CSDMessagingConversationParticipant *)self setStableDeviceIdentifier:?];
    v5 = v17;
  }

  cluster = self->_cluster;
  v15 = *(v5 + 5);
  if (cluster)
  {
    if (!v15)
    {
      goto LABEL_76;
    }

    [(CSDMessagingConversationParticipantCluster *)cluster mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_76;
    }

    [(CSDMessagingConversationParticipant *)self setCluster:?];
  }

  v5 = v17;
LABEL_76:
  v16 = *(v5 + 32);
  if ((v16 & 0x100000) != 0)
  {
    self->_isTranslationAvailable = *(v5 + 118);
    *&self->_has |= 0x100000u;
    v16 = *(v5 + 32);
    if ((v16 & 0x8000) == 0)
    {
LABEL_78:
      if ((v16 & 4) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }
  }

  else if ((v16 & 0x8000) == 0)
  {
    goto LABEL_78;
  }

  self->_isNearbySharePlay = *(v5 + 113);
  *&self->_has |= 0x8000u;
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_79:
    self->_nearbyFeatureVersion = *(v5 + 14);
    *&self->_has |= 4u;
  }

LABEL_80:
}

+ (id)participantWithCSDConversationJoinContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc_init(CSDMessagingConversationParticipant);
  -[CSDMessagingConversationParticipant setIsMomentsAvailable:](v4, "setIsMomentsAvailable:", [contextCopy isMomentsAvailable]);
  -[CSDMessagingConversationParticipant setIsScreenSharingAvailable:](v4, "setIsScreenSharingAvailable:", [contextCopy isScreenSharingAvailable]);
  -[CSDMessagingConversationParticipant setIsGondolaCallingAvailable:](v4, "setIsGondolaCallingAvailable:", [contextCopy isGondolaCallingAvailable]);
  -[CSDMessagingConversationParticipant setIsPersonaAvailable:](v4, "setIsPersonaAvailable:", [contextCopy isPersonaAvailable]);
  -[CSDMessagingConversationParticipant setIsGFTDowngradeToOneToOneAvailable:](v4, "setIsGFTDowngradeToOneToOneAvailable:", [contextCopy isGFTDowngradeToOneToOneAvailable]);
  -[CSDMessagingConversationParticipant setIsUPlusOneScreenSharingAvailable:](v4, "setIsUPlusOneScreenSharingAvailable:", [contextCopy isUPlusOneScreenSharingAvailable]);
  -[CSDMessagingConversationParticipant setSupportsLeaveContext:](v4, "setSupportsLeaveContext:", [contextCopy supportsLeaveContext]);
  -[CSDMessagingConversationParticipant setIsUPlusNDowngradeAvailable:](v4, "setIsUPlusNDowngradeAvailable:", [contextCopy isUPlusNDowngradeAvailable]);
  -[CSDMessagingConversationParticipant setIsLightweight:](v4, "setIsLightweight:", [contextCopy isLightweight]);
  -[CSDMessagingConversationParticipant setSharePlayProtocolVersion:](v4, "setSharePlayProtocolVersion:", [contextCopy sharePlayProtocolVersion]);
  -[CSDMessagingConversationParticipant setVisionFeatureVersion:](v4, "setVisionFeatureVersion:", [contextCopy visionFeatureVersion]);
  -[CSDMessagingConversationParticipant setVisionCallEstablishmentVersion:](v4, "setVisionCallEstablishmentVersion:", [contextCopy visionCallEstablishmentVersion]);
  participantAssociation = [contextCopy participantAssociation];
  [(CSDMessagingConversationParticipant *)v4 setAssociation:participantAssociation];

  -[CSDMessagingConversationParticipant setIsSpatialPersonaEnabled:](v4, "setIsSpatialPersonaEnabled:", [contextCopy isSpatialPersonaEnabled]);
  -[CSDMessagingConversationParticipant setIsUPlusOneVisionToVisionAvailable:](v4, "setIsUPlusOneVisionToVisionAvailable:", [contextCopy isUPlusOneVisionToVisionAvailable]);
  -[CSDMessagingConversationParticipant setIsUPlusOneAVLessAvailable:](v4, "setIsUPlusOneAVLessAvailable:", [contextCopy isUPlusOneAVLessAvailable]);
  -[CSDMessagingConversationParticipant setSupportsRequestToScreenShare:](v4, "setSupportsRequestToScreenShare:", [contextCopy supportsRequestToScreenShare]);
  -[CSDMessagingConversationParticipant setIsPhotosSharePlayAvailable:](v4, "setIsPhotosSharePlayAvailable:", [contextCopy isPhotosSharePlayAvailable]);
  participantCluster = [contextCopy participantCluster];
  [(CSDMessagingConversationParticipant *)v4 setCluster:participantCluster];

  -[CSDMessagingConversationParticipant setIsTranslationAvailable:](v4, "setIsTranslationAvailable:", [contextCopy isTranslationAvailable]);
  -[CSDMessagingConversationParticipant setIsNearbySharePlay:](v4, "setIsNearbySharePlay:", [contextCopy isNearbySharePlay]);
  -[CSDMessagingConversationParticipant setNearbyFeatureVersion:](v4, "setNearbyFeatureVersion:", [contextCopy nearbyFeatureVersion]);
  videoEnabled = [contextCopy videoEnabled];
  message = [contextCopy message];
  -[CSDMessagingConversationParticipant setAvMode:](v4, "setAvMode:", [message avMode]);

  message2 = [contextCopy message];

  -[CSDMessagingConversationParticipant setPresentationMode:](v4, "setPresentationMode:", [message2 resolvedPresentationMode]);
  [(CSDMessagingConversationParticipant *)v4 setOptions:videoEnabled];

  return v4;
}

+ (id)participantWithCSDConversationParticipant:(id)participant
{
  participantCopy = participant;
  v4 = objc_alloc_init(CSDMessagingConversationParticipant);
  -[CSDMessagingConversationParticipant setIdentifier:](v4, "setIdentifier:", [participantCopy identifier]);
  handle = [participantCopy handle];
  v6 = [CSDMessagingHandle handleWithTUHandle:handle];
  [(CSDMessagingConversationParticipant *)v4 setHandle:v6];

  avcData = [participantCopy avcData];
  [(CSDMessagingConversationParticipant *)v4 setAvcData:avcData];

  capabilities = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsMomentsAvailable:](v4, "setIsMomentsAvailable:", [capabilities isMomentsAvailable]);

  capabilities2 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsScreenSharingAvailable:](v4, "setIsScreenSharingAvailable:", [capabilities2 isScreenSharingAvailable]);

  capabilities3 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsGondolaCallingAvailable:](v4, "setIsGondolaCallingAvailable:", [capabilities3 isGondolaCallingAvailable]);

  capabilities4 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsPersonaAvailable:](v4, "setIsPersonaAvailable:", [capabilities4 isPersonaAvailable]);

  capabilities5 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsGFTDowngradeToOneToOneAvailable:](v4, "setIsGFTDowngradeToOneToOneAvailable:", [capabilities5 isGFTDowngradeToOneToOneAvailable]);

  capabilities6 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusOneScreenSharingAvailable:](v4, "setIsUPlusOneScreenSharingAvailable:", [capabilities6 isUPlusOneScreenShareAvailable]);

  capabilities7 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusOneAVLessAvailable:](v4, "setIsUPlusOneAVLessAvailable:", [capabilities7 isUPlusOneAVLessAvailable]);

  capabilities8 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setSupportsLeaveContext:](v4, "setSupportsLeaveContext:", [capabilities8 supportsLeaveContext]);

  capabilities9 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setSupportsRequestToScreenShare:](v4, "setSupportsRequestToScreenShare:", [capabilities9 supportsRequestToScreenShare]);

  capabilities10 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusNDowngradeAvailable:](v4, "setIsUPlusNDowngradeAvailable:", [capabilities10 isUPlusNDowngradeAvailable]);

  capabilities11 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsTranslationAvailable:](v4, "setIsTranslationAvailable:", [capabilities11 isTranslationAvailable]);

  -[CSDMessagingConversationParticipant setIsLightweight:](v4, "setIsLightweight:", [participantCopy isLightweight]);
  capabilities12 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setSharePlayProtocolVersion:](v4, "setSharePlayProtocolVersion:", [capabilities12 sharePlayProtocolVersion]);

  capabilities13 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setVisionFeatureVersion:](v4, "setVisionFeatureVersion:", [capabilities13 visionFeatureVersion]);

  capabilities14 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setVisionCallEstablishmentVersion:](v4, "setVisionCallEstablishmentVersion:", [capabilities14 visionCallEstablishmentVersion]);

  capabilities15 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusOneVisionToVisionAvailable:](v4, "setIsUPlusOneVisionToVisionAvailable:", [capabilities15 isUPlusOneVisionToVisionAvailable]);

  capabilities16 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsPhotosSharePlayAvailable:](v4, "setIsPhotosSharePlayAvailable:", [capabilities16 isPhotosSharePlayAvailable]);

  capabilities17 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setNearbyFeatureVersion:](v4, "setNearbyFeatureVersion:", [capabilities17 nearbyFeatureVersion]);

  -[CSDMessagingConversationParticipant setGuestModeEnabled:](v4, "setGuestModeEnabled:", [participantCopy isGuestModeEnabled]);
  association = [participantCopy association];
  v26 = [CSDMessagingConversationParticipantAssociation participantAssociationWithTUConversationParticipantAssociation:association];
  [(CSDMessagingConversationParticipant *)v4 setAssociation:v26];

  -[CSDMessagingConversationParticipant setIsSpatialPersonaEnabled:](v4, "setIsSpatialPersonaEnabled:", [participantCopy isSpatialPersonaEnabled]);
  -[CSDMessagingConversationParticipant setSpatialPersonaGenerationCounter:](v4, "setSpatialPersonaGenerationCounter:", [participantCopy spatialPersonaGenerationCounter]);
  -[CSDMessagingConversationParticipant setPresentationMode:](v4, "setPresentationMode:", [participantCopy presentationMode]);
  cluster = [participantCopy cluster];
  v28 = [CSDMessagingConversationParticipantCluster participantClusterWithTUConversationParticipantCluster:cluster];
  [(CSDMessagingConversationParticipant *)v4 setCluster:v28];

  -[CSDMessagingConversationParticipant setIsNearbySharePlay:](v4, "setIsNearbySharePlay:", [participantCopy isNearbySharePlay]);
  isVideoEnabled = [participantCopy isVideoEnabled];
  audioVideoMode = [participantCopy audioVideoMode];

  [(CSDMessagingConversationParticipant *)v4 setAvMode:audioVideoMode];
  [(CSDMessagingConversationParticipant *)v4 setOptions:isVideoEnabled];

  return v4;
}

+ (id)participantWithTUConversationParticipant:(id)participant
{
  participantCopy = participant;
  v4 = objc_alloc_init(CSDMessagingConversationParticipant);
  -[CSDMessagingConversationParticipant setIdentifier:](v4, "setIdentifier:", [participantCopy identifier]);
  handle = [participantCopy handle];
  v6 = [CSDMessagingHandle handleWithTUHandle:handle];
  [(CSDMessagingConversationParticipant *)v4 setHandle:v6];

  capabilities = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsMomentsAvailable:](v4, "setIsMomentsAvailable:", [capabilities isMomentsAvailable]);

  capabilities2 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsScreenSharingAvailable:](v4, "setIsScreenSharingAvailable:", [capabilities2 isScreenSharingAvailable]);

  capabilities3 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsGondolaCallingAvailable:](v4, "setIsGondolaCallingAvailable:", [capabilities3 isGondolaCallingAvailable]);

  capabilities4 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsPersonaAvailable:](v4, "setIsPersonaAvailable:", [capabilities4 isPersonaAvailable]);

  capabilities5 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsGFTDowngradeToOneToOneAvailable:](v4, "setIsGFTDowngradeToOneToOneAvailable:", [capabilities5 isGFTDowngradeToOneToOneAvailable]);

  capabilities6 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusOneScreenSharingAvailable:](v4, "setIsUPlusOneScreenSharingAvailable:", [capabilities6 isUPlusOneScreenShareAvailable]);

  capabilities7 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusOneAVLessAvailable:](v4, "setIsUPlusOneAVLessAvailable:", [capabilities7 isUPlusOneAVLessAvailable]);

  capabilities8 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setSupportsLeaveContext:](v4, "setSupportsLeaveContext:", [capabilities8 supportsLeaveContext]);

  capabilities9 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setSupportsRequestToScreenShare:](v4, "setSupportsRequestToScreenShare:", [capabilities9 supportsRequestToScreenShare]);

  capabilities10 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusNDowngradeAvailable:](v4, "setIsUPlusNDowngradeAvailable:", [capabilities10 isUPlusNDowngradeAvailable]);

  capabilities11 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsTranslationAvailable:](v4, "setIsTranslationAvailable:", [capabilities11 isTranslationAvailable]);

  capabilities12 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsPhotosSharePlayAvailable:](v4, "setIsPhotosSharePlayAvailable:", [capabilities12 isPhotosSharePlayAvailable]);

  -[CSDMessagingConversationParticipant setIsLightweight:](v4, "setIsLightweight:", [participantCopy isLightweight]);
  capabilities13 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setSharePlayProtocolVersion:](v4, "setSharePlayProtocolVersion:", [capabilities13 sharePlayProtocolVersion]);

  capabilities14 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setVisionFeatureVersion:](v4, "setVisionFeatureVersion:", [capabilities14 visionFeatureVersion]);

  capabilities15 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setVisionCallEstablishmentVersion:](v4, "setVisionCallEstablishmentVersion:", [capabilities15 visionCallEstablishmentVersion]);

  capabilities16 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusOneVisionToVisionAvailable:](v4, "setIsUPlusOneVisionToVisionAvailable:", [capabilities16 isUPlusOneVisionToVisionAvailable]);

  -[CSDMessagingConversationParticipant setGuestModeEnabled:](v4, "setGuestModeEnabled:", [participantCopy isGuestModeEnabled]);
  association = [participantCopy association];
  v24 = [CSDMessagingConversationParticipantAssociation participantAssociationWithTUConversationParticipantAssociation:association];
  [(CSDMessagingConversationParticipant *)v4 setAssociation:v24];

  -[CSDMessagingConversationParticipant setIsSpatialPersonaEnabled:](v4, "setIsSpatialPersonaEnabled:", [participantCopy isSpatialPersonaEnabled]);
  cluster = [participantCopy cluster];
  v26 = [CSDMessagingConversationParticipantCluster participantClusterWithTUConversationParticipantCluster:cluster];
  [(CSDMessagingConversationParticipant *)v4 setCluster:v26];

  -[CSDMessagingConversationParticipant setIsNearbySharePlay:](v4, "setIsNearbySharePlay:", [participantCopy isNearbySharePlay]);
  capabilities17 = [participantCopy capabilities];
  -[CSDMessagingConversationParticipant setNearbyFeatureVersion:](v4, "setNearbyFeatureVersion:", [capabilities17 nearbyFeatureVersion]);

  isVideoEnabled = [participantCopy isVideoEnabled];
  -[CSDMessagingConversationParticipant setAvMode:](v4, "setAvMode:", [participantCopy audioVideoMode]);
  presentationMode = [participantCopy presentationMode];

  [(CSDMessagingConversationParticipant *)v4 setPresentationMode:presentationMode];
  [(CSDMessagingConversationParticipant *)v4 setOptions:isVideoEnabled];

  return v4;
}

- (CSDConversationParticipant)csdConversationParticipant
{
  v3 = [CSDConversationParticipant alloc];
  identifier = [(CSDMessagingConversationParticipant *)self identifier];
  handle = [(CSDMessagingConversationParticipant *)self handle];
  tuHandle = [handle tuHandle];
  avcData = [(CSDMessagingConversationParticipant *)self avcData];
  v8 = [(CSDConversationParticipant *)v3 initWithIdentifier:identifier handle:tuHandle avcData:avcData];

  v9 = objc_alloc_init(TUConversationParticipantCapabilities);
  [v9 setMomentsAvailable:{-[CSDMessagingConversationParticipant isMomentsAvailable](self, "isMomentsAvailable")}];
  [v9 setScreenSharingAvailable:{-[CSDMessagingConversationParticipant isScreenSharingAvailable](self, "isScreenSharingAvailable")}];
  [v9 setGondolaCallingAvailable:{-[CSDMessagingConversationParticipant isGondolaCallingAvailable](self, "isGondolaCallingAvailable")}];
  [v9 setPersonaAvailable:{-[CSDMessagingConversationParticipant isPersonaAvailable](self, "isPersonaAvailable")}];
  [v9 setGftDowngradeToOneToOneAvailable:{-[CSDMessagingConversationParticipant isGFTDowngradeToOneToOneAvailable](self, "isGFTDowngradeToOneToOneAvailable")}];
  [v9 setSupportsLeaveContext:{-[CSDMessagingConversationParticipant supportsLeaveContext](self, "supportsLeaveContext")}];
  [v9 setSupportsRequestToScreenShare:{-[CSDMessagingConversationParticipant supportsRequestToScreenShare](self, "supportsRequestToScreenShare")}];
  [v9 setUPlusNDowngradeAvailable:{-[CSDMessagingConversationParticipant isUPlusNDowngradeAvailable](self, "isUPlusNDowngradeAvailable")}];
  [v9 setUPlusOneScreenShareAvailable:{-[CSDMessagingConversationParticipant isUPlusOneScreenSharingAvailable](self, "isUPlusOneScreenSharingAvailable")}];
  [v9 setUPlusOneAVLessAvailable:{-[CSDMessagingConversationParticipant isUPlusOneAVLessAvailable](self, "isUPlusOneAVLessAvailable")}];
  [v9 setSharePlayProtocolVersion:{-[CSDMessagingConversationParticipant sharePlayProtocolVersion](self, "sharePlayProtocolVersion")}];
  [v9 setVisionFeatureVersion:{-[CSDMessagingConversationParticipant visionFeatureVersion](self, "visionFeatureVersion")}];
  [v9 setVisionCallEstablishmentVersion:{-[CSDMessagingConversationParticipant visionCallEstablishmentVersion](self, "visionCallEstablishmentVersion")}];
  [v9 setUPlusOneVisionToVisionAvailable:{-[CSDMessagingConversationParticipant isUPlusOneVisionToVisionAvailable](self, "isUPlusOneVisionToVisionAvailable")}];
  [v9 setTranslationAvailable:{-[CSDMessagingConversationParticipant isTranslationAvailable](self, "isTranslationAvailable")}];
  [v9 setPhotosSharePlayAvailable:{-[CSDMessagingConversationParticipant isPhotosSharePlayAvailable](self, "isPhotosSharePlayAvailable")}];
  [v9 setNearbyFeatureVersion:{-[CSDMessagingConversationParticipant nearbyFeatureVersion](self, "nearbyFeatureVersion")}];
  [(CSDConversationParticipant *)v8 setCapabilities:v9];
  [(CSDConversationParticipant *)v8 setLightweight:[(CSDMessagingConversationParticipant *)self isLightweight]];
  [(CSDConversationParticipant *)v8 setGuestModeEnabled:[(CSDMessagingConversationParticipant *)self guestModeEnabled]];
  association = [(CSDMessagingConversationParticipant *)self association];
  tuConversationParticipantAssociation = [association tuConversationParticipantAssociation];
  [(CSDConversationParticipant *)v8 setAssociation:tuConversationParticipantAssociation];

  [(CSDConversationParticipant *)v8 setSpatialPersonaEnabled:[(CSDMessagingConversationParticipant *)self isSpatialPersonaEnabled]];
  [(CSDConversationParticipant *)v8 setSpatialPersonaGenerationCounter:[(CSDMessagingConversationParticipant *)self spatialPersonaGenerationCounter]];
  cluster = [(CSDMessagingConversationParticipant *)self cluster];
  tuConversationParticipantCluster = [cluster tuConversationParticipantCluster];
  [(CSDConversationParticipant *)v8 setCluster:tuConversationParticipantCluster];

  [(CSDConversationParticipant *)v8 setIsNearbySharePlay:[(CSDMessagingConversationParticipant *)self isNearbySharePlay]];
  [(CSDConversationParticipant *)v8 setVideoEnabled:[(CSDMessagingConversationParticipant *)self options]& 1 | ![(CSDMessagingConversationParticipant *)self hasOptions]];
  if ([(CSDMessagingConversationParticipant *)self hasAvMode])
  {
    avMode = [(CSDMessagingConversationParticipant *)self avMode];
  }

  else if ([(CSDConversationParticipant *)v8 isVideoEnabled])
  {
    avMode = 2;
  }

  else
  {
    avMode = 1;
  }

  [(CSDConversationParticipant *)v8 setAudioVideoMode:avMode];
  [(CSDConversationParticipant *)v8 setPresentationMode:[(CSDMessagingConversationParticipant *)self resolvedPresentationMode]];

  return v8;
}

- (unint64_t)resolvedPresentationMode
{
  if (![(CSDMessagingConversationParticipant *)self hasPresentationMode])
  {
    return [(CSDMessagingConversationParticipant *)self avMode]== 0;
  }

  presentationMode = [(CSDMessagingConversationParticipant *)self presentationMode];
  if (presentationMode == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (presentationMode == 2);
  }
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CSDMessagingConversationParticipant;
  v3 = [(CSDMessagingConversationParticipant *)&v8 description];
  dictionaryRepresentation = [(CSDMessagingConversationParticipant *)self dictionaryRepresentation];
  v5 = TULoggableStringForObject();
  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

@end