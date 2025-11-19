@interface CSDMessagingConversationParticipant
+ (id)participantWithCSDConversationJoinContext:(id)a3;
+ (id)participantWithCSDConversationParticipant:(id)a3;
+ (id)participantWithTUConversationParticipant:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CSDConversationParticipant)csdConversationParticipant;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAvMode:(id)a3;
- (int)StringAsPresentationMode:(id)a3;
- (int)avMode;
- (int)presentationMode;
- (unint64_t)hash;
- (unint64_t)resolvedPresentationMode;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAvMode:(BOOL)a3;
- (void)setHasGuestModeEnabled:(BOOL)a3;
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
- (void)setHasNearbyFeatureVersion:(BOOL)a3;
- (void)setHasOptions:(BOOL)a3;
- (void)setHasPresentationMode:(BOOL)a3;
- (void)setHasSharePlayProtocolVersion:(BOOL)a3;
- (void)setHasSpatialPersonaGenerationCounter:(BOOL)a3;
- (void)setHasSupportsLeaveContext:(BOOL)a3;
- (void)setHasSupportsRequestToScreenShare:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)setHasVisionCallEstablishmentVersion:(BOOL)a3;
- (void)setHasVisionFeatureVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationParticipant

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasIsMomentsAvailable:(BOOL)a3
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

- (void)setHasIsScreenSharingAvailable:(BOOL)a3
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

- (void)setHasIsGondolaCallingAvailable:(BOOL)a3
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

- (void)setHasIsPersonaAvailable:(BOOL)a3
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

- (void)setHasIsLightweight:(BOOL)a3
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

- (void)setHasSharePlayProtocolVersion:(BOOL)a3
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

- (void)setHasOptions:(BOOL)a3
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

- (void)setHasIsGFTDowngradeToOneToOneAvailable:(BOOL)a3
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

- (void)setHasGuestModeEnabled:(BOOL)a3
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

- (void)setHasIsUPlusNDowngradeAvailable:(BOOL)a3
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

- (void)setHasAvMode:(BOOL)a3
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

- (void)setHasSupportsLeaveContext:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasIsUPlusOneScreenSharingAvailable:(BOOL)a3
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

- (void)setHasIsSpatialPersonaEnabled:(BOOL)a3
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

- (void)setHasIsUPlusOneAVLessAvailable:(BOOL)a3
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

- (void)setHasVisionFeatureVersion:(BOOL)a3
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

- (void)setHasVisionCallEstablishmentVersion:(BOOL)a3
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

- (void)setHasIsUPlusOneVisionToVisionAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasSupportsRequestToScreenShare:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasSpatialPersonaGenerationCounter:(BOOL)a3
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

- (void)setHasIsPhotosSharePlayAvailable:(BOOL)a3
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

- (void)setHasPresentationMode:(BOOL)a3
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

- (void)setHasIsTranslationAvailable:(BOOL)a3
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

- (void)setHasIsNearbySharePlay:(BOOL)a3
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

- (void)setHasNearbyFeatureVersion:(BOOL)a3
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
    v8 = [(CSDMessagingHandle *)handle dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"handle"];
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
    v13 = [(CSDMessagingConversationParticipantAssociation *)association dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"association"];
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
    v42 = [(CSDMessagingConversationParticipantCluster *)cluster dictionaryRepresentation];
    [v3 setObject:v42 forKey:@"cluster"];
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

