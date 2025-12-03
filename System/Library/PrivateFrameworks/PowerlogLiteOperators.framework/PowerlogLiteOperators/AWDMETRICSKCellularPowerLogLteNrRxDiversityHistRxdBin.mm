@interface AWDMETRICSKCellularPowerLogLteNrRxDiversityHistRxdBin
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBandGroup:(id)group;
- (int)StringAsCaIndex:(id)index;
- (int)StringAsMcgState:(id)state;
- (int)StringAsRat:(id)rat;
- (int)StringAsRxDivState:(id)state;
- (int)bandGroup;
- (int)caIndex;
- (int)mcgState;
- (int)rat;
- (int)rxDivState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCaIndex:(BOOL)index;
- (void)setHasDurationMs:(BOOL)ms;
- (void)setHasIsEndc:(BOOL)endc;
- (void)setHasMcgCcNum:(BOOL)num;
- (void)setHasMcgState:(BOOL)state;
- (void)setHasRat:(BOOL)rat;
- (void)setHasRxDivState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogLteNrRxDiversityHistRxdBin

- (void)setHasIsEndc:(BOOL)endc
{
  if (endc)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (int)mcgState
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_mcgState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMcgState:(BOOL)state
{
  if (state)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsMcgState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Idle"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [stateCopy isEqualToString:@"Connected"];
  }

  return v4;
}

- (int)rat
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_rat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRat:(BOOL)rat
{
  if (rat)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsRat:(id)rat
{
  ratCopy = rat;
  if ([ratCopy isEqualToString:@"LTE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [ratCopy isEqualToString:@"NR"];
  }

  return v4;
}

- (void)setHasMcgCcNum:(BOOL)num
{
  if (num)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)caIndex
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_caIndex;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCaIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsCaIndex:(id)index
{
  indexCopy = index;
  if ([indexCopy isEqualToString:@"PCC"])
  {
    v4 = 0;
  }

  else if ([indexCopy isEqualToString:@"SCC1"])
  {
    v4 = 1;
  }

  else if ([indexCopy isEqualToString:@"SCC2"])
  {
    v4 = 2;
  }

  else if ([indexCopy isEqualToString:@"SCC3"])
  {
    v4 = 3;
  }

  else if ([indexCopy isEqualToString:@"SCC4"])
  {
    v4 = 4;
  }

  else if ([indexCopy isEqualToString:@"SCC5"])
  {
    v4 = 5;
  }

  else if ([indexCopy isEqualToString:@"SCC6"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)rxDivState
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_rxDivState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRxDivState:(BOOL)state
{
  if (state)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)StringAsRxDivState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"ONE_RX"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"TWO_RX"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"THREE_RX"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"FOUR_RX"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)bandGroup
{
  if (*&self->_has)
  {
    return self->_bandGroup;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsBandGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy isEqualToString:@"Low"])
  {
    v4 = 0;
  }

  else if ([groupCopy isEqualToString:@"Mid"])
  {
    v4 = 1;
  }

  else if ([groupCopy isEqualToString:@"High"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDurationMs:(BOOL)ms
{
  if (ms)
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
  v8.super_class = AWDMETRICSKCellularPowerLogLteNrRxDiversityHistRxdBin;
  v4 = [(AWDMETRICSKCellularPowerLogLteNrRxDiversityHistRxdBin *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogLteNrRxDiversityHistRxdBin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has < 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEndc];
    [dictionary setObject:v7 forKey:@"is_endc"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  mcgState = self->_mcgState;
  if (mcgState)
  {
    if (mcgState == 1)
    {
      v9 = @"Connected";
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_mcgState];
    }
  }

  else
  {
    v9 = @"Idle";
  }

  [dictionary setObject:v9 forKey:@"mcg_state"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_20:
  rat = self->_rat;
  if (rat)
  {
    if (rat == 1)
    {
      v11 = @"NR";
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rat];
    }
  }

  else
  {
    v11 = @"LTE";
  }

  [dictionary setObject:v11 forKey:@"rat"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mcgCcNum];
  [dictionary setObject:v12 forKey:@"mcg_cc_num"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_27:
  caIndex = self->_caIndex;
  if (caIndex >= 7)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_caIndex];
  }

  else
  {
    v14 = off_27825BAA0[caIndex];
  }

  [dictionary setObject:v14 forKey:@"ca_index"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_31:
  rxDivState = self->_rxDivState;
  if (rxDivState >= 4)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rxDivState];
  }

  else
  {
    v16 = off_27825BAD8[rxDivState];
  }

  [dictionary setObject:v16 forKey:@"rx_div_state"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_35:
  bandGroup = self->_bandGroup;
  if (bandGroup >= 3)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_bandGroup];
  }

  else
  {
    v18 = off_27825BAF8[bandGroup];
  }

  [dictionary setObject:v18 forKey:@"band_group"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
  [dictionary setObject:v5 forKey:@"duration_ms"];

LABEL_10:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has < 0)
  {
    isEndc = self->_isEndc;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  mcgState = self->_mcgState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  rat = self->_rat;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  mcgCcNum = self->_mcgCcNum;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  caIndex = self->_caIndex;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  rxDivState = self->_rxDivState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  bandGroup = self->_bandGroup;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has < 0)
  {
    toCopy[36] = self->_isEndc;
    toCopy[40] |= 0x80u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 6) = self->_mcgState;
  toCopy[40] |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(toCopy + 7) = self->_rat;
  toCopy[40] |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(toCopy + 5) = self->_mcgCcNum;
  toCopy[40] |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(toCopy + 3) = self->_caIndex;
  toCopy[40] |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(toCopy + 8) = self->_rxDivState;
  toCopy[40] |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  *(toCopy + 2) = self->_bandGroup;
  toCopy[40] |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    *(toCopy + 4) = self->_durationMs;
    toCopy[40] |= 4u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has < 0)
  {
    *(result + 36) = self->_isEndc;
    *(result + 40) |= 0x80u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_mcgState;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 7) = self->_rat;
  *(result + 40) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 5) = self->_mcgCcNum;
  *(result + 40) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 3) = self->_caIndex;
  *(result + 40) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 8) = self->_rxDivState;
  *(result + 40) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 2) = self->_bandGroup;
  *(result + 40) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 4) = self->_durationMs;
  *(result + 40) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*(equalCopy + 40) & 0x80) == 0)
    {
      goto LABEL_4;
    }

