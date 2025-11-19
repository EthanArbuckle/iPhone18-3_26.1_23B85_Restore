@interface AWDWiFiNWActivityBtCoexReqestReason
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAcl:(BOOL)a3;
- (void)setHasBle:(BOOL)a3;
- (void)setHasBlescan:(BOOL)a3;
- (void)setHasEsco:(BOOL)a3;
- (void)setHasInquiry:(BOOL)a3;
- (void)setHasInquiryscan:(BOOL)a3;
- (void)setHasMss:(BOOL)a3;
- (void)setHasOther:(BOOL)a3;
- (void)setHasPage:(BOOL)a3;
- (void)setHasPagescan:(BOOL)a3;
- (void)setHasPark:(BOOL)a3;
- (void)setHasSco:(BOOL)a3;
- (void)setHasSniff:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiNWActivityBtCoexReqestReason

- (void)setHasAcl:(BOOL)a3
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

- (void)setHasSco:(BOOL)a3
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

- (void)setHasEsco:(BOOL)a3
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

- (void)setHasSniff:(BOOL)a3
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

- (void)setHasPagescan:(BOOL)a3
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

- (void)setHasInquiryscan:(BOOL)a3
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

- (void)setHasPage:(BOOL)a3
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

- (void)setHasInquiry:(BOOL)a3
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

- (void)setHasMss:(BOOL)a3
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

- (void)setHasPark:(BOOL)a3
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

- (void)setHasBle:(BOOL)a3
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

- (void)setHasBlescan:(BOOL)a3
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

- (void)setHasOther:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityBtCoexReqestReason;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityBtCoexReqestReason description](&v3, sel_description), -[AWDWiFiNWActivityBtCoexReqestReason dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_acl), @"acl"}];
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sco), @"sco"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_esco), @"esco"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_a2dp), @"a2dp"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sniff), @"sniff"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pagescan), @"pagescan"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_inquiryscan), @"inquiryscan"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_page), @"page"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_inquiry), @"inquiry"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_mss), @"mss"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_park), @"park"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_29:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_blescan), @"blescan"}];
    if ((*&self->_has & 0x100) == 0)
    {
      return v3;
    }

    goto LABEL_15;
  }

LABEL_28:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ble), @"ble"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_29;
  }

LABEL_14:
  if ((has & 0x100) != 0)
  {
LABEL_15:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_other), @"other"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    acl = self->_acl;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  sco = self->_sco;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  esco = self->_esco;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  a2dp = self->_a2dp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  sniff = self->_sniff;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  pagescan = self->_pagescan;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  inquiryscan = self->_inquiryscan;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  page = self->_page;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  inquiry = self->_inquiry;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  mss = self->_mss;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  park = self->_park;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    blescan = self->_blescan;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x100) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

LABEL_27:
  ble = self->_ble;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((has & 0x100) == 0)
  {
    return;
  }

LABEL_29:
  other = self->_other;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 3) = self->_acl;
    *(a3 + 32) |= 2u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 14) = self->_sco;
  *(a3 + 32) |= 0x1000u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 6) = self->_esco;
  *(a3 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 2) = self->_a2dp;
  *(a3 + 32) |= 1u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 15) = self->_sniff;
  *(a3 + 32) |= 0x2000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 12) = self->_pagescan;
  *(a3 + 32) |= 0x400u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 8) = self->_inquiryscan;
  *(a3 + 32) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a3 + 11) = self->_page;
  *(a3 + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 7) = self->_inquiry;
  *(a3 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 9) = self->_mss;
  *(a3 + 32) |= 0x80u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a3 + 13) = self->_park;
  *(a3 + 32) |= 0x800u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a3 + 4) = self->_ble;
  *(a3 + 32) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      return;
    }

LABEL_29:
    *(a3 + 10) = self->_other;
    *(a3 + 32) |= 0x100u;
    return;
  }

LABEL_28:
  *(a3 + 5) = self->_blescan;
  *(a3 + 32) |= 8u;
  if ((*&self->_has & 0x100) != 0)
  {
    goto LABEL_29;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_acl;
    *(result + 32) |= 2u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 14) = self->_sco;
  *(result + 32) |= 0x1000u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 6) = self->_esco;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 2) = self->_a2dp;
  *(result + 32) |= 1u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 15) = self->_sniff;
  *(result + 32) |= 0x2000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 12) = self->_pagescan;
  *(result + 32) |= 0x400u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 8) = self->_inquiryscan;
  *(result + 32) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 11) = self->_page;
  *(result + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 7) = self->_inquiry;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 9) = self->_mss;
  *(result + 32) |= 0x80u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 13) = self->_park;
  *(result + 32) |= 0x800u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 4) = self->_ble;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_29:
  *(result + 5) = self->_blescan;
  *(result + 32) |= 8u;
  if ((*&self->_has & 0x100) == 0)
  {
    return result;
  }

