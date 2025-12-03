@interface AWDWiFiNWActivityBtCoex
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
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

@implementation AWDWiFiNWActivityBtCoex

- (void)dealloc
{
  [(AWDWiFiNWActivityBtCoex *)self setBtrequestReason:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityBtCoex;
  [(AWDWiFiNWActivityBtCoex *)&v3 dealloc];
}

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
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityBtCoex;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityBtCoex description](&v3, sel_description), -[AWDWiFiNWActivityBtCoex dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_request), @"request"}];
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_grant), @"grant"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_duration), @"duration"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btabort), @"btabort"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_psnullretrycount), @"psnullretrycount"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ucodehighlatency), @"ucodehighlatency"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cts), @"cts"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pm), @"pm"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wlantxpreempt), @"wlantxpreempt"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wlanrxpreempt), @"wlanrxpreempt"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_aptxafterpm), @"aptxafterpm"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_audiogrant), @"audiogrant"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_audiodeny), @"audiodeny"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_a2dpgrant), @"a2dpgrant"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_a2dpdeny), @"a2dpdeny"}];
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

LABEL_37:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sniffgrant), @"sniffgrant"}];
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_18:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sniffdeny), @"sniffdeny"}];
  }

LABEL_19:
  btrequestReason = self->_btrequestReason;
  if (btrequestReason)
  {
    [dictionary setObject:-[AWDWiFiNWActivityBtCoexReqestReason dictionaryRepresentation](btrequestReason forKey:{"dictionaryRepresentation"), @"btrequestReason"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    request = self->_request;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  grant = self->_grant;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  btabort = self->_btabort;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  psnullretrycount = self->_psnullretrycount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  ucodehighlatency = self->_ucodehighlatency;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  cts = self->_cts;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  pm = self->_pm;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  wlantxpreempt = self->_wlantxpreempt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  wlanrxpreempt = self->_wlanrxpreempt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  aptxafterpm = self->_aptxafterpm;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  audiogrant = self->_audiogrant;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  audiodeny = self->_audiodeny;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  a2dpgrant = self->_a2dpgrant;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  a2dpdeny = self->_a2dpdeny;
  PBDataWriterWriteUint32Field();
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

LABEL_38:
  sniffgrant = self->_sniffgrant;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_18:
    sniffdeny = self->_sniffdeny;
    PBDataWriterWriteUint32Field();
  }

LABEL_19:
  if (self->_btrequestReason)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    *(to + 15) = self->_request;
    *(to + 21) |= 0x800u;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(to + 12) = self->_grant;
  *(to + 21) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 11) = self->_duration;
  *(to + 21) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 7) = self->_btabort;
  *(to + 21) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 14) = self->_psnullretrycount;
  *(to + 21) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 18) = self->_ucodehighlatency;
  *(to + 21) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 10) = self->_cts;
  *(to + 21) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 13) = self->_pm;
  *(to + 21) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 20) = self->_wlantxpreempt;
  *(to + 21) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(to + 19) = self->_wlanrxpreempt;
  *(to + 21) |= 0x8000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(to + 4) = self->_aptxafterpm;
  *(to + 21) |= 4u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(to + 6) = self->_audiogrant;
  *(to + 21) |= 0x10u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(to + 5) = self->_audiodeny;
  *(to + 21) |= 8u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(to + 3) = self->_a2dpgrant;
  *(to + 21) |= 2u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(to + 2) = self->_a2dpdeny;
  *(to + 21) |= 1u;
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

LABEL_36:
  *(to + 17) = self->_sniffgrant;
  *(to + 21) |= 0x2000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_18:
    *(to + 16) = self->_sniffdeny;
    *(to + 21) |= 0x1000u;
  }

