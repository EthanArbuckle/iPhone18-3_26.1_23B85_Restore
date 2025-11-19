@interface AWDIMessageSentMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectionType:(BOOL)a3;
- (void)setHasFzError:(BOOL)a3;
- (void)setHasHasAttachments:(BOOL)a3;
- (void)setHasIsGroupMessage:(BOOL)a3;
- (void)setHasIsToEmail:(BOOL)a3;
- (void)setHasIsToPhoneNumber:(BOOL)a3;
- (void)setHasIsTypingIndicator:(BOOL)a3;
- (void)setHasMessageError:(BOOL)a3;
- (void)setHasSendDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIMessageSentMessage

- (void)dealloc
{
  [(AWDIMessageSentMessage *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDIMessageSentMessage;
  [(AWDIMessageSentMessage *)&v3 dealloc];
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

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasMessageError:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsTypingIndicator:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
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

  *&self->_has = *&self->_has & 0xFFEF | v3;
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

  *&self->_has = *&self->_has & 0xFFBF | v3;
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

  *&self->_has = *&self->_has & 0xFFDF | v3;
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

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasSendDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasConnectionType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIMessageSentMessage;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMessageSentMessage description](&v3, sel_description), -[AWDIMessageSentMessage dictionaryRepresentation](self, "dictionaryRepresentation")];
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
      if ((has & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_5;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_fzError), @"fzError"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_messageError), @"messageError"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isTypingIndicator), @"isTypingIndicator"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isGroupMessage), @"isGroupMessage"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isToPhoneNumber), @"isToPhoneNumber"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isToEmail), @"isToEmail"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sendDuration), @"sendDuration"}];
    if ((*&self->_has & 2) == 0)
    {
      return v4;
    }

    goto LABEL_13;
  }

LABEL_22:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_hasAttachments), @"hasAttachments"}];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((has & 2) != 0)
  {
LABEL_13:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
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
      if ((has & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_5;
  }

  fzError = self->_fzError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  messageError = self->_messageError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  isTypingIndicator = self->_isTypingIndicator;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  isGroupMessage = self->_isGroupMessage;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  isToPhoneNumber = self->_isToPhoneNumber;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  isToEmail = self->_isToEmail;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    sendDuration = self->_sendDuration;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_21:
  hasAttachments = self->_hasAttachments;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_23:
  connectionType = self->_connectionType;

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
    *(a3 + 30) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(a3 + 5) = self->_fzError;
  *(a3 + 30) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 13) = self->_messageError;
  *(a3 + 30) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 12) = self->_isTypingIndicator;
  *(a3 + 30) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 9) = self->_isGroupMessage;
  *(a3 + 30) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 11) = self->_isToPhoneNumber;
  *(a3 + 30) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 10) = self->_isToEmail;
  *(a3 + 30) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 8) = self->_hasAttachments;
  *(a3 + 30) |= 8u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_23:
  *(a3 + 14) = self->_sendDuration;
  *(a3 + 30) |= 0x200u;
  if ((*&self->_has & 2) == 0)
  {
    return;
  }

