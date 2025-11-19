@interface AWDIDSGenericConnectionSetupDurationEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectionType:(BOOL)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasLinkType:(BOOL)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSGenericConnectionSetupDurationEvent

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasLinkType:(BOOL)a3
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

- (void)setHasSuccess:(BOOL)a3
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

- (void)setHasErrorCode:(BOOL)a3
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

- (void)setHasConnectionType:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSGenericConnectionSetupDurationEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSGenericConnectionSetupDurationEvent description](&v3, sel_description), -[AWDIDSGenericConnectionSetupDurationEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_linkType), @"linkType"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectionSetupDuration), @"connectionSetupDuration"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_errorCode), @"errorCode"}];
    if ((*&self->_has & 4) == 0)
    {
      return v3;
    }

    goto LABEL_7;
  }

LABEL_12:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_success), @"success"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 4) != 0)
  {
LABEL_7:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  linkType = self->_linkType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  connectionSetupDuration = self->_connectionSetupDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  success = self->_success;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_13:
  connectionType = self->_connectionType;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 40) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 8) = self->_linkType;
  *(a3 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(a3 + 1) = self->_connectionSetupDuration;
  *(a3 + 40) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(a3 + 36) = self->_success;
  *(a3 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      return;
    }

LABEL_13:
    *(a3 + 6) = self->_connectionType;
    *(a3 + 40) |= 4u;
    return;
  }

LABEL_12:
  *(a3 + 7) = self->_errorCode;
  *(a3 + 40) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_13;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 40) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_linkType;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 1) = self->_connectionSetupDuration;
  *(result + 40) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 36) = self->_success;
  *(result + 40) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 7) = self->_errorCode;
  *(result + 40) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 6) = self->_connectionType;
  *(result + 40) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 40) & 2) == 0 || self->_timestamp != *(a3 + 2))
    {
      goto LABEL_33;
    }
  }

  else if ((*(a3 + 40) & 2) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(a3 + 40) & 0x10) == 0 || self->_linkType != *(a3 + 8))
    {
      goto LABEL_33;
    }
  }

  else if ((*(a3 + 40) & 0x10) != 0)
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    if ((*(a3 + 40) & 1) == 0 || self->_connectionSetupDuration != *(a3 + 1))
    {
      goto LABEL_33;
    }
  }

  else if (*(a3 + 40))
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(a3 + 40) & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_33:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 40) & 0x20) == 0)
  {
    goto LABEL_33;
  }

  v6 = *(a3 + 36);
  if (self->_success)
  {
    if ((*(a3 + 36) & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  if (*(a3 + 36))
  {
    goto LABEL_33;
  }

LABEL_19:
  if ((*&self->_has & 8) != 0)
  {
    if ((*(a3 + 40) & 8) == 0 || self->_errorCode != *(a3 + 7))
    {
      goto LABEL_33;
    }
  }

  else if ((*(a3 + 40) & 8) != 0)
  {
    goto LABEL_33;
  }

  LOBYTE(v5) = (*(a3 + 40) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(a3 + 40) & 4) == 0 || self->_connectionType != *(a3 + 6))
    {
      goto LABEL_33;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_linkType;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if (*&self->_has)
  {
LABEL_4:
    v4 = 2654435761u * self->_connectionSetupDuration;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_success;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_errorCode;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_connectionType;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 40);
  if ((v3 & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v3 = *(a3 + 40);
    if ((v3 & 0x10) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a3 + 40) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_linkType = *(a3 + 8);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 40);
  if ((v3 & 1) == 0)
  {
LABEL_4:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  self->_connectionSetupDuration = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 40);
  if ((v3 & 0x20) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_success = *(a3 + 36);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 40);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 4) == 0)
    {
      return;
    }

LABEL_13:
    self->_connectionType = *(a3 + 6);
    *&self->_has |= 4u;
    return;
  }

LABEL_12:
  self->_errorCode = *(a3 + 7);
  *&self->_has |= 8u;
  if ((*(a3 + 40) & 4) != 0)
  {
    goto LABEL_13;
  }
}

@end