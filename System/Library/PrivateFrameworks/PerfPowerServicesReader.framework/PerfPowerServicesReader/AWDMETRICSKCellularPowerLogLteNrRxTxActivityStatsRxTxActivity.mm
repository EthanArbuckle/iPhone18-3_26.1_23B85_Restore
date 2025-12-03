@interface AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActState:(id)state;
- (int)StringAsCaState:(id)state;
- (int)StringAsRatDpl:(id)dpl;
- (int)actState;
- (int)caState;
- (int)ratDpl;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCaState:(BOOL)state;
- (void)setHasCount:(BOOL)count;
- (void)setHasRatDpl:(BOOL)dpl;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity

- (int)ratDpl
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_ratDpl;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRatDpl:(BOOL)dpl
{
  if (dpl)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsRatDpl:(id)dpl
{
  dplCopy = dpl;
  if ([dplCopy isEqualToString:@"DPL_LTE"])
  {
    v4 = 0;
  }

  else if ([dplCopy isEqualToString:@"DPL_LTE_ENDC"])
  {
    v4 = 1;
  }

  else if ([dplCopy isEqualToString:@"DPL_NR_SA"])
  {
    v4 = 2;
  }

  else if ([dplCopy isEqualToString:@"DPL_NR_ENDC"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)caState
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_caState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCaState:(BOOL)state
{
  if (state)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsCaState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"CA_PCELL_ONLY"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"CA_ONE_SCELL_ONLY"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"CA_MULTI_CELLS"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)actState
{
  if (*&self->_has)
  {
    return self->_actState;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsActState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"RX_ONLY"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"TX_ONLY"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"RX_TX"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"TDD_UL_SF_NO_TX"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"NO_RX_NO_TX_WITH_DCI"])
  {
    v4 = 5;
  }

  else if ([stateCopy isEqualToString:@"NO_RX_NO_TX_WITHOUT_DCI"])
  {
    v4 = 6;
  }

  else if ([stateCopy isEqualToString:@"NO_RX_NO_TX_NO_DCI_DECODING"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasCount:(BOOL)count
{
  if (count)
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
  v8.super_class = AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity;
  v4 = [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    ratDpl = self->_ratDpl;
    if (ratDpl >= 4)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ratDpl];
    }

    else
    {
      v8 = off_279A11540[ratDpl];
    }

    [dictionary setObject:v8 forKey:@"rat_dpl"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  caState = self->_caState;
  if (caState >= 3)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_caState];
  }

  else
  {
    v10 = off_279A11560[caState];
  }

  [dictionary setObject:v10 forKey:@"ca_state"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  v11 = self->_actState - 1;
  if (v11 >= 7)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_actState];
  }

  else
  {
    v12 = off_279A11578[v11];
  }

  [dictionary setObject:v12 forKey:@"act_state"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_count];
  [dictionary setObject:v5 forKey:@"count"];

LABEL_6:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    ratDpl = self->_ratDpl;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  caState = self->_caState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  actState = self->_actState;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    count = self->_count;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[5] = self->_ratDpl;
    *(toCopy + 24) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[3] = self->_caState;
  *(toCopy + 24) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  toCopy[2] = self->_actState;
  *(toCopy + 24) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    toCopy[4] = self->_count;
    *(toCopy + 24) |= 4u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 5) = self->_ratDpl;
    *(result + 24) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  *(result + 3) = self->_caState;
  *(result + 24) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 2) = self->_actState;
  *(result + 24) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 4) = self->_count;
  *(result + 24) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 24) & 8) == 0 || self->_ratDpl != *(equalCopy + 5))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 8) != 0)
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_caState != *(equalCopy + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_actState != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_21;
  }

  v5 = (*(equalCopy + 24) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0 || self->_count != *(equalCopy + 4))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v2 = 2654435761 * self->_ratDpl;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_caState;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
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
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_actState;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_count;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 8) != 0)
  {
    self->_ratDpl = *(fromCopy + 5);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_caState = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 24);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_actState = *(fromCopy + 2);
  *&self->_has |= 1u;
  if ((*(fromCopy + 24) & 4) != 0)
  {
LABEL_5:
    self->_count = *(fromCopy + 4);
    *&self->_has |= 4u;
  }

LABEL_6:
}

@end