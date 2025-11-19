@interface AWDIMessageNicknamePublished
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
- (void)setHasPrivateOperationalErrorCode:(BOOL)a3;
- (void)setHasPrivateSuccess:(BOOL)a3;
- (void)setHasPublicOperationalErrorCode:(BOOL)a3;
- (void)setHasPublicSuccess:(BOOL)a3;
- (void)setHasUpdated:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIMessageNicknamePublished

- (void)dealloc
{
  [(AWDIMessageNicknamePublished *)self setPublicOperationalErrorDomain:0];
  [(AWDIMessageNicknamePublished *)self setPrivateOperationalErrorDomain:0];
  v3.receiver = self;
  v3.super_class = AWDIMessageNicknamePublished;
  [(AWDIMessageNicknamePublished *)&v3 dealloc];
}

- (void)setHasUpdated:(BOOL)a3
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

- (void)setHasHasAvatar:(BOOL)a3
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

- (void)setHasPublicSuccess:(BOOL)a3
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

- (void)setHasPrivateSuccess:(BOOL)a3
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

- (void)setHasPublicOperationalErrorCode:(BOOL)a3
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

- (void)setHasPrivateOperationalErrorCode:(BOOL)a3
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

- (void)setHasLinkQuality:(BOOL)a3
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
  v3.super_class = AWDIMessageNicknamePublished;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMessageNicknamePublished description](&v3, sel_description), -[AWDIMessageNicknamePublished dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_updated), @"updated"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_hasAvatar), @"hasAvatar"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_publicSuccess), @"publicSuccess"}];
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_privateSuccess), @"privateSuccess"}];
  }

LABEL_7:
  publicOperationalErrorDomain = self->_publicOperationalErrorDomain;
  if (publicOperationalErrorDomain)
  {
    [v3 setObject:publicOperationalErrorDomain forKey:@"publicOperationalErrorDomain"];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_publicOperationalErrorCode), @"publicOperationalErrorCode"}];
  }

  privateOperationalErrorDomain = self->_privateOperationalErrorDomain;
  if (privateOperationalErrorDomain)
  {
    [v3 setObject:privateOperationalErrorDomain forKey:@"privateOperationalErrorDomain"];
  }

  v7 = self->_has;
  if ((v7 & 0x10) == 0)
  {
    if ((v7 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_24:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
    if ((*&self->_has & 2) == 0)
    {
      return v3;
    }

    goto LABEL_16;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_privateOperationalErrorCode), @"privateOperationalErrorCode"}];
  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  if ((v7 & 2) != 0)
  {
LABEL_16:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  updated = self->_updated;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  hasAvatar = self->_hasAvatar;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_20:
  publicSuccess = self->_publicSuccess;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    privateSuccess = self->_privateSuccess;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
  if (self->_publicOperationalErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x40) != 0)
  {
    publicOperationalErrorCode = self->_publicOperationalErrorCode;
    PBDataWriterWriteUint32Field();
  }

  if (self->_privateOperationalErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 0x10) == 0)
  {
    if ((v7 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_23:
    linkQuality = self->_linkQuality;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_24;
  }

  privateOperationalErrorCode = self->_privateOperationalErrorCode;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((v7 & 2) == 0)
  {
    return;
  }

LABEL_24:
  connectionType = self->_connectionType;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 15) = self->_updated;
  *(a3 + 32) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 5) = self->_hasAvatar;
  *(a3 + 32) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_21:
  *(a3 + 14) = self->_publicSuccess;
  *(a3 + 32) |= 0x80u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    *(a3 + 10) = self->_privateSuccess;
    *(a3 + 32) |= 0x20u;
  }

LABEL_7:
  if (self->_publicOperationalErrorDomain)
  {
    [a3 setPublicOperationalErrorDomain:?];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    *(a3 + 11) = self->_publicOperationalErrorCode;
    *(a3 + 32) |= 0x40u;
  }

  if (self->_privateOperationalErrorDomain)
  {
    [a3 setPrivateOperationalErrorDomain:?];
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(a3 + 7) = self->_privateOperationalErrorCode;
    *(a3 + 32) |= 0x10u;
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_15:
      if ((v6 & 2) == 0)
      {
        return;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_15;
  }

  *(a3 + 6) = self->_linkQuality;
  *(a3 + 32) |= 8u;
  if ((*&self->_has & 2) == 0)
  {
    return;
  }

LABEL_16:
  *(a3 + 4) = self->_connectionType;
  *(a3 + 32) |= 2u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 64) |= 1u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 60) = self->_updated;
  *(v5 + 64) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 20) = self->_hasAvatar;
  *(v5 + 64) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  *(v5 + 56) = self->_publicSuccess;
  *(v5 + 64) |= 0x80u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    *(v5 + 40) = self->_privateSuccess;
    *(v5 + 64) |= 0x20u;
  }

