@interface WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason
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

@implementation WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason

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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_acl];
    [v3 setObject:v7 forKey:@"acl"];

    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sco];
  [v3 setObject:v8 forKey:@"sco"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_esco];
  [v3 setObject:v9 forKey:@"esco"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_a2dp];
  [v3 setObject:v10 forKey:@"a2dp"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sniff];
  [v3 setObject:v11 forKey:@"sniff"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_pagescan];
  [v3 setObject:v12 forKey:@"pagescan"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_inquiryscan];
  [v3 setObject:v13 forKey:@"inquiryscan"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_page];
  [v3 setObject:v14 forKey:@"page"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_inquiry];
  [v3 setObject:v15 forKey:@"inquiry"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_mss];
  [v3 setObject:v16 forKey:@"mss"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_park];
  [v3 setObject:v17 forKey:@"park"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ble];
  [v3 setObject:v18 forKey:@"ble"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_blescan];
  [v3 setObject:v19 forKey:@"blescan"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_15:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_other];
    [v3 setObject:v5 forKey:@"other"];
  }

LABEL_16:

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = a3;
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

      goto LABEL_21;
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

    goto LABEL_22;
  }

LABEL_21:
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

    goto LABEL_23;
  }

LABEL_22:
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

    goto LABEL_24;
  }

LABEL_23:
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

    goto LABEL_25;
  }

LABEL_24:
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

    goto LABEL_26;
  }

LABEL_25:
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

    goto LABEL_27;
  }

LABEL_26:
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

    goto LABEL_28;
  }

LABEL_27:
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

    goto LABEL_29;
  }

LABEL_28:
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

    goto LABEL_30;
  }

LABEL_29:
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

    goto LABEL_31;
  }

LABEL_30:
  ble = self->_ble;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  blescan = self->_blescan;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_15:
    other = self->_other;
    PBDataWriterWriteUint32Field();
  }

LABEL_16:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_acl;
    *(v4 + 32) |= 2u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  v4[14] = self->_sco;
  *(v4 + 32) |= 0x1000u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v4[6] = self->_esco;
  *(v4 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4[2] = self->_a2dp;
  *(v4 + 32) |= 1u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4[15] = self->_sniff;
  *(v4 + 32) |= 0x2000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4[12] = self->_pagescan;
  *(v4 + 32) |= 0x400u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4[8] = self->_inquiryscan;
  *(v4 + 32) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4[11] = self->_page;
  *(v4 + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4[7] = self->_inquiry;
  *(v4 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4[9] = self->_mss;
  *(v4 + 32) |= 0x80u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4[13] = self->_park;
  *(v4 + 32) |= 0x800u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4[4] = self->_ble;
  *(v4 + 32) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  v4[5] = self->_blescan;
  *(v4 + 32) |= 8u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_15:
    v4[10] = self->_other;
    *(v4 + 32) |= 0x100u;
  }

LABEL_16:
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
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_72;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_acl != *(v4 + 3))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 2) != 0)
  {
LABEL_72:
    v7 = 0;
    goto LABEL_73;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 32) & 0x1000) == 0 || self->_sco != *(v4 + 14))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 32) & 0x1000) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_esco != *(v4 + 6))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_72;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_a2dp != *(v4 + 2))
    {
      goto LABEL_72;
    }
  }

  else if (v6)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 32) & 0x2000) == 0 || self->_sniff != *(v4 + 15))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 32) & 0x2000) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 32) & 0x400) == 0 || self->_pagescan != *(v4 + 12))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 32) & 0x400) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_inquiryscan != *(v4 + 8))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 32) & 0x200) == 0 || self->_page != *(v4 + 11))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 32) & 0x200) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_inquiry != *(v4 + 7))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_mss != *(v4 + 9))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 32) & 0x800) == 0 || self->_park != *(v4 + 13))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 32) & 0x800) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_ble != *(v4 + 4))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_blescan != *(v4 + 5))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 32) & 0x100) == 0 || self->_other != *(v4 + 10))
    {
      goto LABEL_72;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x100) == 0;
  }

LABEL_73:

  return v7;
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
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_acl = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
    if ((v5 & 0x1000) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(v4 + 32) & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  self->_sco = *(v4 + 14);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_esco = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 32);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_a2dp = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 32);
  if ((v5 & 0x2000) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_sniff = *(v4 + 15);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_pagescan = *(v4 + 12);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_inquiryscan = *(v4 + 8);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_page = *(v4 + 11);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_inquiry = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_mss = *(v4 + 9);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 32);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_park = *(v4 + 13);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_ble = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  self->_blescan = *(v4 + 5);
  *&self->_has |= 8u;
  if ((*(v4 + 32) & 0x100) != 0)
  {
LABEL_15:
    self->_other = *(v4 + 10);
    *&self->_has |= 0x100u;
  }

LABEL_16:
}

@end