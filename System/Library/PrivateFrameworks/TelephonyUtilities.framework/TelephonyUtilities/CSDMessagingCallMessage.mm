@interface CSDMessagingCallMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOBSOLETEProtoMomentsAvailable:(BOOL)a3;
- (void)setHasProtoMomentsV2Available:(BOOL)a3;
- (void)setHasProtoSenderMuteUplink:(BOOL)a3;
- (void)setHasProtoShouldSuppressInCallUI:(BOOL)a3;
- (void)setHasProtoWantsVideo:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasType:(BOOL)a3
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

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Invite"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SenderMuteUplink"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasProtoWantsVideo:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasOBSOLETEProtoMomentsAvailable:(BOOL)a3
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

- (void)setHasProtoSenderMuteUplink:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasProtoShouldSuppressInCallUI:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasProtoMomentsV2Available:(BOOL)a3
{
  if (a3)
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
  v4 = [(CSDMessagingCallMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v10 = [(CSDMessagingAVConferenceInviteData *)inviteData dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"inviteData"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v14 = v4;
  if ((has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v14;
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
  v4 = v14;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    protoWantsVideo = self->_protoWantsVideo;
    PBDataWriterWriteBOOLField();
    v4 = v14;
  }

LABEL_5:
  if (self->_inviteData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v14;
  }

  v7 = self->_has;
  if ((v7 & 4) != 0)
  {
    oBSOLETEProtoMomentsAvailable = self->_oBSOLETEProtoMomentsAvailable;
    PBDataWriterWriteBOOLField();
    v4 = v14;
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
  v4 = v14;
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
  v4 = v14;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    protoMomentsV2Available = self->_protoMomentsV2Available;
    PBDataWriterWriteBOOLField();
    v4 = v14;
  }

LABEL_12:
  if (self->_protoUpgradeSessionUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v14;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[8] = self->_type;
    *(v4 + 44) |= 2u;
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

  v4[4] = self->_protoProtocolVersion;
  *(v4 + 44) |= 1u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    *(v4 + 40) = self->_protoWantsVideo;
    *(v4 + 44) |= 0x40u;
  }

LABEL_5:
  v7 = v4;
  if (self->_inviteData)
  {
    [v4 setInviteData:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    *(v4 + 36) = self->_oBSOLETEProtoMomentsAvailable;
    *(v4 + 44) |= 4u;
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

  *(v4 + 38) = self->_protoSenderMuteUplink;
  *(v4 + 44) |= 0x10u;
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
  *(v4 + 39) = self->_protoShouldSuppressInCallUI;
  *(v4 + 44) |= 0x20u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    *(v4 + 37) = self->_protoMomentsV2Available;
    *(v4 + 44) |= 8u;
  }

LABEL_12:
  if (self->_protoUpgradeSessionUUID)
  {
    [v7 setProtoUpgradeSessionUUID:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(CSDMessagingAVConferenceInviteData *)self->_inviteData copyWithZone:a3];
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
  v11 = [(NSString *)self->_protoUpgradeSessionUUID copyWithZone:a3];
  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  has = self->_has;
  v6 = *(v4 + 44);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_type != *(v4 + 8))
    {
      goto LABEL_57;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_57;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_protoProtocolVersion != *(v4 + 4))
    {
      goto LABEL_57;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_57;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 44) & 0x40) == 0)
    {
      goto LABEL_57;
    }

    v11 = *(v4 + 40);
    if (self->_protoWantsVideo)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_57;
    }
  }

  else if ((*(v4 + 44) & 0x40) != 0)
  {
    goto LABEL_57;
  }

  inviteData = self->_inviteData;
  if (inviteData | *(v4 + 1))
  {
    if (![(CSDMessagingAVConferenceInviteData *)inviteData isEqual:?])
    {
      goto LABEL_57;
    }

    has = self->_has;
  }

  v8 = *(v4 + 44);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0)
    {
      goto LABEL_57;
    }

    v12 = *(v4 + 36);
    if (self->_oBSOLETEProtoMomentsAvailable)
    {
      if ((*(v4 + 36) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (*(v4 + 36))
    {
      goto LABEL_57;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 44) & 0x10) == 0)
    {
      goto LABEL_57;
    }

    v13 = *(v4 + 38);
    if (self->_protoSenderMuteUplink)
    {
      if ((*(v4 + 38) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (*(v4 + 38))
    {
      goto LABEL_57;
    }
  }

  else if ((*(v4 + 44) & 0x10) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 44) & 0x20) == 0)
    {
      goto LABEL_57;
    }

    v14 = *(v4 + 39);
    if (self->_protoShouldSuppressInCallUI)
    {
      if ((*(v4 + 39) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (*(v4 + 39))
    {
      goto LABEL_57;
    }
  }

  else if ((*(v4 + 44) & 0x20) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 8) == 0)
  {
    if ((*(v4 + 44) & 8) == 0)
    {
      goto LABEL_25;
    }

LABEL_57:
    v10 = 0;
    goto LABEL_58;
  }

  if ((*(v4 + 44) & 8) == 0)
  {
    goto LABEL_57;
  }

  v15 = *(v4 + 37);
  if (self->_protoMomentsV2Available)
  {
    if ((*(v4 + 37) & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (*(v4 + 37))
  {
    goto LABEL_57;
  }

LABEL_25:
  protoUpgradeSessionUUID = self->_protoUpgradeSessionUUID;
  if (protoUpgradeSessionUUID | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 44);
  if ((v6 & 2) != 0)
  {
    self->_type = *(v4 + 8);
    *&self->_has |= 2u;
    v6 = *(v4 + 44);
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

  else if ((*(v4 + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_protoProtocolVersion = *(v4 + 4);
  *&self->_has |= 1u;
  if ((*(v4 + 44) & 0x40) != 0)
  {
LABEL_4:
    self->_protoWantsVideo = *(v4 + 40);
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