@interface AWDCFNetworkW3CNavigationTiming
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasConnectStart:(BOOL)start;
- (void)setHasDomainLookupEnd:(BOOL)end;
- (void)setHasDomainLookupStart:(BOOL)start;
- (void)setHasFetchStart:(BOOL)start;
- (void)setHasIsCellular:(BOOL)cellular;
- (void)setHasIsReused:(BOOL)reused;
- (void)setHasRedirectCount:(BOOL)count;
- (void)setHasRedirectCountW3C:(BOOL)c;
- (void)setHasRedirectEnd:(BOOL)end;
- (void)setHasRedirectStart:(BOOL)start;
- (void)setHasRequestStart:(BOOL)start;
- (void)setHasResponseEnd:(BOOL)end;
- (void)setHasResponseStart:(BOOL)start;
- (void)setHasSecureConnectionStart:(BOOL)start;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
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

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasRedirectStart:(BOOL)start
{
  if (start)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasRedirectEnd:(BOOL)end
{
  if (end)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasFetchStart:(BOOL)start
{
  if (start)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasDomainLookupStart:(BOOL)start
{
  if (start)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasDomainLookupEnd:(BOOL)end
{
  if (end)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasConnectStart:(BOOL)start
{
  if (start)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSecureConnectionStart:(BOOL)start
{
  if (start)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasRequestStart:(BOOL)start
{
  if (start)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasResponseStart:(BOOL)start
{
  if (start)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasResponseEnd:(BOOL)end
{
  if (end)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasRedirectCountW3C:(BOOL)c
{
  if (c)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasRedirectCount:(BOOL)count
{
  if (count)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsReused:(BOOL)reused
{
  if (reused)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasIsCellular:(BOOL)cellular
{
  if (cellular)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has < 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_redirectStart), @"redirectStart"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_redirectEnd), @"redirectEnd"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_fetchStart), @"fetchStart"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_domainLookupStart), @"domainLookupStart"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_domainLookupEnd), @"domainLookupEnd"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectStart), @"connectStart"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_secureConnectionStart), @"secureConnectionStart"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectEnd), @"connectEnd"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestStart), @"requestStart"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_responseStart), @"responseStart"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_responseEnd), @"responseEnd"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_redirectCountW3C), @"redirectCountW3C"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_redirectCount), @"redirectCount"}];
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_16:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_isReused), @"isReused"}];
  }