LABEL_19:
  btrequestReason = self->_btrequestReason;
  if (btrequestReason)
  {
    [to setBtrequestReason:btrequestReason];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    *(v5 + 60) = self->_request;
    *(v5 + 84) |= 0x800u;
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

  *(v5 + 48) = self->_grant;
  *(v5 + 84) |= 0x100u;
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
  *(v5 + 44) = self->_duration;
  *(v5 + 84) |= 0x80u;
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
  *(v5 + 28) = self->_btabort;
  *(v5 + 84) |= 0x20u;
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
  *(v5 + 56) = self->_psnullretrycount;
  *(v5 + 84) |= 0x400u;
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
  *(v5 + 72) = self->_ucodehighlatency;
  *(v5 + 84) |= 0x4000u;
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
  *(v5 + 40) = self->_cts;
  *(v5 + 84) |= 0x40u;
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
  *(v5 + 52) = self->_pm;
  *(v5 + 84) |= 0x200u;
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
  *(v5 + 80) = self->_wlantxpreempt;
  *(v5 + 84) |= 0x10000u;
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
  *(v5 + 76) = self->_wlanrxpreempt;
  *(v5 + 84) |= 0x8000u;
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
  *(v5 + 16) = self->_aptxafterpm;
  *(v5 + 84) |= 4u;
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
  *(v5 + 24) = self->_audiogrant;
  *(v5 + 84) |= 0x10u;
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
  *(v5 + 20) = self->_audiodeny;
  *(v5 + 84) |= 8u;
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
  *(v5 + 12) = self->_a2dpgrant;
  *(v5 + 84) |= 2u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

LABEL_35:
    *(v5 + 68) = self->_sniffgrant;
    *(v5 + 84) |= 0x2000u;
    if ((*&self->_has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_34:
  *(v5 + 8) = self->_a2dpdeny;
  *(v5 + 84) |= 1u;
  has = self->_has;
  if ((*&has & 0x2000) != 0)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((*&has & 0x1000) != 0)
  {
LABEL_18:
    *(v5 + 64) = self->_sniffdeny;
    *(v5 + 84) |= 0x1000u;
  }

LABEL_19:

  v6[4] = [(AWDWiFiNWActivityBtCoexReqestReason *)self->_btrequestReason copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 21);
    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_request != *(equal + 15))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
LABEL_89:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_grant != *(equal + 12))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_duration != *(equal + 11))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_btabort != *(equal + 7))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_psnullretrycount != *(equal + 14))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_ucodehighlatency != *(equal + 18))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_cts != *(equal + 10))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_pm != *(equal + 13))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_wlantxpreempt != *(equal + 20))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_wlanrxpreempt != *(equal + 19))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_aptxafterpm != *(equal + 4))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_audiogrant != *(equal + 6))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_audiodeny != *(equal + 5))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_a2dpgrant != *(equal + 3))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_89;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_a2dpdeny != *(equal + 2))
      {
        goto LABEL_89;
      }
    }

    else if (v7)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_sniffgrant != *(equal + 17))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_sniffdeny != *(equal + 16))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_89;
    }

    btrequestReason = self->_btrequestReason;
    if (btrequestReason | *(equal + 4))
    {

      LOBYTE(v5) = [(AWDWiFiNWActivityBtCoexReqestReason *)btrequestReason isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
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
    return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ [(AWDWiFiNWActivityBtCoexReqestReason *)self->_btrequestReason hash:v3];
  }

  v22 = 0;
  if ((*&has & 0x1000) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  v23 = 2654435761 * self->_sniffdeny;
  return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ [(AWDWiFiNWActivityBtCoexReqestReason *)self->_btrequestReason hash:v3];
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 21);
  if ((v3 & 0x800) != 0)
  {
    self->_request = *(from + 15);
    *&self->_has |= 0x800u;
    v3 = *(from + 21);
    if ((v3 & 0x100) == 0)
    {
LABEL_3:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v3 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_grant = *(from + 12);
  *&self->_has |= 0x100u;
  v3 = *(from + 21);
  if ((v3 & 0x80) == 0)
  {
LABEL_4:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_duration = *(from + 11);
  *&self->_has |= 0x80u;
  v3 = *(from + 21);
  if ((v3 & 0x20) == 0)
  {
LABEL_5:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_btabort = *(from + 7);
  *&self->_has |= 0x20u;
  v3 = *(from + 21);
  if ((v3 & 0x400) == 0)
  {
LABEL_6:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_psnullretrycount = *(from + 14);
  *&self->_has |= 0x400u;
  v3 = *(from + 21);
  if ((v3 & 0x4000) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_ucodehighlatency = *(from + 18);
  *&self->_has |= 0x4000u;
  v3 = *(from + 21);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_cts = *(from + 10);
  *&self->_has |= 0x40u;
  v3 = *(from + 21);
  if ((v3 & 0x200) == 0)
  {
LABEL_9:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_pm = *(from + 13);
  *&self->_has |= 0x200u;
  v3 = *(from + 21);
  if ((v3 & 0x10000) == 0)
  {
LABEL_10:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_wlantxpreempt = *(from + 20);
  *&self->_has |= 0x10000u;
  v3 = *(from + 21);
  if ((v3 & 0x8000) == 0)
  {
LABEL_11:
    if ((v3 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_wlanrxpreempt = *(from + 19);
  *&self->_has |= 0x8000u;
  v3 = *(from + 21);
  if ((v3 & 4) == 0)
  {
LABEL_12:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_aptxafterpm = *(from + 4);
  *&self->_has |= 4u;
  v3 = *(from + 21);
  if ((v3 & 0x10) == 0)
  {
LABEL_13:
    if ((v3 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_audiogrant = *(from + 6);
  *&self->_has |= 0x10u;
  v3 = *(from + 21);
  if ((v3 & 8) == 0)
  {
LABEL_14:
    if ((v3 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_audiodeny = *(from + 5);
  *&self->_has |= 8u;
  v3 = *(from + 21);
  if ((v3 & 2) == 0)
  {
LABEL_15:
    if ((v3 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_a2dpgrant = *(from + 3);
  *&self->_has |= 2u;
  v3 = *(from + 21);
  if ((v3 & 1) == 0)
  {
LABEL_16:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_a2dpdeny = *(from + 2);
  *&self->_has |= 1u;
  v3 = *(from + 21);
  if ((v3 & 0x2000) == 0)
  {
LABEL_17:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  self->_sniffgrant = *(from + 17);
  *&self->_has |= 0x2000u;
  if ((*(from + 21) & 0x1000) != 0)
  {
LABEL_18:
    self->_sniffdeny = *(from + 16);
    *&self->_has |= 0x1000u;
  }

LABEL_19:
  v4 = *(from + 4);
  if (self->_btrequestReason)
  {
    if (v4)
    {
      [(AWDWiFiNWActivityBtCoexReqestReason *)self->_btrequestReason mergeFrom:?];
    }
  }

  else if (v4)
  {
    [(AWDWiFiNWActivityBtCoex *)self setBtrequestReason:?];
  }
}

@end