LABEL_13:
  *(a3 + 4) = self->_connectionType;
  *(a3 + 30) |= 2u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 24) = [(NSString *)self->_guid copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 60) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 20) = self->_fzError;
  *(v5 + 60) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 52) = self->_messageError;
  *(v5 + 60) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 48) = self->_isTypingIndicator;
  *(v5 + 60) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 36) = self->_isGroupMessage;
  *(v5 + 60) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 44) = self->_isToPhoneNumber;
  *(v5 + 60) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 40) = self->_isToEmail;
  *(v5 + 60) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    *(v5 + 56) = self->_sendDuration;
    *(v5 + 60) |= 0x200u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + 32) = self->_hasAttachments;
  *(v5 + 60) |= 8u;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((has & 2) != 0)
  {
LABEL_11:
    *(v5 + 16) = self->_connectionType;
    *(v5 + 60) |= 2u;
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
      has = self->_has;
      v8 = *(a3 + 30);
      if (has)
      {
        if ((v8 & 1) == 0 || self->_timestamp != *(a3 + 1))
        {
          goto LABEL_53;
        }
      }

      else if (v8)
      {
LABEL_53:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((has & 4) != 0)
      {
        if ((v8 & 4) == 0 || self->_fzError != *(a3 + 5))
        {
          goto LABEL_53;
        }
      }

      else if ((v8 & 4) != 0)
      {
        goto LABEL_53;
      }

      if ((*&self->_has & 0x100) != 0)
      {
        if ((*(a3 + 30) & 0x100) == 0 || self->_messageError != *(a3 + 13))
        {
          goto LABEL_53;
        }
      }

      else if ((*(a3 + 30) & 0x100) != 0)
      {
        goto LABEL_53;
      }

      if ((has & 0x80) != 0)
      {
        if ((v8 & 0x80) == 0 || self->_isTypingIndicator != *(a3 + 12))
        {
          goto LABEL_53;
        }
      }

      else if ((v8 & 0x80) != 0)
      {
        goto LABEL_53;
      }

      if ((has & 0x10) != 0)
      {
        if ((v8 & 0x10) == 0 || self->_isGroupMessage != *(a3 + 9))
        {
          goto LABEL_53;
        }
      }

      else if ((v8 & 0x10) != 0)
      {
        goto LABEL_53;
      }

      if ((has & 0x40) != 0)
      {
        if ((v8 & 0x40) == 0 || self->_isToPhoneNumber != *(a3 + 11))
        {
          goto LABEL_53;
        }
      }

      else if ((v8 & 0x40) != 0)
      {
        goto LABEL_53;
      }

      if ((has & 0x20) != 0)
      {
        if ((v8 & 0x20) == 0 || self->_isToEmail != *(a3 + 10))
        {
          goto LABEL_53;
        }
      }

      else if ((v8 & 0x20) != 0)
      {
        goto LABEL_53;
      }

      if ((has & 8) != 0)
      {
        if ((v8 & 8) == 0 || self->_hasAttachments != *(a3 + 8))
        {
          goto LABEL_53;
        }
      }

      else if ((v8 & 8) != 0)
      {
        goto LABEL_53;
      }

      if ((*&self->_has & 0x200) != 0)
      {
        if ((*(a3 + 30) & 0x200) == 0 || self->_sendDuration != *(a3 + 14))
        {
          goto LABEL_53;
        }
      }

      else if ((*(a3 + 30) & 0x200) != 0)
      {
        goto LABEL_53;
      }

      LOBYTE(v5) = (v8 & 2) == 0;
      if ((has & 2) != 0)
      {
        if ((v8 & 2) == 0 || self->_connectionType != *(a3 + 4))
        {
          goto LABEL_53;
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
  has = self->_has;
  if (has)
  {
    v5 = 2654435761u * self->_timestamp;
    if ((has & 4) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_fzError;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_messageError;
    if ((has & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_isTypingIndicator;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v9 = 2654435761 * self->_isGroupMessage;
    if ((has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_7:
    v10 = 2654435761 * self->_isToPhoneNumber;
    if ((has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_8:
    v11 = 2654435761 * self->_isToEmail;
    if ((has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = 0;
  if ((has & 8) != 0)
  {
LABEL_9:
    v12 = 2654435761 * self->_hasAttachments;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v13 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v14 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_19:
  v12 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v13 = 2654435761 * self->_sendDuration;
  if ((has & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v14 = 2654435761 * self->_connectionType;
  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 3))
  {
    [(AWDIMessageSentMessage *)self setGuid:?];
  }

  v5 = *(a3 + 30);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 30);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_fzError = *(a3 + 5);
  *&self->_has |= 4u;
  v5 = *(a3 + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_messageError = *(a3 + 13);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_isTypingIndicator = *(a3 + 12);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_isGroupMessage = *(a3 + 9);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_isToPhoneNumber = *(a3 + 11);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_isToEmail = *(a3 + 10);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 30);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_hasAttachments = *(a3 + 8);
  *&self->_has |= 8u;
  v5 = *(a3 + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 2) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_23:
  self->_sendDuration = *(a3 + 14);
  *&self->_has |= 0x200u;
  if ((*(a3 + 30) & 2) == 0)
  {
    return;
  }

LABEL_13:
  self->_connectionType = *(a3 + 4);
  *&self->_has |= 2u;
}

@end