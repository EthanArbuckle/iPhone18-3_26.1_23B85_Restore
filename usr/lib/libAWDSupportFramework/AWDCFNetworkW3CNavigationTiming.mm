@interface AWDCFNetworkW3CNavigationTiming
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectStart:(BOOL)a3;
- (void)setHasDomainLookupEnd:(BOOL)a3;
- (void)setHasDomainLookupStart:(BOOL)a3;
- (void)setHasFetchStart:(BOOL)a3;
- (void)setHasIsCellular:(BOOL)a3;
- (void)setHasIsReused:(BOOL)a3;
- (void)setHasRedirectCount:(BOOL)a3;
- (void)setHasRedirectCountW3C:(BOOL)a3;
- (void)setHasRedirectEnd:(BOOL)a3;
- (void)setHasRedirectStart:(BOOL)a3;
- (void)setHasRequestStart:(BOOL)a3;
- (void)setHasResponseEnd:(BOOL)a3;
- (void)setHasResponseStart:(BOOL)a3;
- (void)setHasSecureConnectionStart:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCFNetworkW3CNavigationTiming

- (void)dealloc
{
  [(AWDCFNetworkW3CNavigationTiming *)self setHostname:0];
  [(AWDCFNetworkW3CNavigationTiming *)self setUrl:0];
  [(AWDCFNetworkW3CNavigationTiming *)self setProcname:0];
  v3.receiver = self;
  v3.super_class = AWDCFNetworkW3CNavigationTiming;
  [(AWDCFNetworkW3CNavigationTiming *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasRedirectStart:(BOOL)a3
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

- (void)setHasRedirectEnd:(BOOL)a3
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

- (void)setHasFetchStart:(BOOL)a3
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

- (void)setHasDomainLookupStart:(BOOL)a3
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

- (void)setHasDomainLookupEnd:(BOOL)a3
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

- (void)setHasConnectStart:(BOOL)a3
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

- (void)setHasSecureConnectionStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasRequestStart:(BOOL)a3
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

- (void)setHasResponseStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasResponseEnd:(BOOL)a3
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

- (void)setHasRedirectCountW3C:(BOOL)a3
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

- (void)setHasRedirectCount:(BOOL)a3
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

- (void)setHasIsReused:(BOOL)a3
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

- (void)setHasIsCellular:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCFNetworkW3CNavigationTiming;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCFNetworkW3CNavigationTiming description](&v3, sel_description), -[AWDCFNetworkW3CNavigationTiming dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has < 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_redirectStart), @"redirectStart"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_redirectEnd), @"redirectEnd"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_fetchStart), @"fetchStart"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_domainLookupStart), @"domainLookupStart"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_domainLookupEnd), @"domainLookupEnd"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectStart), @"connectStart"}];
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_secureConnectionStart), @"secureConnectionStart"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectEnd), @"connectEnd"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestStart), @"requestStart"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_12:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_responseStart), @"responseStart"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_responseEnd), @"responseEnd"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_redirectCountW3C), @"redirectCountW3C"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_15:
    if ((has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_redirectCount), @"redirectCount"}];
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_16:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_isReused), @"isReused"}];
  }

