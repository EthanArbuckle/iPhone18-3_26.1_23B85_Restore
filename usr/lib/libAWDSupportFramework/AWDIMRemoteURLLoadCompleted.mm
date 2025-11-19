@interface AWDIMRemoteURLLoadCompleted
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectStartToConnectEndMillis:(BOOL)a3;
- (void)setHasConnectStartToSecureConnectionStartMillis:(BOOL)a3;
- (void)setHasDomainLookupEndToConnectStartMillis:(BOOL)a3;
- (void)setHasDomainLookupStartToDomainLookupEndMillis:(BOOL)a3;
- (void)setHasFetchStartToDomainLookupStartMillis:(BOOL)a3;
- (void)setHasNavigationStartToRedirectStartMillis:(BOOL)a3;
- (void)setHasRedirectEndToFetchStartMillis:(BOOL)a3;
- (void)setHasRedirectStartToRedirectEndMillis:(BOOL)a3;
- (void)setHasRequestStartToResponseStartMillis:(BOOL)a3;
- (void)setHasResponseStartToResponseEndMillis:(BOOL)a3;
- (void)setHasSecureConnectionStartToConnectEndMillis:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIMRemoteURLLoadCompleted

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasNavigationStartToRedirectStartMillis:(BOOL)a3
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

- (void)setHasRedirectStartToRedirectEndMillis:(BOOL)a3
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

- (void)setHasRedirectEndToFetchStartMillis:(BOOL)a3
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

- (void)setHasFetchStartToDomainLookupStartMillis:(BOOL)a3
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

- (void)setHasDomainLookupStartToDomainLookupEndMillis:(BOOL)a3
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

- (void)setHasDomainLookupEndToConnectStartMillis:(BOOL)a3
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

- (void)setHasConnectStartToSecureConnectionStartMillis:(BOOL)a3
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

- (void)setHasConnectStartToConnectEndMillis:(BOOL)a3
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

- (void)setHasSecureConnectionStartToConnectEndMillis:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasRequestStartToResponseStartMillis:(BOOL)a3
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

- (void)setHasResponseStartToResponseEndMillis:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIMRemoteURLLoadCompleted;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMRemoteURLLoadCompleted description](&v3, sel_description), -[AWDIMRemoteURLLoadCompleted dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_navigationStartToRedirectStartMillis), @"navigationStartToRedirectStartMillis"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_redirectStartToRedirectEndMillis), @"redirectStartToRedirectEndMillis"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_redirectEndToFetchStartMillis), @"redirectEndToFetchStartMillis"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_fetchStartToDomainLookupStartMillis), @"fetchStartToDomainLookupStartMillis"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_domainLookupStartToDomainLookupEndMillis), @"domainLookupStartToDomainLookupEndMillis"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_domainLookupEndToConnectStartMillis), @"domainLookupEndToConnectStartMillis"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectStartToSecureConnectionStartMillis), @"connectStartToSecureConnectionStartMillis"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectStartToConnectEndMillis), @"connectStartToConnectEndMillis"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_secureConnectionStartToConnectEndMillis), @"secureConnectionStartToConnectEndMillis"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestStartToResponseStartMillis), @"requestStartToResponseStartMillis"}];
    if ((*&self->_has & 0x400) == 0)
    {
      return v3;
    }

    goto LABEL_14;
  }

LABEL_26:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectEndToRequestStartMillis), @"connectEndToRequestStartMillis"}];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  if ((has & 0x400) != 0)
  {
LABEL_14:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_responseStartToResponseEndMillis), @"responseStartToResponseEndMillis"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  navigationStartToRedirectStartMillis = self->_navigationStartToRedirectStartMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  redirectStartToRedirectEndMillis = self->_redirectStartToRedirectEndMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  redirectEndToFetchStartMillis = self->_redirectEndToFetchStartMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
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

    goto LABEL_21;
  }

LABEL_20:
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

    goto LABEL_22;
  }

LABEL_21:
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

    goto LABEL_23;
  }

