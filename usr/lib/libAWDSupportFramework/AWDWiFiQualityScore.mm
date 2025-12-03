@interface AWDWiFiQualityScore
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRxLatency:(BOOL)latency;
- (void)setHasRxLoss:(BOOL)loss;
- (void)setHasTxLatency:(BOOL)latency;
- (void)setHasTxLoss:(BOOL)loss;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiQualityScore

- (void)setHasTxLoss:(BOOL)loss
{
  if (loss)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasRxLoss:(BOOL)loss
{
  if (loss)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTxLatency:(BOOL)latency
{
  if (latency)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasRxLatency:(BOOL)latency
{
  if (latency)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiQualityScore;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiQualityScore description](&v3, sel_description), -[AWDWiFiQualityScore dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelQuality), @"channelQuality"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txLoss), @"txLoss"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txLatency), @"txLatency"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_6;
  }

LABEL_10:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rxLoss), @"rxLoss"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rxLatency), @"rxLatency"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    channelQuality = self->_channelQuality;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  txLoss = self->_txLoss;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    txLatency = self->_txLatency;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  rxLoss = self->_rxLoss;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_11:
  rxLatency = self->_rxLatency;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 2) = self->_channelQuality;
    *(to + 28) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(to + 6) = self->_txLoss;
  *(to + 28) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(to + 4) = self->_rxLoss;
  *(to + 28) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_11:
    *(to + 3) = self->_rxLatency;
    *(to + 28) |= 2u;
    return;
  }

LABEL_10:
  *(to + 5) = self->_txLatency;
  *(to + 28) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_channelQuality;
    *(result + 28) |= 1u;
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

  *(result + 6) = self->_txLoss;
  *(result + 28) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 4) = self->_rxLoss;
  *(result + 28) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 5) = self->_txLatency;
  *(result + 28) |= 8u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 3) = self->_rxLatency;
  *(result + 28) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 28) & 1) == 0 || self->_channelQuality != *(equal + 2))
      {
        goto LABEL_26;
      }
    }

    else if (*(equal + 28))
    {
LABEL_26:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 28) & 0x10) == 0 || self->_txLoss != *(equal + 6))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 28) & 0x10) != 0)
    {
      goto LABEL_26;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 28) & 4) == 0 || self->_rxLoss != *(equal + 4))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 28) & 4) != 0)
    {
      goto LABEL_26;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 28) & 8) == 0 || self->_txLatency != *(equal + 5))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 28) & 8) != 0)
    {
      goto LABEL_26;
    }

    LOBYTE(v5) = (*(equal + 28) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 28) & 2) == 0 || self->_rxLatency != *(equal + 3))
      {
        goto LABEL_26;
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
    v2 = 2654435761 * self->_channelQuality;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_txLoss;
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
    v4 = 2654435761 * self->_rxLoss;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_txLatency;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_rxLatency;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 28);
  if (v3)
  {
    self->_channelQuality = *(from + 2);
    *&self->_has |= 1u;
    v3 = *(from + 28);
    if ((v3 & 0x10) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(from + 28) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_txLoss = *(from + 6);
  *&self->_has |= 0x10u;
  v3 = *(from + 28);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  self->_rxLoss = *(from + 4);
  *&self->_has |= 4u;
  v3 = *(from + 28);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_11:
    self->_rxLatency = *(from + 3);
    *&self->_has |= 2u;
    return;
  }

LABEL_10:
  self->_txLatency = *(from + 5);
  *&self->_has |= 8u;
  if ((*(from + 28) & 2) != 0)
  {
    goto LABEL_11;
  }
}

@end