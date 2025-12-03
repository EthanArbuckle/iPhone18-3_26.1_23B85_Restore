@interface AWDIMRemoteURLLoadFailed
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConnectStartToConnectEndMillis:(BOOL)millis;
- (void)setHasConnectStartToSecureConnectionStartMillis:(BOOL)millis;
- (void)setHasDomainLookupEndToConnectStartMillis:(BOOL)millis;
- (void)setHasDomainLookupStartToDomainLookupEndMillis:(BOOL)millis;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasFetchStartToDomainLookupStartMillis:(BOOL)millis;
- (void)setHasNavigationStartToRedirectStartMillis:(BOOL)millis;
- (void)setHasRedirectEndToFetchStartMillis:(BOOL)millis;
- (void)setHasRedirectStartToRedirectEndMillis:(BOOL)millis;
- (void)setHasRequestStartToResponseStartMillis:(BOOL)millis;
- (void)setHasResponseStartToResponseEndMillis:(BOOL)millis;
- (void)setHasSecureConnectionStartToConnectEndMillis:(BOOL)millis;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDIMRemoteURLLoadFailed

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasNavigationStartToRedirectStartMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRedirectStartToRedirectEndMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasRedirectEndToFetchStartMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasFetchStartToDomainLookupStartMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasDomainLookupStartToDomainLookupEndMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasDomainLookupEndToConnectStartMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasConnectStartToSecureConnectionStartMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasConnectStartToConnectEndMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSecureConnectionStartToConnectEndMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasRequestStartToResponseStartMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasResponseStartToResponseEndMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIMRemoteURLLoadFailed;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMRemoteURLLoadFailed description](&v3, sel_description), -[AWDIMRemoteURLLoadFailed dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_navigationStartToRedirectStartMillis), @"navigationStartToRedirectStartMillis"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_redirectStartToRedirectEndMillis), @"redirectStartToRedirectEndMillis"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_redirectEndToFetchStartMillis), @"redirectEndToFetchStartMillis"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_fetchStartToDomainLookupStartMillis), @"fetchStartToDomainLookupStartMillis"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_domainLookupStartToDomainLookupEndMillis), @"domainLookupStartToDomainLookupEndMillis"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_domainLookupEndToConnectStartMillis), @"domainLookupEndToConnectStartMillis"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectStartToSecureConnectionStartMillis), @"connectStartToSecureConnectionStartMillis"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectStartToConnectEndMillis), @"connectStartToConnectEndMillis"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_secureConnectionStartToConnectEndMillis), @"secureConnectionStartToConnectEndMillis"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectEndToRequestStartMillis), @"connectEndToRequestStartMillis"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_13:
    if ((has & 0x800) == 0)
    {
      goto LABEL_14;
    }

LABEL_29:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_responseStartToResponseEndMillis), @"responseStartToResponseEndMillis"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return dictionary;
    }

    goto LABEL_15;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestStartToResponseStartMillis), @"requestStartToResponseStartMillis"}];
  has = self->_has;
  if ((has & 0x800) != 0)
  {
    goto LABEL_29;
  }

LABEL_14:
  if ((has & 0x20) != 0)
  {
LABEL_15:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_errorCode), @"errorCode"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  navigationStartToRedirectStartMillis = self->_navigationStartToRedirectStartMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  redirectStartToRedirectEndMillis = self->_redirectStartToRedirectEndMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  redirectEndToFetchStartMillis = self->_redirectEndToFetchStartMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  fetchStartToDomainLookupStartMillis = self->_fetchStartToDomainLookupStartMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  domainLookupStartToDomainLookupEndMillis = self->_domainLookupStartToDomainLookupEndMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  domainLookupEndToConnectStartMillis = self->_domainLookupEndToConnectStartMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  connectStartToSecureConnectionStartMillis = self->_connectStartToSecureConnectionStartMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  connectStartToConnectEndMillis = self->_connectStartToConnectEndMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  secureConnectionStartToConnectEndMillis = self->_secureConnectionStartToConnectEndMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  connectEndToRequestStartMillis = self->_connectEndToRequestStartMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_13:
    if ((has & 0x800) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    responseStartToResponseEndMillis = self->_responseStartToResponseEndMillis;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

LABEL_27:
  requestStartToResponseStartMillis = self->_requestStartToResponseStartMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x800) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((has & 0x20) == 0)
  {
    return;
  }