LABEL_22:
  connectStartToSecureConnectionStartMillis = self->_connectStartToSecureConnectionStartMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  connectStartToConnectEndMillis = self->_connectStartToConnectEndMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  secureConnectionStartToConnectEndMillis = self->_secureConnectionStartToConnectEndMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    requestStartToResponseStartMillis = self->_requestStartToResponseStartMillis;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x400) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_25:
  connectEndToRequestStartMillis = self->_connectEndToRequestStartMillis;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((has & 0x400) == 0)
  {
    return;
  }

LABEL_27:
  responseStartToResponseEndMillis = self->_responseStartToResponseEndMillis;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    *(a3 + 13) = self->_timestamp;
    *(a3 + 56) |= 0x1000u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 7) = self->_navigationStartToRedirectStartMillis;
  *(a3 + 56) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 9) = self->_redirectStartToRedirectEndMillis;
  *(a3 + 56) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 8) = self->_redirectEndToFetchStartMillis;
  *(a3 + 56) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 6) = self->_fetchStartToDomainLookupStartMillis;
  *(a3 + 56) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 5) = self->_domainLookupStartToDomainLookupEndMillis;
  *(a3 + 56) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 4) = self->_domainLookupEndToConnectStartMillis;
  *(a3 + 56) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 3) = self->_connectStartToSecureConnectionStartMillis;
  *(a3 + 56) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a3 + 2) = self->_connectStartToConnectEndMillis;
  *(a3 + 56) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 12) = self->_secureConnectionStartToConnectEndMillis;
  *(a3 + 56) |= 0x800u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 1) = self->_connectEndToRequestStartMillis;
  *(a3 + 56) |= 1u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      return;
    }

LABEL_27:
    *(a3 + 11) = self->_responseStartToResponseEndMillis;
    *(a3 + 56) |= 0x400u;
    return;
  }

LABEL_26:
  *(a3 + 10) = self->_requestStartToResponseStartMillis;
  *(a3 + 56) |= 0x200u;
  if ((*&self->_has & 0x400) != 0)
  {
    goto LABEL_27;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    *(result + 13) = self->_timestamp;
    *(result + 56) |= 0x1000u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_navigationStartToRedirectStartMillis;
  *(result + 56) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 9) = self->_redirectStartToRedirectEndMillis;
  *(result + 56) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 8) = self->_redirectEndToFetchStartMillis;
  *(result + 56) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 6) = self->_fetchStartToDomainLookupStartMillis;
  *(result + 56) |= 0x20u;
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
  *(result + 5) = self->_domainLookupStartToDomainLookupEndMillis;
  *(result + 56) |= 0x10u;
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
  *(result + 4) = self->_domainLookupEndToConnectStartMillis;
  *(result + 56) |= 8u;
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
  *(result + 3) = self->_connectStartToSecureConnectionStartMillis;
  *(result + 56) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 2) = self->_connectStartToConnectEndMillis;
  *(result + 56) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 12) = self->_secureConnectionStartToConnectEndMillis;
  *(result + 56) |= 0x800u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 1) = self->_connectEndToRequestStartMillis;
  *(result + 56) |= 1u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_27:
  *(result + 10) = self->_requestStartToResponseStartMillis;
  *(result + 56) |= 0x200u;
  if ((*&self->_has & 0x400) == 0)
  {
    return result;
  }

