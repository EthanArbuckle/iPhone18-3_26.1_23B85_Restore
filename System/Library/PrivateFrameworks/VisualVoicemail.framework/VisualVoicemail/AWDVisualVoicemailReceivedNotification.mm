@interface AWDVisualVoicemailReceivedNotification
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAccountType:(BOOL)type;
- (void)setHasNotificationType:(BOOL)type;
- (void)setHasSubsid:(BOOL)subsid;
- (void)writeTo:(id)to;
@end

@implementation AWDVisualVoicemailReceivedNotification

- (void)setHasNotificationType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAccountType:(BOOL)type
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

- (void)setHasSubsid:(BOOL)subsid
{
  if (subsid)
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
  v7.super_class = AWDVisualVoicemailReceivedNotification;
  v3 = [(AWDVisualVoicemailReceivedNotification *)&v7 description];
  dictionaryRepresentation = [(AWDVisualVoicemailReceivedNotification *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v9 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v10 = [NSNumber numberWithUnsignedInt:self->_notificationType];
  [v3 setObject:v10 forKey:@"notificationType"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v11 = [NSNumber numberWithUnsignedInt:self->_accountType];
  [v3 setObject:v11 forKey:@"accountType"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [NSNumber numberWithUnsignedInt:self->_subsid];
    [v3 setObject:v5 forKey:@"subsid"];
  }

LABEL_6:
  mcc = self->_mcc;
  if (mcc)
  {
    [v3 setObject:mcc forKey:@"mcc"];
  }

  mnc = self->_mnc;
  if (mnc)
  {
    [v3 setObject:mnc forKey:@"mnc"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v10 = toCopy;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v10;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  notificationType = self->_notificationType;
  PBDataWriterWriteUint32Field();
  toCopy = v10;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  accountType = self->_accountType;
  PBDataWriterWriteUint32Field();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    subsid = self->_subsid;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
  }

LABEL_6:
  if (self->_mcc)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_mnc)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 48) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 10) = self->_notificationType;
  *(toCopy + 48) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  *(toCopy + 4) = self->_accountType;
  *(toCopy + 48) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(toCopy + 11) = self->_subsid;
    *(toCopy + 48) |= 8u;
  }

LABEL_6:
  v6 = toCopy;
  if (self->_mcc)
  {
    [toCopy setMcc:?];
    toCopy = v6;
  }

  if (self->_mnc)
  {
    [v6 setMnc:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 4) = self->_accountType;
      *(v5 + 48) |= 2u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 10) = self->_notificationType;
  *(v5 + 48) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 11) = self->_subsid;
    *(v5 + 48) |= 8u;
  }

LABEL_6:
  v8 = [(NSString *)self->_mcc copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  v10 = [(NSString *)self->_mnc copyWithZone:zone];
  v11 = v6[4];
  v6[4] = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_notificationType != *(equalCopy + 10))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_accountType != *(equalCopy + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_subsid != *(equalCopy + 11))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_26;
  }

  mcc = self->_mcc;
  if (mcc | *(equalCopy + 3) && ![(NSString *)mcc isEqual:?])
  {
    goto LABEL_26;
  }

  mnc = self->_mnc;
  if (mnc | *(equalCopy + 4))
  {
    v8 = [(NSString *)mnc isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_27:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_notificationType;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v6 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_accountType;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v6 = 2654435761 * self->_subsid;
LABEL_10:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_mcc hash];
  return v7 ^ [(NSString *)self->_mnc hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 48);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(fromCopy + 48) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_notificationType = *(fromCopy + 10);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 48);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  self->_accountType = *(fromCopy + 4);
  *&self->_has |= 2u;
  if ((*(fromCopy + 48) & 8) != 0)
  {
LABEL_5:
    self->_subsid = *(fromCopy + 11);
    *&self->_has |= 8u;
  }

LABEL_6:
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(AWDVisualVoicemailReceivedNotification *)self setMcc:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(AWDVisualVoicemailReceivedNotification *)self setMnc:?];
    fromCopy = v6;
  }
}

@end