@interface AWDMETRICSKCellularPowerLogLteCarrierComponentInfoMCarrierComponentInfo
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
- (void)setHasEarfcn:(BOOL)earfcn;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogLteCarrierComponentInfoMCarrierComponentInfo

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

- (void)setHasEarfcn:(BOOL)earfcn
{
  if (earfcn)
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
    v4 = 0;
  }

  else
  {
    v4 = [duplexCopy isEqualToString:@"TDD"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogLteCarrierComponentInfoMCarrierComponentInfo;
  v4 = [(AWDMETRICSKCellularPowerLogLteCarrierComponentInfoMCarrierComponentInfo *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogLteCarrierComponentInfoMCarrierComponentInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_band];
    [dictionary setObject:v6 forKey:@"band"];

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
  [dictionary setObject:v7 forKey:@"bandwidth"];

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
      v10 = off_27825C558[type];
    }

    [dictionary setObject:v10 forKey:@"type"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_9:
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_earfcn];
  [dictionary setObject:v8 forKey:@"earfcn"];

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

    [dictionary setObject:v12 forKey:@"duplex"];
  }

LABEL_20:

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

  toCopy[3] = LODWORD(self->_bandwidth);
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
  toCopy[5] = self->_earfcn;
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
    if ((*(equalCopy + 28) & 8) == 0 || self->_earfcn != *(equalCopy + 5))
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
  self->_earfcn = *(fromCopy + 5);
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