- (void)writeTo:(id)a3
{
  v36 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v4[24] = self->_version;
    v4[32] |= 0x80u;
    has = self->_has;
  }

  if (*&has)
  {
    *(v4 + 1) = self->_identifier;
    v4[32] |= 1u;
  }

  v10 = v4;
  if (self->_handle)
  {
    [v4 setHandle:?];
    v4 = v10;
  }

  if (self->_avcData)
  {
    [v10 setAvcData:?];
    v4 = v10;
  }

  v6 = self->_has;
  if ((*&v6 & 0x4000) != 0)
  {
    *(v4 + 112) = self->_isMomentsAvailable;
    v4[32] |= 0x4000u;
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

  *(v4 + 116) = self->_isScreenSharingAvailable;
  v4[32] |= 0x40000u;
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
  *(v4 + 110) = self->_isGondolaCallingAvailable;
  v4[32] |= 0x1000u;
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
  *(v4 + 114) = self->_isPersonaAvailable;
  v4[32] |= 0x10000u;
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
  *(v4 + 111) = self->_isLightweight;
  v4[32] |= 0x2000u;
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
  v4[19] = self->_sharePlayProtocolVersion;
  v4[32] |= 0x20u;
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
  v4[15] = self->_options;
  v4[32] |= 8u;
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
  *(v4 + 109) = self->_isGFTDowngradeToOneToOneAvailable;
  v4[32] |= 0x800u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    *(v4 + 108) = self->_guestModeEnabled;
    v4[32] |= 0x400u;
  }

LABEL_19:
  if (self->_association)
  {
    [v10 setAssociation:?];
    v4 = v10;
  }

  v7 = self->_has;
  if ((*&v7 & 0x200000) != 0)
  {
    *(v4 + 119) = self->_isUPlusNDowngradeAvailable;
    v4[32] |= 0x200000u;
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

  v4[6] = self->_avMode;
  v4[32] |= 2u;
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
  *(v4 + 123) = self->_supportsLeaveContext;
  v4[32] |= 0x2000000u;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_25:
    *(v4 + 121) = self->_isUPlusOneScreenSharingAvailable;
    v4[32] |= 0x800000u;
  }

LABEL_26:
  if (self->_personaHandshakeData)
  {
    [v10 setPersonaHandshakeData:?];
    v4 = v10;
  }

  v8 = self->_has;
  if ((*&v8 & 0x80000) != 0)
  {
    *(v4 + 117) = self->_isSpatialPersonaEnabled;
    v4[32] |= 0x80000u;
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

  *(v4 + 120) = self->_isUPlusOneAVLessAvailable;
  v4[32] |= 0x400000u;
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
  v4[26] = self->_visionFeatureVersion;
  v4[32] |= 0x200u;
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
  v4[25] = self->_visionCallEstablishmentVersion;
  v4[32] |= 0x100u;
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
  *(v4 + 122) = self->_isUPlusOneVisionToVisionAvailable;
  v4[32] |= 0x1000000u;
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
  *(v4 + 124) = self->_supportsRequestToScreenShare;
  v4[32] |= 0x4000000u;
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
  v4[20] = self->_spatialPersonaGenerationCounter;
  v4[32] |= 0x40u;
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
  *(v4 + 115) = self->_isPhotosSharePlayAvailable;
  v4[32] |= 0x20000u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_37:
    v4[18] = self->_presentationMode;
    v4[32] |= 0x10u;
  }

LABEL_38:
  if (self->_stableDeviceIdentifier)
  {
    [v10 setStableDeviceIdentifier:?];
    v4 = v10;
  }

  if (self->_cluster)
  {
    [v10 setCluster:?];
    v4 = v10;
  }

  v9 = self->_has;
  if ((*&v9 & 0x100000) != 0)
  {
    *(v4 + 118) = self->_isTranslationAvailable;
    v4[32] |= 0x100000u;
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

  *(v4 + 113) = self->_isNearbySharePlay;
  v4[32] |= 0x8000u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_45:
    v4[14] = self->_nearbyFeatureVersion;
    v4[32] |= 4u;
  }

