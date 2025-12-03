@interface WiFiAnalyticsAWDWiFiNWActivityBtCoex
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasA2dpgrant:(BOOL)a2dpgrant;
- (void)setHasAptxafterpm:(BOOL)aptxafterpm;
- (void)setHasAudiodeny:(BOOL)audiodeny;
- (void)setHasAudiogrant:(BOOL)audiogrant;
- (void)setHasBtabort:(BOOL)btabort;
- (void)setHasCts:(BOOL)cts;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasGrant:(BOOL)grant;
- (void)setHasPm:(BOOL)pm;
- (void)setHasPsnullretrycount:(BOOL)psnullretrycount;
- (void)setHasRequest:(BOOL)request;
- (void)setHasSniffdeny:(BOOL)sniffdeny;
- (void)setHasSniffgrant:(BOOL)sniffgrant;
- (void)setHasUcodehighlatency:(BOOL)ucodehighlatency;
- (void)setHasWlanrxpreempt:(BOOL)wlanrxpreempt;
- (void)setHasWlantxpreempt:(BOOL)wlantxpreempt;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityBtCoex

- (void)setHasRequest:(BOOL)request
{
  if (request)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasGrant:(BOOL)grant
{
  if (grant)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasBtabort:(BOOL)btabort
{
  if (btabort)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasPsnullretrycount:(BOOL)psnullretrycount
{
  if (psnullretrycount)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasUcodehighlatency:(BOOL)ucodehighlatency
{
  if (ucodehighlatency)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasCts:(BOOL)cts
{
  if (cts)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasPm:(BOOL)pm
{
  if (pm)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasWlantxpreempt:(BOOL)wlantxpreempt
{
  if (wlantxpreempt)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasWlanrxpreempt:(BOOL)wlanrxpreempt
{
  if (wlanrxpreempt)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasAptxafterpm:(BOOL)aptxafterpm
{
  if (aptxafterpm)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasAudiogrant:(BOOL)audiogrant
{
  if (audiogrant)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasAudiodeny:(BOOL)audiodeny
{
  if (audiodeny)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasA2dpgrant:(BOOL)a2dpgrant
{
  if (a2dpgrant)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasSniffgrant:(BOOL)sniffgrant
{
  if (sniffgrant)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasSniffdeny:(BOOL)sniffdeny
{
  if (sniffdeny)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityBtCoex;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityBtCoex *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityBtCoex *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_request];
    [dictionary setObject:v9 forKey:@"request"];

    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_grant];
  [dictionary setObject:v10 forKey:@"grant"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_duration];
  [dictionary setObject:v11 forKey:@"duration"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_btabort];
  [dictionary setObject:v12 forKey:@"btabort"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_psnullretrycount];
  [dictionary setObject:v13 forKey:@"psnullretrycount"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ucodehighlatency];
  [dictionary setObject:v14 forKey:@"ucodehighlatency"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_cts];
  [dictionary setObject:v15 forKey:@"cts"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_pm];
  [dictionary setObject:v16 forKey:@"pm"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_wlantxpreempt];
  [dictionary setObject:v17 forKey:@"wlantxpreempt"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_wlanrxpreempt];
  [dictionary setObject:v18 forKey:@"wlanrxpreempt"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_aptxafterpm];
  [dictionary setObject:v19 forKey:@"aptxafterpm"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_audiogrant];
  [dictionary setObject:v20 forKey:@"audiogrant"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_audiodeny];
  [dictionary setObject:v21 forKey:@"audiodeny"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_a2dpgrant];
  [dictionary setObject:v22 forKey:@"a2dpgrant"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_a2dpdeny];
  [dictionary setObject:v23 forKey:@"a2dpdeny"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_39:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sniffgrant];
  [dictionary setObject:v24 forKey:@"sniffgrant"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_18:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sniffdeny];
    [dictionary setObject:v5 forKey:@"sniffdeny"];
  }

LABEL_19:
  btrequestReason = self->_btrequestReason;
  if (btrequestReason)
  {
    dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason *)btrequestReason dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"btrequestReason"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v23 = toCopy;
  if ((*&has & 0x800) != 0)
  {
    request = self->_request;
    PBDataWriterWriteUint32Field();
    toCopy = v23;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  grant = self->_grant;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  btabort = self->_btabort;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  psnullretrycount = self->_psnullretrycount;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  ucodehighlatency = self->_ucodehighlatency;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  cts = self->_cts;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  pm = self->_pm;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  wlantxpreempt = self->_wlantxpreempt;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  wlanrxpreempt = self->_wlanrxpreempt;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  aptxafterpm = self->_aptxafterpm;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  audiogrant = self->_audiogrant;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  audiodeny = self->_audiodeny;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  a2dpgrant = self->_a2dpgrant;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  a2dpdeny = self->_a2dpdeny;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_39:
  sniffgrant = self->_sniffgrant;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_18:
    sniffdeny = self->_sniffdeny;
    PBDataWriterWriteUint32Field();
    toCopy = v23;
  }

LABEL_19:
  if (self->_btrequestReason)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v23;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    toCopy[15] = self->_request;
    toCopy[21] |= 0x800u;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  toCopy[12] = self->_grant;
  toCopy[21] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  toCopy[11] = self->_duration;
  toCopy[21] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  toCopy[7] = self->_btabort;
  toCopy[21] |= 0x20u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  toCopy[14] = self->_psnullretrycount;
  toCopy[21] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  toCopy[18] = self->_ucodehighlatency;
  toCopy[21] |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  toCopy[10] = self->_cts;
  toCopy[21] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  toCopy[13] = self->_pm;
  toCopy[21] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  toCopy[20] = self->_wlantxpreempt;
  toCopy[21] |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  toCopy[19] = self->_wlanrxpreempt;
  toCopy[21] |= 0x8000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  toCopy[4] = self->_aptxafterpm;
  toCopy[21] |= 4u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  toCopy[6] = self->_audiogrant;
  toCopy[21] |= 0x10u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  toCopy[5] = self->_audiodeny;
  toCopy[21] |= 8u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  toCopy[3] = self->_a2dpgrant;
  toCopy[21] |= 2u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  toCopy[2] = self->_a2dpdeny;
  toCopy[21] |= 1u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_39:
  toCopy[17] = self->_sniffgrant;
  toCopy[21] |= 0x2000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_18:
    toCopy[16] = self->_sniffdeny;
    toCopy[21] |= 0x1000u;
  }

LABEL_19:
  if (self->_btrequestReason)
  {
    v6 = toCopy;
    [toCopy setBtrequestReason:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v5[15] = self->_request;
    v5[21] |= 0x800u;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v5[12] = self->_grant;
  v5[21] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v5[11] = self->_duration;
  v5[21] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v5[7] = self->_btabort;
  v5[21] |= 0x20u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v5[14] = self->_psnullretrycount;
  v5[21] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v5[18] = self->_ucodehighlatency;
  v5[21] |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v5[10] = self->_cts;
  v5[21] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v5[13] = self->_pm;
  v5[21] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v5[20] = self->_wlantxpreempt;
  v5[21] |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v5[19] = self->_wlanrxpreempt;
  v5[21] |= 0x8000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v5[4] = self->_aptxafterpm;
  v5[21] |= 4u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v5[6] = self->_audiogrant;
  v5[21] |= 0x10u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v5[5] = self->_audiodeny;
  v5[21] |= 8u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v5[3] = self->_a2dpgrant;
  v5[21] |= 2u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

LABEL_35:
    v5[17] = self->_sniffgrant;
    v5[21] |= 0x2000u;
    if ((*&self->_has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_34:
  v5[2] = self->_a2dpdeny;
  v5[21] |= 1u;
  has = self->_has;
  if ((*&has & 0x2000) != 0)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((*&has & 0x1000) != 0)
  {
LABEL_18:
    v5[16] = self->_sniffdeny;
    v5[21] |= 0x1000u;
  }

LABEL_19:
  v8 = [(WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason *)self->_btrequestReason copyWithZone:zone];
  v9 = v6[4];
  v6[4] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_89;
  }

  has = self->_has;
  v6 = *(equalCopy + 21);
  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_request != *(equalCopy + 15))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
LABEL_89:
    v8 = 0;
    goto LABEL_90;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_grant != *(equalCopy + 12))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_duration != *(equalCopy + 11))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_btabort != *(equalCopy + 7))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_psnullretrycount != *(equalCopy + 14))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_ucodehighlatency != *(equalCopy + 18))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_cts != *(equalCopy + 10))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_pm != *(equalCopy + 13))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_wlantxpreempt != *(equalCopy + 20))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_wlanrxpreempt != *(equalCopy + 19))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_aptxafterpm != *(equalCopy + 4))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_audiogrant != *(equalCopy + 6))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_audiodeny != *(equalCopy + 5))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_a2dpgrant != *(equalCopy + 3))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_89;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_a2dpdeny != *(equalCopy + 2))
    {
      goto LABEL_89;
    }
  }

  else if (v6)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_sniffgrant != *(equalCopy + 17))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_sniffdeny != *(equalCopy + 16))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_89;
  }

  btrequestReason = self->_btrequestReason;
  if (btrequestReason | *(equalCopy + 4))
  {
    v8 = [(WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason *)btrequestReason isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_90:

  return v8;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v7 = 2654435761 * self->_request;
    if ((*&has & 0x100) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_grant;
      if ((*&has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v7 = 0;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_4:
    v9 = 2654435761 * self->_duration;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_5:
    v10 = 2654435761 * self->_btabort;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_6:
    v11 = 2654435761 * self->_psnullretrycount;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_7:
    v12 = 2654435761 * self->_ucodehighlatency;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_8:
    v13 = 2654435761 * self->_cts;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_9:
    v14 = 2654435761 * self->_pm;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_10:
    v15 = 2654435761 * self->_wlantxpreempt;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_11:
    v16 = 2654435761 * self->_wlanrxpreempt;
    if ((*&has & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_12:
    v17 = 2654435761 * self->_aptxafterpm;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v17 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_13:
    v18 = 2654435761 * self->_audiogrant;
    if ((*&has & 8) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_14:
    v19 = 2654435761 * self->_audiodeny;
    if ((*&has & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v20 = 0;
    if (*&has)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v19 = 0;
  if ((*&has & 2) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v20 = 2654435761 * self->_a2dpgrant;
  if (*&has)
  {
LABEL_16:
    v21 = 2654435761 * self->_a2dpdeny;
    goto LABEL_32;
  }

LABEL_31:
  v21 = 0;
LABEL_32:
  v25 = v2;
  if ((*&has & 0x2000) != 0)
  {
    v22 = 2654435761 * self->_sniffgrant;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_34;
    }

LABEL_36:
    v23 = 0;
    return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ [(WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason *)self->_btrequestReason hash:v3];
  }

  v22 = 0;
  if ((*&has & 0x1000) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  v23 = 2654435761 * self->_sniffdeny;
  return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ [(WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason *)self->_btrequestReason hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = fromCopy[21];
  if ((v6 & 0x800) != 0)
  {
    self->_request = fromCopy[15];
    *&self->_has |= 0x800u;
    v6 = fromCopy[21];
    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_grant = fromCopy[12];
  *&self->_has |= 0x100u;
  v6 = fromCopy[21];
  if ((v6 & 0x80) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_duration = fromCopy[11];
  *&self->_has |= 0x80u;
  v6 = fromCopy[21];
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_btabort = fromCopy[7];
  *&self->_has |= 0x20u;
  v6 = fromCopy[21];
  if ((v6 & 0x400) == 0)
  {
LABEL_6:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_psnullretrycount = fromCopy[14];
  *&self->_has |= 0x400u;
  v6 = fromCopy[21];
  if ((v6 & 0x4000) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_ucodehighlatency = fromCopy[18];
  *&self->_has |= 0x4000u;
  v6 = fromCopy[21];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_cts = fromCopy[10];
  *&self->_has |= 0x40u;
  v6 = fromCopy[21];
  if ((v6 & 0x200) == 0)
  {
LABEL_9:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_pm = fromCopy[13];
  *&self->_has |= 0x200u;
  v6 = fromCopy[21];
  if ((v6 & 0x10000) == 0)
  {
LABEL_10:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_wlantxpreempt = fromCopy[20];
  *&self->_has |= 0x10000u;
  v6 = fromCopy[21];
  if ((v6 & 0x8000) == 0)
  {
LABEL_11:
    if ((v6 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_wlanrxpreempt = fromCopy[19];
  *&self->_has |= 0x8000u;
  v6 = fromCopy[21];
  if ((v6 & 4) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_aptxafterpm = fromCopy[4];
  *&self->_has |= 4u;
  v6 = fromCopy[21];
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_audiogrant = fromCopy[6];
  *&self->_has |= 0x10u;
  v6 = fromCopy[21];
  if ((v6 & 8) == 0)
  {
LABEL_14:
    if ((v6 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_audiodeny = fromCopy[5];
  *&self->_has |= 8u;
  v6 = fromCopy[21];
  if ((v6 & 2) == 0)
  {
LABEL_15:
    if ((v6 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_a2dpgrant = fromCopy[3];
  *&self->_has |= 2u;
  v6 = fromCopy[21];
  if ((v6 & 1) == 0)
  {
LABEL_16:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_a2dpdeny = fromCopy[2];
  *&self->_has |= 1u;
  v6 = fromCopy[21];
  if ((v6 & 0x2000) == 0)
  {
LABEL_17:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  self->_sniffgrant = fromCopy[17];
  *&self->_has |= 0x2000u;
  if ((fromCopy[21] & 0x1000) != 0)
  {
LABEL_18:
    self->_sniffdeny = fromCopy[16];
    *&self->_has |= 0x1000u;
  }

LABEL_19:
  btrequestReason = self->_btrequestReason;
  v8 = *(v5 + 4);
  if (btrequestReason)
  {
    if (v8)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason *)btrequestReason mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityBtCoex *)self setBtrequestReason:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end