@interface AWDIMessageNicknameRetrieved
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectionType:(BOOL)a3;
- (void)setHasHasAvatar:(BOOL)a3;
- (void)setHasLinkQuality:(BOOL)a3;
- (void)setHasPublicOperationalErrorCode:(BOOL)a3;
- (void)setHasPublicSuccess:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasUpdated:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIMessageNicknameRetrieved

- (void)dealloc
{
  [(AWDIMessageNicknameRetrieved *)self setPublicOperationalErrorDomain:0];
  v3.receiver = self;
  v3.super_class = AWDIMessageNicknameRetrieved;
  [(AWDIMessageNicknameRetrieved *)&v3 dealloc];
}

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

- (void)setHasUpdated:(BOOL)a3
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

- (void)setHasHasAvatar:(BOOL)a3
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

- (void)setHasPublicSuccess:(BOOL)a3
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

- (void)setHasPublicOperationalErrorCode:(BOOL)a3
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

- (void)setHasLinkQuality:(BOOL)a3
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
  v3.super_class = AWDIMessageNicknameRetrieved;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMessageNicknameRetrieved description](&v3, sel_description), -[AWDIMessageNicknameRetrieved dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeTaken), @"timeTaken"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_updated), @"updated"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_hasAvatar), @"hasAvatar"}];
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_publicSuccess), @"publicSuccess"}];
  }

LABEL_7:
  publicOperationalErrorDomain = self->_publicOperationalErrorDomain;
  if (publicOperationalErrorDomain)
  {
    [v3 setObject:publicOperationalErrorDomain forKey:@"publicOperationalErrorDomain"];
  }

  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
    if ((*&self->_has & 4) == 0)
    {
      return v3;
    }

    goto LABEL_12;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_publicOperationalErrorCode), @"publicOperationalErrorCode"}];
  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v6 & 4) != 0)
  {
LABEL_12:
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
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  timeTaken = self->_timeTaken;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  updated = self->_updated;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_16:
  hasAvatar = self->_hasAvatar;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    publicSuccess = self->_publicSuccess;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
  if (self->_publicOperationalErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    linkQuality = self->_linkQuality;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

  publicOperationalErrorCode = self->_publicOperationalErrorCode;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  if ((v6 & 4) == 0)
  {
    return;
  }

LABEL_20:
  connectionType = self->_connectionType;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 56) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 1) = self->_timeTaken;
  *(a3 + 56) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a3 + 13) = self->_updated;
  *(a3 + 56) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  *(a3 + 7) = self->_hasAvatar;
  *(a3 + 56) |= 8u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    *(a3 + 12) = self->_publicSuccess;
    *(a3 + 56) |= 0x40u;
  }

LABEL_7:
  if (self->_publicOperationalErrorDomain)
  {
    [a3 setPublicOperationalErrorDomain:?];
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    *(a3 + 9) = self->_publicOperationalErrorCode;
    *(a3 + 56) |= 0x20u;
    v6 = self->_has;
    if ((v6 & 0x10) == 0)
    {
LABEL_11:
      if ((v6 & 4) == 0)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

  *(a3 + 8) = self->_linkQuality;
  *(a3 + 56) |= 0x10u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_12:
  *(a3 + 6) = self->_connectionType;
  *(a3 + 56) |= 4u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 56) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_timeTaken;
  *(v5 + 56) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 52) = self->_updated;
  *(v5 + 56) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  *(v5 + 28) = self->_hasAvatar;
  *(v5 + 56) |= 8u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    *(v5 + 48) = self->_publicSuccess;
    *(v5 + 56) |= 0x40u;
  }

