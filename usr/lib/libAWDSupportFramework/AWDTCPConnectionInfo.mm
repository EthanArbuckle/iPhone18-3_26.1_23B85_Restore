@interface AWDTCPConnectionInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInterfaceType:(id)type;
- (int)interfaceType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasInterfaceType:(BOOL)type;
- (void)setHasTcpHandshakeLatency:(BOOL)latency;
- (void)setHasTcpRetransmissions:(BOOL)retransmissions;
- (void)setHasTcpRxBytes:(BOOL)bytes;
- (void)setHasTcpTxBytes:(BOOL)bytes;
- (void)setHasTlsLatency:(BOOL)latency;
- (void)writeTo:(id)to;
@end

@implementation AWDTCPConnectionInfo

- (void)setHasTcpHandshakeLatency:(BOOL)latency
{
  if (latency)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTlsLatency:(BOOL)latency
{
  if (latency)
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

- (void)setHasInterfaceType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsInterfaceType:(id)type
{
  if ([type isEqualToString:@"None"])
  {
    return 1;
  }

  if ([type isEqualToString:@"WiFi"])
  {
    return 2;
  }

  if ([type isEqualToString:@"BT"])
  {
    return 3;
  }

  if ([type isEqualToString:@"Cellular"])
  {
    return 4;
  }

  return 1;
}

- (void)setHasTcpRetransmissions:(BOOL)retransmissions
{
  if (retransmissions)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTcpTxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTcpRxBytes:(BOOL)bytes
{
  if (bytes)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dnsResolutionLatency), @"dnsResolutionLatency"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpHandshakeLatency), @"tcpHandshakeLatency"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tlsLatency), @"tlsLatency"}];
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

  [dictionary setObject:v7 forKey:@"interfaceType"];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_18:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpTxBytes), @"tcpTxBytes"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return dictionary;
    }

    goto LABEL_8;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpRetransmissions), @"tcpRetransmissions"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_7:
  if ((has & 0x10) != 0)
  {
LABEL_8:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpRxBytes), @"tcpRxBytes"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 2) = self->_dnsResolutionLatency;
    *(to + 36) |= 1u;
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

  *(to + 4) = self->_tcpHandshakeLatency;
  *(to + 36) |= 4u;
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
  *(to + 8) = self->_tlsLatency;
  *(to + 36) |= 0x40u;
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
  *(to + 3) = self->_interfaceType;
  *(to + 36) |= 2u;
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
  *(to + 5) = self->_tcpRetransmissions;
  *(to + 36) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_15:
    *(to + 6) = self->_tcpRxBytes;
    *(to + 36) |= 0x10u;
    return;
  }

LABEL_14:
  *(to + 7) = self->_tcpTxBytes;
  *(to + 36) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
    goto LABEL_15;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_dnsResolutionLatency != *(equal + 2))
      {
        goto LABEL_36;
      }
    }

    else if (*(equal + 36))
    {
LABEL_36:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 36) & 4) == 0 || self->_tcpHandshakeLatency != *(equal + 4))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 36) & 4) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(equal + 36) & 0x40) == 0 || self->_tlsLatency != *(equal + 8))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 36) & 0x40) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 36) & 2) == 0 || self->_interfaceType != *(equal + 3))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 36) & 2) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 36) & 8) == 0 || self->_tcpRetransmissions != *(equal + 5))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 36) & 8) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 36) & 0x20) == 0 || self->_tcpTxBytes != *(equal + 7))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 36) & 0x20) != 0)
    {
      goto LABEL_36;
    }

    LOBYTE(v5) = (*(equal + 36) & 0x10) == 0;
    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 36) & 0x10) == 0 || self->_tcpRxBytes != *(equal + 6))
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

- (void)mergeFrom:(id)from
{
  v3 = *(from + 36);
  if (v3)
  {
    self->_dnsResolutionLatency = *(from + 2);
    *&self->_has |= 1u;
    v3 = *(from + 36);
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

  else if ((*(from + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_tcpHandshakeLatency = *(from + 4);
  *&self->_has |= 4u;
  v3 = *(from + 36);
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
  self->_tlsLatency = *(from + 8);
  *&self->_has |= 0x40u;
  v3 = *(from + 36);
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
  self->_interfaceType = *(from + 3);
  *&self->_has |= 2u;
  v3 = *(from + 36);
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
  self->_tcpRetransmissions = *(from + 5);
  *&self->_has |= 8u;
  v3 = *(from + 36);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_15:
    self->_tcpRxBytes = *(from + 6);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_14:
  self->_tcpTxBytes = *(from + 7);
  *&self->_has |= 0x20u;
  if ((*(from + 36) & 0x10) != 0)
  {
    goto LABEL_15;
  }
}

@end