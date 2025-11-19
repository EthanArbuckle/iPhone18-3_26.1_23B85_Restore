@interface AWDMETRICSKCellularPowerLogLteNrRxDiversityHistRxdBin
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBandGroup:(id)a3;
- (int)StringAsCaIndex:(id)a3;
- (int)StringAsMcgState:(id)a3;
- (int)StringAsRat:(id)a3;
- (int)StringAsRxDivState:(id)a3;
- (int)bandGroup;
- (int)caIndex;
- (int)mcgState;
- (int)rat;
- (int)rxDivState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCaIndex:(BOOL)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasIsEndc:(BOOL)a3;
- (void)setHasMcgCcNum:(BOOL)a3;
- (void)setHasMcgState:(BOOL)a3;
- (void)setHasRat:(BOOL)a3;
- (void)setHasRxDivState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogLteNrRxDiversityHistRxdBin

- (void)setHasIsEndc:(BOOL)a3
{
  if (a3)
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

- (void)setHasMcgState:(BOOL)a3
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

- (int)StringAsMcgState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Idle"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Connected"];
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

- (void)setHasRat:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LTE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"NR"];
  }

  return v4;
}

- (void)setHasMcgCcNum:(BOOL)a3
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

- (void)setHasCaIndex:(BOOL)a3
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

- (int)StringAsCaIndex:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PCC"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SCC1"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCC2"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SCC3"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SCC4"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SCC5"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SCC6"])
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

- (void)setHasRxDivState:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)StringAsRxDivState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ONE_RX"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"TWO_RX"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"THREE_RX"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"FOUR_RX"])
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

- (int)StringAsBandGroup:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Low"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Mid"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"High"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDurationMs:(BOOL)a3
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
  v8.super_class = AWDMETRICSKCellularPowerLogLteNrRxDiversityHistRxdBin;
  v4 = [(AWDMETRICSKCellularPowerLogLteNrRxDiversityHistRxdBin *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogLteNrRxDiversityHistRxdBin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has < 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEndc];
    [v3 setObject:v7 forKey:@"is_endc"];

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

  [v3 setObject:v9 forKey:@"mcg_state"];

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

  [v3 setObject:v11 forKey:@"rat"];

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
  [v3 setObject:v12 forKey:@"mcg_cc_num"];

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
    v14 = off_279A0F788[caIndex];
  }

  [v3 setObject:v14 forKey:@"ca_index"];

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
    v16 = off_279A0F7C0[rxDivState];
  }

  [v3 setObject:v16 forKey:@"rx_div_state"];

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
    v18 = off_279A0F7E0[bandGroup];
  }

  [v3 setObject:v18 forKey:@"band_group"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
  [v3 setObject:v5 forKey:@"duration_ms"];

LABEL_10:

  return v3;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has < 0)
  {
    v4[36] = self->_isEndc;
    v4[40] |= 0x80u;
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

  *(v4 + 6) = self->_mcgState;
  v4[40] |= 0x10u;
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
  *(v4 + 7) = self->_rat;
  v4[40] |= 0x20u;
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
  *(v4 + 5) = self->_mcgCcNum;
  v4[40] |= 8u;
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
  *(v4 + 3) = self->_caIndex;
  v4[40] |= 2u;
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
  *(v4 + 8) = self->_rxDivState;
  v4[40] |= 0x40u;
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
  *(v4 + 2) = self->_bandGroup;
  v4[40] |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    *(v4 + 4) = self->_durationMs;
    v4[40] |= 4u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*(v4 + 40) & 0x80) == 0)
    {
      goto LABEL_4;
    }

LABEL_44:
    v7 = 0;
    goto LABEL_45;
  }

  if ((*(v4 + 40) & 0x80) == 0)
  {
    goto LABEL_44;
  }

  v6 = *(v4 + 36);
  if (self->_isEndc)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_44;
  }

LABEL_4:
  if ((*&has & 0x10) != 0)
  {
    if ((*(v4 + 40) & 0x10) == 0 || self->_mcgState != *(v4 + 6))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 40) & 0x10) != 0)
  {
    goto LABEL_44;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((*(v4 + 40) & 0x20) == 0 || self->_rat != *(v4 + 7))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 40) & 0x20) != 0)
  {
    goto LABEL_44;
  }

  if ((*&has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_mcgCcNum != *(v4 + 5))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 40) & 8) != 0)
  {
    goto LABEL_44;
  }

  if ((*&has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_caIndex != *(v4 + 3))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_44;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((*(v4 + 40) & 0x40) == 0 || self->_rxDivState != *(v4 + 8))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 40) & 0x40) != 0)
  {
    goto LABEL_44;
  }

  if (*&has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_bandGroup != *(v4 + 2))
    {
      goto LABEL_44;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_44;
  }

  v7 = (*(v4 + 40) & 4) == 0;
  if ((*&has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_durationMs != *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if (v5 < 0)
  {
    self->_isEndc = *(v4 + 36);
    *&self->_has |= 0x80u;
    v5 = *(v4 + 40);
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

  else if ((*(v4 + 40) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_mcgState = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 40);
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
  self->_rat = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 40);
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
  self->_mcgCcNum = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 40);
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
  self->_caIndex = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 40);
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
  self->_rxDivState = *(v4 + 8);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 40);
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
  self->_bandGroup = *(v4 + 2);
  *&self->_has |= 1u;
  if ((*(v4 + 40) & 4) != 0)
  {
LABEL_9:
    self->_durationMs = *(v4 + 4);
    *&self->_has |= 4u;
  }

LABEL_10:
}

@end