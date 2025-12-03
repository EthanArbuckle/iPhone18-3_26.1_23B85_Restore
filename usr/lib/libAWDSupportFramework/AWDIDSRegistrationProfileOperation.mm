@interface AWDIDSRegistrationProfileOperation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasConnectionType:(BOOL)type;
- (void)setHasGenericError:(BOOL)error;
- (void)setHasPOSIXError:(BOOL)error;
- (void)setHasRegistrationError:(BOOL)error;
- (void)setHasResultCode:(BOOL)code;
- (void)setHasSuccess:(BOOL)success;
- (void)setHasURLError:(BOOL)error;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSRegistrationProfileOperation

- (void)dealloc
{
  [(AWDIDSRegistrationProfileOperation *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDIDSRegistrationProfileOperation;
  [(AWDIDSRegistrationProfileOperation *)&v3 dealloc];
}

- (void)setHasSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasConnectionType:(BOOL)type
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

- (void)setHasResultCode:(BOOL)code
{
  if (code)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasRegistrationError:(BOOL)error
{
  if (error)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasGenericError:(BOOL)error
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

- (void)setHasURLError:(BOOL)error
{
  if (error)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasPOSIXError:(BOOL)error
{
  if (error)
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
  v3.super_class = AWDIDSRegistrationProfileOperation;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSRegistrationProfileOperation description](&v3, sel_description), -[AWDIDSRegistrationProfileOperation dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  guid = self->_guid;
  if (guid)
  {
    [dictionary setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_success), @"success"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_resultCode), @"resultCode"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_registrationError), @"registrationError"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_uRLError), @"URLError"}];
    if ((*&self->_has & 8) == 0)
    {
      return dictionary;
    }

    goto LABEL_12;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_genericError), @"genericError"}];
  has = self->_has;
  if (has < 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  if ((has & 8) != 0)
  {
LABEL_12:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_pOSIXError), @"POSIXError"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    success = self->_success;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  connectionType = self->_connectionType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  resultCode = self->_resultCode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  registrationError = self->_registrationError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    uRLError = self->_uRLError;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_17:
  genericError = self->_genericError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if (has < 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_19:
  pOSIXError = self->_pOSIXError;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 52) |= 1u;
  }

  if (self->_guid)
  {
    [to setGuid:?];
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(to + 11) = self->_success;
    *(to + 52) |= 0x40u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(to + 4) = self->_connectionType;
  *(to + 52) |= 2u;
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
  *(to + 10) = self->_resultCode;
  *(to + 52) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 9) = self->_registrationError;
  *(to + 52) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 5) = self->_genericError;
  *(to + 52) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_19:
  *(to + 12) = self->_uRLError;
  *(to + 52) |= 0x80u;
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_12:
  *(to + 8) = self->_pOSIXError;
  *(to + 52) |= 8u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 52) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_guid copyWithZone:zone];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v6 + 44) = self->_success;
    *(v6 + 52) |= 0x40u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_connectionType;
  *(v6 + 52) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v6 + 40) = self->_resultCode;
  *(v6 + 52) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v6 + 36) = self->_registrationError;
  *(v6 + 52) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    *(v6 + 48) = self->_uRLError;
    *(v6 + 52) |= 0x80u;
    if ((*&self->_has & 8) == 0)
    {
      return v6;
    }

    goto LABEL_10;
  }

LABEL_16:
  *(v6 + 20) = self->_genericError;
  *(v6 + 52) |= 4u;
  has = self->_has;
  if (has < 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((has & 8) != 0)
  {
LABEL_10:
    *(v6 + 32) = self->_pOSIXError;
    *(v6 + 52) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 52);
    if (has)
    {
      if ((*(equal + 52) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_43;
      }
    }

    else if (*(equal + 52))
    {
      goto LABEL_43;
    }

    guid = self->_guid;
    if (guid | *(equal + 3))
    {
      v5 = [(NSString *)guid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 0x40) != 0)
    {
      if ((*(equal + 52) & 0x40) == 0 || self->_success != *(equal + 11))
      {
        goto LABEL_43;
      }
    }

    else if ((*(equal + 52) & 0x40) != 0)
    {
      goto LABEL_43;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 52) & 2) == 0 || self->_connectionType != *(equal + 4))
      {
        goto LABEL_43;
      }
    }

    else if ((*(equal + 52) & 2) != 0)
    {
      goto LABEL_43;
    }

    if ((has & 0x20) != 0)
    {
      if ((*(equal + 52) & 0x20) == 0 || self->_resultCode != *(equal + 10))
      {
        goto LABEL_43;
      }
    }

    else if ((*(equal + 52) & 0x20) != 0)
    {
      goto LABEL_43;
    }

    if ((has & 0x10) != 0)
    {
      if ((*(equal + 52) & 0x10) == 0 || self->_registrationError != *(equal + 9))
      {
        goto LABEL_43;
      }
    }

    else if ((*(equal + 52) & 0x10) != 0)
    {
      goto LABEL_43;
    }

    if ((has & 4) != 0)
    {
      if ((*(equal + 52) & 4) == 0 || self->_genericError != *(equal + 5))
      {
        goto LABEL_43;
      }
    }

    else if ((*(equal + 52) & 4) != 0)
    {
      goto LABEL_43;
    }

    if (has < 0)
    {
      if ((*(equal + 52) & 0x80) == 0 || self->_uRLError != *(equal + 12))
      {
        goto LABEL_43;
      }
    }

    else if ((*(equal + 52) & 0x80) != 0)
    {
LABEL_43:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(equal + 52) & 8) == 0;
    if ((has & 8) != 0)
    {
      if ((*(equal + 52) & 8) == 0 || self->_pOSIXError != *(equal + 8))
      {
        goto LABEL_43;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_guid hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v5 = 2654435761 * self->_success;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_connectionType;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_resultCode;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    v8 = 2654435761 * self->_registrationError;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    v9 = 2654435761 * self->_genericError;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v10 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_16:
  v9 = 0;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v10 = 2654435761 * self->_uRLError;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v11 = 2654435761 * self->_pOSIXError;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 52))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDIDSRegistrationProfileOperation *)self setGuid:?];
  }

  v5 = *(from + 52);
  if ((v5 & 0x40) != 0)
  {
    self->_success = *(from + 11);
    *&self->_has |= 0x40u;
    v5 = *(from + 52);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*(from + 52) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_connectionType = *(from + 4);
  *&self->_has |= 2u;
  v5 = *(from + 52);
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
  self->_resultCode = *(from + 10);
  *&self->_has |= 0x20u;
  v5 = *(from + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_registrationError = *(from + 9);
  *&self->_has |= 0x10u;
  v5 = *(from + 52);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_genericError = *(from + 5);
  *&self->_has |= 4u;
  v5 = *(from + 52);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 8) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_19:
  self->_uRLError = *(from + 12);
  *&self->_has |= 0x80u;
  if ((*(from + 52) & 8) == 0)
  {
    return;
  }

LABEL_12:
  self->_pOSIXError = *(from + 8);
  *&self->_has |= 8u;
}

@end