LABEL_46:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(CSDMessagingHandle *)self->_handle copyWithZone:a3];
  v9 = v6[6];
  v6[6] = v8;

  v10 = [(NSData *)self->_avcData copyWithZone:a3];
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
  v13 = [(CSDMessagingConversationParticipantAssociation *)self->_association copyWithZone:a3];
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
  v16 = [(NSData *)self->_personaHandshakeData copyWithZone:a3];
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
  v19 = [(NSString *)self->_stableDeviceIdentifier copyWithZone:a3];
  v20 = v6[11];
  v6[11] = v19;

  v21 = [(CSDMessagingConversationParticipantCluster *)self->_cluster copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_202;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_version != *(v4 + 24))
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
    if ((v6 & 1) == 0 || self->_identifier != *(v4 + 1))
    {
      goto LABEL_202;
    }
  }

  else if (v6)
  {
    goto LABEL_202;
  }

  handle = self->_handle;
  if (handle | *(v4 + 6) && ![(CSDMessagingHandle *)handle isEqual:?])
  {
    goto LABEL_202;
  }

  avcData = self->_avcData;
  if (avcData | *(v4 + 4))
  {
    if (![(NSData *)avcData isEqual:?])
    {
      goto LABEL_202;
    }
  }

  v9 = self->_has;
  v10 = *(v4 + 32);
  if ((*&v9 & 0x4000) != 0)
  {
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_202;
    }

    v11 = *(v4 + 112);
    if (self->_isMomentsAvailable)
    {
      if ((*(v4 + 112) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 112))
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

    v12 = *(v4 + 116);
    if (self->_isScreenSharingAvailable)
    {
      if ((*(v4 + 116) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 116))
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

    v13 = *(v4 + 110);
    if (self->_isGondolaCallingAvailable)
    {
      if ((*(v4 + 110) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 110))
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

    v14 = *(v4 + 114);
    if (self->_isPersonaAvailable)
    {
      if ((*(v4 + 114) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 114))
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

    v15 = *(v4 + 111);
    if (self->_isLightweight)
    {
      if ((*(v4 + 111) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 111))
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
    if ((v10 & 0x20) == 0 || self->_sharePlayProtocolVersion != *(v4 + 19))
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
    if ((v10 & 8) == 0 || self->_options != *(v4 + 15))
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

    v18 = *(v4 + 109);
    if (self->_isGFTDowngradeToOneToOneAvailable)
    {
      if ((*(v4 + 109) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 109))
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

    v19 = *(v4 + 108);
    if (self->_guestModeEnabled)
    {
      if ((*(v4 + 108) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 108))
    {
      goto LABEL_202;
    }
  }

  else if ((v10 & 0x400) != 0)
  {
    goto LABEL_202;
  }

  association = self->_association;
  if (association | *(v4 + 2))
  {
    if (![(CSDMessagingConversationParticipantAssociation *)association isEqual:?])
    {
      goto LABEL_202;
    }

    v9 = self->_has;
  }

  v17 = *(v4 + 32);
  if ((*&v9 & 0x200000) != 0)
  {
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_202;
    }

    v20 = *(v4 + 119);
    if (self->_isUPlusNDowngradeAvailable)
    {
      if ((*(v4 + 119) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 119))
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
    if ((v17 & 2) == 0 || self->_avMode != *(v4 + 6))
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

    v21 = *(v4 + 123);
    if (self->_supportsLeaveContext)
    {
      if ((*(v4 + 123) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 123))
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

    v22 = *(v4 + 121);
    if (self->_isUPlusOneScreenSharingAvailable)
    {
      if ((*(v4 + 121) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 121))
    {
      goto LABEL_202;
    }
  }

  else if ((v17 & 0x800000) != 0)
  {
    goto LABEL_202;
  }

  personaHandshakeData = self->_personaHandshakeData;
  if (personaHandshakeData | *(v4 + 8))
  {
    if (![(NSData *)personaHandshakeData isEqual:?])
    {
      goto LABEL_202;
    }

    v9 = self->_has;
  }

  v24 = *(v4 + 32);
  if ((*&v9 & 0x80000) != 0)
  {
    if ((v24 & 0x80000) == 0)
    {
      goto LABEL_202;
    }

    v25 = *(v4 + 117);
    if (self->_isSpatialPersonaEnabled)
    {
      if ((*(v4 + 117) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 117))
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

    v26 = *(v4 + 120);
    if (self->_isUPlusOneAVLessAvailable)
    {
      if ((*(v4 + 120) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 120))
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
    if ((v24 & 0x200) == 0 || self->_visionFeatureVersion != *(v4 + 26))
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
    if ((v24 & 0x100) == 0 || self->_visionCallEstablishmentVersion != *(v4 + 25))
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

    v27 = *(v4 + 122);
    if (self->_isUPlusOneVisionToVisionAvailable)
    {
      if ((*(v4 + 122) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 122))
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

    v28 = *(v4 + 124);
    if (self->_supportsRequestToScreenShare)
    {
      if ((*(v4 + 124) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 124))
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
    if ((v24 & 0x40) == 0 || self->_spatialPersonaGenerationCounter != *(v4 + 20))
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

    v29 = *(v4 + 115);
    if (self->_isPhotosSharePlayAvailable)
    {
      if ((*(v4 + 115) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 115))
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
    if ((v24 & 0x10) == 0 || self->_presentationMode != *(v4 + 18))
    {
      goto LABEL_202;
    }
  }

  else if ((v24 & 0x10) != 0)
  {
    goto LABEL_202;
  }

  stableDeviceIdentifier = self->_stableDeviceIdentifier;
  if (stableDeviceIdentifier | *(v4 + 11) && ![(NSString *)stableDeviceIdentifier isEqual:?])
  {
    goto LABEL_202;
  }

  cluster = self->_cluster;
  if (cluster | *(v4 + 5))
  {
    if (![(CSDMessagingConversationParticipantCluster *)cluster isEqual:?])
    {
      goto LABEL_202;
    }
  }

  v32 = self->_has;
  v33 = *(v4 + 32);
  if ((*&v32 & 0x100000) != 0)
  {
    if ((v33 & 0x100000) == 0)
    {
      goto LABEL_202;
    }

    v34 = *(v4 + 118);
    if (self->_isTranslationAvailable)
    {
      if ((*(v4 + 118) & 1) == 0)
      {
        goto LABEL_202;
      }
    }

    else if (*(v4 + 118))
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
      v35 = *(v4 + 113);
      if (self->_isNearbySharePlay)
      {
        if ((*(v4 + 113) & 1) == 0)
        {
          goto LABEL_202;
        }

        goto LABEL_197;
      }

      if ((*(v4 + 113) & 1) == 0)
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
    if ((v33 & 4) == 0 || self->_nearbyFeatureVersion != *(v4 + 14))
    {
      goto LABEL_202;
    }

    v36 = 1;
  }

  else
  {
    v36 = (*(v4 + 32) & 4) == 0;
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 32);
  if ((v6 & 0x80) != 0)
  {
    self->_version = *(v4 + 24);
    *&self->_has |= 0x80u;
    v6 = *(v4 + 32);
  }

  if (v6)
  {
    self->_identifier = *(v4 + 1);
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

+ (id)participantWithCSDConversationJoinContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CSDMessagingConversationParticipant);
  -[CSDMessagingConversationParticipant setIsMomentsAvailable:](v4, "setIsMomentsAvailable:", [v3 isMomentsAvailable]);
  -[CSDMessagingConversationParticipant setIsScreenSharingAvailable:](v4, "setIsScreenSharingAvailable:", [v3 isScreenSharingAvailable]);
  -[CSDMessagingConversationParticipant setIsGondolaCallingAvailable:](v4, "setIsGondolaCallingAvailable:", [v3 isGondolaCallingAvailable]);
  -[CSDMessagingConversationParticipant setIsPersonaAvailable:](v4, "setIsPersonaAvailable:", [v3 isPersonaAvailable]);
  -[CSDMessagingConversationParticipant setIsGFTDowngradeToOneToOneAvailable:](v4, "setIsGFTDowngradeToOneToOneAvailable:", [v3 isGFTDowngradeToOneToOneAvailable]);
  -[CSDMessagingConversationParticipant setIsUPlusOneScreenSharingAvailable:](v4, "setIsUPlusOneScreenSharingAvailable:", [v3 isUPlusOneScreenSharingAvailable]);
  -[CSDMessagingConversationParticipant setSupportsLeaveContext:](v4, "setSupportsLeaveContext:", [v3 supportsLeaveContext]);
  -[CSDMessagingConversationParticipant setIsUPlusNDowngradeAvailable:](v4, "setIsUPlusNDowngradeAvailable:", [v3 isUPlusNDowngradeAvailable]);
  -[CSDMessagingConversationParticipant setIsLightweight:](v4, "setIsLightweight:", [v3 isLightweight]);
  -[CSDMessagingConversationParticipant setSharePlayProtocolVersion:](v4, "setSharePlayProtocolVersion:", [v3 sharePlayProtocolVersion]);
  -[CSDMessagingConversationParticipant setVisionFeatureVersion:](v4, "setVisionFeatureVersion:", [v3 visionFeatureVersion]);
  -[CSDMessagingConversationParticipant setVisionCallEstablishmentVersion:](v4, "setVisionCallEstablishmentVersion:", [v3 visionCallEstablishmentVersion]);
  v5 = [v3 participantAssociation];
  [(CSDMessagingConversationParticipant *)v4 setAssociation:v5];

  -[CSDMessagingConversationParticipant setIsSpatialPersonaEnabled:](v4, "setIsSpatialPersonaEnabled:", [v3 isSpatialPersonaEnabled]);
  -[CSDMessagingConversationParticipant setIsUPlusOneVisionToVisionAvailable:](v4, "setIsUPlusOneVisionToVisionAvailable:", [v3 isUPlusOneVisionToVisionAvailable]);
  -[CSDMessagingConversationParticipant setIsUPlusOneAVLessAvailable:](v4, "setIsUPlusOneAVLessAvailable:", [v3 isUPlusOneAVLessAvailable]);
  -[CSDMessagingConversationParticipant setSupportsRequestToScreenShare:](v4, "setSupportsRequestToScreenShare:", [v3 supportsRequestToScreenShare]);
  -[CSDMessagingConversationParticipant setIsPhotosSharePlayAvailable:](v4, "setIsPhotosSharePlayAvailable:", [v3 isPhotosSharePlayAvailable]);
  v6 = [v3 participantCluster];
  [(CSDMessagingConversationParticipant *)v4 setCluster:v6];

  -[CSDMessagingConversationParticipant setIsTranslationAvailable:](v4, "setIsTranslationAvailable:", [v3 isTranslationAvailable]);
  -[CSDMessagingConversationParticipant setIsNearbySharePlay:](v4, "setIsNearbySharePlay:", [v3 isNearbySharePlay]);
  -[CSDMessagingConversationParticipant setNearbyFeatureVersion:](v4, "setNearbyFeatureVersion:", [v3 nearbyFeatureVersion]);
  v7 = [v3 videoEnabled];
  v8 = [v3 message];
  -[CSDMessagingConversationParticipant setAvMode:](v4, "setAvMode:", [v8 avMode]);

  v9 = [v3 message];

  -[CSDMessagingConversationParticipant setPresentationMode:](v4, "setPresentationMode:", [v9 resolvedPresentationMode]);
  [(CSDMessagingConversationParticipant *)v4 setOptions:v7];

  return v4;
}

+ (id)participantWithCSDConversationParticipant:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CSDMessagingConversationParticipant);
  -[CSDMessagingConversationParticipant setIdentifier:](v4, "setIdentifier:", [v3 identifier]);
  v5 = [v3 handle];
  v6 = [CSDMessagingHandle handleWithTUHandle:v5];
  [(CSDMessagingConversationParticipant *)v4 setHandle:v6];

  v7 = [v3 avcData];
  [(CSDMessagingConversationParticipant *)v4 setAvcData:v7];

  v8 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsMomentsAvailable:](v4, "setIsMomentsAvailable:", [v8 isMomentsAvailable]);

  v9 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsScreenSharingAvailable:](v4, "setIsScreenSharingAvailable:", [v9 isScreenSharingAvailable]);

  v10 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsGondolaCallingAvailable:](v4, "setIsGondolaCallingAvailable:", [v10 isGondolaCallingAvailable]);

  v11 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsPersonaAvailable:](v4, "setIsPersonaAvailable:", [v11 isPersonaAvailable]);

  v12 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsGFTDowngradeToOneToOneAvailable:](v4, "setIsGFTDowngradeToOneToOneAvailable:", [v12 isGFTDowngradeToOneToOneAvailable]);

  v13 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusOneScreenSharingAvailable:](v4, "setIsUPlusOneScreenSharingAvailable:", [v13 isUPlusOneScreenShareAvailable]);

  v14 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusOneAVLessAvailable:](v4, "setIsUPlusOneAVLessAvailable:", [v14 isUPlusOneAVLessAvailable]);

  v15 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setSupportsLeaveContext:](v4, "setSupportsLeaveContext:", [v15 supportsLeaveContext]);

  v16 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setSupportsRequestToScreenShare:](v4, "setSupportsRequestToScreenShare:", [v16 supportsRequestToScreenShare]);

  v17 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusNDowngradeAvailable:](v4, "setIsUPlusNDowngradeAvailable:", [v17 isUPlusNDowngradeAvailable]);

  v18 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsTranslationAvailable:](v4, "setIsTranslationAvailable:", [v18 isTranslationAvailable]);

  -[CSDMessagingConversationParticipant setIsLightweight:](v4, "setIsLightweight:", [v3 isLightweight]);
  v19 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setSharePlayProtocolVersion:](v4, "setSharePlayProtocolVersion:", [v19 sharePlayProtocolVersion]);

  v20 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setVisionFeatureVersion:](v4, "setVisionFeatureVersion:", [v20 visionFeatureVersion]);

  v21 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setVisionCallEstablishmentVersion:](v4, "setVisionCallEstablishmentVersion:", [v21 visionCallEstablishmentVersion]);

  v22 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusOneVisionToVisionAvailable:](v4, "setIsUPlusOneVisionToVisionAvailable:", [v22 isUPlusOneVisionToVisionAvailable]);

  v23 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsPhotosSharePlayAvailable:](v4, "setIsPhotosSharePlayAvailable:", [v23 isPhotosSharePlayAvailable]);

  v24 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setNearbyFeatureVersion:](v4, "setNearbyFeatureVersion:", [v24 nearbyFeatureVersion]);

  -[CSDMessagingConversationParticipant setGuestModeEnabled:](v4, "setGuestModeEnabled:", [v3 isGuestModeEnabled]);
  v25 = [v3 association];
  v26 = [CSDMessagingConversationParticipantAssociation participantAssociationWithTUConversationParticipantAssociation:v25];
  [(CSDMessagingConversationParticipant *)v4 setAssociation:v26];

  -[CSDMessagingConversationParticipant setIsSpatialPersonaEnabled:](v4, "setIsSpatialPersonaEnabled:", [v3 isSpatialPersonaEnabled]);
  -[CSDMessagingConversationParticipant setSpatialPersonaGenerationCounter:](v4, "setSpatialPersonaGenerationCounter:", [v3 spatialPersonaGenerationCounter]);
  -[CSDMessagingConversationParticipant setPresentationMode:](v4, "setPresentationMode:", [v3 presentationMode]);
  v27 = [v3 cluster];
  v28 = [CSDMessagingConversationParticipantCluster participantClusterWithTUConversationParticipantCluster:v27];
  [(CSDMessagingConversationParticipant *)v4 setCluster:v28];

  -[CSDMessagingConversationParticipant setIsNearbySharePlay:](v4, "setIsNearbySharePlay:", [v3 isNearbySharePlay]);
  v29 = [v3 isVideoEnabled];
  v30 = [v3 audioVideoMode];

  [(CSDMessagingConversationParticipant *)v4 setAvMode:v30];
  [(CSDMessagingConversationParticipant *)v4 setOptions:v29];

  return v4;
}

