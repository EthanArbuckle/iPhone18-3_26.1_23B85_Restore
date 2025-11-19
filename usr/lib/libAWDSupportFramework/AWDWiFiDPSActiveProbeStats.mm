@interface AWDWiFiDPSActiveProbeStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRttGatewayBE:(BOOL)a3;
- (void)setHasRttGatewayBK:(BOOL)a3;
- (void)setHasRttGatewayVI:(BOOL)a3;
- (void)setHasRttGatewayVO:(BOOL)a3;
- (void)setHasRttPrimaryDnsBE:(BOOL)a3;
- (void)setHasRttPrimaryDnsBK:(BOOL)a3;
- (void)setHasRttPrimaryDnsVI:(BOOL)a3;
- (void)setHasRttPrimaryDnsVO:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiDPSActiveProbeStats

- (void)setHasRttGatewayBE:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasRttGatewayBK:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRttGatewayVO:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRttGatewayVI:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRttPrimaryDnsBE:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRttPrimaryDnsBK:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasRttPrimaryDnsVO:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasRttPrimaryDnsVI:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiDPSActiveProbeStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiDPSActiveProbeStats description](&v3, sel_description), -[AWDWiFiDPSActiveProbeStats dictionaryRepresentation](self, "dictionaryRepresentation")];
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
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rttGatewayBE), @"rttGatewayBE"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rttGatewayBK), @"rttGatewayBK"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rttGatewayVO), @"rttGatewayVO"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rttGatewayVI), @"rttGatewayVI"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rttPrimaryDnsBE), @"rttPrimaryDnsBE"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rttPrimaryDnsVO), @"rttPrimaryDnsVO"}];
    if ((*&self->_has & 0x80) == 0)
    {
      return v3;
    }

    goto LABEL_10;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rttPrimaryDnsBK), @"rttPrimaryDnsBK"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((has & 0x80) != 0)
  {
LABEL_10:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rttPrimaryDnsVI), @"rttPrimaryDnsVI"}];
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
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  rttGatewayBE = self->_rttGatewayBE;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  rttGatewayBK = self->_rttGatewayBK;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  rttGatewayVO = self->_rttGatewayVO;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  rttGatewayVI = self->_rttGatewayVI;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  rttPrimaryDnsBE = self->_rttPrimaryDnsBE;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    rttPrimaryDnsVO = self->_rttPrimaryDnsVO;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x80) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_17:
  rttPrimaryDnsBK = self->_rttPrimaryDnsBK;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((has & 0x80) == 0)
  {
    return;
  }

LABEL_19:
  rttPrimaryDnsVI = self->_rttPrimaryDnsVI;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 4) = self->_rttGatewayBE;
  *(a3 + 24) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a3 + 5) = self->_rttGatewayBK;
  *(a3 + 24) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a3 + 7) = self->_rttGatewayVO;
  *(a3 + 24) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 6) = self->_rttGatewayVI;
  *(a3 + 24) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a3 + 8) = self->_rttPrimaryDnsBE;
  *(a3 + 24) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 9) = self->_rttPrimaryDnsBK;
  *(a3 + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      return;
    }

LABEL_19:
    *(a3 + 10) = self->_rttPrimaryDnsVI;
    *(a3 + 24) |= 0x80u;
    return;
  }

LABEL_18:
  *(a3 + 11) = self->_rttPrimaryDnsVO;
  *(a3 + 24) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
    goto LABEL_19;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_rttGatewayBE;
  *(result + 24) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 5) = self->_rttGatewayBK;
  *(result + 24) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 7) = self->_rttGatewayVO;
  *(result + 24) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 6) = self->_rttGatewayVI;
  *(result + 24) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 8) = self->_rttPrimaryDnsBE;
  *(result + 24) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 9) = self->_rttPrimaryDnsBK;
  *(result + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(result + 11) = self->_rttPrimaryDnsVO;
  *(result + 24) |= 0x100u;
  if ((*&self->_has & 0x80) == 0)
  {
    return result;
  }

LABEL_10:
  *(result + 10) = self->_rttPrimaryDnsVI;
  *(result + 24) |= 0x80u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 24);
    if (has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_46;
      }
    }

    else if (v7)
    {
LABEL_46:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_rttGatewayBE != *(a3 + 4))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_rttGatewayBK != *(a3 + 5))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_rttGatewayVO != *(a3 + 7))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_rttGatewayVI != *(a3 + 6))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_rttPrimaryDnsBE != *(a3 + 8))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_rttPrimaryDnsBK != *(a3 + 9))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_46;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 24) & 0x100) == 0 || self->_rttPrimaryDnsVO != *(a3 + 11))
      {
        goto LABEL_46;
      }
    }

    else if ((*(a3 + 24) & 0x100) != 0)
    {
      goto LABEL_46;
    }

    LOBYTE(v5) = (v7 & 0x80) == 0;
    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_rttPrimaryDnsVI != *(a3 + 10))
      {
        goto LABEL_46;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_rttGatewayBE;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_rttGatewayBK;
    if ((has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_rttGatewayVO;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_rttGatewayVI;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_rttPrimaryDnsBE;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_rttPrimaryDnsBK;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_17:
  v9 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761 * self->_rttPrimaryDnsVO;
  if ((has & 0x80) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761 * self->_rttPrimaryDnsVI;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 24);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 24);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_rttGatewayBE = *(a3 + 4);
  *&self->_has |= 2u;
  v3 = *(a3 + 24);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_rttGatewayBK = *(a3 + 5);
  *&self->_has |= 4u;
  v3 = *(a3 + 24);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_rttGatewayVO = *(a3 + 7);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 24);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_rttGatewayVI = *(a3 + 6);
  *&self->_has |= 8u;
  v3 = *(a3 + 24);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_rttPrimaryDnsBE = *(a3 + 8);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 24);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_rttPrimaryDnsBK = *(a3 + 9);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 24);
  if ((v3 & 0x100) == 0)
  {
LABEL_9:
    if ((v3 & 0x80) == 0)
    {
      return;
    }

LABEL_19:
    self->_rttPrimaryDnsVI = *(a3 + 10);
    *&self->_has |= 0x80u;
    return;
  }

LABEL_18:
  self->_rttPrimaryDnsVO = *(a3 + 11);
  *&self->_has |= 0x100u;
  if ((*(a3 + 24) & 0x80) != 0)
  {
    goto LABEL_19;
  }
}

@end