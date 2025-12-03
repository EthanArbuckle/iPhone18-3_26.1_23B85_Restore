@interface CSDMessagingCallMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOBSOLETEProtoMomentsAvailable:(BOOL)available;
- (void)setHasProtoMomentsV2Available:(BOOL)available;
- (void)setHasProtoSenderMuteUplink:(BOOL)uplink;
- (void)setHasProtoShouldSuppressInCallUI:(BOOL)i;
- (void)setHasProtoWantsVideo:(BOOL)video;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingCallMessage

- (int)type
{
  if ((*&self->_has & 2) != 0)
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Invite"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SenderMuteUplink"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasProtoWantsVideo:(BOOL)video
{
  if (video)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasOBSOLETEProtoMomentsAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasProtoSenderMuteUplink:(BOOL)uplink
{
  if (uplink)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasProtoShouldSuppressInCallUI:(BOOL)i
{
  if (i)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasProtoMomentsV2Available:(BOOL)available
{
  if (available)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingCallMessage;
  v3 = [(CSDMessagingCallMessage *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingCallMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    type = self->_type;
    if (type >= 3)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v6 = *(&off_10061D6B8 + type);
    }

    [v3 setObject:v6 forKey:@"type"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_protoProtocolVersion];
    [v3 setObject:v7 forKey:@"protoProtocolVersion"];

    has = self->_has;
  }

  if ((has & 0x40) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_protoWantsVideo];
    [v3 setObject:v8 forKey:@"protoWantsVideo"];
  }

  inviteData = self->_inviteData;
  if (inviteData)
  {
    dictionaryRepresentation = [(CSDMessagingAVConferenceInviteData *)inviteData dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"inviteData"];
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    v15 = [NSNumber numberWithBool:self->_oBSOLETEProtoMomentsAvailable];
    [v3 setObject:v15 forKey:@"OBSOLETE_protoMomentsAvailable"];

    v11 = self->_has;
    if ((v11 & 0x10) == 0)
    {
LABEL_14:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

  v16 = [NSNumber numberWithBool:self->_protoSenderMuteUplink];
  [v3 setObject:v16 forKey:@"protoSenderMuteUplink"];

  v11 = self->_has;
  if ((v11 & 0x20) == 0)
  {
LABEL_15:
    if ((v11 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_24:
  v17 = [NSNumber numberWithBool:self->_protoShouldSuppressInCallUI];
  [v3 setObject:v17 forKey:@"protoShouldSuppressInCallUI"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    v12 = [NSNumber numberWithBool:self->_protoMomentsV2Available];
    [v3 setObject:v12 forKey:@"protoMomentsV2Available"];
  }

LABEL_17:
  protoUpgradeSessionUUID = self->_protoUpgradeSessionUUID;
  if (protoUpgradeSessionUUID)
  {
    [v3 setObject:protoUpgradeSessionUUID forKey:@"protoUpgradeSessionUUID"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v14 = toCopy;
  if ((has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v14;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  protoProtocolVersion = self->_protoProtocolVersion;
  PBDataWriterWriteUint32Field();
  toCopy = v14;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    protoWantsVideo = self->_protoWantsVideo;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
  }

LABEL_5:
  if (self->_inviteData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v14;
  }

  v7 = self->_has;
  if ((v7 & 4) != 0)
  {
    oBSOLETEProtoMomentsAvailable = self->_oBSOLETEProtoMomentsAvailable;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
    v7 = self->_has;
    if ((v7 & 0x10) == 0)
    {
LABEL_9:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_9;
  }

  protoSenderMuteUplink = self->_protoSenderMuteUplink;
  PBDataWriterWriteBOOLField();
  toCopy = v14;
  v7 = self->_has;
  if ((v7 & 0x20) == 0)
  {
LABEL_10:
    if ((v7 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_22:
  protoShouldSuppressInCallUI = self->_protoShouldSuppressInCallUI;
  PBDataWriterWriteBOOLField();
  toCopy = v14;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    protoMomentsV2Available = self->_protoMomentsV2Available;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
  }

LABEL_12:
  if (self->_protoUpgradeSessionUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[8] = self->_type;
    *(toCopy + 44) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[4] = self->_protoProtocolVersion;
  *(toCopy + 44) |= 1u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    *(toCopy + 40) = self->_protoWantsVideo;
    *(toCopy + 44) |= 0x40u;
  }

LABEL_5:
  v7 = toCopy;
  if (self->_inviteData)
  {
    [toCopy setInviteData:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    *(toCopy + 36) = self->_oBSOLETEProtoMomentsAvailable;
    *(toCopy + 44) |= 4u;
    v6 = self->_has;
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 38) = self->_protoSenderMuteUplink;
  *(toCopy + 44) |= 0x10u;
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_10:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_22:
  *(toCopy + 39) = self->_protoShouldSuppressInCallUI;
  *(toCopy + 44) |= 0x20u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    *(toCopy + 37) = self->_protoMomentsV2Available;
    *(toCopy + 44) |= 8u;
  }

LABEL_12:
  if (self->_protoUpgradeSessionUUID)
  {
    [v7 setProtoUpgradeSessionUUID:?];
    toCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[8] = self->_type;
    *(v5 + 44) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v5[4] = self->_protoProtocolVersion;
  *(v5 + 44) |= 1u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    *(v5 + 40) = self->_protoWantsVideo;
    *(v5 + 44) |= 0x40u;
  }

LABEL_5:
  v8 = [(CSDMessagingAVConferenceInviteData *)self->_inviteData copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  v10 = self->_has;
  if ((v10 & 4) != 0)
  {
    *(v6 + 36) = self->_oBSOLETEProtoMomentsAvailable;
    *(v6 + 44) |= 4u;
    v10 = self->_has;
    if ((v10 & 0x10) == 0)
    {
LABEL_7:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      *(v6 + 39) = self->_protoShouldSuppressInCallUI;
      *(v6 + 44) |= 0x20u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 38) = self->_protoSenderMuteUplink;
  *(v6 + 44) |= 0x10u;
  v10 = self->_has;
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v10 & 8) != 0)
  {
LABEL_9:
    *(v6 + 37) = self->_protoMomentsV2Available;
    *(v6 + 44) |= 8u;
  }

LABEL_10:
  v11 = [(NSString *)self->_protoUpgradeSessionUUID copyWithZone:zone];
  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  has = self->_has;
  v6 = *(equalCopy + 44);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_type != *(equalCopy + 8))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_57;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_protoProtocolVersion != *(equalCopy + 4))
    {
      goto LABEL_57;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_57;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 44) & 0x40) == 0)
    {
      goto LABEL_57;
    }

    v11 = *(equalCopy + 40);
    if (self->_protoWantsVideo)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 44) & 0x40) != 0)
  {
    goto LABEL_57;
  }

  inviteData = self->_inviteData;
  if (inviteData | *(equalCopy + 1))
  {
    if (![(CSDMessagingAVConferenceInviteData *)inviteData isEqual:?])
    {
      goto LABEL_57;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 44);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0)
    {
      goto LABEL_57;
    }

    v12 = *(equalCopy + 36);
    if (self->_oBSOLETEProtoMomentsAvailable)
    {
      if ((*(equalCopy + 36) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (*(equalCopy + 36))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 44) & 0x10) == 0)
    {
      goto LABEL_57;
    }

    v13 = *(equalCopy + 38);
    if (self->_protoSenderMuteUplink)
    {
      if ((*(equalCopy + 38) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (*(equalCopy + 38))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 44) & 0x10) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 44) & 0x20) == 0)
    {
      goto LABEL_57;
    }

    v14 = *(equalCopy + 39);
    if (self->_protoShouldSuppressInCallUI)
    {
      if ((*(equalCopy + 39) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (*(equalCopy + 39))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 44) & 0x20) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 8) == 0)
  {
    if ((*(equalCopy + 44) & 8) == 0)
    {
      goto LABEL_25;
    }

LABEL_57:
    v10 = 0;
    goto LABEL_58;
  }

  if ((*(equalCopy + 44) & 8) == 0)
  {
    goto LABEL_57;
  }

  v15 = *(equalCopy + 37);
  if (self->_protoMomentsV2Available)
  {
    if ((*(equalCopy + 37) & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (*(equalCopy + 37))
  {
    goto LABEL_57;
  }

LABEL_25:
  protoUpgradeSessionUUID = self->_protoUpgradeSessionUUID;
  if (protoUpgradeSessionUUID | *(equalCopy + 3))
  {
    v10 = [(NSString *)protoUpgradeSessionUUID isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_58:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761 * self->_type;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_protoProtocolVersion;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_protoWantsVideo;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(CSDMessagingAVConferenceInviteData *)self->_inviteData hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_oBSOLETEProtoMomentsAvailable;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_10:
      v8 = 2654435761 * self->_protoSenderMuteUplink;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_11;
      }

LABEL_15:
      v9 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      v10 = 0;
      return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v6 ^ [(NSString *)self->_protoUpgradeSessionUUID hash];
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_10;
    }
  }

  v8 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v9 = 2654435761 * self->_protoShouldSuppressInCallUI;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v10 = 2654435761 * self->_protoMomentsV2Available;
  return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v6 ^ [(NSString *)self->_protoUpgradeSessionUUID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 44);
  if ((v6 & 2) != 0)
  {
    self->_type = *(fromCopy + 8);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 44);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_protoProtocolVersion = *(fromCopy + 4);
  *&self->_has |= 1u;
  if ((*(fromCopy + 44) & 0x40) != 0)
  {
LABEL_4:
    self->_protoWantsVideo = *(fromCopy + 40);
    *&self->_has |= 0x40u;
  }

LABEL_5:
  inviteData = self->_inviteData;
  v8 = *(v5 + 1);
  v10 = v5;
  if (inviteData)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    [(CSDMessagingAVConferenceInviteData *)inviteData mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    [(CSDMessagingCallMessage *)self setInviteData:?];
  }

  v5 = v10;
LABEL_14:
  v9 = *(v5 + 44);
  if ((v9 & 4) != 0)
  {
    self->_oBSOLETEProtoMomentsAvailable = *(v5 + 36);
    *&self->_has |= 4u;
    v9 = *(v5 + 44);
    if ((v9 & 0x10) == 0)
    {
LABEL_16:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  else if ((*(v5 + 44) & 0x10) == 0)
  {
    goto LABEL_16;
  }

  self->_protoSenderMuteUplink = *(v5 + 38);
  *&self->_has |= 0x10u;
  v9 = *(v5 + 44);
  if ((v9 & 0x20) == 0)
  {
LABEL_17:
    if ((v9 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_26:
  self->_protoShouldSuppressInCallUI = *(v5 + 39);
  *&self->_has |= 0x20u;
  if ((*(v5 + 44) & 8) != 0)
  {
LABEL_18:
    self->_protoMomentsV2Available = *(v5 + 37);
    *&self->_has |= 8u;
  }

LABEL_19:
  if (*(v5 + 3))
  {
    [(CSDMessagingCallMessage *)self setProtoUpgradeSessionUUID:?];
    v5 = v10;
  }
}

@end