LABEL_7:

  *(v6 + 48) = [(NSString *)self->_publicOperationalErrorDomain copyWithZone:a3];
  if ((*&self->_has & 0x40) != 0)
  {
    *(v6 + 44) = self->_publicOperationalErrorCode;
    *(v6 + 64) |= 0x40u;
  }

  *(v6 + 32) = [(NSString *)self->_privateOperationalErrorDomain copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 0x10) == 0)
  {
    if ((v8 & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    *(v6 + 24) = self->_linkQuality;
    *(v6 + 64) |= 8u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_12;
  }

  *(v6 + 28) = self->_privateOperationalErrorCode;
  *(v6 + 64) |= 0x10u;
  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v8 & 2) != 0)
  {
LABEL_12:
    *(v6 + 16) = self->_connectionType;
    *(v6 + 64) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 32);
    if (has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_52;
      }
    }

    else if (v7)
    {
LABEL_52:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 32) & 0x100) == 0 || self->_updated != *(a3 + 15))
      {
        goto LABEL_52;
      }
    }

    else if ((*(a3 + 32) & 0x100) != 0)
    {
      goto LABEL_52;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_hasAvatar != *(a3 + 5))
      {
        goto LABEL_52;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_52;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_publicSuccess != *(a3 + 14))
      {
        goto LABEL_52;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_52;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_privateSuccess != *(a3 + 10))
      {
        goto LABEL_52;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_52;
    }

    publicOperationalErrorDomain = self->_publicOperationalErrorDomain;
    if (publicOperationalErrorDomain | *(a3 + 6))
    {
      v5 = [(NSString *)publicOperationalErrorDomain isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 32);
    if ((has & 0x40) != 0)
    {
      if ((v9 & 0x40) == 0 || self->_publicOperationalErrorCode != *(a3 + 11))
      {
        goto LABEL_52;
      }
    }

    else if ((v9 & 0x40) != 0)
    {
      goto LABEL_52;
    }

    privateOperationalErrorDomain = self->_privateOperationalErrorDomain;
    if (privateOperationalErrorDomain | *(a3 + 4))
    {
      v5 = [(NSString *)privateOperationalErrorDomain isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v11 = *(a3 + 32);
    if ((has & 0x10) != 0)
    {
      if ((v11 & 0x10) == 0 || self->_privateOperationalErrorCode != *(a3 + 7))
      {
        goto LABEL_52;
      }
    }

    else if ((v11 & 0x10) != 0)
    {
      goto LABEL_52;
    }

    if ((has & 8) != 0)
    {
      if ((v11 & 8) == 0 || self->_linkQuality != *(a3 + 6))
      {
        goto LABEL_52;
      }
    }

    else if ((v11 & 8) != 0)
    {
      goto LABEL_52;
    }

    LOBYTE(v5) = (v11 & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((v11 & 2) == 0 || self->_connectionType != *(a3 + 4))
      {
        goto LABEL_52;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_updated;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_hasAvatar;
    if ((has & 0x80) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v6 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761 * self->_publicSuccess;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_privateSuccess;
    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  v9 = [(NSString *)self->_publicOperationalErrorDomain hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v10 = 2654435761 * self->_publicOperationalErrorCode;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(NSString *)self->_privateOperationalErrorDomain hash];
  v12 = self->_has;
  if ((v12 & 0x10) == 0)
  {
    v13 = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v14 = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v15 = 0;
    return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v10 ^ v9 ^ v11 ^ v13 ^ v14 ^ v15;
  }

  v13 = 2654435761 * self->_privateOperationalErrorCode;
  if ((v12 & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v14 = 2654435761 * self->_linkQuality;
  if ((v12 & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v15 = 2654435761 * self->_connectionType;
  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v10 ^ v9 ^ v11 ^ v13 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 32);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 32);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(a3 + 32) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_updated = *(a3 + 15);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_hasAvatar = *(a3 + 5);
  *&self->_has |= 4u;
  v5 = *(a3 + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_21:
  self->_publicSuccess = *(a3 + 14);
  *&self->_has |= 0x80u;
  if ((*(a3 + 32) & 0x20) != 0)
  {
LABEL_6:
    self->_privateSuccess = *(a3 + 10);
    *&self->_has |= 0x20u;
  }

LABEL_7:
  if (*(a3 + 6))
  {
    [(AWDIMessageNicknamePublished *)self setPublicOperationalErrorDomain:?];
  }

  if ((*(a3 + 32) & 0x40) != 0)
  {
    self->_publicOperationalErrorCode = *(a3 + 11);
    *&self->_has |= 0x40u;
  }

  if (*(a3 + 4))
  {
    [(AWDIMessageNicknamePublished *)self setPrivateOperationalErrorDomain:?];
  }

  v6 = *(a3 + 32);
  if ((v6 & 0x10) != 0)
  {
    self->_privateOperationalErrorCode = *(a3 + 7);
    *&self->_has |= 0x10u;
    v6 = *(a3 + 32);
    if ((v6 & 8) == 0)
    {
LABEL_15:
      if ((v6 & 2) == 0)
      {
        return;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_15;
  }

  self->_linkQuality = *(a3 + 6);
  *&self->_has |= 8u;
  if ((*(a3 + 32) & 2) == 0)
  {
    return;
  }

LABEL_16:
  self->_connectionType = *(a3 + 4);
  *&self->_has |= 2u;
}

@end