LABEL_17:
  hostname = self->_hostname;
  if (hostname)
  {
    [dictionary setObject:hostname forKey:@"hostname"];
  }

  url = self->_url;
  if (url)
  {
    [dictionary setObject:url forKey:@"url"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_isCellular), @"isCellular"}];
  }

  procname = self->_procname;
  if (procname)
  {
    [dictionary setObject:procname forKey:@"procname"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
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

  *(to + 16) = self->_timestamp;
  *(to + 80) |= 0x8000u;
  *&has = self->_has;
  if ((*&has & 0x400) != 0)
  {
LABEL_3:
    *(to + 11) = self->_redirectStart;
    *(to + 80) |= 0x400u;
    *&has = self->_has;
  }

LABEL_4:
  if ((*&has & 0x200) != 0)
  {
    *(to + 10) = self->_redirectEnd;
    *(to + 80) |= 0x200u;
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

  *(to + 5) = self->_fetchStart;
  *(to + 80) |= 0x10u;
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
  *(to + 4) = self->_domainLookupStart;
  *(to + 80) |= 8u;
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
  *(to + 3) = self->_domainLookupEnd;
  *(to + 80) |= 4u;
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
  *(to + 2) = self->_connectStart;
  *(to + 80) |= 2u;
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
  *(to + 15) = self->_secureConnectionStart;
  *(to + 80) |= 0x4000u;
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
  *(to + 1) = self->_connectEnd;
  *(to + 80) |= 1u;
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
  *(to + 12) = self->_requestStart;
  *(to + 80) |= 0x800u;
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
  *(to + 14) = self->_responseStart;
  *(to + 80) |= 0x2000u;
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
  *(to + 13) = self->_responseEnd;
  *(to + 80) |= 0x1000u;
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
  *(to + 9) = self->_redirectCountW3C;
  *(to + 80) |= 0x100u;
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
  *(to + 8) = self->_redirectCount;
  *(to + 80) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_17:
    *(to + 7) = self->_isReused;
    *(to + 80) |= 0x40u;
  }

LABEL_18:
  if (self->_hostname)
  {
    [to setHostname:?];
  }

  if (self->_url)
  {
    [to setUrl:?];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(to + 6) = self->_isCellular;
    *(to + 80) |= 0x20u;
  }

  if (self->_procname)
  {

    [to setProcname:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  *(v6 + 136) = [(NSString *)self->_hostname copyWithZone:zone];
  *(v6 + 152) = [(NSString *)self->_url copyWithZone:zone];
  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 48) = self->_isCellular;
    *(v6 + 160) |= 0x20u;
  }

  *(v6 + 144) = [(NSString *)self->_procname copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 80);
    if ((*&has & 0x80000000) != 0)
    {
      if ((*(equal + 80) & 0x8000) == 0 || self->_timestamp != *(equal + 16))
      {
        goto LABEL_88;
      }
    }

    else if ((*(equal + 80) & 0x8000) != 0)
    {
LABEL_88:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((*(equal + 80) & 0x400) == 0 || self->_redirectStart != *(equal + 11))
      {
        goto LABEL_88;
      }
    }

    else if ((*(equal + 80) & 0x400) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((*(equal + 80) & 0x200) == 0 || self->_redirectEnd != *(equal + 10))
      {
        goto LABEL_88;
      }
    }

    else if ((*(equal + 80) & 0x200) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_fetchStart != *(equal + 5))
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
      if ((v7 & 8) == 0 || self->_domainLookupStart != *(equal + 4))
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
      if ((v7 & 4) == 0 || self->_domainLookupEnd != *(equal + 3))
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
      if ((v7 & 2) == 0 || self->_connectStart != *(equal + 2))
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
      if ((*(equal + 80) & 0x4000) == 0 || self->_secureConnectionStart != *(equal + 15))
      {
        goto LABEL_88;
      }
    }

    else if ((*(equal + 80) & 0x4000) != 0)
    {
      goto LABEL_88;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_connectEnd != *(equal + 1))
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
      if ((*(equal + 80) & 0x800) == 0 || self->_requestStart != *(equal + 12))
      {
        goto LABEL_88;
      }
    }

    else if ((*(equal + 80) & 0x800) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((*(equal + 80) & 0x2000) == 0 || self->_responseStart != *(equal + 14))
      {
        goto LABEL_88;
      }
    }

    else if ((*(equal + 80) & 0x2000) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((*(equal + 80) & 0x1000) == 0 || self->_responseEnd != *(equal + 13))
      {
        goto LABEL_88;
      }
    }

    else if ((*(equal + 80) & 0x1000) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((*(equal + 80) & 0x100) == 0 || self->_redirectCountW3C != *(equal + 9))
      {
        goto LABEL_88;
      }
    }

    else if ((*(equal + 80) & 0x100) != 0)
    {
      goto LABEL_88;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_redirectCount != *(equal + 8))
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
      if ((v7 & 0x40) == 0 || self->_isReused != *(equal + 7))
      {
        goto LABEL_88;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_88;
    }

    hostname = self->_hostname;
    if (!(hostname | *(equal + 17)) || (v5 = [(NSString *)hostname isEqual:?]) != 0)
    {
      url = self->_url;
      if (!(url | *(equal + 19)) || (v5 = [(NSString *)url isEqual:?]) != 0)
      {
        v10 = *(equal + 80);
        if ((*&self->_has & 0x20) != 0)
        {
          if ((v10 & 0x20) == 0 || self->_isCellular != *(equal + 6))
          {
            goto LABEL_88;
          }
        }

        else if ((v10 & 0x20) != 0)
        {
          goto LABEL_88;
        }

        procname = self->_procname;
        if (procname | *(equal + 18))
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

- (void)mergeFrom:(id)from
{
  v5 = *(from + 80);
  if ((v5 & 0x80000000) == 0)
  {
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  self->_timestamp = *(from + 16);
  *&self->_has |= 0x8000u;
  LOWORD(v5) = *(from + 80);
  if ((v5 & 0x400) != 0)
  {
LABEL_3:
    self->_redirectStart = *(from + 11);
    *&self->_has |= 0x400u;
    LOWORD(v5) = *(from + 80);
  }

LABEL_4:
  if ((v5 & 0x200) != 0)
  {
    self->_redirectEnd = *(from + 10);
    *&self->_has |= 0x200u;
    LOWORD(v5) = *(from + 80);
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

  self->_fetchStart = *(from + 5);
  *&self->_has |= 0x10u;
  LOWORD(v5) = *(from + 80);
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
  self->_domainLookupStart = *(from + 4);
  *&self->_has |= 8u;
  LOWORD(v5) = *(from + 80);
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
  self->_domainLookupEnd = *(from + 3);
  *&self->_has |= 4u;
  LOWORD(v5) = *(from + 80);
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
  self->_connectStart = *(from + 2);
  *&self->_has |= 2u;
  LOWORD(v5) = *(from + 80);
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
  self->_secureConnectionStart = *(from + 15);
  *&self->_has |= 0x4000u;
  LOWORD(v5) = *(from + 80);
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
  self->_connectEnd = *(from + 1);
  *&self->_has |= 1u;
  LOWORD(v5) = *(from + 80);
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
  self->_requestStart = *(from + 12);
  *&self->_has |= 0x800u;
  LOWORD(v5) = *(from + 80);
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
  self->_responseStart = *(from + 14);
  *&self->_has |= 0x2000u;
  LOWORD(v5) = *(from + 80);
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
  self->_responseEnd = *(from + 13);
  *&self->_has |= 0x1000u;
  LOWORD(v5) = *(from + 80);
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
  self->_redirectCountW3C = *(from + 9);
  *&self->_has |= 0x100u;
  LOWORD(v5) = *(from + 80);
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
  self->_redirectCount = *(from + 8);
  *&self->_has |= 0x80u;
  if ((*(from + 80) & 0x40) != 0)
  {
LABEL_17:
    self->_isReused = *(from + 7);
    *&self->_has |= 0x40u;
  }

LABEL_18:
  if (*(from + 17))
  {
    [(AWDCFNetworkW3CNavigationTiming *)self setHostname:?];
  }

  if (*(from + 19))
  {
    [(AWDCFNetworkW3CNavigationTiming *)self setUrl:?];
  }

  if ((*(from + 80) & 0x20) != 0)
  {
    self->_isCellular = *(from + 6);
    *&self->_has |= 0x20u;
  }

  if (*(from + 18))
  {

    [(AWDCFNetworkW3CNavigationTiming *)self setProcname:?];
  }
}

@end