@interface CSDMessagingConversationInvitationPreference
+ (id)invitationPreferenceWithTUConversationInvitationPreference:(id)preference;
+ (int)messagingHandleTypeFor:(int64_t)for;
- (BOOL)isEqual:(id)equal;
- (TUConversationInvitationPreference)tuInvitationPreference;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsHandleType:(id)type;
- (int)handleType;
- (int64_t)tuHandleType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNotificationStyles:(BOOL)styles;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationInvitationPreference

+ (id)invitationPreferenceWithTUConversationInvitationPreference:(id)preference
{
  if (preference)
  {
    preferenceCopy = preference;
    v5 = objc_alloc_init(CSDMessagingConversationInvitationPreference);
    -[CSDMessagingConversationInvitationPreference setHandleType:](v5, "setHandleType:", [self messagingHandleTypeFor:{objc_msgSend(preferenceCopy, "handleType")}]);
    notificationStyles = [preferenceCopy notificationStyles];

    [(CSDMessagingConversationInvitationPreference *)v5 setNotificationStyles:notificationStyles];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int)messagingHandleTypeFor:(int64_t)for
{
  if ((for - 1) < 3)
  {
    return for;
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
  handleType = [(CSDMessagingConversationInvitationPreference *)self handleType];
  if (handleType > 3)
  {
    return 0;
  }

  else
  {
    return qword_100579ED0[handleType];
  }
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
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

- (int)StringAsHandleType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Generic"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PhoneNumber"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"EmailAddress"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasNotificationStyles:(BOOL)styles
{
  if (styles)
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
  dictionaryRepresentation = [(CSDMessagingConversationInvitationPreference *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
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
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    notificationStyles = self->_notificationStyles;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[4] = self->_version;
    *(toCopy + 20) |= 4u;
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

  toCopy[2] = self->_handleType;
  *(toCopy + 20) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    toCopy[3] = self->_notificationStyles;
    *(toCopy + 20) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 20) & 4) == 0 || self->_version != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 20) & 4) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_handleType != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 20))
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_notificationStyles != *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if ((v5 & 4) != 0)
  {
    self->_version = *(fromCopy + 4);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 20);
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

  else if ((*(fromCopy + 20) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_handleType = *(fromCopy + 2);
  *&self->_has |= 1u;
  if ((*(fromCopy + 20) & 2) != 0)
  {
LABEL_4:
    self->_notificationStyles = *(fromCopy + 3);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end