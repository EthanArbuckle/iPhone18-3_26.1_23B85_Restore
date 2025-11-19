@interface AWDSMSSentMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasCtError:(BOOL)a3;
- (void)setHasFzError:(BOOL)a3;
- (void)setHasHasAttachments:(BOOL)a3;
- (void)setHasIsGroupMessage:(BOOL)a3;
- (void)setHasIsToEmail:(BOOL)a3;
- (void)setHasIsToPhoneNumber:(BOOL)a3;
- (void)setHasSendDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSMSSentMessage

- (void)dealloc
{
  [(AWDSMSSentMessage *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDSMSSentMessage;
  [(AWDSMSSentMessage *)&v3 dealloc];
}

- (void)setHasFzError:(BOOL)a3
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

- (void)setHasCtError:(BOOL)a3
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

- (void)setHasIsGroupMessage:(BOOL)a3
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

- (void)setHasIsToPhoneNumber:(BOOL)a3
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

- (void)setHasIsToEmail:(BOOL)a3
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

- (void)setHasHasAttachments:(BOOL)a3
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

- (void)setHasSendDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSMSSentMessage;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSMSSentMessage description](&v3, sel_description), -[AWDSMSSentMessage dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if (has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_fzError), @"fzError"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_ctError), @"ctError"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isGroupMessage), @"isGroupMessage"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isToPhoneNumber), @"isToPhoneNumber"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_hasAttachments), @"hasAttachments"}];
    if ((*&self->_has & 0x80) == 0)
    {
      return v4;
    }

LABEL_19:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sendDuration), @"sendDuration"}];
    return v4;
  }

LABEL_17:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isToEmail), @"isToEmail"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (has < 0)
  {
    goto LABEL_19;
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  fzError = self->_fzError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  ctError = self->_ctError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  isGroupMessage = self->_isGroupMessage;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  isToPhoneNumber = self->_isToPhoneNumber;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    hasAttachments = self->_hasAttachments;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x80) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_17:
  isToEmail = self->_isToEmail;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((has & 0x80) == 0)
  {
    return;
  }

LABEL_19:
  sendDuration = self->_sendDuration;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  if (self->_guid)
  {
    [a3 setGuid:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 52) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(a3 + 5) = self->_fzError;
  *(a3 + 52) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a3 + 4) = self->_ctError;
  *(a3 + 52) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 9) = self->_isGroupMessage;
  *(a3 + 52) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a3 + 11) = self->_isToPhoneNumber;
  *(a3 + 52) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 10) = self->_isToEmail;
  *(a3 + 52) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      return;
    }

LABEL_19:
    *(a3 + 12) = self->_sendDuration;
    *(a3 + 52) |= 0x80u;
    return;
  }

LABEL_18:
  *(a3 + 8) = self->_hasAttachments;
  *(a3 + 52) |= 8u;
  if ((*&self->_has & 0x80) != 0)
  {
    goto LABEL_19;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 24) = [(NSString *)self->_guid copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 52) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 20) = self->_fzError;
  *(v5 + 52) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v5 + 16) = self->_ctError;
  *(v5 + 52) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 36) = self->_isGroupMessage;
  *(v5 + 52) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 44) = self->_isToPhoneNumber;
  *(v5 + 52) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    *(v5 + 32) = self->_hasAttachments;
    *(v5 + 52) |= 8u;
    if ((*&self->_has & 0x80) == 0)
    {
      return v5;
    }

LABEL_17:
    *(v5 + 48) = self->_sendDuration;
    *(v5 + 52) |= 0x80u;
    return v5;
  }

LABEL_15:
  *(v5 + 40) = self->_isToEmail;
  *(v5 + 52) |= 0x20u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (has < 0)
  {
    goto LABEL_17;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    guid = self->_guid;
    if (!(guid | *(a3 + 3)) || (v5 = [(NSString *)guid isEqual:?]) != 0)
    {
      if (*&self->_has)
      {
        if ((*(a3 + 52) & 1) == 0 || self->_timestamp != *(a3 + 1))
        {
          goto LABEL_43;
        }
      }

      else if (*(a3 + 52))
      {
LABEL_43:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&self->_has & 4) != 0)
      {
        if ((*(a3 + 52) & 4) == 0 || self->_fzError != *(a3 + 5))
        {
          goto LABEL_43;
        }
      }

      else if ((*(a3 + 52) & 4) != 0)
      {
        goto LABEL_43;
      }

      if ((*&self->_has & 2) != 0)
      {
        if ((*(a3 + 52) & 2) == 0 || self->_ctError != *(a3 + 4))
        {
          goto LABEL_43;
        }
      }

      else if ((*(a3 + 52) & 2) != 0)
      {
        goto LABEL_43;
      }

      if ((*&self->_has & 0x10) != 0)
      {
        if ((*(a3 + 52) & 0x10) == 0 || self->_isGroupMessage != *(a3 + 9))
        {
          goto LABEL_43;
        }
      }

      else if ((*(a3 + 52) & 0x10) != 0)
      {
        goto LABEL_43;
      }

      if ((*&self->_has & 0x40) != 0)
      {
        if ((*(a3 + 52) & 0x40) == 0 || self->_isToPhoneNumber != *(a3 + 11))
        {
          goto LABEL_43;
        }
      }

      else if ((*(a3 + 52) & 0x40) != 0)
      {
        goto LABEL_43;
      }

      if ((*&self->_has & 0x20) != 0)
      {
        if ((*(a3 + 52) & 0x20) == 0 || self->_isToEmail != *(a3 + 10))
        {
          goto LABEL_43;
        }
      }

      else if ((*(a3 + 52) & 0x20) != 0)
      {
        goto LABEL_43;
      }

      if ((*&self->_has & 8) != 0)
      {
        if ((*(a3 + 52) & 8) == 0 || self->_hasAttachments != *(a3 + 8))
        {
          goto LABEL_43;
        }
      }

      else if ((*(a3 + 52) & 8) != 0)
      {
        goto LABEL_43;
      }

      LOBYTE(v5) = *(a3 + 52) >= 0;
      if ((*&self->_has & 0x80) != 0)
      {
        if ((*(a3 + 52) & 0x80) == 0 || self->_sendDuration != *(a3 + 12))
        {
          goto LABEL_43;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_guid hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_fzError;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_ctError;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_isGroupMessage;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_isToPhoneNumber;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v9 = 2654435761 * self->_isToEmail;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v10 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_15:
  v9 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v10 = 2654435761 * self->_hasAttachments;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v11 = 2654435761 * self->_sendDuration;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 3))
  {
    [(AWDSMSSentMessage *)self setGuid:?];
  }

  v5 = *(a3 + 52);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 52);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a3 + 52) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_fzError = *(a3 + 5);
  *&self->_has |= 4u;
  v5 = *(a3 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_ctError = *(a3 + 4);
  *&self->_has |= 2u;
  v5 = *(a3 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_isGroupMessage = *(a3 + 9);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_isToPhoneNumber = *(a3 + 11);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_isToEmail = *(a3 + 10);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      return;
    }

LABEL_19:
    self->_sendDuration = *(a3 + 12);
    *&self->_has |= 0x80u;
    return;
  }

LABEL_18:
  self->_hasAttachments = *(a3 + 8);
  *&self->_has |= 8u;
  if ((*(a3 + 52) & 0x80) != 0)
  {
    goto LABEL_19;
  }
}

@end