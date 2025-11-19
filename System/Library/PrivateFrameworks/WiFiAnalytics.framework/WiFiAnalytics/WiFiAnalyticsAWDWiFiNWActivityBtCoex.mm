@interface WiFiAnalyticsAWDWiFiNWActivityBtCoex
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasA2dpgrant:(BOOL)a3;
- (void)setHasAptxafterpm:(BOOL)a3;
- (void)setHasAudiodeny:(BOOL)a3;
- (void)setHasAudiogrant:(BOOL)a3;
- (void)setHasBtabort:(BOOL)a3;
- (void)setHasCts:(BOOL)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasGrant:(BOOL)a3;
- (void)setHasPm:(BOOL)a3;
- (void)setHasPsnullretrycount:(BOOL)a3;
- (void)setHasRequest:(BOOL)a3;
- (void)setHasSniffdeny:(BOOL)a3;
- (void)setHasSniffgrant:(BOOL)a3;
- (void)setHasUcodehighlatency:(BOOL)a3;
- (void)setHasWlanrxpreempt:(BOOL)a3;
- (void)setHasWlantxpreempt:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityBtCoex

- (void)setHasRequest:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasGrant:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasBtabort:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasPsnullretrycount:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasUcodehighlatency:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasCts:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasPm:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasWlantxpreempt:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasWlanrxpreempt:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasAptxafterpm:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasAudiogrant:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasAudiodeny:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasA2dpgrant:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasSniffgrant:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasSniffdeny:(BOOL)a3
{
  if (a3)
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
  v5 = [(WiFiAnalyticsAWDWiFiNWActivityBtCoex *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_request];
    [v3 setObject:v9 forKey:@"request"];

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
  [v3 setObject:v10 forKey:@"grant"];

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
  [v3 setObject:v11 forKey:@"duration"];

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
  [v3 setObject:v12 forKey:@"btabort"];

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
  [v3 setObject:v13 forKey:@"psnullretrycount"];

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
  [v3 setObject:v14 forKey:@"ucodehighlatency"];

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
  [v3 setObject:v15 forKey:@"cts"];

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
  [v3 setObject:v16 forKey:@"pm"];

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
  [v3 setObject:v17 forKey:@"wlantxpreempt"];

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
  [v3 setObject:v18 forKey:@"wlanrxpreempt"];

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
  [v3 setObject:v19 forKey:@"aptxafterpm"];

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
  [v3 setObject:v20 forKey:@"audiogrant"];

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
  [v3 setObject:v21 forKey:@"audiodeny"];

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
  [v3 setObject:v22 forKey:@"a2dpgrant"];

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
  [v3 setObject:v23 forKey:@"a2dpdeny"];

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
  [v3 setObject:v24 forKey:@"sniffgrant"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_18:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sniffdeny];
    [v3 setObject:v5 forKey:@"sniffdeny"];
  }

LABEL_19:
  btrequestReason = self->_btrequestReason;
  if (btrequestReason)
  {
    v7 = [(WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason *)btrequestReason dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"btrequestReason"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v23 = v4;
  if ((*&has & 0x800) != 0)
  {
    request = self->_request;
    PBDataWriterWriteUint32Field();
    v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
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
  v4 = v23;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_18:
    sniffdeny = self->_sniffdeny;
    PBDataWriterWriteUint32Field();
    v4 = v23;
  }

LABEL_19:
  if (self->_btrequestReason)
  {
    PBDataWriterWriteSubmessage();
    v4 = v23;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v4[15] = self->_request;
    v4[21] |= 0x800u;
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

  v4[12] = self->_grant;
  v4[21] |= 0x100u;
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
  v4[11] = self->_duration;
  v4[21] |= 0x80u;
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
  v4[7] = self->_btabort;
  v4[21] |= 0x20u;
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
  v4[14] = self->_psnullretrycount;
  v4[21] |= 0x400u;
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
  v4[18] = self->_ucodehighlatency;
  v4[21] |= 0x4000u;
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
  v4[10] = self->_cts;
  v4[21] |= 0x40u;
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
  v4[13] = self->_pm;
  v4[21] |= 0x200u;
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
  v4[20] = self->_wlantxpreempt;
  v4[21] |= 0x10000u;
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
  v4[19] = self->_wlanrxpreempt;
  v4[21] |= 0x8000u;
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
  v4[4] = self->_aptxafterpm;
  v4[21] |= 4u;
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
  v4[6] = self->_audiogrant;
  v4[21] |= 0x10u;
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
  v4[5] = self->_audiodeny;
  v4[21] |= 8u;
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
  v4[3] = self->_a2dpgrant;
  v4[21] |= 2u;
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
  v4[2] = self->_a2dpdeny;
  v4[21] |= 1u;
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
  v4[17] = self->_sniffgrant;
  v4[21] |= 0x2000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_18:
    v4[16] = self->_sniffdeny;
    v4[21] |= 0x1000u;
  }

LABEL_19:
  if (self->_btrequestReason)
  {
    v6 = v4;
    [v4 setBtrequestReason:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason *)self->_btrequestReason copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_89;
  }

  has = self->_has;
  v6 = *(v4 + 21);
  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_request != *(v4 + 15))
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
    if ((v6 & 0x100) == 0 || self->_grant != *(v4 + 12))
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
    if ((v6 & 0x80) == 0 || self->_duration != *(v4 + 11))
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
    if ((v6 & 0x20) == 0 || self->_btabort != *(v4 + 7))
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
    if ((v6 & 0x400) == 0 || self->_psnullretrycount != *(v4 + 14))
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
    if ((v6 & 0x4000) == 0 || self->_ucodehighlatency != *(v4 + 18))
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
    if ((v6 & 0x40) == 0 || self->_cts != *(v4 + 10))
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
    if ((v6 & 0x200) == 0 || self->_pm != *(v4 + 13))
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
    if ((v6 & 0x10000) == 0 || self->_wlantxpreempt != *(v4 + 20))
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
    if ((v6 & 0x8000) == 0 || self->_wlanrxpreempt != *(v4 + 19))
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
    if ((v6 & 4) == 0 || self->_aptxafterpm != *(v4 + 4))
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
    if ((v6 & 0x10) == 0 || self->_audiogrant != *(v4 + 6))
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
    if ((v6 & 8) == 0 || self->_audiodeny != *(v4 + 5))
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
    if ((v6 & 2) == 0 || self->_a2dpgrant != *(v4 + 3))
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
    if ((v6 & 1) == 0 || self->_a2dpdeny != *(v4 + 2))
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
    if ((v6 & 0x2000) == 0 || self->_sniffgrant != *(v4 + 17))
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
    if ((v6 & 0x1000) == 0 || self->_sniffdeny != *(v4 + 16))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_89;
  }

  btrequestReason = self->_btrequestReason;
  if (btrequestReason | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = v4[21];
  if ((v6 & 0x800) != 0)
  {
    self->_request = v4[15];
    *&self->_has |= 0x800u;
    v6 = v4[21];
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

  self->_grant = v4[12];
  *&self->_has |= 0x100u;
  v6 = v4[21];
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
  self->_duration = v4[11];
  *&self->_has |= 0x80u;
  v6 = v4[21];
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
  self->_btabort = v4[7];
  *&self->_has |= 0x20u;
  v6 = v4[21];
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
  self->_psnullretrycount = v4[14];
  *&self->_has |= 0x400u;
  v6 = v4[21];
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
  self->_ucodehighlatency = v4[18];
  *&self->_has |= 0x4000u;
  v6 = v4[21];
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
  self->_cts = v4[10];
  *&self->_has |= 0x40u;
  v6 = v4[21];
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
  self->_pm = v4[13];
  *&self->_has |= 0x200u;
  v6 = v4[21];
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
  self->_wlantxpreempt = v4[20];
  *&self->_has |= 0x10000u;
  v6 = v4[21];
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
  self->_wlanrxpreempt = v4[19];
  *&self->_has |= 0x8000u;
  v6 = v4[21];
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
  self->_aptxafterpm = v4[4];
  *&self->_has |= 4u;
  v6 = v4[21];
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
  self->_audiogrant = v4[6];
  *&self->_has |= 0x10u;
  v6 = v4[21];
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
  self->_audiodeny = v4[5];
  *&self->_has |= 8u;
  v6 = v4[21];
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
  self->_a2dpgrant = v4[3];
  *&self->_has |= 2u;
  v6 = v4[21];
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
  self->_a2dpdeny = v4[2];
  *&self->_has |= 1u;
  v6 = v4[21];
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
  self->_sniffgrant = v4[17];
  *&self->_has |= 0x2000u;
  if ((v4[21] & 0x1000) != 0)
  {
LABEL_18:
    self->_sniffdeny = v4[16];
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