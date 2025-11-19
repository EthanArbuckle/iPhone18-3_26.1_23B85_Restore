@interface AWDMETRICSKCellularPowerLogNRCarrierComponentInfoMCarrierComponentInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDuplex:(id)a3;
- (int)StringAsType:(id)a3;
- (int)duplex;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBandwidth:(BOOL)a3;
- (void)setHasDuplex:(BOOL)a3;
- (void)setHasNarfcn:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogNRCarrierComponentInfoMCarrierComponentInfo

- (void)setHasBandwidth:(BOOL)a3
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

- (void)setHasNarfcn:(BOOL)a3
{
  if (a3)
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

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PCC"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SCC_1"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCC_2"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SCC_3"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SCC_4"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SCC_5"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SCC_6"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SCC_7"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SCC_8"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SCC_9"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SCC_10"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SCC_11"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SCC_12"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SCC_13"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SCC_14"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"SCC_15"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SCC_16"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SCC_17"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"SCC_18"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"SCC_19"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"SCC_20"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"SCC_21"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"SCC_22"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"SCC_23"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"SCC_24"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"SCC_25"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"SCC_26"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"SCC_27"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"SCC_28"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"SCC_29"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"SCC_30"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"SCC_31"])
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

- (void)setHasDuplex:(BOOL)a3
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

- (int)StringAsDuplex:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FDD"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TDD"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SDL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SUL"])
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
  v5 = [(AWDMETRICSKCellularPowerLogNRCarrierComponentInfoMCarrierComponentInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_band];
    [v3 setObject:v5 forKey:@"band"];

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
  [v3 setObject:v6 forKey:@"bandwidth"];

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
      v9 = off_27825D070[type];
    }

    [v3 setObject:v9 forKey:@"type"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_9:
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_narfcn];
  [v3 setObject:v7 forKey:@"narfcn"];

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
      v11 = off_27825D170[v10];
    }

    [v3 setObject:v11 forKey:@"duplex"];
  }

LABEL_18:

  return v3;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_band;
    *(v4 + 28) |= 1u;
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

  v4[3] = self->_bandwidth;
  *(v4 + 28) |= 2u;
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
  v4[5] = self->_narfcn;
  *(v4 + 28) |= 8u;
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
  v4[6] = self->_type;
  *(v4 + 28) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v4[4] = self->_duplex;
    *(v4 + 28) |= 4u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_band != *(v4 + 2))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_bandwidth != *(v4 + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 28) & 8) == 0 || self->_narfcn != *(v4 + 5))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 28) & 8) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 28) & 0x10) == 0 || self->_type != *(v4 + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 28) & 0x10) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(v4 + 28) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_duplex != *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if (v5)
  {
    self->_band = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 28);
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

  else if ((*(v4 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_bandwidth = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 28);
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
  self->_narfcn = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 28);
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
  self->_type = *(v4 + 6);
  *&self->_has |= 0x10u;
  if ((*(v4 + 28) & 4) != 0)
  {
LABEL_6:
    self->_duplex = *(v4 + 4);
    *&self->_has |= 4u;
  }

LABEL_7:
}

@end