LABEL_29:
  errorCode = self->_errorCode;

  PBDataWriterWriteInt64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    *(to + 14) = self->_timestamp;
    *(to + 60) |= 0x2000u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(to + 8) = self->_navigationStartToRedirectStartMillis;
  *(to + 60) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 10) = self->_redirectStartToRedirectEndMillis;
  *(to + 60) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 9) = self->_redirectEndToFetchStartMillis;
  *(to + 60) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 7) = self->_fetchStartToDomainLookupStartMillis;
  *(to + 60) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 5) = self->_domainLookupStartToDomainLookupEndMillis;
  *(to + 60) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 4) = self->_domainLookupEndToConnectStartMillis;
  *(to + 60) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 3) = self->_connectStartToSecureConnectionStartMillis;
  *(to + 60) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 2) = self->_connectStartToConnectEndMillis;
  *(to + 60) |= 2u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 13) = self->_secureConnectionStartToConnectEndMillis;
  *(to + 60) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 1) = self->_connectEndToRequestStartMillis;
  *(to + 60) |= 1u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_13:
    if ((has & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 11) = self->_requestStartToResponseStartMillis;
  *(to + 60) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      return;
    }

LABEL_29:
    *(to + 6) = self->_errorCode;
    *(to + 60) |= 0x20u;
    return;
  }

