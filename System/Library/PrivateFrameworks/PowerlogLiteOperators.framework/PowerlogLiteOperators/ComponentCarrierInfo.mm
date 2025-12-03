@interface ComponentCarrierInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDlBandwidth:(id)bandwidth;
- (int)dlBandwidth;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDlEarfcn:(BOOL)earfcn;
- (void)setHasDlRfBand:(BOOL)band;
- (void)writeTo:(id)to;
@end

@implementation ComponentCarrierInfo

- (void)setHasDlEarfcn:(BOOL)earfcn
{
  if (earfcn)
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

- (int)StringAsDlBandwidth:(id)bandwidth
{
  bandwidthCopy = bandwidth;
  if ([bandwidthCopy isEqualToString:@"KLTE_TX_BW_CONFIG_N6"])
  {
    v4 = 0;
  }

  else if ([bandwidthCopy isEqualToString:@"KLTE_TX_BW_CONFIG_N15"])
  {
    v4 = 1;
  }

  else if ([bandwidthCopy isEqualToString:@"KLTE_TX_BW_CONFIG_N25"])
  {
    v4 = 2;
  }

  else if ([bandwidthCopy isEqualToString:@"KLTE_TX_BW_CONFIG_N50"])
  {
    v4 = 3;
  }

  else if ([bandwidthCopy isEqualToString:@"KLTE_TX_BW_CONFIG_N75"])
  {
    v4 = 4;
  }

  else if ([bandwidthCopy isEqualToString:@"KLTE_TX_BW_CONFIG_N100"])
  {
    v4 = 5;
  }

  else if ([bandwidthCopy isEqualToString:@"KLTE_TX_BW_CONFIG_COUNT"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDlRfBand:(BOOL)band
{
  if (band)
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
  dictionaryRepresentation = [(ComponentCarrierInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dlEarfcn];
    [dictionary setObject:v7 forKey:@"dl_earfcn"];

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

  [dictionary setObject:v9 forKey:@"dl_bandwidth"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dlRfBand];
  [dictionary setObject:v5 forKey:@"dl_rf_band"];

LABEL_5:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 2) != 0)
  {
    dlEarfcn = self->_dlEarfcn;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
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
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    dlRfBand = self->_dlRfBand;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[3] = self->_dlEarfcn;
    *(toCopy + 20) |= 2u;
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

  toCopy[2] = self->_dlBandwidth;
  *(toCopy + 20) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[4] = self->_dlRfBand;
    *(toCopy + 20) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_dlEarfcn != *(equalCopy + 3))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 20) & 2) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_dlBandwidth != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 20))
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 20) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 20) & 4) == 0 || self->_dlRfBand != *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if ((v5 & 2) != 0)
  {
    self->_dlEarfcn = *(fromCopy + 3);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 20);
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

  else if ((*(fromCopy + 20) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_dlBandwidth = *(fromCopy + 2);
  *&self->_has |= 1u;
  if ((*(fromCopy + 20) & 4) != 0)
  {
LABEL_4:
    self->_dlRfBand = *(fromCopy + 4);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end