LABEL_17:
  hostname = self->_hostname;
  if (hostname)
  {
    [v3 setObject:hostname forKey:@"hostname"];
  }

  url = self->_url;
  if (url)
  {
    [v3 setObject:url forKey:@"url"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_isCellular), @"isCellular"}];
  }

  procname = self->_procname;
  if (procname)
  {
    [v3 setObject:procname forKey:@"procname"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  timestamp = self->_timestamp;
  PBDataWriterWriteUint64Field();
  *&has = self->_has;
  if ((*&has & 0x400) != 0)
  {
LABEL_3:
    redirectStart = self->_redirectStart;
    PBDataWriterWriteUint64Field();
    *&has = self->_has;
  }

LABEL_4:
  if ((*&has & 0x200) != 0)
  {
    redirectEnd = self->_redirectEnd;
    PBDataWriterWriteUint64Field();
    *&has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_6:
      if ((*&has & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_30;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_6;
  }

  fetchStart = self->_fetchStart;
  PBDataWriterWriteUint64Field();
  *&has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  domainLookupStart = self->_domainLookupStart;
  PBDataWriterWriteUint64Field();
  *&has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  domainLookupEnd = self->_domainLookupEnd;
  PBDataWriterWriteUint64Field();
  *&has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  connectStart = self->_connectStart;
  PBDataWriterWriteUint64Field();
  *&has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_10:
    if ((*&has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  secureConnectionStart = self->_secureConnectionStart;
  PBDataWriterWriteUint64Field();
  *&has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  connectEnd = self->_connectEnd;
  PBDataWriterWriteUint64Field();
  *&has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  requestStart = self->_requestStart;
  PBDataWriterWriteUint64Field();
  *&has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  responseStart = self->_responseStart;
  PBDataWriterWriteUint64Field();
  *&has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  responseEnd = self->_responseEnd;
  PBDataWriterWriteUint64Field();
  *&has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  redirectCountW3C = self->_redirectCountW3C;
  PBDataWriterWriteInt64Field();
  *&has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_39:
  redirectCount = self->_redirectCount;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_17:
    isReused = self->_isReused;
    PBDataWriterWriteInt64Field();
  }

LABEL_18:
  if (self->_hostname)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_url)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    isCellular = self->_isCellular;
    PBDataWriterWriteInt64Field();
  }

  if (self->_procname)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *(a3 + 16) = self->_timestamp;
  *(a3 + 80) |= 0x8000u;
  *&has = self->_has;
  if ((*&has & 0x400) != 0)
  {
LABEL_3:
    *(a3 + 11) = self->_redirectStart;
    *(a3 + 80) |= 0x400u;
    *&has = self->_has;
  }

LABEL_4:
  if ((*&has & 0x200) != 0)
  {
    *(a3 + 10) = self->_redirectEnd;
    *(a3 + 80) |= 0x200u;
    *&has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_6:
      if ((*&has & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_30;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_6;
  }

  *(a3 + 5) = self->_fetchStart;
  *(a3 + 80) |= 0x10u;
  *&has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(a3 + 4) = self->_domainLookupStart;
  *(a3 + 80) |= 8u;
  *&has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(a3 + 3) = self->_domainLookupEnd;
  *(a3 + 80) |= 4u;
  *&has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(a3 + 2) = self->_connectStart;
  *(a3 + 80) |= 2u;
  *&has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_10:
    if ((*&has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(a3 + 15) = self->_secureConnectionStart;
  *(a3 + 80) |= 0x4000u;
  *&has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a3 + 1) = self->_connectEnd;
  *(a3 + 80) |= 1u;
  *&has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 12) = self->_requestStart;
  *(a3 + 80) |= 0x800u;
  *&has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 14) = self->_responseStart;
  *(a3 + 80) |= 0x2000u;
  *&has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 13) = self->_responseEnd;
  *(a3 + 80) |= 0x1000u;
  *&has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 9) = self->_redirectCountW3C;
  *(a3 + 80) |= 0x100u;
  *&has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_39:
  *(a3 + 8) = self->_redirectCount;
  *(a3 + 80) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_17:
    *(a3 + 7) = self->_isReused;
    *(a3 + 80) |= 0x40u;
  }

LABEL_18:
  if (self->_hostname)
  {
    [a3 setHostname:?];
  }

  if (self->_url)
  {
    [a3 setUrl:?];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(a3 + 6) = self->_isCellular;
    *(a3 + 80) |= 0x20u;
  }

  if (self->_procname)
  {

    [a3 setProcname:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has < 0)
  {
    *(v5 + 128) = self->_timestamp;
    *(v5 + 160) |= 0x8000u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 88) = self->_redirectStart;
  *(v5 + 160) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 80) = self->_redirectEnd;
  *(v5 + 160) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 40) = self->_fetchStart;
  *(v5 + 160) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 32) = self->_domainLookupStart;
  *(v5 + 160) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 24) = self->_domainLookupEnd;
  *(v5 + 160) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 16) = self->_connectStart;
  *(v5 + 160) |= 2u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 120) = self->_secureConnectionStart;
  *(v5 + 160) |= 0x4000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 8) = self->_connectEnd;
  *(v5 + 160) |= 1u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 96) = self->_requestStart;
  *(v5 + 160) |= 0x800u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_12:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 112) = self->_responseStart;
  *(v5 + 160) |= 0x2000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 104) = self->_responseEnd;
  *(v5 + 160) |= 0x1000u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 72) = self->_redirectCountW3C;
  *(v5 + 160) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_15:
    if ((has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  *(v5 + 64) = self->_redirectCount;
  *(v5 + 160) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_16:
    *(v5 + 56) = self->_isReused;
    *(v5 + 160) |= 0x40u;
  }

LABEL_17:

  *(v6 + 136) = [(NSString *)self->_hostname copyWithZone:a3];
  *(v6 + 152) = [(NSString *)self->_url copyWithZone:a3];
  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 48) = self->_isCellular;
    *(v6 + 160) |= 0x20u;
  }

  *(v6 + 144) = [(NSString *)self->_procname copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 80);
    if ((*&has & 0x80000000) != 0)
    {
      if ((*(a3 + 80) & 0x8000) == 0 || self->_timestamp != *(a3 + 16))
      {
        goto LABEL_88;
      }
    }

    else if ((*(a3 + 80) & 0x8000) != 0)
    {
LABEL_88:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((*(a3 + 80) & 0x400) == 0 || self->_redirectStart != *(a3 + 11))
      {
        goto LABEL_88;
      }
    }

    else if ((*(a3 + 80) & 0x400) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((*(a3 + 80) & 0x200) == 0 || self->_redirectEnd != *(a3 + 10))
      {
        goto LABEL_88;
      }
    }

    else if ((*(a3 + 80) & 0x200) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_fetchStart != *(a3 + 5))
      {
        goto LABEL_88;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_domainLookupStart != *(a3 + 4))
      {
        goto LABEL_88;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_domainLookupEnd != *(a3 + 3))
      {
        goto LABEL_88;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_connectStart != *(a3 + 2))
      {
        goto LABEL_88;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((*(a3 + 80) & 0x4000) == 0 || self->_secureConnectionStart != *(a3 + 15))
      {
        goto LABEL_88;
      }
    }

    else if ((*(a3 + 80) & 0x4000) != 0)
    {
      goto LABEL_88;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_connectEnd != *(a3 + 1))
      {
        goto LABEL_88;
      }
    }

    else if (v7)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((*(a3 + 80) & 0x800) == 0 || self->_requestStart != *(a3 + 12))
      {
        goto LABEL_88;
      }
    }

    else if ((*(a3 + 80) & 0x800) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((*(a3 + 80) & 0x2000) == 0 || self->_responseStart != *(a3 + 14))
      {
        goto LABEL_88;
      }
    }

    else if ((*(a3 + 80) & 0x2000) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((*(a3 + 80) & 0x1000) == 0 || self->_responseEnd != *(a3 + 13))
      {
        goto LABEL_88;
      }
    }

    else if ((*(a3 + 80) & 0x1000) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((*(a3 + 80) & 0x100) == 0 || self->_redirectCountW3C != *(a3 + 9))
      {
        goto LABEL_88;
      }
    }

    else if ((*(a3 + 80) & 0x100) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_redirectCount != *(a3 + 8))
      {
        goto LABEL_88;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_isReused != *(a3 + 7))
      {
        goto LABEL_88;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_88;
    }

    hostname = self->_hostname;
    if (!(hostname | *(a3 + 17)) || (v5 = [(NSString *)hostname isEqual:?]) != 0)
    {
      url = self->_url;
      if (!(url | *(a3 + 19)) || (v5 = [(NSString *)url isEqual:?]) != 0)
      {
        v10 = *(a3 + 80);
        if ((*&self->_has & 0x20) != 0)
        {
          if ((v10 & 0x20) == 0 || self->_isCellular != *(a3 + 6))
          {
            goto LABEL_88;
          }
        }

        else if ((v10 & 0x20) != 0)
        {
          goto LABEL_88;
        }

        procname = self->_procname;
        if (procname | *(a3 + 18))
        {

          LOBYTE(v5) = [(NSString *)procname isEqual:?];
        }

        else
        {
          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has < 0)
  {
    v22 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x400) == 0)
    {
LABEL_3:
      v21 = 0;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v22 = 0;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_3;
    }
  }

  v21 = 2654435761u * self->_redirectStart;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_4:
    v20 = 2654435761u * self->_redirectEnd;
    if ((has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v20 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_5:
    v19 = 2654435761u * self->_fetchStart;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v19 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v18 = 2654435761u * self->_domainLookupStart;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v18 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v17 = 2654435761u * self->_domainLookupEnd;
    if ((has & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v17 = 0;
  if ((has & 2) != 0)
  {
LABEL_8:
    v16 = 2654435761u * self->_connectStart;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v16 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_9:
    v15 = 2654435761u * self->_secureConnectionStart;
    if (has)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = 0;
  if (has)
  {
LABEL_10:
    v4 = 2654435761u * self->_connectEnd;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_11:
    v5 = 2654435761u * self->_requestStart;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v5 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_12:
    v6 = 2654435761u * self->_responseStart;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v6 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_13:
    v7 = 2654435761u * self->_responseEnd;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_14:
    v8 = 2654435761 * self->_redirectCountW3C;
    if ((has & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v9 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v8 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v9 = 2654435761 * self->_redirectCount;
  if ((has & 0x40) != 0)
  {
LABEL_16:
    v10 = 2654435761 * self->_isReused;
    goto LABEL_32;
  }

LABEL_31:
  v10 = 0;
LABEL_32:
  v11 = [(NSString *)self->_hostname hash];
  v12 = [(NSString *)self->_url hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v13 = 2654435761 * self->_isCellular;
  }

  else
  {
    v13 = 0;
  }

  return v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ [(NSString *)self->_procname hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 80);
  if ((v5 & 0x80000000) == 0)
  {
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  self->_timestamp = *(a3 + 16);
  *&self->_has |= 0x8000u;
  LOWORD(v5) = *(a3 + 80);
  if ((v5 & 0x400) != 0)
  {
LABEL_3:
    self->_redirectStart = *(a3 + 11);
    *&self->_has |= 0x400u;
    LOWORD(v5) = *(a3 + 80);
  }

LABEL_4:
  if ((v5 & 0x200) != 0)
  {
    self->_redirectEnd = *(a3 + 10);
    *&self->_has |= 0x200u;
    LOWORD(v5) = *(a3 + 80);
    if ((v5 & 0x10) == 0)
    {
LABEL_6:
      if ((v5 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_6;
  }

  self->_fetchStart = *(a3 + 5);
  *&self->_has |= 0x10u;
  LOWORD(v5) = *(a3 + 80);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_domainLookupStart = *(a3 + 4);
  *&self->_has |= 8u;
  LOWORD(v5) = *(a3 + 80);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_domainLookupEnd = *(a3 + 3);
  *&self->_has |= 4u;
  LOWORD(v5) = *(a3 + 80);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_connectStart = *(a3 + 2);
  *&self->_has |= 2u;
  LOWORD(v5) = *(a3 + 80);
  if ((v5 & 0x4000) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_secureConnectionStart = *(a3 + 15);
  *&self->_has |= 0x4000u;
  LOWORD(v5) = *(a3 + 80);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_connectEnd = *(a3 + 1);
  *&self->_has |= 1u;
  LOWORD(v5) = *(a3 + 80);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_requestStart = *(a3 + 12);
  *&self->_has |= 0x800u;
  LOWORD(v5) = *(a3 + 80);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_responseStart = *(a3 + 14);
  *&self->_has |= 0x2000u;
  LOWORD(v5) = *(a3 + 80);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_responseEnd = *(a3 + 13);
  *&self->_has |= 0x1000u;
  LOWORD(v5) = *(a3 + 80);
  if ((v5 & 0x100) == 0)
  {
LABEL_15:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_redirectCountW3C = *(a3 + 9);
  *&self->_has |= 0x100u;
  LOWORD(v5) = *(a3 + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_16:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_39:
  self->_redirectCount = *(a3 + 8);
  *&self->_has |= 0x80u;
  if ((*(a3 + 80) & 0x40) != 0)
  {
LABEL_17:
    self->_isReused = *(a3 + 7);
    *&self->_has |= 0x40u;
  }

LABEL_18:
  if (*(a3 + 17))
  {
    [(AWDCFNetworkW3CNavigationTiming *)self setHostname:?];
  }

  if (*(a3 + 19))
  {
    [(AWDCFNetworkW3CNavigationTiming *)self setUrl:?];
  }

  if ((*(a3 + 80) & 0x20) != 0)
  {
    self->_isCellular = *(a3 + 6);
    *&self->_has |= 0x20u;
  }

  if (*(a3 + 18))
  {

    [(AWDCFNetworkW3CNavigationTiming *)self setProcname:?];
  }
}

@end