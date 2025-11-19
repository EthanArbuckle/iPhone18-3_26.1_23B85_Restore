@interface AWDVisualVoicemailReceivedNotification
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAccountType:(BOOL)a3;
- (void)setHasNotificationType:(BOOL)a3;
- (void)setHasSubsid:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDVisualVoicemailReceivedNotification

- (void)setHasNotificationType:(BOOL)a3
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

- (void)setHasAccountType:(BOOL)a3
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

- (void)setHasSubsid:(BOOL)a3
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
  v7.super_class = AWDVisualVoicemailReceivedNotification;
  v3 = [(AWDVisualVoicemailReceivedNotification *)&v7 description];
  v4 = [(AWDVisualVoicemailReceivedNotification *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v10 = v4;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v10;
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
  v4 = v10;
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
  v4 = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    subsid = self->_subsid;
    PBDataWriterWriteUint32Field();
    v4 = v10;
  }

LABEL_6:
  if (self->_mcc)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_mnc)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 48) |= 1u;
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

  *(v4 + 10) = self->_notificationType;
  *(v4 + 48) |= 4u;
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
  *(v4 + 4) = self->_accountType;
  *(v4 + 48) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(v4 + 11) = self->_subsid;
    *(v4 + 48) |= 8u;
  }

LABEL_6:
  v6 = v4;
  if (self->_mcc)
  {
    [v4 setMcc:?];
    v4 = v6;
  }

  if (self->_mnc)
  {
    [v6 setMnc:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(NSString *)self->_mcc copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  v10 = [(NSString *)self->_mnc copyWithZone:a3];
  v11 = v6[4];
  v6[4] = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_notificationType != *(v4 + 10))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_accountType != *(v4 + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_subsid != *(v4 + 11))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_26;
  }

  mcc = self->_mcc;
  if (mcc | *(v4 + 3) && ![(NSString *)mcc isEqual:?])
  {
    goto LABEL_26;
  }

  mnc = self->_mnc;
  if (mnc | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 48);
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

  else if ((*(v4 + 48) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_notificationType = *(v4 + 10);
  *&self->_has |= 4u;
  v5 = *(v4 + 48);
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
  self->_accountType = *(v4 + 4);
  *&self->_has |= 2u;
  if ((*(v4 + 48) & 8) != 0)
  {
LABEL_5:
    self->_subsid = *(v4 + 11);
    *&self->_has |= 8u;
  }

LABEL_6:
  v6 = v4;
  if (*(v4 + 3))
  {
    [(AWDVisualVoicemailReceivedNotification *)self setMcc:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(AWDVisualVoicemailReceivedNotification *)self setMnc:?];
    v4 = v6;
  }
}

@end