@interface AWDMETRICSKCellularPowerLogLteCarrierComponentInfoMCarrierComponentInfo
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
- (void)setHasEarfcn:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogLteCarrierComponentInfoMCarrierComponentInfo

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

- (void)setHasEarfcn:(BOOL)a3
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
    return 0;
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
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"TDD"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogLteCarrierComponentInfoMCarrierComponentInfo;
  v4 = [(AWDMETRICSKCellularPowerLogLteCarrierComponentInfoMCarrierComponentInfo *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogLteCarrierComponentInfoMCarrierComponentInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_band];
    [v3 setObject:v6 forKey:@"band"];

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

  *&v4 = self->_bandwidth;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v7 forKey:@"bandwidth"];

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
    if (type >= 8)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v10 = off_279A0F728[type];
    }

    [v3 setObject:v10 forKey:@"type"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_9:
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_earfcn];
  [v3 setObject:v8 forKey:@"earfcn"];

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 4) != 0)
  {
LABEL_14:
    duplex = self->_duplex;
    if (duplex)
    {
      if (duplex == 1)
      {
        v12 = @"TDD";
      }

      else
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_duplex];
      }
    }

    else
    {
      v12 = @"FDD";
    }

    [v3 setObject:v12 forKey:@"duplex"];
  }

LABEL_20:

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
  PBDataWriterWriteFloatField();
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
  earfcn = self->_earfcn;
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

  v4[3] = LODWORD(self->_bandwidth);
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
  v4[5] = self->_earfcn;
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

  *(result + 3) = LODWORD(self->_bandwidth);
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
  *(result + 5) = self->_earfcn;
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
    if ((*(v4 + 28) & 8) == 0 || self->_earfcn != *(v4 + 5))
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
    v4 = 2654435761 * self->_band;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  bandwidth = self->_bandwidth;
  if (bandwidth < 0.0)
  {
    bandwidth = -bandwidth;
  }

  *v2.i32 = floorf(bandwidth + 0.5);
  v6 = (bandwidth - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v8 = 2654435761u * *vbslq_s8(v7, v3, v2).i32;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabsf(v6);
  }

LABEL_9:
  if ((*&self->_has & 8) == 0)
  {
    v9 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v10 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = 0;
    return v8 ^ v4 ^ v9 ^ v10 ^ v11;
  }

  v9 = 2654435761 * self->_earfcn;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v10 = 2654435761 * self->_type;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v11 = 2654435761 * self->_duplex;
  return v8 ^ v4 ^ v9 ^ v10 ^ v11;
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
  self->_earfcn = *(v4 + 5);
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