LABEL_44:
    v7 = 0;
    goto LABEL_45;
  }

  if ((*(equalCopy + 40) & 0x80) == 0)
  {
    goto LABEL_44;
  }

  v6 = *(equalCopy + 36);
  if (self->_isEndc)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_44;
  }

LABEL_4:
  if ((*&has & 0x10) != 0)
  {
    if ((*(equalCopy + 40) & 0x10) == 0 || self->_mcgState != *(equalCopy + 6))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 40) & 0x10) != 0)
  {
    goto LABEL_44;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((*(equalCopy + 40) & 0x20) == 0 || self->_rat != *(equalCopy + 7))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 40) & 0x20) != 0)
  {
    goto LABEL_44;
  }

  if ((*&has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_mcgCcNum != *(equalCopy + 5))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
    goto LABEL_44;
  }

  if ((*&has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_caIndex != *(equalCopy + 3))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_44;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((*(equalCopy + 40) & 0x40) == 0 || self->_rxDivState != *(equalCopy + 8))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 40) & 0x40) != 0)
  {
    goto LABEL_44;
  }

  if (*&has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_bandGroup != *(equalCopy + 2))
    {
      goto LABEL_44;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_44;
  }

  v7 = (*(equalCopy + 40) & 4) == 0;
  if ((*&has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_durationMs != *(equalCopy + 4))
    {
      goto LABEL_44;
    }

    v7 = 1;
  }

LABEL_45:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x80000000) != 0)
  {
    v2 = 2654435761 * self->_isEndc;
    if ((*&self->_has & 0x10) == 0)
    {
LABEL_3:
      v3 = 0;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 2654435761 * self->_mcgState;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_rat;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_mcgCcNum;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_caIndex;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_rxDivState;
    if (*&self->_has)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761 * self->_bandGroup;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_durationMs;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if (v5 < 0)
  {
    self->_isEndc = *(fromCopy + 36);
    *&self->_has |= 0x80u;
    v5 = *(fromCopy + 40);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(fromCopy + 40) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_mcgState = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_rat = *(fromCopy + 7);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 40);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_mcgCcNum = *(fromCopy + 5);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 40);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_caIndex = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_rxDivState = *(fromCopy + 8);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 40);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  self->_bandGroup = *(fromCopy + 2);
  *&self->_has |= 1u;
  if ((*(fromCopy + 40) & 4) != 0)
  {
LABEL_9:
    self->_durationMs = *(fromCopy + 4);
    *&self->_has |= 4u;
  }

LABEL_10:
}

@end