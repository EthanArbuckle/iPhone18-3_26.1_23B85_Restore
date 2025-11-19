@interface CSDMessagingConversationInvitationPreference
+ (id)invitationPreferenceWithTUConversationInvitationPreference:(id)a3;
+ (int)messagingHandleTypeFor:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (TUConversationInvitationPreference)tuInvitationPreference;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsHandleType:(id)a3;
- (int)handleType;
- (int64_t)tuHandleType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNotificationStyles:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationInvitationPreference

+ (id)invitationPreferenceWithTUConversationInvitationPreference:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(CSDMessagingConversationInvitationPreference);
    -[CSDMessagingConversationInvitationPreference setHandleType:](v5, "setHandleType:", [a1 messagingHandleTypeFor:{objc_msgSend(v4, "handleType")}]);
    v6 = [v4 notificationStyles];

    [(CSDMessagingConversationInvitationPreference *)v5 setNotificationStyles:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int)messagingHandleTypeFor:(int64_t)a3
{
  if ((a3 - 1) < 3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (TUConversationInvitationPreference)tuInvitationPreference
{
  if ([(CSDMessagingConversationInvitationPreference *)self hasHandleType]&& [(CSDMessagingConversationInvitationPreference *)self hasNotificationStyles])
  {
    v3 = [[TUConversationInvitationPreference alloc] initWithHandleType:-[CSDMessagingConversationInvitationPreference tuHandleType](self notificationStyles:{"tuHandleType"), -[CSDMessagingConversationInvitationPreference notificationStyles](self, "notificationStyles")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)tuHandleType
{
  v2 = [(CSDMessagingConversationInvitationPreference *)self handleType];
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return qword_100579ED0[v2];
  }
}

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

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)handleType
{
  if (*&self->_has)
  {
    return self->_handleType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsHandleType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Generic"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PhoneNumber"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"EmailAddress"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasNotificationStyles:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationInvitationPreference;
  v3 = [(CSDMessagingConversationInvitationPreference *)&v7 description];
  v4 = [(CSDMessagingConversationInvitationPreference *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v7 forKey:@"version"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  handleType = self->_handleType;
  if (handleType >= 4)
  {
    v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_handleType];
  }

  else
  {
    v9 = off_10061D890[handleType];
  }

  [v3 setObject:v9 forKey:@"handleType"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [NSNumber numberWithUnsignedInt:self->_notificationStyles];
  [v3 setObject:v5 forKey:@"notificationStyles"];

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  handleType = self->_handleType;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    notificationStyles = self->_notificationStyles;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[4] = self->_version;
    *(v4 + 20) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  v4[2] = self->_handleType;
  *(v4 + 20) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4[3] = self->_notificationStyles;
    *(v4 + 20) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 4) = self->_version;
    *(result + 20) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_handleType;
  *(result + 20) |= 1u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 3) = self->_notificationStyles;
  *(result + 20) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 20) & 4) == 0 || self->_version != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 20) & 4) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_handleType != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_notificationStyles != *(v4 + 3))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_version;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_handleType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_notificationStyles;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 4) != 0)
  {
    self->_version = *(v4 + 4);
    *&self->_has |= 4u;
    v5 = *(v4 + 20);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_handleType = *(v4 + 2);
  *&self->_has |= 1u;
  if ((*(v4 + 20) & 2) != 0)
  {
LABEL_4:
    self->_notificationStyles = *(v4 + 3);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end