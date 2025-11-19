@interface AWDWiFiLprxStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLprxEnterCnt:(BOOL)a3;
- (void)setHasLprxExitCnt:(BOOL)a3;
- (void)setHasPhyActiveCount:(BOOL)a3;
- (void)setHasPhySearchCount:(BOOL)a3;
- (void)setHasPhySearchDuration:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiLprxStats

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasPhySearchDuration:(BOOL)a3
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

- (void)setHasPhySearchCount:(BOOL)a3
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

- (void)setHasPhyActiveCount:(BOOL)a3
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

- (void)setHasLprxEnterCnt:(BOOL)a3
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

- (void)setHasLprxExitCnt:(BOOL)a3
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
  v3.receiver = self;
  v3.super_class = AWDWiFiLprxStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiLprxStats description](&v3, sel_description), -[AWDWiFiLprxStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_phySearchDuration), @"phySearchDuration"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_phySearchCount), @"phySearchCount"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_phyActiveDuration), @"phyActiveDuration"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lprxEnterCnt), @"lprx_enter_cnt"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return v3;
    }

    goto LABEL_8;
  }

LABEL_14:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_phyActiveCount), @"phyActiveCount"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 0x10) != 0)
  {
LABEL_8:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lprxExitCnt), @"lprx_exit_cnt"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
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

  phySearchDuration = self->_phySearchDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  phySearchCount = self->_phySearchCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  phyActiveDuration = self->_phyActiveDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    lprxEnterCnt = self->_lprxEnterCnt;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_13:
  phyActiveCount = self->_phyActiveCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_15:
  lprxExitCnt = self->_lprxExitCnt;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 3) = self->_timestamp;
    *(a3 + 48) |= 4u;
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

  *(a3 + 2) = self->_phySearchDuration;
  *(a3 + 48) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(a3 + 11) = self->_phySearchCount;
  *(a3 + 48) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a3 + 1) = self->_phyActiveDuration;
  *(a3 + 48) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a3 + 10) = self->_phyActiveCount;
  *(a3 + 48) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_15:
    *(a3 + 9) = self->_lprxExitCnt;
    *(a3 + 48) |= 0x10u;
    return;
  }

LABEL_14:
  *(a3 + 8) = self->_lprxEnterCnt;
  *(a3 + 48) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
    goto LABEL_15;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 3) = self->_timestamp;
    *(result + 48) |= 4u;
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

  *(result + 2) = self->_phySearchDuration;
  *(result + 48) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 11) = self->_phySearchCount;
  *(result + 48) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 1) = self->_phyActiveDuration;
  *(result + 48) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 10) = self->_phyActiveCount;
  *(result + 48) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 8) = self->_lprxEnterCnt;
  *(result + 48) |= 8u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 9) = self->_lprxExitCnt;
  *(result + 48) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 48) & 4) == 0 || self->_timestamp != *(a3 + 3))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 48) & 4) != 0)
    {
LABEL_36:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 48) & 2) == 0 || self->_phySearchDuration != *(a3 + 2))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 48) & 2) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(a3 + 48) & 0x40) == 0 || self->_phySearchCount != *(a3 + 11))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 48) & 0x40) != 0)
    {
      goto LABEL_36;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 48) & 1) == 0 || self->_phyActiveDuration != *(a3 + 1))
      {
        goto LABEL_36;
      }
    }

    else if (*(a3 + 48))
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 48) & 0x20) == 0 || self->_phyActiveCount != *(a3 + 10))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 48) & 0x20) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 48) & 8) == 0 || self->_lprxEnterCnt != *(a3 + 8))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 48) & 8) != 0)
    {
      goto LABEL_36;
    }

    LOBYTE(v5) = (*(a3 + 48) & 0x10) == 0;
    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 48) & 0x10) == 0 || self->_lprxExitCnt != *(a3 + 9))
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
  if ((*&self->_has & 4) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_phySearchDuration;
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
    v4 = 2654435761 * self->_phySearchCount;
    if (*&self->_has)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if (*&self->_has)
  {
LABEL_5:
    v5 = 2654435761u * self->_phyActiveDuration;
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
    v6 = 2654435761 * self->_phyActiveCount;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_lprxEnterCnt;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_lprxExitCnt;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 48);
  if ((v3 & 4) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 4u;
    v3 = *(a3 + 48);
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

  else if ((*(a3 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_phySearchDuration = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 48);
  if ((v3 & 0x40) == 0)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_phySearchCount = *(a3 + 11);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 48);
  if ((v3 & 1) == 0)
  {
LABEL_5:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_phyActiveDuration = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 48);
  if ((v3 & 0x20) == 0)
  {
LABEL_6:
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_phyActiveCount = *(a3 + 10);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 48);
  if ((v3 & 8) == 0)
  {
LABEL_7:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_15:
    self->_lprxExitCnt = *(a3 + 9);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_14:
  self->_lprxEnterCnt = *(a3 + 8);
  *&self->_has |= 8u;
  if ((*(a3 + 48) & 0x10) != 0)
  {
    goto LABEL_15;
  }
}

@end