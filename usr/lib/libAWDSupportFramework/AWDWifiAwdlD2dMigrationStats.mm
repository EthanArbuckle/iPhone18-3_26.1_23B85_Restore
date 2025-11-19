@interface AWDWifiAwdlD2dMigrationStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAvgCCA:(BOOL)a3;
- (void)setHasChannel:(BOOL)a3;
- (void)setHasMigrationRole:(BOOL)a3;
- (void)setHasPeerRssi:(BOOL)a3;
- (void)setHasSessionDuration:(BOOL)a3;
- (void)setHasTxBytes:(BOOL)a3;
- (void)setHasTxFailureCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWifiAwdlD2dMigrationStats

- (void)setHasSessionDuration:(BOOL)a3
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

- (void)setHasChannel:(BOOL)a3
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

- (void)setHasPeerRssi:(BOOL)a3
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

- (void)setHasTxFailureCount:(BOOL)a3
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

- (void)setHasTxBytes:(BOOL)a3
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

- (void)setHasMigrationRole:(BOOL)a3
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

- (void)setHasAvgCCA:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWifiAwdlD2dMigrationStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWifiAwdlD2dMigrationStats description](&v3, sel_description), -[AWDWifiAwdlD2dMigrationStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sessionDuration), @"sessionDuration"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channel), @"channel"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxBytes), @"rxBytes"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_peerRssi), @"peerRssi"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txFailureCount), @"txFailureCount"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_migrationRole), @"migrationRole"}];
    if ((*&self->_has & 8) == 0)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txBytes), @"txBytes"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((has & 8) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_avgCCA), @"avgCCA"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    sessionDuration = self->_sessionDuration;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  channel = self->_channel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  rxBytes = self->_rxBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  peerRssi = self->_peerRssi;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  txFailureCount = self->_txFailureCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    migrationRole = self->_migrationRole;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  txBytes = self->_txBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_17:
  avgCCA = self->_avgCCA;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_sessionDuration;
    *(a3 + 52) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  *(a3 + 9) = self->_channel;
  *(a3 + 52) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a3 + 1) = self->_rxBytes;
  *(a3 + 52) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a3 + 11) = self->_peerRssi;
  *(a3 + 52) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a3 + 12) = self->_txFailureCount;
  *(a3 + 52) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 3) = self->_txBytes;
  *(a3 + 52) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      return;
    }

LABEL_17:
    *(a3 + 8) = self->_avgCCA;
    *(a3 + 52) |= 8u;
    return;
  }

LABEL_16:
  *(a3 + 10) = self->_migrationRole;
  *(a3 + 52) |= 0x20u;
  if ((*&self->_has & 8) != 0)
  {
    goto LABEL_17;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_sessionDuration;
    *(result + 52) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  *(result + 9) = self->_channel;
  *(result + 52) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 1) = self->_rxBytes;
  *(result + 52) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 11) = self->_peerRssi;
  *(result + 52) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 12) = self->_txFailureCount;
  *(result + 52) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 3) = self->_txBytes;
  *(result + 52) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 10) = self->_migrationRole;
  *(result + 52) |= 0x20u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 8) = self->_avgCCA;
  *(result + 52) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 52) & 2) == 0 || self->_sessionDuration != *(a3 + 2))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 52) & 2) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 52) & 0x10) == 0 || self->_channel != *(a3 + 9))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 52) & 0x10) != 0)
    {
      goto LABEL_41;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 52) & 1) == 0 || self->_rxBytes != *(a3 + 1))
      {
        goto LABEL_41;
      }
    }

    else if (*(a3 + 52))
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(a3 + 52) & 0x40) == 0 || self->_peerRssi != *(a3 + 11))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 52) & 0x40) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x80) != 0)
    {
      if ((*(a3 + 52) & 0x80) == 0 || self->_txFailureCount != *(a3 + 12))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 52) & 0x80) != 0)
    {
LABEL_41:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 52) & 4) == 0 || self->_txBytes != *(a3 + 3))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 52) & 4) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 52) & 0x20) == 0 || self->_migrationRole != *(a3 + 10))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 52) & 0x20) != 0)
    {
      goto LABEL_41;
    }

    LOBYTE(v5) = (*(a3 + 52) & 8) == 0;
    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 52) & 8) == 0 || self->_avgCCA != *(a3 + 8))
      {
        goto LABEL_41;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761u * self->_sessionDuration;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_channel;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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
  if (*&self->_has)
  {
LABEL_4:
    v4 = 2654435761u * self->_rxBytes;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_peerRssi;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_txFailureCount;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    v7 = 2654435761u * self->_txBytes;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761 * self->_migrationRole;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_avgCCA;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 52);
  if ((v3 & 2) != 0)
  {
    self->_sessionDuration = *(a3 + 2);
    *&self->_has |= 2u;
    v3 = *(a3 + 52);
    if ((v3 & 0x10) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a3 + 52) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_channel = *(a3 + 9);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 52);
  if ((v3 & 1) == 0)
  {
LABEL_4:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_rxBytes = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 52);
  if ((v3 & 0x40) == 0)
  {
LABEL_5:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_peerRssi = *(a3 + 11);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 52);
  if ((v3 & 0x80) == 0)
  {
LABEL_6:
    if ((v3 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_txFailureCount = *(a3 + 12);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 52);
  if ((v3 & 4) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_txBytes = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 52);
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 8) == 0)
    {
      return;
    }

LABEL_17:
    self->_avgCCA = *(a3 + 8);
    *&self->_has |= 8u;
    return;
  }

LABEL_16:
  self->_migrationRole = *(a3 + 10);
  *&self->_has |= 0x20u;
  if ((*(a3 + 52) & 8) != 0)
  {
    goto LABEL_17;
  }
}

@end