+ (id)participantWithTUConversationParticipant:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CSDMessagingConversationParticipant);
  -[CSDMessagingConversationParticipant setIdentifier:](v4, "setIdentifier:", [v3 identifier]);
  v5 = [v3 handle];
  v6 = [CSDMessagingHandle handleWithTUHandle:v5];
  [(CSDMessagingConversationParticipant *)v4 setHandle:v6];

  v7 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsMomentsAvailable:](v4, "setIsMomentsAvailable:", [v7 isMomentsAvailable]);

  v8 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsScreenSharingAvailable:](v4, "setIsScreenSharingAvailable:", [v8 isScreenSharingAvailable]);

  v9 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsGondolaCallingAvailable:](v4, "setIsGondolaCallingAvailable:", [v9 isGondolaCallingAvailable]);

  v10 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsPersonaAvailable:](v4, "setIsPersonaAvailable:", [v10 isPersonaAvailable]);

  v11 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsGFTDowngradeToOneToOneAvailable:](v4, "setIsGFTDowngradeToOneToOneAvailable:", [v11 isGFTDowngradeToOneToOneAvailable]);

  v12 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusOneScreenSharingAvailable:](v4, "setIsUPlusOneScreenSharingAvailable:", [v12 isUPlusOneScreenShareAvailable]);

  v13 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusOneAVLessAvailable:](v4, "setIsUPlusOneAVLessAvailable:", [v13 isUPlusOneAVLessAvailable]);

  v14 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setSupportsLeaveContext:](v4, "setSupportsLeaveContext:", [v14 supportsLeaveContext]);

  v15 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setSupportsRequestToScreenShare:](v4, "setSupportsRequestToScreenShare:", [v15 supportsRequestToScreenShare]);

  v16 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusNDowngradeAvailable:](v4, "setIsUPlusNDowngradeAvailable:", [v16 isUPlusNDowngradeAvailable]);

  v17 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsTranslationAvailable:](v4, "setIsTranslationAvailable:", [v17 isTranslationAvailable]);

  v18 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsPhotosSharePlayAvailable:](v4, "setIsPhotosSharePlayAvailable:", [v18 isPhotosSharePlayAvailable]);

  -[CSDMessagingConversationParticipant setIsLightweight:](v4, "setIsLightweight:", [v3 isLightweight]);
  v19 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setSharePlayProtocolVersion:](v4, "setSharePlayProtocolVersion:", [v19 sharePlayProtocolVersion]);

  v20 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setVisionFeatureVersion:](v4, "setVisionFeatureVersion:", [v20 visionFeatureVersion]);

  v21 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setVisionCallEstablishmentVersion:](v4, "setVisionCallEstablishmentVersion:", [v21 visionCallEstablishmentVersion]);

  v22 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setIsUPlusOneVisionToVisionAvailable:](v4, "setIsUPlusOneVisionToVisionAvailable:", [v22 isUPlusOneVisionToVisionAvailable]);

  -[CSDMessagingConversationParticipant setGuestModeEnabled:](v4, "setGuestModeEnabled:", [v3 isGuestModeEnabled]);
  v23 = [v3 association];
  v24 = [CSDMessagingConversationParticipantAssociation participantAssociationWithTUConversationParticipantAssociation:v23];
  [(CSDMessagingConversationParticipant *)v4 setAssociation:v24];

  -[CSDMessagingConversationParticipant setIsSpatialPersonaEnabled:](v4, "setIsSpatialPersonaEnabled:", [v3 isSpatialPersonaEnabled]);
  v25 = [v3 cluster];
  v26 = [CSDMessagingConversationParticipantCluster participantClusterWithTUConversationParticipantCluster:v25];
  [(CSDMessagingConversationParticipant *)v4 setCluster:v26];

  -[CSDMessagingConversationParticipant setIsNearbySharePlay:](v4, "setIsNearbySharePlay:", [v3 isNearbySharePlay]);
  v27 = [v3 capabilities];
  -[CSDMessagingConversationParticipant setNearbyFeatureVersion:](v4, "setNearbyFeatureVersion:", [v27 nearbyFeatureVersion]);

  v28 = [v3 isVideoEnabled];
  -[CSDMessagingConversationParticipant setAvMode:](v4, "setAvMode:", [v3 audioVideoMode]);
  v29 = [v3 presentationMode];

  [(CSDMessagingConversationParticipant *)v4 setPresentationMode:v29];
  [(CSDMessagingConversationParticipant *)v4 setOptions:v28];

  return v4;
}

