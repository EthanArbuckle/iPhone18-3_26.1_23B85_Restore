@interface AWDTCPConnectionInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInterfaceType:(id)a3;
- (int)interfaceType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasInterfaceType:(BOOL)a3;
- (void)setHasTcpHandshakeLatency:(BOOL)a3;
- (void)setHasTcpRetransmissions:(BOOL)a3;
- (void)setHasTcpRxBytes:(BOOL)a3;
- (void)setHasTcpTxBytes:(BOOL)a3;
- (void)setHasTlsLatency:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDTCPConnectionInfo

- (void)setHasTcpHandshakeLatency:(BOOL)a3
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

- (void)setHasTlsLatency:(BOOL)a3
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

- (int)interfaceType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_interfaceType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasInterfaceType:(BOOL)a3
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

- (int)StringAsInterfaceType:(id)a3
{
  if ([a3 isEqualToString:@"None"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"WiFi"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"BT"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"Cellular"])
  {
    return 4;
  }

  return 1;
}

- (void)setHasTcpRetransmissions:(BOOL)a3
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

- (void)setHasTcpTxBytes:(BOOL)a3
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

- (void)setHasTcpRxBytes:(BOOL)a3
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
  v3.super_class = AWDTCPConnectionInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDTCPConnectionInfo description](&v3, sel_description), -[AWDTCPConnectionInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dnsResolutionLatency), @"dnsResolutionLatency"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpHandshakeLatency), @"tcpHandshakeLatency"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tlsLatency), @"tlsLatency"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_13:
  v6 = self->_interfaceType - 1;
  if (v6 >= 4)
  {
    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_interfaceType];
  }

  else
  {
    v7 = off_29EE33080[v6];
  }

  [v3 setObject:v7 forKey:@"interfaceType"];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_18:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpTxBytes), @"tcpTxBytes"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return v3;
    }

    goto LABEL_8;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpRetransmissions), @"tcpRetransmissions"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_7:
  if ((has & 0x10) != 0)
  {
LABEL_8:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpRxBytes), @"tcpRxBytes"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    dnsResolutionLatency = self->_dnsResolutionLatency;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  tcpHandshakeLatency = self->_tcpHandshakeLatency;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  tlsLatency = self->_tlsLatency;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  interfaceType = self->_interfaceType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    tcpTxBytes = self->_tcpTxBytes;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_13:
  tcpRetransmissions = self->_tcpRetransmissions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_15:
  tcpRxBytes = self->_tcpRxBytes;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 2) = self->_dnsResolutionLatency;
    *(a3 + 36) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 4) = self->_tcpHandshakeLatency;
  *(a3 + 36) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(a3 + 8) = self->_tlsLatency;
  *(a3 + 36) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a3 + 3) = self->_interfaceType;
  *(a3 + 36) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a3 + 5) = self->_tcpRetransmissions;
  *(a3 + 36) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_15:
    *(a3 + 6) = self->_tcpRxBytes;
    *(a3 + 36) |= 0x10u;
    return;
  }

LABEL_14:
  *(a3 + 7) = self->_tcpTxBytes;
  *(a3 + 36) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
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
    *(result + 2) = self->_dnsResolutionLatency;
    *(result + 36) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_tcpHandshakeLatency;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 8) = self->_tlsLatency;
  *(result + 36) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 3) = self->_interfaceType;
  *(result + 36) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 5) = self->_tcpRetransmissions;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 7) = self->_tcpTxBytes;
  *(result + 36) |= 0x20u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 6) = self->_tcpRxBytes;
  *(result + 36) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 36) & 1) == 0 || self->_dnsResolutionLatency != *(a3 + 2))
      {
        goto LABEL_36;
      }
    }

    else if (*(a3 + 36))
    {
LABEL_36:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 36) & 4) == 0 || self->_tcpHandshakeLatency != *(a3 + 4))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 36) & 4) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(a3 + 36) & 0x40) == 0 || self->_tlsLatency != *(a3 + 8))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 36) & 0x40) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 36) & 2) == 0 || self->_interfaceType != *(a3 + 3))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 36) & 2) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 36) & 8) == 0 || self->_tcpRetransmissions != *(a3 + 5))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 36) & 8) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 36) & 0x20) == 0 || self->_tcpTxBytes != *(a3 + 7))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 36) & 0x20) != 0)
    {
      goto LABEL_36;
    }

    LOBYTE(v5) = (*(a3 + 36) & 0x10) == 0;
    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 36) & 0x10) == 0 || self->_tcpRxBytes != *(a3 + 6))
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
    v2 = 2654435761 * self->_dnsResolutionLatency;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_tcpHandshakeLatency;
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
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_tlsLatency;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_interfaceType;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_tcpRetransmissions;
    if ((*&self->_has & 0x20) != 0)
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
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_tcpTxBytes;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_tcpRxBytes;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 36);
  if (v3)
  {
    self->_dnsResolutionLatency = *(a3 + 2);
    *&self->_has |= 1u;
    v3 = *(a3 + 36);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a3 + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_tcpHandshakeLatency = *(a3 + 4);
  *&self->_has |= 4u;
  v3 = *(a3 + 36);
  if ((v3 & 0x40) == 0)
  {
LABEL_4:
    if ((v3 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_tlsLatency = *(a3 + 8);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 36);
  if ((v3 & 2) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_interfaceType = *(a3 + 3);
  *&self->_has |= 2u;
  v3 = *(a3 + 36);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_tcpRetransmissions = *(a3 + 5);
  *&self->_has |= 8u;
  v3 = *(a3 + 36);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_15:
    self->_tcpRxBytes = *(a3 + 6);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_14:
  self->_tcpTxBytes = *(a3 + 7);
  *&self->_has |= 0x20u;
  if ((*(a3 + 36) & 0x10) != 0)
  {
    goto LABEL_15;
  }
}

@end