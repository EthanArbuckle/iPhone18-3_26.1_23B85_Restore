@interface KCellularLteRadioLinkFailure
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFailCause:(id)a3;
- (int)StringAsRrcState:(id)a3;
- (int)failCause;
- (int)rrcState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBand:(BOOL)a3;
- (void)setHasCoexPolicy:(BOOL)a3;
- (void)setHasFailCause:(BOOL)a3;
- (void)setHasHstState:(BOOL)a3;
- (void)setHasRrcState:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularLteRadioLinkFailure

- (int)failCause
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_failCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFailCause:(BOOL)a3
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

- (int)StringAsFailCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KLTE_RLF_CAUSE_T310_EXP"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KLTE_RLF_CAUSE_RND_ACC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KLTE_RLF_CAUSE_MAX_RLC_RETX"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KLTE_RLF_CAUSE_REEST_T310_EXP"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KLTE_RLF_CAUSE_REEST_RND_ACC"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KLTE_RLF_CAUSE_REEST_MAX_RLC_RETX"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasBand:(BOOL)a3
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

- (void)setHasCoexPolicy:(BOOL)a3
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

- (int)rrcState
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_rrcState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRrcState:(BOOL)a3
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

- (int)StringAsRrcState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KLTE_RRC_STATE_NULL"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_IDLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_ATMPT_CONNECTION"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_CONNECTED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_ENDING"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_ATMPT_OUTBND_MOBILITY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KLTE_RRC_STATE_ATMPT_INBND_MOBILITY"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasHstState:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularLteRadioLinkFailure;
  v4 = [(KCellularLteRadioLinkFailure *)&v8 description];
  v5 = [(KCellularLteRadioLinkFailure *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  failCause = self->_failCause;
  if (failCause >= 6)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_failCause];
  }

  else
  {
    v9 = off_278263210[failCause];
  }

  [v3 setObject:v9 forKey:@"fail_cause"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_band];
  [v3 setObject:v10 forKey:@"band"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_coexPolicy];
  [v3 setObject:v11 forKey:@"coex_policy"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_19:
  rrcState = self->_rrcState;
  if (rrcState >= 7)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rrcState];
  }

  else
  {
    v13 = off_278263240[rrcState];
  }

  [v3 setObject:v13 forKey:@"rrc_state"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_23:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hstState];
  [v3 setObject:v14 forKey:@"hst_state"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_9:

  return v3;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  failCause = self->_failCause;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  band = self->_band;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  coexPolicy = self->_coexPolicy;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  rrcState = self->_rrcState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  hstState = self->_hstState;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 40) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 6) = self->_failCause;
  *(v4 + 40) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 4) = self->_band;
  *(v4 + 40) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v4 + 5) = self->_coexPolicy;
  *(v4 + 40) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v4 + 8) = self->_rrcState;
  *(v4 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  *(v4 + 7) = self->_hstState;
  *(v4 + 40) |= 0x10u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    *(v4 + 9) = self->_subsId;
    *(v4 + 40) |= 0x40u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 40) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_failCause;
  *(result + 40) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 4) = self->_band;
  *(result + 40) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 5) = self->_coexPolicy;
  *(result + 40) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 8) = self->_rrcState;
  *(result + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 7) = self->_hstState;
  *(result + 40) |= 0x10u;
  if ((*&self->_has & 0x40) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 9) = self->_subsId;
  *(result + 40) |= 0x40u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_failCause != *(v4 + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 40) & 8) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_band != *(v4 + 4))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_coexPolicy != *(v4 + 5))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 40) & 0x20) == 0 || self->_rrcState != *(v4 + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 40) & 0x20) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 40) & 0x10) == 0 || self->_hstState != *(v4 + 7))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 40) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  v5 = (*(v4 + 40) & 0x40) == 0;
  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 40) & 0x40) == 0 || self->_subsId != *(v4 + 9))
    {
      goto LABEL_36;
    }

    v5 = 1;
  }

LABEL_37:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_failCause;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_band;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_coexPolicy;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_rrcState;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_hstState;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_subsId;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 40);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_failCause = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 40);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_band = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_coexPolicy = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_rrcState = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_hstState = *(v4 + 7);
  *&self->_has |= 0x10u;
  if ((*(v4 + 40) & 0x40) != 0)
  {
LABEL_8:
    self->_subsId = *(v4 + 9);
    *&self->_has |= 0x40u;
  }

LABEL_9:
}

@end