LABEL_14:
  *(result + 11) = self->_responseStartToResponseEndMillis;
  *(result + 56) |= 0x400u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 56);
    if ((has & 0x1000) != 0)
    {
      if ((*(a3 + 56) & 0x1000) == 0 || self->_timestamp != *(a3 + 13))
      {
        goto LABEL_66;
      }
    }

    else if ((*(a3 + 56) & 0x1000) != 0)
    {
LABEL_66:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_navigationStartToRedirectStartMillis != *(a3 + 7))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_66;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 56) & 0x100) == 0 || self->_redirectStartToRedirectEndMillis != *(a3 + 9))
      {
        goto LABEL_66;
      }
    }

    else if ((*(a3 + 56) & 0x100) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_redirectEndToFetchStartMillis != *(a3 + 8))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_fetchStartToDomainLookupStartMillis != *(a3 + 6))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_domainLookupStartToDomainLookupEndMillis != *(a3 + 5))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_domainLookupEndToConnectStartMillis != *(a3 + 4))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_connectStartToSecureConnectionStartMillis != *(a3 + 3))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_connectStartToConnectEndMillis != *(a3 + 2))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_66;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(a3 + 56) & 0x800) == 0 || self->_secureConnectionStartToConnectEndMillis != *(a3 + 12))
      {
        goto LABEL_66;
      }
    }

    else if ((*(a3 + 56) & 0x800) != 0)
    {
      goto LABEL_66;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_connectEndToRequestStartMillis != *(a3 + 1))
      {
        goto LABEL_66;
      }
    }

    else if (v7)
    {
      goto LABEL_66;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(a3 + 56) & 0x200) == 0 || self->_requestStartToResponseStartMillis != *(a3 + 10))
      {
        goto LABEL_66;
      }
    }

    else if ((*(a3 + 56) & 0x200) != 0)
    {
      goto LABEL_66;
    }

    LOBYTE(v5) = (v7 & 0x400) == 0;
    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(a3 + 56) & 0x400) == 0 || self->_responseStartToResponseEndMillis != *(a3 + 11))
      {
        goto LABEL_66;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 0x40) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_navigationStartToRedirectStartMillis;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_redirectStartToRedirectEndMillis;
    if ((has & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_redirectEndToFetchStartMillis;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_fetchStartToDomainLookupStartMillis;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_domainLookupStartToDomainLookupEndMillis;
    if ((has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_domainLookupEndToConnectStartMillis;
    if ((has & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = 0;
  if ((has & 4) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_connectStartToSecureConnectionStartMillis;
    if ((has & 2) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  if ((has & 2) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_connectStartToConnectEndMillis;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_secureConnectionStartToConnectEndMillis;
    if (has)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = 0;
  if (has)
  {
LABEL_12:
    v13 = 2654435761u * self->_connectEndToRequestStartMillis;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v14 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_14;
    }

LABEL_27:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_25:
  v13 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v14 = 2654435761u * self->_requestStartToResponseStartMillis;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:
  v15 = 2654435761u * self->_responseStartToResponseEndMillis;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 56);
  if ((v3 & 0x1000) != 0)
  {
    self->_timestamp = *(a3 + 13);
    *&self->_has |= 0x1000u;
    v3 = *(a3 + 56);
    if ((v3 & 0x40) == 0)
    {
LABEL_3:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_navigationStartToRedirectStartMillis = *(a3 + 7);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 56);
  if ((v3 & 0x100) == 0)
  {
LABEL_4:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_redirectStartToRedirectEndMillis = *(a3 + 9);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 56);
  if ((v3 & 0x80) == 0)
  {
LABEL_5:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_redirectEndToFetchStartMillis = *(a3 + 8);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 56);
  if ((v3 & 0x20) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_fetchStartToDomainLookupStartMillis = *(a3 + 6);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 56);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_domainLookupStartToDomainLookupEndMillis = *(a3 + 5);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 56);
  if ((v3 & 8) == 0)
  {
LABEL_8:
    if ((v3 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_domainLookupEndToConnectStartMillis = *(a3 + 4);
  *&self->_has |= 8u;
  v3 = *(a3 + 56);
  if ((v3 & 4) == 0)
  {
LABEL_9:
    if ((v3 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_connectStartToSecureConnectionStartMillis = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 56);
  if ((v3 & 2) == 0)
  {
LABEL_10:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_connectStartToConnectEndMillis = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 56);
  if ((v3 & 0x800) == 0)
  {
LABEL_11:
    if ((v3 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_secureConnectionStartToConnectEndMillis = *(a3 + 12);
  *&self->_has |= 0x800u;
  v3 = *(a3 + 56);
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_connectEndToRequestStartMillis = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 56);
  if ((v3 & 0x200) == 0)
  {
LABEL_13:
    if ((v3 & 0x400) == 0)
    {
      return;
    }

LABEL_27:
    self->_responseStartToResponseEndMillis = *(a3 + 11);
    *&self->_has |= 0x400u;
    return;
  }

LABEL_26:
  self->_requestStartToResponseStartMillis = *(a3 + 10);
  *&self->_has |= 0x200u;
  if ((*(a3 + 56) & 0x400) != 0)
  {
    goto LABEL_27;
  }
}

@end