LABEL_7:

  *(v6 + 40) = [(NSString *)self->_publicOperationalErrorDomain copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 0x20) == 0)
  {
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    *(v6 + 32) = self->_linkQuality;
    *(v6 + 56) |= 0x10u;
    if ((*&self->_has & 4) == 0)
    {
      return v6;
    }

    goto LABEL_10;
  }

  *(v6 + 36) = self->_publicOperationalErrorCode;
  *(v6 + 56) |= 0x20u;
  v8 = self->_has;
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v8 & 4) != 0)
  {
LABEL_10:
    *(v6 + 24) = self->_connectionType;
    *(v6 + 56) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 56);
    if ((has & 2) != 0)
    {
      if ((*(a3 + 56) & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_44;
      }
    }

    else if ((*(a3 + 56) & 2) != 0)
    {
      goto LABEL_44;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 56) & 1) == 0 || self->_timeTaken != *(a3 + 1))
      {
        goto LABEL_44;
      }
    }

    else if (*(a3 + 56))
    {
      goto LABEL_44;
    }

    if ((*&self->_has & 0x80) != 0)
    {
      if ((*(a3 + 56) & 0x80) == 0 || self->_updated != *(a3 + 13))
      {
        goto LABEL_44;
      }
    }

    else if ((*(a3 + 56) & 0x80) != 0)
    {
LABEL_44:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 56) & 8) == 0 || self->_hasAvatar != *(a3 + 7))
      {
        goto LABEL_44;
      }
    }

    else if ((*(a3 + 56) & 8) != 0)
    {
      goto LABEL_44;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(a3 + 56) & 0x40) == 0 || self->_publicSuccess != *(a3 + 12))
      {
        goto LABEL_44;
      }
    }

    else if ((*(a3 + 56) & 0x40) != 0)
    {
      goto LABEL_44;
    }

    publicOperationalErrorDomain = self->_publicOperationalErrorDomain;
    if (publicOperationalErrorDomain | *(a3 + 5))
    {
      v5 = [(NSString *)publicOperationalErrorDomain isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 0x20) != 0)
    {
      if ((*(a3 + 56) & 0x20) == 0 || self->_publicOperationalErrorCode != *(a3 + 9))
      {
        goto LABEL_44;
      }
    }

    else if ((*(a3 + 56) & 0x20) != 0)
    {
      goto LABEL_44;
    }

    if ((has & 0x10) != 0)
    {
      if ((*(a3 + 56) & 0x10) == 0 || self->_linkQuality != *(a3 + 8))
      {
        goto LABEL_44;
      }
    }

    else if ((*(a3 + 56) & 0x10) != 0)
    {
      goto LABEL_44;
    }

    LOBYTE(v5) = (*(a3 + 56) & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((*(a3 + 56) & 4) == 0 || self->_connectionType != *(a3 + 6))
      {
        goto LABEL_44;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761u * self->_timeTaken;
      if ((*&self->_has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_updated;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v5 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v6 = 2654435761 * self->_hasAvatar;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_publicSuccess;
    goto LABEL_12;
  }

LABEL_11:
  v7 = 0;
LABEL_12:
  v8 = [(NSString *)self->_publicOperationalErrorDomain hash];
  if ((*&self->_has & 0x20) == 0)
  {
    v9 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v10 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10 ^ v11 ^ v8;
  }

  v9 = 2654435761 * self->_publicOperationalErrorCode;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v10 = 2654435761 * self->_linkQuality;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v11 = 2654435761 * self->_connectionType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10 ^ v11 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 56);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v5 = *(a3 + 56);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a3 + 56) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_timeTaken = *(a3 + 1);
  *&self->_has |= 1u;
  v5 = *(a3 + 56);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_updated = *(a3 + 13);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 56);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  self->_hasAvatar = *(a3 + 7);
  *&self->_has |= 8u;
  if ((*(a3 + 56) & 0x40) != 0)
  {
LABEL_6:
    self->_publicSuccess = *(a3 + 12);
    *&self->_has |= 0x40u;
  }

LABEL_7:
  if (*(a3 + 5))
  {
    [(AWDIMessageNicknameRetrieved *)self setPublicOperationalErrorDomain:?];
  }

  v6 = *(a3 + 56);
  if ((v6 & 0x20) != 0)
  {
    self->_publicOperationalErrorCode = *(a3 + 9);
    *&self->_has |= 0x20u;
    v6 = *(a3 + 56);
    if ((v6 & 0x10) == 0)
    {
LABEL_11:
      if ((v6 & 4) == 0)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a3 + 56) & 0x10) == 0)
  {
    goto LABEL_11;
  }

  self->_linkQuality = *(a3 + 8);
  *&self->_has |= 0x10u;
  if ((*(a3 + 56) & 4) == 0)
  {
    return;
  }

LABEL_12:
  self->_connectionType = *(a3 + 6);
  *&self->_has |= 4u;
}

@end