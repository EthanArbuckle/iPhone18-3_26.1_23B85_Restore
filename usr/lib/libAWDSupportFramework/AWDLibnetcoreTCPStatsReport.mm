@interface AWDLibnetcoreTCPStatsReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTcpConnectionAttempts:(BOOL)a3;
- (void)setHasTcpIPv4AvgRTT:(BOOL)a3;
- (void)setHasTcpIPv6AvgRTT:(BOOL)a3;
- (void)setHasTcpRecvPLR:(BOOL)a3;
- (void)setHasTcpSendPLR:(BOOL)a3;
- (void)setHasTcpSendReorderRate:(BOOL)a3;
- (void)setHasTcpSendTLRTO:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDLibnetcoreTCPStatsReport

- (void)setHasTcpIPv4AvgRTT:(BOOL)a3
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

- (void)setHasTcpIPv6AvgRTT:(BOOL)a3
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

- (void)setHasTcpSendPLR:(BOOL)a3
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

- (void)setHasTcpRecvPLR:(BOOL)a3
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

- (void)setHasTcpSendTLRTO:(BOOL)a3
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

- (void)setHasTcpSendReorderRate:(BOOL)a3
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

- (void)setHasTcpConnectionAttempts:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreTCPStatsReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreTCPStatsReport description](&v3, sel_description), -[AWDLibnetcoreTCPStatsReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpIPv4AvgRTT), @"tcpIPv4AvgRTT"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpIPv6AvgRTT), @"tcpIPv6AvgRTT"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpSendPLR), @"tcpSendPLR"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpRecvPLR), @"tcpRecvPLR"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpSendTLRTO), @"tcpSendTLRTO"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpConnectionAttempts), @"tcpConnectionAttempts"}];
    if ((*&self->_has & 1) == 0)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpSendReorderRate), @"tcpSendReorderRate"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (has)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpConnectionAccepts), @"tcpConnectionAccepts"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    tcpIPv4AvgRTT = self->_tcpIPv4AvgRTT;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
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

  tcpIPv6AvgRTT = self->_tcpIPv6AvgRTT;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  tcpSendPLR = self->_tcpSendPLR;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  tcpRecvPLR = self->_tcpRecvPLR;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  tcpSendTLRTO = self->_tcpSendTLRTO;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    tcpConnectionAttempts = self->_tcpConnectionAttempts;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  tcpSendReorderRate = self->_tcpSendReorderRate;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_17:
  tcpConnectionAccepts = self->_tcpConnectionAccepts;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 3) = self->_tcpIPv4AvgRTT;
    *(a3 + 72) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
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

  *(a3 + 4) = self->_tcpIPv6AvgRTT;
  *(a3 + 72) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a3 + 6) = self->_tcpSendPLR;
  *(a3 + 72) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a3 + 5) = self->_tcpRecvPLR;
  *(a3 + 72) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a3 + 8) = self->_tcpSendTLRTO;
  *(a3 + 72) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 7) = self->_tcpSendReorderRate;
  *(a3 + 72) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      return;
    }

LABEL_17:
    *(a3 + 1) = self->_tcpConnectionAccepts;
    *(a3 + 72) |= 1u;
    return;
  }

LABEL_16:
  *(a3 + 2) = self->_tcpConnectionAttempts;
  *(a3 + 72) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_17;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 3) = self->_tcpIPv4AvgRTT;
    *(result + 72) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_tcpIPv6AvgRTT;
  *(result + 72) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 6) = self->_tcpSendPLR;
  *(result + 72) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 5) = self->_tcpRecvPLR;
  *(result + 72) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 8) = self->_tcpSendTLRTO;
  *(result + 72) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 7) = self->_tcpSendReorderRate;
  *(result + 72) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 2) = self->_tcpConnectionAttempts;
  *(result + 72) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 1) = self->_tcpConnectionAccepts;
  *(result + 72) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 72) & 4) == 0 || self->_tcpIPv4AvgRTT != *(a3 + 3))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 72) & 4) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 72) & 8) == 0 || self->_tcpIPv6AvgRTT != *(a3 + 4))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 72) & 8) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 72) & 0x20) == 0 || self->_tcpSendPLR != *(a3 + 6))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 72) & 0x20) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 72) & 0x10) == 0 || self->_tcpRecvPLR != *(a3 + 5))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 72) & 0x10) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x80) != 0)
    {
      if ((*(a3 + 72) & 0x80) == 0 || self->_tcpSendTLRTO != *(a3 + 8))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 72) & 0x80) != 0)
    {
LABEL_41:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(a3 + 72) & 0x40) == 0 || self->_tcpSendReorderRate != *(a3 + 7))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 72) & 0x40) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 72) & 2) == 0 || self->_tcpConnectionAttempts != *(a3 + 2))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 72) & 2) != 0)
    {
      goto LABEL_41;
    }

    LOBYTE(v5) = (*(a3 + 72) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(a3 + 72) & 1) == 0 || self->_tcpConnectionAccepts != *(a3 + 1))
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
  if ((*&self->_has & 4) != 0)
  {
    v2 = 2654435761u * self->_tcpIPv4AvgRTT;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_tcpIPv6AvgRTT;
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
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_tcpSendPLR;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = 2654435761u * self->_tcpRecvPLR;
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
    v6 = 2654435761u * self->_tcpSendTLRTO;
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
    v7 = 2654435761u * self->_tcpSendReorderRate;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if (*&self->_has)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761u * self->_tcpConnectionAttempts;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761u * self->_tcpConnectionAccepts;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 72);
  if ((v3 & 4) != 0)
  {
    self->_tcpIPv4AvgRTT = *(a3 + 3);
    *&self->_has |= 4u;
    v3 = *(a3 + 72);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a3 + 72) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_tcpIPv6AvgRTT = *(a3 + 4);
  *&self->_has |= 8u;
  v3 = *(a3 + 72);
  if ((v3 & 0x20) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_tcpSendPLR = *(a3 + 6);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 72);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_tcpRecvPLR = *(a3 + 5);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 72);
  if ((v3 & 0x80) == 0)
  {
LABEL_6:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_tcpSendTLRTO = *(a3 + 8);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 72);
  if ((v3 & 0x40) == 0)
  {
LABEL_7:
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_tcpSendReorderRate = *(a3 + 7);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 72);
  if ((v3 & 2) == 0)
  {
LABEL_8:
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_17:
    self->_tcpConnectionAccepts = *(a3 + 1);
    *&self->_has |= 1u;
    return;
  }

LABEL_16:
  self->_tcpConnectionAttempts = *(a3 + 2);
  *&self->_has |= 2u;
  if (*(a3 + 72))
  {
    goto LABEL_17;
  }
}

@end