@interface AWDSMSReceivedMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCtError:(BOOL)error;
- (void)setHasFzError:(BOOL)error;
- (void)setHasHasAttachments:(BOOL)attachments;
- (void)setHasIsFromEmail:(BOOL)email;
- (void)setHasIsFromPhoneNumber:(BOOL)number;
- (void)setHasIsGroupMessage:(BOOL)message;
- (void)writeTo:(id)to;
@end

@implementation AWDSMSReceivedMessage

- (void)dealloc
{
  [(AWDSMSReceivedMessage *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDSMSReceivedMessage;
  [(AWDSMSReceivedMessage *)&v3 dealloc];
}

- (void)setHasFzError:(BOOL)error
{
  if (error)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCtError:(BOOL)error
{
  if (error)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsGroupMessage:(BOOL)message
{
  if (message)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsFromPhoneNumber:(BOOL)number
{
  if (number)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsFromEmail:(BOOL)email
{
  if (email)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasHasAttachments:(BOOL)attachments
{
  if (attachments)
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
  v3.receiver = self;
  v3.super_class = AWDSMSReceivedMessage;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSMSReceivedMessage description](&v3, sel_description), -[AWDSMSReceivedMessage dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  guid = self->_guid;
  if (guid)
  {
    [dictionary setObject:guid forKey:@"guid"];
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
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_ctError), @"ctError"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isGroupMessage), @"isGroupMessage"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isFromEmail), @"isFromEmail"}];
    if ((*&self->_has & 8) == 0)
    {
      return v4;
    }

    goto LABEL_10;
  }

LABEL_16:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isFromPhoneNumber), @"isFromPhoneNumber"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((has & 8) != 0)
  {
LABEL_10:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_hasAttachments), @"hasAttachments"}];
  }

  return v4;
}

- (void)writeTo:(id)to
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

      goto LABEL_13;
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
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  ctError = self->_ctError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  isGroupMessage = self->_isGroupMessage;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    isFromEmail = self->_isFromEmail;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  isFromPhoneNumber = self->_isFromPhoneNumber;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_17:
  hasAttachments = self->_hasAttachments;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if (self->_guid)
  {
    [to setGuid:?];
  }

  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 48) |= 1u;
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

  *(to + 5) = self->_fzError;
  *(to + 48) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(to + 4) = self->_ctError;
  *(to + 48) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 11) = self->_isGroupMessage;
  *(to + 48) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 10) = self->_isFromPhoneNumber;
  *(to + 48) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_17:
  *(to + 9) = self->_isFromEmail;
  *(to + 48) |= 0x10u;
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_10:
  *(to + 8) = self->_hasAttachments;
  *(to + 48) |= 8u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 24) = [(NSString *)self->_guid copyWithZone:zone];
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
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
  *(v5 + 48) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v5 + 16) = self->_ctError;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 44) = self->_isGroupMessage;
  *(v5 + 48) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    *(v5 + 36) = self->_isFromEmail;
    *(v5 + 48) |= 0x10u;
    if ((*&self->_has & 8) == 0)
    {
      return v5;
    }

    goto LABEL_8;
  }

LABEL_14:
  *(v5 + 40) = self->_isFromPhoneNumber;
  *(v5 + 48) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 8) != 0)
  {
LABEL_8:
    *(v5 + 32) = self->_hasAttachments;
    *(v5 + 48) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    guid = self->_guid;
    if (!(guid | *(equal + 3)) || (v5 = [(NSString *)guid isEqual:?]) != 0)
    {
      if (*&self->_has)
      {
        if ((*(equal + 48) & 1) == 0 || self->_timestamp != *(equal + 1))
        {
          goto LABEL_38;
        }
      }

      else if (*(equal + 48))
      {
LABEL_38:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&self->_has & 4) != 0)
      {
        if ((*(equal + 48) & 4) == 0 || self->_fzError != *(equal + 5))
        {
          goto LABEL_38;
        }
      }

      else if ((*(equal + 48) & 4) != 0)
      {
        goto LABEL_38;
      }

      if ((*&self->_has & 2) != 0)
      {
        if ((*(equal + 48) & 2) == 0 || self->_ctError != *(equal + 4))
        {
          goto LABEL_38;
        }
      }

      else if ((*(equal + 48) & 2) != 0)
      {
        goto LABEL_38;
      }

      if ((*&self->_has & 0x40) != 0)
      {
        if ((*(equal + 48) & 0x40) == 0 || self->_isGroupMessage != *(equal + 11))
        {
          goto LABEL_38;
        }
      }

      else if ((*(equal + 48) & 0x40) != 0)
      {
        goto LABEL_38;
      }

      if ((*&self->_has & 0x20) != 0)
      {
        if ((*(equal + 48) & 0x20) == 0 || self->_isFromPhoneNumber != *(equal + 10))
        {
          goto LABEL_38;
        }
      }

      else if ((*(equal + 48) & 0x20) != 0)
      {
        goto LABEL_38;
      }

      if ((*&self->_has & 0x10) != 0)
      {
        if ((*(equal + 48) & 0x10) == 0 || self->_isFromEmail != *(equal + 9))
        {
          goto LABEL_38;
        }
      }

      else if ((*(equal + 48) & 0x10) != 0)
      {
        goto LABEL_38;
      }

      LOBYTE(v5) = (*(equal + 48) & 8) == 0;
      if ((*&self->_has & 8) != 0)
      {
        if ((*(equal + 48) & 8) == 0 || self->_hasAttachments != *(equal + 8))
        {
          goto LABEL_38;
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

      goto LABEL_11;
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
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_isGroupMessage;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_isFromPhoneNumber;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_13:
  v8 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v9 = 2654435761 * self->_isFromEmail;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v10 = 2654435761 * self->_hasAttachments;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 3))
  {
    [(AWDSMSReceivedMessage *)self setGuid:?];
  }

  v5 = *(from + 48);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 48);
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

  else if ((*(from + 48) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_fzError = *(from + 5);
  *&self->_has |= 4u;
  v5 = *(from + 48);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_ctError = *(from + 4);
  *&self->_has |= 2u;
  v5 = *(from + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_isGroupMessage = *(from + 11);
  *&self->_has |= 0x40u;
  v5 = *(from + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_isFromPhoneNumber = *(from + 10);
  *&self->_has |= 0x20u;
  v5 = *(from + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_17:
  self->_isFromEmail = *(from + 9);
  *&self->_has |= 0x10u;
  if ((*(from + 48) & 8) == 0)
  {
    return;
  }

LABEL_10:
  self->_hasAttachments = *(from + 8);
  *&self->_has |= 8u;
}

@end