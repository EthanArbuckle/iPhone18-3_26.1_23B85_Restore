@interface CSDMessagingLinkSyncMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingLinkSyncMessage

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

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Update"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CheckIn"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Recover"])
  {
    v4 = 3;
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
  v7.super_class = CSDMessagingLinkSyncMessage;
  v3 = [(CSDMessagingLinkSyncMessage *)&v7 description];
  v4 = [(CSDMessagingLinkSyncMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if (has)
  {
    type = self->_type;
    if (type >= 4)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v7 = *(&off_10061AD10 + type);
    }

    [v3 setObject:v7 forKey:@"type"];
  }

  updateMessage = self->_updateMessage;
  if (updateMessage)
  {
    v9 = [(CSDMessagingLinkSyncUpdateMessage *)updateMessage dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"updateMessage"];
  }

  checkInMessage = self->_checkInMessage;
  if (checkInMessage)
  {
    v11 = [(CSDMessagingLinkSyncCheckInMessage *)checkInMessage dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"checkInMessage"];
  }

  recoverMessage = self->_recoverMessage;
  if (recoverMessage)
  {
    v13 = [(CSDMessagingLinkSyncRecoverMessage *)recoverMessage dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"recoverMessage"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_updateMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_checkInMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_recoverMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[10] = self->_version;
    *(v4 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[6] = self->_type;
    *(v4 + 44) |= 1u;
  }

  v6 = v4;
  if (self->_updateMessage)
  {
    [v4 setUpdateMessage:?];
    v4 = v6;
  }

  if (self->_checkInMessage)
  {
    [v6 setCheckInMessage:?];
    v4 = v6;
  }

  if (self->_recoverMessage)
  {
    [v6 setRecoverMessage:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 10) = self->_version;
    *(v5 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 6) = self->_type;
    *(v5 + 44) |= 1u;
  }

  v8 = [(CSDMessagingLinkSyncUpdateMessage *)self->_updateMessage copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  v10 = [(CSDMessagingLinkSyncCheckInMessage *)self->_checkInMessage copyWithZone:a3];
  v11 = v6[1];
  v6[1] = v10;

  v12 = [(CSDMessagingLinkSyncRecoverMessage *)self->_recoverMessage copyWithZone:a3];
  v13 = v6[2];
  v6[2] = v12;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 44);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_version != *(v4 + 10))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_type != *(v4 + 6))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_18;
  }

  updateMessage = self->_updateMessage;
  if (updateMessage | *(v4 + 4) && ![(CSDMessagingLinkSyncUpdateMessage *)updateMessage isEqual:?])
  {
    goto LABEL_18;
  }

  checkInMessage = self->_checkInMessage;
  if (checkInMessage | *(v4 + 1))
  {
    if (![(CSDMessagingLinkSyncCheckInMessage *)checkInMessage isEqual:?])
    {
      goto LABEL_18;
    }
  }

  recoverMessage = self->_recoverMessage;
  if (recoverMessage | *(v4 + 2))
  {
    v9 = [(CSDMessagingLinkSyncRecoverMessage *)recoverMessage isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_version;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_type;
LABEL_6:
  v5 = v4 ^ v3 ^ [(CSDMessagingLinkSyncUpdateMessage *)self->_updateMessage hash];
  v6 = [(CSDMessagingLinkSyncCheckInMessage *)self->_checkInMessage hash];
  return v5 ^ v6 ^ [(CSDMessagingLinkSyncRecoverMessage *)self->_recoverMessage hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 44);
  if ((v6 & 2) != 0)
  {
    self->_version = *(v4 + 10);
    *&self->_has |= 2u;
    v6 = *(v4 + 44);
  }

  if (v6)
  {
    self->_type = *(v4 + 6);
    *&self->_has |= 1u;
  }

  updateMessage = self->_updateMessage;
  v8 = v5[4];
  v13 = v5;
  if (updateMessage)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(CSDMessagingLinkSyncUpdateMessage *)updateMessage mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(CSDMessagingLinkSyncMessage *)self setUpdateMessage:?];
  }

  v5 = v13;
LABEL_11:
  checkInMessage = self->_checkInMessage;
  v10 = v5[1];
  if (checkInMessage)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    [(CSDMessagingLinkSyncCheckInMessage *)checkInMessage mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    [(CSDMessagingLinkSyncMessage *)self setCheckInMessage:?];
  }

  v5 = v13;
LABEL_17:
  recoverMessage = self->_recoverMessage;
  v12 = v5[2];
  if (recoverMessage)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    [(CSDMessagingLinkSyncRecoverMessage *)recoverMessage mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    [(CSDMessagingLinkSyncMessage *)self setRecoverMessage:?];
  }

  v5 = v13;
LABEL_23:
}

@end