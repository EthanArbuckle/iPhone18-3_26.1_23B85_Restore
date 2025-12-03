@interface KCellularCdma1XRrState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCurrNormalizedState:(id)state;
- (int)currNormalizedState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCurrCpState:(BOOL)state;
- (void)setHasCurrNormalizedState:(BOOL)state;
- (void)setHasPrevCpState:(BOOL)state;
- (void)setHasPrevStateDurMs:(BOOL)ms;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation KCellularCdma1XRrState

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasPrevCpState:(BOOL)state
{
  if (state)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasCurrCpState:(BOOL)state
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

- (void)setHasPrevStateDurMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)currNormalizedState
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_currNormalizedState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCurrNormalizedState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsCurrNormalizedState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"KPS_STATE_OFF_OR_AIRPLANE_MODE"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"KPS_STATE_OOS_IDLE"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"KPS_STATE_OOS_NETWORK_SCAN"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"KPS_STATE_IDLE"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"KPS_STATE_ESTABLISHING"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"KPS_STATE_CONNECTED"])
  {
    v4 = 5;
  }

  else if ([stateCopy isEqualToString:@"KPS_STATE_RELEASING"])
  {
    v4 = 6;
  }

  else if ([stateCopy isEqualToString:@"KPS_STATE_TX_RX_SUSPENDED"])
  {
    v4 = 7;
  }

  else if ([stateCopy isEqualToString:@"KPS_STATE_OOS_SRLTE_NETWORK_SCAN"])
  {
    v4 = 8;
  }

  else if ([stateCopy isEqualToString:@"KPS_STATE_OOS_HYBRID_NETWORK_SCAN"])
  {
    v4 = 9;
  }

  else if ([stateCopy isEqualToString:@"KPS_STATE_SRLTE_IDLE"])
  {
    v4 = 10;
  }

  else if ([stateCopy isEqualToString:@"KPS_STATE_HYBRID_IDLE"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularCdma1XRrState;
  v4 = [(KCellularCdma1XRrState *)&v8 description];
  dictionaryRepresentation = [(KCellularCdma1XRrState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [dictionary setObject:v6 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevCpState];
  [dictionary setObject:v7 forKey:@"prev_cp_state"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevStateDurMs];
    [dictionary setObject:v9 forKey:@"prev_state_dur_ms"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_13:
    currNormalizedState = self->_currNormalizedState;
    if (currNormalizedState >= 0xC)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_currNormalizedState];
    }

    else
    {
      v11 = off_27825D778[currNormalizedState];
    }

    [dictionary setObject:v11 forKey:@"curr_normalized_state"];

    goto LABEL_17;
  }

LABEL_11:
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_currCpState];
  [dictionary setObject:v8 forKey:@"curr_cp_state"];

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  prevCpState = self->_prevCpState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  currCpState = self->_currCpState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  prevStateDurMs = self->_prevStateDurMs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    currNormalizedState = self->_currNormalizedState;
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 36) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 8) = self->_subsId;
  *(toCopy + 36) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(toCopy + 6) = self->_prevCpState;
  *(toCopy + 36) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(toCopy + 4) = self->_currCpState;
  *(toCopy + 36) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(toCopy + 7) = self->_prevStateDurMs;
  *(toCopy + 36) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    *(toCopy + 5) = self->_currNormalizedState;
    *(toCopy + 36) |= 4u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 36) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_subsId;
  *(result + 36) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 6) = self->_prevCpState;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 4) = self->_currCpState;
  *(result + 36) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 7) = self->_prevStateDurMs;
  *(result + 36) |= 0x10u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 5) = self->_currNormalizedState;
  *(result + 36) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 36) & 0x20) == 0 || self->_subsId != *(equalCopy + 8))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 0x20) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) == 0 || self->_prevCpState != *(equalCopy + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 8) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_currCpState != *(equalCopy + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 36) & 0x10) == 0 || self->_prevStateDurMs != *(equalCopy + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(equalCopy + 36) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_currNormalizedState != *(equalCopy + 5))
    {
      goto LABEL_31;
    }

    v5 = 1;
  }

LABEL_32:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_subsId;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_prevCpState;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_currCpState;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_prevStateDurMs;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_currNormalizedState;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(fromCopy + 36) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_subsId = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 36);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_prevCpState = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 36);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_currCpState = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_prevStateDurMs = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 36) & 4) != 0)
  {
LABEL_7:
    self->_currNormalizedState = *(fromCopy + 5);
    *&self->_has |= 4u;
  }

LABEL_8:
}

@end