@interface KCellularProtocolStackState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCurrState:(id)state;
- (int)StringAsPrevState:(id)state;
- (int)currState;
- (int)prevState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCurrState:(BOOL)state;
- (void)setHasPrevState:(BOOL)state;
- (void)setHasPrevStateDurMs:(BOOL)ms;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation KCellularProtocolStackState

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)prevState
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_prevState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPrevState:(BOOL)state
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

- (int)StringAsPrevState:(id)state
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

- (int)currState
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_currState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCurrState:(BOOL)state
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

- (int)StringAsCurrState:(id)state
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

- (void)setHasPrevStateDurMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularProtocolStackState;
  v4 = [(KCellularProtocolStackState *)&v8 description];
  dictionaryRepresentation = [(KCellularProtocolStackState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [dictionary setObject:v8 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_12:
  prevState = self->_prevState;
  if (prevState >= 0xC)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prevState];
  }

  else
  {
    v10 = off_27825E898[prevState];
  }

  [dictionary setObject:v10 forKey:@"prev_state"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_16:
  currState = self->_currState;
  if (currState >= 0xC)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_currState];
  }

  else
  {
    v12 = off_27825E898[currState];
  }

  [dictionary setObject:v12 forKey:@"curr_state"];

  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevStateDurMs];
  [dictionary setObject:v5 forKey:@"prev_state_dur_ms"];

LABEL_7:

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
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  prevState = self->_prevState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  currState = self->_currState;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    prevStateDurMs = self->_prevStateDurMs;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 32) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 7) = self->_subsId;
  *(toCopy + 32) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(toCopy + 5) = self->_prevState;
  *(toCopy + 32) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  *(toCopy + 4) = self->_currState;
  *(toCopy + 32) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    *(toCopy + 6) = self->_prevStateDurMs;
    *(toCopy + 32) |= 8u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_subsId;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 5) = self->_prevState;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 4) = self->_currState;
  *(result + 32) |= 2u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 6) = self->_prevStateDurMs;
  *(result + 32) |= 8u;
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
    if ((*(equalCopy + 32) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 32) & 0x10) == 0 || self->_subsId != *(equalCopy + 7))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 32) & 0x10) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_prevState != *(equalCopy + 5))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_currState != *(equalCopy + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(equalCopy + 32) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 32) & 8) == 0 || self->_prevStateDurMs != *(equalCopy + 6))
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
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_subsId;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_prevState;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_currState;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_prevStateDurMs;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 32);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_subsId = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_prevState = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 32);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_currState = *(fromCopy + 4);
  *&self->_has |= 2u;
  if ((*(fromCopy + 32) & 8) != 0)
  {
LABEL_6:
    self->_prevStateDurMs = *(fromCopy + 6);
    *&self->_has |= 8u;
  }

LABEL_7:
}

@end