- (CSDConversationParticipant)csdConversationParticipant
{
  v3 = [CSDConversationParticipant alloc];
  v4 = [(CSDMessagingConversationParticipant *)self identifier];
  v5 = [(CSDMessagingConversationParticipant *)self handle];
  v6 = [v5 tuHandle];
  v7 = [(CSDMessagingConversationParticipant *)self avcData];
  v8 = [(CSDConversationParticipant *)v3 initWithIdentifier:v4 handle:v6 avcData:v7];

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
  v10 = [(CSDMessagingConversationParticipant *)self association];
  v11 = [v10 tuConversationParticipantAssociation];
  [(CSDConversationParticipant *)v8 setAssociation:v11];

  [(CSDConversationParticipant *)v8 setSpatialPersonaEnabled:[(CSDMessagingConversationParticipant *)self isSpatialPersonaEnabled]];
  [(CSDConversationParticipant *)v8 setSpatialPersonaGenerationCounter:[(CSDMessagingConversationParticipant *)self spatialPersonaGenerationCounter]];
  v12 = [(CSDMessagingConversationParticipant *)self cluster];
  v13 = [v12 tuConversationParticipantCluster];
  [(CSDConversationParticipant *)v8 setCluster:v13];

  [(CSDConversationParticipant *)v8 setIsNearbySharePlay:[(CSDMessagingConversationParticipant *)self isNearbySharePlay]];
  [(CSDConversationParticipant *)v8 setVideoEnabled:[(CSDMessagingConversationParticipant *)self options]& 1 | ![(CSDMessagingConversationParticipant *)self hasOptions]];
  if ([(CSDMessagingConversationParticipant *)self hasAvMode])
  {
    v14 = [(CSDMessagingConversationParticipant *)self avMode];
  }

  else if ([(CSDConversationParticipant *)v8 isVideoEnabled])
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [(CSDConversationParticipant *)v8 setAudioVideoMode:v14];
  [(CSDConversationParticipant *)v8 setPresentationMode:[(CSDMessagingConversationParticipant *)self resolvedPresentationMode]];

  return v8;
}

- (unint64_t)resolvedPresentationMode
{
  if (![(CSDMessagingConversationParticipant *)self hasPresentationMode])
  {
    return [(CSDMessagingConversationParticipant *)self avMode]== 0;
  }

  v3 = [(CSDMessagingConversationParticipant *)self presentationMode];
  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
  }
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CSDMessagingConversationParticipant;
  v3 = [(CSDMessagingConversationParticipant *)&v8 description];
  v4 = [(CSDMessagingConversationParticipant *)self dictionaryRepresentation];
  v5 = TULoggableStringForObject();
  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

@end