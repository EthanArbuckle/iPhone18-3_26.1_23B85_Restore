@interface KCellularTdsRrcState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNewRrcState:(id)a3;
- (int)StringAsRrcState:(id)a3;
- (int)newRrcState;
- (int)rrcState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNewRrcState:(BOOL)a3;
- (void)setHasPrevStateDurMs:(BOOL)a3;
- (void)setHasRrcState:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularTdsRrcState

- (int)rrcState
{
  if ((*&self->_has & 8) != 0)
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsRrcState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KTDS_RRC_STATE_CELL_DCH"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_CELL_FACH"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_CELL_PCH"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_URA_PCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_IDLE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_WAIT"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_CELL_BARRED"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_NULL"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_INACTIVE"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)newRrcState
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_newRrcState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNewRrcState:(BOOL)a3
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

- (int)StringAsNewRrcState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KTDS_RRC_STATE_CELL_DCH"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_CELL_FACH"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_CELL_PCH"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_URA_PCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_IDLE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_WAIT"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_CELL_BARRED"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_NULL"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"KTDS_RRC_STATE_INACTIVE"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPrevStateDurMs:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularTdsRrcState;
  v4 = [(KCellularTdsRrcState *)&v8 description];
  v5 = [(KCellularTdsRrcState *)self dictionaryRepresentation];
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

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  rrcState = self->_rrcState;
  if (rrcState <= 3)
  {
    if (rrcState <= 1)
    {
      if (!rrcState)
      {
        v9 = @"KTDS_RRC_STATE_CELL_DCH";
        goto LABEL_31;
      }

      if (rrcState == 1)
      {
        v9 = @"KTDS_RRC_STATE_CELL_FACH";
        goto LABEL_31;
      }

LABEL_30:
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rrcState];
      goto LABEL_31;
    }

    if (rrcState == 2)
    {
      v9 = @"KTDS_RRC_STATE_CELL_PCH";
    }

    else
    {
      v9 = @"KTDS_RRC_STATE_URA_PCH";
    }
  }

  else
  {
    if (rrcState > 5)
    {
      switch(rrcState)
      {
        case 6:
          v9 = @"KTDS_RRC_STATE_CELL_BARRED";
          goto LABEL_31;
        case 7:
          v9 = @"KTDS_RRC_STATE_NULL";
          goto LABEL_31;
        case 255:
          v9 = @"KTDS_RRC_STATE_INACTIVE";
          goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (rrcState == 4)
    {
      v9 = @"KTDS_RRC_STATE_IDLE";
    }

    else
    {
      v9 = @"KTDS_RRC_STATE_WAIT";
    }
  }

LABEL_31:
  [v3 setObject:v9 forKey:@"rrc_state"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_32:
  newRrcState = self->_newRrcState;
  if (newRrcState <= 3)
  {
    if (newRrcState <= 1)
    {
      if (!newRrcState)
      {
        v11 = @"KTDS_RRC_STATE_CELL_DCH";
        goto LABEL_52;
      }

      if (newRrcState == 1)
      {
        v11 = @"KTDS_RRC_STATE_CELL_FACH";
        goto LABEL_52;
      }

LABEL_51:
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_newRrcState];
      goto LABEL_52;
    }

    if (newRrcState == 2)
    {
      v11 = @"KTDS_RRC_STATE_CELL_PCH";
    }

    else
    {
      v11 = @"KTDS_RRC_STATE_URA_PCH";
    }
  }

  else
  {
    if (newRrcState > 5)
    {
      switch(newRrcState)
      {
        case 6:
          v11 = @"KTDS_RRC_STATE_CELL_BARRED";
          goto LABEL_52;
        case 7:
          v11 = @"KTDS_RRC_STATE_NULL";
          goto LABEL_52;
        case 255:
          v11 = @"KTDS_RRC_STATE_INACTIVE";
          goto LABEL_52;
      }

      goto LABEL_51;
    }

    if (newRrcState == 4)
    {
      v11 = @"KTDS_RRC_STATE_IDLE";
    }

    else
    {
      v11 = @"KTDS_RRC_STATE_WAIT";
    }
  }

LABEL_52:
  [v3 setObject:v11 forKey:@"new_rrc_state"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_53:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevStateDurMs];
  [v3 setObject:v12 forKey:@"prev_state_dur_ms"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_7:

  return v3;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
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

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  rrcState = self->_rrcState;
  PBDataWriterWriteInt32Field();
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
  newRrcState = self->_newRrcState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  prevStateDurMs = self->_prevStateDurMs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 32) |= 1u;
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

  *(v4 + 6) = self->_rrcState;
  *(v4 + 32) |= 8u;
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
  *(v4 + 4) = self->_newRrcState;
  *(v4 + 32) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  *(v4 + 5) = self->_prevStateDurMs;
  *(v4 + 32) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(v4 + 7) = self->_subsId;
    *(v4 + 32) |= 0x10u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_rrcState;
  *(result + 32) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 4) = self->_newRrcState;
  *(result + 32) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 5) = self->_prevStateDurMs;
  *(result + 32) |= 4u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 7) = self->_subsId;
  *(result + 32) |= 0x10u;
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
    if ((*(v4 + 32) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) == 0 || self->_rrcState != *(v4 + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 32) & 8) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_newRrcState != *(v4 + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_prevStateDurMs != *(v4 + 5))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(v4 + 32) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 32) & 0x10) == 0 || self->_subsId != *(v4 + 7))
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
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_rrcState;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
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
    v4 = 2654435761 * self->_newRrcState;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_prevStateDurMs;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_subsId;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_rrcState = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 32);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_newRrcState = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_prevStateDurMs = *(v4 + 5);
  *&self->_has |= 4u;
  if ((*(v4 + 32) & 0x10) != 0)
  {
LABEL_6:
    self->_subsId = *(v4 + 7);
    *&self->_has |= 0x10u;
  }

LABEL_7:
}

@end