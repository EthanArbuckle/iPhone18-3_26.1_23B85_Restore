@interface AWDMETRICSKCellularPowerLogNRCarrierComponentInfoMCarrierComponentInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDuplex:(id)duplex;
- (int)StringAsType:(id)type;
- (int)duplex;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBandwidth:(BOOL)bandwidth;
- (void)setHasDuplex:(BOOL)duplex;
- (void)setHasNarfcn:(BOOL)narfcn;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogNRCarrierComponentInfoMCarrierComponentInfo

- (void)setHasBandwidth:(BOOL)bandwidth
{
  if (bandwidth)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasNarfcn:(BOOL)narfcn
{
  if (narfcn)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)type
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PCC"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"SCC_1"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SCC_2"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"SCC_3"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"SCC_4"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"SCC_5"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"SCC_6"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"SCC_7"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"SCC_8"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"SCC_9"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"SCC_10"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"SCC_11"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"SCC_12"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"SCC_13"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"SCC_14"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"SCC_15"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"SCC_16"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"SCC_17"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"SCC_18"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"SCC_19"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"SCC_20"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"SCC_21"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"SCC_22"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"SCC_23"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"SCC_24"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"SCC_25"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"SCC_26"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"SCC_27"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"SCC_28"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"SCC_29"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"SCC_30"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"SCC_31"])
  {
    v4 = 31;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)duplex
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_duplex;
  }

  else
  {
    return 1;
  }
}

- (void)setHasDuplex:(BOOL)duplex
{
  if (duplex)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsDuplex:(id)duplex
{
  duplexCopy = duplex;
  if ([duplexCopy isEqualToString:@"FDD"])
  {
    v4 = 1;
  }

  else if ([duplexCopy isEqualToString:@"TDD"])
  {
    v4 = 2;
  }

  else if ([duplexCopy isEqualToString:@"SDL"])
  {
    v4 = 3;
  }

  else if ([duplexCopy isEqualToString:@"SUL"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogNRCarrierComponentInfoMCarrierComponentInfo;
  v4 = [(AWDMETRICSKCellularPowerLogNRCarrierComponentInfoMCarrierComponentInfo *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogNRCarrierComponentInfoMCarrierComponentInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_band];
    [dictionary setObject:v5 forKey:@"band"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bandwidth];
  [dictionary setObject:v6 forKey:@"bandwidth"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    type = self->_type;
    if (type >= 0x20)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v9 = off_279A0FA80[type];
    }

    [dictionary setObject:v9 forKey:@"type"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_9:
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_narfcn];
  [dictionary setObject:v7 forKey:@"narfcn"];

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 4) != 0)
  {
LABEL_14:
    v10 = self->_duplex - 1;
    if (v10 >= 4)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_duplex];
    }

    else
    {
      v11 = off_279A0FB80[v10];
    }

    [dictionary setObject:v11 forKey:@"duplex"];
  }

LABEL_18:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    band = self->_band;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  bandwidth = self->_bandwidth;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  narfcn = self->_narfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  type = self->_type;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    duplex = self->_duplex;
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_band;
    *(toCopy + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[3] = self->_bandwidth;
  *(toCopy + 28) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  toCopy[5] = self->_narfcn;
  *(toCopy + 28) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  toCopy[6] = self->_type;
  *(toCopy + 28) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    toCopy[4] = self->_duplex;
    *(toCopy + 28) |= 4u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_band;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_bandwidth;
  *(result + 28) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 5) = self->_narfcn;
  *(result + 28) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 6) = self->_type;
  *(result + 28) |= 0x10u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 4) = self->_duplex;
  *(result + 28) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_band != *(equalCopy + 2))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_bandwidth != *(equalCopy + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 28) & 8) == 0 || self->_narfcn != *(equalCopy + 5))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 28) & 8) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 28) & 0x10) == 0 || self->_type != *(equalCopy + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 28) & 0x10) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(equalCopy + 28) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_duplex != *(equalCopy + 4))
    {
      goto LABEL_26;
    }

    v5 = 1;
  }

LABEL_27:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_band;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_bandwidth;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_narfcn;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_type;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_duplex;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if (v5)
  {
    self->_band = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_bandwidth = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_narfcn = *(fromCopy + 5);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_type = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 28) & 4) != 0)
  {
LABEL_6:
    self->_duplex = *(fromCopy + 4);
    *&self->_has |= 4u;
  }

LABEL_7:
}

@end