LABEL_15:
  *(result + 10) = self->_other;
  *(result + 32) |= 0x100u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 32);
    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_acl != *(a3 + 3))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 2) != 0)
    {
LABEL_71:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x1000) != 0)
    {
      if ((*(a3 + 32) & 0x1000) == 0 || self->_sco != *(a3 + 14))
      {
        goto LABEL_71;
      }
    }

    else if ((*(a3 + 32) & 0x1000) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_esco != *(a3 + 6))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_71;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_a2dp != *(a3 + 2))
      {
        goto LABEL_71;
      }
    }

    else if (v7)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x2000) != 0)
    {
      if ((*(a3 + 32) & 0x2000) == 0 || self->_sniff != *(a3 + 15))
      {
        goto LABEL_71;
      }
    }

    else if ((*(a3 + 32) & 0x2000) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(a3 + 32) & 0x400) == 0 || self->_pagescan != *(a3 + 12))
      {
        goto LABEL_71;
      }
    }

    else if ((*(a3 + 32) & 0x400) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_inquiryscan != *(a3 + 8))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(a3 + 32) & 0x200) == 0 || self->_page != *(a3 + 11))
      {
        goto LABEL_71;
      }
    }

    else if ((*(a3 + 32) & 0x200) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_inquiry != *(a3 + 7))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_mss != *(a3 + 9))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(a3 + 32) & 0x800) == 0 || self->_park != *(a3 + 13))
      {
        goto LABEL_71;
      }
    }

    else if ((*(a3 + 32) & 0x800) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_ble != *(a3 + 4))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_blescan != *(a3 + 5))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_71;
    }

    LOBYTE(v5) = (v7 & 0x100) == 0;
    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 32) & 0x100) == 0 || self->_other != *(a3 + 10))
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
  if ((has & 2) != 0)
  {
    v3 = 2654435761 * self->_acl;
    if ((*&self->_has & 0x1000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_sco;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_esco;
    if (has)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if (has)
  {
LABEL_5:
    v6 = 2654435761 * self->_a2dp;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_sniff;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_pagescan;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_inquiryscan;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_page;
    if ((has & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_inquiry;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_mss;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_park;
    if ((has & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((has & 4) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_ble;
    if ((has & 8) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v15 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v16 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_27:
  v14 = 0;
  if ((has & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v15 = 2654435761 * self->_blescan;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v16 = 2654435761 * self->_other;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 32);
  if ((v3 & 2) != 0)
  {
    self->_acl = *(a3 + 3);
    *&self->_has |= 2u;
    v3 = *(a3 + 32);
    if ((v3 & 0x1000) == 0)
    {
LABEL_3:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a3 + 32) & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  self->_sco = *(a3 + 14);
  *&self->_has |= 0x1000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x10) == 0)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_esco = *(a3 + 6);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 32);
  if ((v3 & 1) == 0)
  {
LABEL_5:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_a2dp = *(a3 + 2);
  *&self->_has |= 1u;
  v3 = *(a3 + 32);
  if ((v3 & 0x2000) == 0)
  {
LABEL_6:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_sniff = *(a3 + 15);
  *&self->_has |= 0x2000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x400) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_pagescan = *(a3 + 12);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 32);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_inquiryscan = *(a3 + 8);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 32);
  if ((v3 & 0x200) == 0)
  {
LABEL_9:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_page = *(a3 + 11);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 32);
  if ((v3 & 0x20) == 0)
  {
LABEL_10:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_inquiry = *(a3 + 7);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 32);
  if ((v3 & 0x80) == 0)
  {
LABEL_11:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_mss = *(a3 + 9);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 32);
  if ((v3 & 0x800) == 0)
  {
LABEL_12:
    if ((v3 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_park = *(a3 + 13);
  *&self->_has |= 0x800u;
  v3 = *(a3 + 32);
  if ((v3 & 4) == 0)
  {
LABEL_13:
    if ((v3 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_ble = *(a3 + 4);
  *&self->_has |= 4u;
  v3 = *(a3 + 32);
  if ((v3 & 8) == 0)
  {
LABEL_14:
    if ((v3 & 0x100) == 0)
    {
      return;
    }

LABEL_29:
    self->_other = *(a3 + 10);
    *&self->_has |= 0x100u;
    return;
  }

LABEL_28:
  self->_blescan = *(a3 + 5);
  *&self->_has |= 8u;
  if ((*(a3 + 32) & 0x100) != 0)
  {
    goto LABEL_29;
  }
}

@end