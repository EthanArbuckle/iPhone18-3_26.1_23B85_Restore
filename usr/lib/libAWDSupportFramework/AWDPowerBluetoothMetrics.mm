@interface AWDPowerBluetoothMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBtConnectedDuration:(BOOL)a3;
- (void)setHasBtOthersDuration:(BOOL)a3;
- (void)setHasBtRxDuration:(BOOL)a3;
- (void)setHasBtSleepDuration:(BOOL)a3;
- (void)setHasBtTotalPowerMicroWatt:(BOOL)a3;
- (void)setHasBtTxDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDPowerBluetoothMetrics

- (void)setHasBtConnectedDuration:(BOOL)a3
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

- (void)setHasBtTxDuration:(BOOL)a3
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

- (void)setHasBtRxDuration:(BOOL)a3
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

- (void)setHasBtSleepDuration:(BOOL)a3
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

- (void)setHasBtOthersDuration:(BOOL)a3
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

- (void)setHasBtTotalPowerMicroWatt:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPowerBluetoothMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPowerBluetoothMetrics description](&v3, sel_description), -[AWDPowerBluetoothMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btConnectedDuration), @"btConnectedDuration"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btTxDuration), @"btTxDuration"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btRxDuration), @"btRxDuration"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btOthersDuration), @"btOthersDuration"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return v3;
    }

    goto LABEL_8;
  }

LABEL_14:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btSleepDuration), @"btSleepDuration"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 0x20) != 0)
  {
LABEL_8:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btTotalPowerMicroWatt), @"btTotalPowerMicroWatt"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
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

  btConnectedDuration = self->_btConnectedDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  btTxDuration = self->_btTxDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  btRxDuration = self->_btRxDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    btOthersDuration = self->_btOthersDuration;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_13:
  btSleepDuration = self->_btSleepDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((has & 0x20) == 0)
  {
    return;
  }

LABEL_15:
  btTotalPowerMicroWatt = self->_btTotalPowerMicroWatt;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 40) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
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

  *(a3 + 4) = self->_btConnectedDuration;
  *(a3 + 40) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(a3 + 9) = self->_btTxDuration;
  *(a3 + 40) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a3 + 6) = self->_btRxDuration;
  *(a3 + 40) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a3 + 7) = self->_btSleepDuration;
  *(a3 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      return;
    }

LABEL_15:
    *(a3 + 8) = self->_btTotalPowerMicroWatt;
    *(a3 + 40) |= 0x20u;
    return;
  }

LABEL_14:
  *(a3 + 5) = self->_btOthersDuration;
  *(a3 + 40) |= 4u;
  if ((*&self->_has & 0x20) != 0)
  {
    goto LABEL_15;
  }
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
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
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

  *(result + 4) = self->_btConnectedDuration;
  *(result + 40) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 9) = self->_btTxDuration;
  *(result + 40) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 6) = self->_btRxDuration;
  *(result + 40) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 7) = self->_btSleepDuration;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 5) = self->_btOthersDuration;
  *(result + 40) |= 4u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 8) = self->_btTotalPowerMicroWatt;
  *(result + 40) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_36;
      }
    }

    else if (*(a3 + 40))
    {
LABEL_36:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 40) & 2) == 0 || self->_btConnectedDuration != *(a3 + 4))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 40) & 2) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(a3 + 40) & 0x40) == 0 || self->_btTxDuration != *(a3 + 9))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 40) & 0x40) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 40) & 8) == 0 || self->_btRxDuration != *(a3 + 6))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 40) & 8) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 40) & 0x10) == 0 || self->_btSleepDuration != *(a3 + 7))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 40) & 0x10) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 40) & 4) == 0 || self->_btOthersDuration != *(a3 + 5))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 40) & 4) != 0)
    {
      goto LABEL_36;
    }

    LOBYTE(v5) = (*(a3 + 40) & 0x20) == 0;
    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 40) & 0x20) == 0 || self->_btTotalPowerMicroWatt != *(a3 + 8))
      {
        goto LABEL_36;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_btConnectedDuration;
      if ((*&self->_has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
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
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_btTxDuration;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_btRxDuration;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_btSleepDuration;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_btOthersDuration;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_btTotalPowerMicroWatt;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 40);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 40);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a3 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_btConnectedDuration = *(a3 + 4);
  *&self->_has |= 2u;
  v3 = *(a3 + 40);
  if ((v3 & 0x40) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_btTxDuration = *(a3 + 9);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 40);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_btRxDuration = *(a3 + 6);
  *&self->_has |= 8u;
  v3 = *(a3 + 40);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_btSleepDuration = *(a3 + 7);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 40);
  if ((v3 & 4) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      return;
    }

LABEL_15:
    self->_btTotalPowerMicroWatt = *(a3 + 8);
    *&self->_has |= 0x20u;
    return;
  }

LABEL_14:
  self->_btOthersDuration = *(a3 + 5);
  *&self->_has |= 4u;
  if ((*(a3 + 40) & 0x20) != 0)
  {
    goto LABEL_15;
  }
}

@end