LABEL_28:
  *(to + 12) = self->_responseStartToResponseEndMillis;
  *(to + 60) |= 0x800u;
  if ((*&self->_has & 0x20) != 0)
  {
    goto LABEL_29;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    *(result + 14) = self->_timestamp;
    *(result + 60) |= 0x2000u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_navigationStartToRedirectStartMillis;
  *(result + 60) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 10) = self->_redirectStartToRedirectEndMillis;
  *(result + 60) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 9) = self->_redirectEndToFetchStartMillis;
  *(result + 60) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 7) = self->_fetchStartToDomainLookupStartMillis;
  *(result + 60) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 5) = self->_domainLookupStartToDomainLookupEndMillis;
  *(result + 60) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 4) = self->_domainLookupEndToConnectStartMillis;
  *(result + 60) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 3) = self->_connectStartToSecureConnectionStartMillis;
  *(result + 60) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 2) = self->_connectStartToConnectEndMillis;
  *(result + 60) |= 2u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 13) = self->_secureConnectionStartToConnectEndMillis;
  *(result + 60) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 1) = self->_connectEndToRequestStartMillis;
  *(result + 60) |= 1u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_13:
    if ((has & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 11) = self->_requestStartToResponseStartMillis;
  *(result + 60) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_29:
  *(result + 12) = self->_responseStartToResponseEndMillis;
  *(result + 60) |= 0x800u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_15:
  *(result + 6) = self->_errorCode;
  *(result + 60) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 60);
    if ((has & 0x2000) != 0)
    {
      if ((*(equal + 60) & 0x2000) == 0 || self->_timestamp != *(equal + 14))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x2000) != 0)
    {
LABEL_71:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_navigationStartToRedirectStartMillis != *(equal + 8))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 60) & 0x200) == 0 || self->_redirectStartToRedirectEndMillis != *(equal + 10))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x200) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 60) & 0x100) == 0 || self->_redirectEndToFetchStartMillis != *(equal + 9))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x100) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_fetchStartToDomainLookupStartMillis != *(equal + 7))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_domainLookupStartToDomainLookupEndMillis != *(equal + 5))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_domainLookupEndToConnectStartMillis != *(equal + 4))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_connectStartToSecureConnectionStartMillis != *(equal + 3))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_connectStartToConnectEndMillis != *(equal + 2))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x1000) != 0)
    {
      if ((*(equal + 60) & 0x1000) == 0 || self->_secureConnectionStartToConnectEndMillis != *(equal + 13))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x1000) != 0)
    {
      goto LABEL_71;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_connectEndToRequestStartMillis != *(equal + 1))
      {
        goto LABEL_71;
      }
    }

    else if (v7)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 60) & 0x400) == 0 || self->_requestStartToResponseStartMillis != *(equal + 11))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x400) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(equal + 60) & 0x800) == 0 || self->_responseStartToResponseEndMillis != *(equal + 12))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x800) != 0)
    {
      goto LABEL_71;
    }

    LOBYTE(v5) = (v7 & 0x20) == 0;
    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_errorCode != *(equal + 6))
      {
        goto LABEL_71;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 0x80) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_navigationStartToRedirectStartMillis;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_redirectStartToRedirectEndMillis;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_redirectEndToFetchStartMillis;
    if ((has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_fetchStartToDomainLookupStartMillis;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_domainLookupStartToDomainLookupEndMillis;
    if ((has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_domainLookupEndToConnectStartMillis;
    if ((has & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((has & 4) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_connectStartToSecureConnectionStartMillis;
    if ((has & 2) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((has & 2) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_connectStartToConnectEndMillis;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_secureConnectionStartToConnectEndMillis;
    if (has)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if (has)
  {
LABEL_12:
    v13 = 2654435761u * self->_connectEndToRequestStartMillis;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_13:
    v14 = 2654435761u * self->_requestStartToResponseStartMillis;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v15 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v16 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_27:
  v14 = 0;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v15 = 2654435761u * self->_responseStartToResponseEndMillis;
  if ((has & 0x20) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v16 = 2654435761 * self->_errorCode;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 60);
  if ((v3 & 0x2000) != 0)
  {
    self->_timestamp = *(from + 14);
    *&self->_has |= 0x2000u;
    v3 = *(from + 60);
    if ((v3 & 0x80) == 0)
    {
LABEL_3:
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_navigationStartToRedirectStartMillis = *(from + 8);
  *&self->_has |= 0x80u;
  v3 = *(from + 60);
  if ((v3 & 0x200) == 0)
  {
LABEL_4:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_redirectStartToRedirectEndMillis = *(from + 10);
  *&self->_has |= 0x200u;
  v3 = *(from + 60);
  if ((v3 & 0x100) == 0)
  {
LABEL_5:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_redirectEndToFetchStartMillis = *(from + 9);
  *&self->_has |= 0x100u;
  v3 = *(from + 60);
  if ((v3 & 0x40) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_fetchStartToDomainLookupStartMillis = *(from + 7);
  *&self->_has |= 0x40u;
  v3 = *(from + 60);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_domainLookupStartToDomainLookupEndMillis = *(from + 5);
  *&self->_has |= 0x10u;
  v3 = *(from + 60);
  if ((v3 & 8) == 0)
  {
LABEL_8:
    if ((v3 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_domainLookupEndToConnectStartMillis = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 60);
  if ((v3 & 4) == 0)
  {
LABEL_9:
    if ((v3 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_connectStartToSecureConnectionStartMillis = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 60);
  if ((v3 & 2) == 0)
  {
LABEL_10:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_connectStartToConnectEndMillis = *(from + 2);
  *&self->_has |= 2u;
  v3 = *(from + 60);
  if ((v3 & 0x1000) == 0)
  {
LABEL_11:
    if ((v3 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_secureConnectionStartToConnectEndMillis = *(from + 13);
  *&self->_has |= 0x1000u;
  v3 = *(from + 60);
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_connectEndToRequestStartMillis = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 60);
  if ((v3 & 0x400) == 0)
  {
LABEL_13:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_requestStartToResponseStartMillis = *(from + 11);
  *&self->_has |= 0x400u;
  v3 = *(from + 60);
  if ((v3 & 0x800) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      return;
    }

LABEL_29:
    self->_errorCode = *(from + 6);
    *&self->_has |= 0x20u;
    return;
  }

LABEL_28:
  self->_responseStartToResponseEndMillis = *(from + 12);
  *&self->_has |= 0x800u;
  if ((*(from + 60) & 0x20) != 0)
  {
    goto LABEL_29;
  }
}

@end