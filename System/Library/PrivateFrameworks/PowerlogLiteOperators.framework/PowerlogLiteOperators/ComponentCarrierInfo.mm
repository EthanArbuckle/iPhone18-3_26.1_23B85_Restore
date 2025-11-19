@interface ComponentCarrierInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDlBandwidth:(id)a3;
- (int)dlBandwidth;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDlEarfcn:(BOOL)a3;
- (void)setHasDlRfBand:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ComponentCarrierInfo

- (void)setHasDlEarfcn:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)dlBandwidth
{
  if (*&self->_has)
  {
    return self->_dlBandwidth;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDlBandwidth:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N6"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N15"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N25"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N50"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N75"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N100"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_COUNT"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDlRfBand:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ComponentCarrierInfo;
  v4 = [(ComponentCarrierInfo *)&v8 description];
  v5 = [(ComponentCarrierInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dlEarfcn];
    [v3 setObject:v7 forKey:@"dl_earfcn"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  dlBandwidth = self->_dlBandwidth;
  if (dlBandwidth >= 7)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_dlBandwidth];
  }

  else
  {
    v9 = off_27825DBD8[dlBandwidth];
  }

  [v3 setObject:v9 forKey:@"dl_bandwidth"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dlRfBand];
  [v3 setObject:v5 forKey:@"dl_rf_band"];

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 2) != 0)
  {
    dlEarfcn = self->_dlEarfcn;
    PBDataWriterWriteUint32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  dlBandwidth = self->_dlBandwidth;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    dlRfBand = self->_dlRfBand;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_dlEarfcn;
    *(v4 + 20) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = self->_dlBandwidth;
  *(v4 + 20) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[4] = self->_dlRfBand;
    *(v4 + 20) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_dlEarfcn;
    *(result + 20) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_dlBandwidth;
  *(result + 20) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 4) = self->_dlRfBand;
  *(result + 20) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_dlEarfcn != *(v4 + 3))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_dlBandwidth != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 20) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 20) & 4) == 0 || self->_dlRfBand != *(v4 + 4))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_dlEarfcn;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_dlBandwidth;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_dlRfBand;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 2) != 0)
  {
    self->_dlEarfcn = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 20);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_dlBandwidth = *(v4 + 2);
  *&self->_has |= 1u;
  if ((*(v4 + 20) & 4) != 0)
  {
LABEL_4:
    self->_dlRfBand = *(v4 + 4);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end