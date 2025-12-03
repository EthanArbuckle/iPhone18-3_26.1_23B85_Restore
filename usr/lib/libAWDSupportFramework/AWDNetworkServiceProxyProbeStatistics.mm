@interface AWDNetworkServiceProxyProbeStatistics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInterfaceType:(id)type;
- (int)StringAsProtocolType:(id)type;
- (int)interfaceType;
- (int)protocolType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasGenericDNSProbeTimeMsecs:(BOOL)msecs;
- (void)setHasGenericProbeTimeMsecs:(BOOL)msecs;
- (void)setHasInterfaceType:(BOOL)type;
- (void)setHasProtocolType:(BOOL)type;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDNetworkServiceProxyProbeStatistics

- (void)dealloc
{
  [(AWDNetworkServiceProxyProbeStatistics *)self setLabel:0];
  v3.receiver = self;
  v3.super_class = AWDNetworkServiceProxyProbeStatistics;
  [(AWDNetworkServiceProxyProbeStatistics *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)interfaceType
{
  if ((*&self->_has & 0x10) != 0)
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsInterfaceType:(id)type
{
  if ([type isEqualToString:@"NetworkServiceProxyInterfaceType_WIFI"])
  {
    return 1;
  }

  if ([type isEqualToString:@"NetworkServiceProxyInterfaceType_CELLULAR"])
  {
    return 2;
  }

  if ([type isEqualToString:@"NetworkServiceProxyInterfaceType_WIRED"])
  {
    return 3;
  }

  if ([type isEqualToString:@"NetworkServiceProxyInterfaceType_VIRTUAL"])
  {
    return 4;
  }

  return 1;
}

- (void)setHasGenericProbeTimeMsecs:(BOOL)msecs
{
  if (msecs)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasGenericDNSProbeTimeMsecs:(BOOL)msecs
{
  if (msecs)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)protocolType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_protocolType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasProtocolType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsProtocolType:(id)type
{
  if ([type isEqualToString:@"NetworkServiceProxyProtocolType_IPv4"])
  {
    return 1;
  }

  if ([type isEqualToString:@"NetworkServiceProxyProtocolType_IPv6"])
  {
    return 2;
  }

  if ([type isEqualToString:@"NetworkServiceProxyProtocolType_NAT64"])
  {
    return 3;
  }

  return 1;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDNetworkServiceProxyProbeStatistics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNetworkServiceProxyProbeStatistics description](&v3, sel_description), -[AWDNetworkServiceProxyProbeStatistics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v5 = self->_interfaceType - 1;
    if (v5 >= 4)
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_interfaceType];
    }

    else
    {
      v6 = off_29EE32AB8[v5];
    }

    [dictionary setObject:v6 forKey:@"interface_type"];
  }

  label = self->_label;
  if (label)
  {
    [dictionary setObject:label forKey:@"label"];
  }

  v8 = self->_has;
  if (v8)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_alternateProbeTimeMsecs), @"alternate_probe_time_msecs"}];
    v8 = self->_has;
    if ((v8 & 4) == 0)
    {
LABEL_12:
      if ((v8 & 2) == 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_genericDNSProbeTimeMsecs), @"generic_DNS_probe_time_msecs"}];
      if ((*&self->_has & 0x20) == 0)
      {
        return dictionary;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_genericProbeTimeMsecs), @"generic_probe_time_msecs"}];
  v8 = self->_has;
  if ((v8 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  if ((v8 & 0x20) == 0)
  {
    return dictionary;
  }

LABEL_18:
  v9 = self->_protocolType - 1;
  if (v9 >= 3)
  {
    v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_protocolType];
  }

  else
  {
    v10 = off_29EE32AD8[v9];
  }

  [dictionary setObject:v10 forKey:@"protocol_type"];
  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    interfaceType = self->_interfaceType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if (v7)
  {
    alternateProbeTimeMsecs = self->_alternateProbeTimeMsecs;
    PBDataWriterWriteUint64Field();
    v7 = self->_has;
    if ((v7 & 4) == 0)
    {
LABEL_9:
      if ((v7 & 2) == 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      genericDNSProbeTimeMsecs = self->_genericDNSProbeTimeMsecs;
      PBDataWriterWriteUint64Field();
      if ((*&self->_has & 0x20) == 0)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  genericProbeTimeMsecs = self->_genericProbeTimeMsecs;
  PBDataWriterWriteUint64Field();
  v7 = self->_has;
  if ((v7 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v7 & 0x20) == 0)
  {
    return;
  }

LABEL_15:
  protocolType = self->_protocolType;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(to + 4) = self->_timestamp;
    *(to + 60) |= 8u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(to + 10) = self->_interfaceType;
    *(to + 60) |= 0x10u;
  }

  if (self->_label)
  {
    [to setLabel:?];
  }

  v6 = self->_has;
  if (v6)
  {
    *(to + 1) = self->_alternateProbeTimeMsecs;
    *(to + 60) |= 1u;
    v6 = self->_has;
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  *(to + 3) = self->_genericProbeTimeMsecs;
  *(to + 60) |= 4u;
  v6 = self->_has;
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_15:
  *(to + 2) = self->_genericDNSProbeTimeMsecs;
  *(to + 60) |= 2u;
  if ((*&self->_has & 0x20) == 0)
  {
    return;
  }

LABEL_11:
  *(to + 14) = self->_protocolType;
  *(to + 60) |= 0x20u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_timestamp;
    *(v5 + 60) |= 8u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v5 + 40) = self->_interfaceType;
    *(v5 + 60) |= 0x10u;
  }

  *(v6 + 48) = [(NSString *)self->_label copyWithZone:zone];
  v8 = self->_has;
  if (v8)
  {
    *(v6 + 8) = self->_alternateProbeTimeMsecs;
    *(v6 + 60) |= 1u;
    v8 = self->_has;
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      *(v6 + 16) = self->_genericDNSProbeTimeMsecs;
      *(v6 + 60) |= 2u;
      if ((*&self->_has & 0x20) == 0)
      {
        return v6;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 24) = self->_genericProbeTimeMsecs;
  *(v6 + 60) |= 4u;
  v8 = self->_has;
  if ((v8 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v8 & 0x20) != 0)
  {
LABEL_9:
    *(v6 + 56) = self->_protocolType;
    *(v6 + 60) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 60);
    if ((has & 8) != 0)
    {
      if ((*(equal + 60) & 8) == 0 || self->_timestamp != *(equal + 4))
      {
        goto LABEL_34;
      }
    }

    else if ((*(equal + 60) & 8) != 0)
    {
LABEL_34:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 60) & 0x10) == 0 || self->_interfaceType != *(equal + 10))
      {
        goto LABEL_34;
      }
    }

    else if ((*(equal + 60) & 0x10) != 0)
    {
      goto LABEL_34;
    }

    label = self->_label;
    if (label | *(equal + 6))
    {
      v5 = [(NSString *)label isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if (has)
    {
      if ((*(equal + 60) & 1) == 0 || self->_alternateProbeTimeMsecs != *(equal + 1))
      {
        goto LABEL_34;
      }
    }

    else if (*(equal + 60))
    {
      goto LABEL_34;
    }

    if ((has & 4) != 0)
    {
      if ((*(equal + 60) & 4) == 0 || self->_genericProbeTimeMsecs != *(equal + 3))
      {
        goto LABEL_34;
      }
    }

    else if ((*(equal + 60) & 4) != 0)
    {
      goto LABEL_34;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 60) & 2) == 0 || self->_genericDNSProbeTimeMsecs != *(equal + 2))
      {
        goto LABEL_34;
      }
    }

    else if ((*(equal + 60) & 2) != 0)
    {
      goto LABEL_34;
    }

    LOBYTE(v5) = (*(equal + 60) & 0x20) == 0;
    if ((has & 0x20) != 0)
    {
      if ((*(equal + 60) & 0x20) == 0 || self->_protocolType != *(equal + 14))
      {
        goto LABEL_34;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_interfaceType;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_label hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_alternateProbeTimeMsecs;
    if ((*&self->_has & 4) != 0)
    {
LABEL_8:
      v7 = 2654435761u * self->_genericProbeTimeMsecs;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      v8 = 0;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      v9 = 0;
      return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v5;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v8 = 2654435761u * self->_genericDNSProbeTimeMsecs;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v9 = 2654435761 * self->_protocolType;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 60);
  if ((v5 & 8) != 0)
  {
    self->_timestamp = *(from + 4);
    *&self->_has |= 8u;
    v5 = *(from + 60);
  }

  if ((v5 & 0x10) != 0)
  {
    self->_interfaceType = *(from + 10);
    *&self->_has |= 0x10u;
  }

  if (*(from + 6))
  {
    [(AWDNetworkServiceProxyProbeStatistics *)self setLabel:?];
  }

  v6 = *(from + 60);
  if (v6)
  {
    self->_alternateProbeTimeMsecs = *(from + 1);
    *&self->_has |= 1u;
    v6 = *(from + 60);
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((*(from + 60) & 4) == 0)
  {
    goto LABEL_9;
  }

  self->_genericProbeTimeMsecs = *(from + 3);
  *&self->_has |= 4u;
  v6 = *(from + 60);
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_15:
  self->_genericDNSProbeTimeMsecs = *(from + 2);
  *&self->_has |= 2u;
  if ((*(from + 60) & 0x20) == 0)
  {
    return;
  }

LABEL_11:
  self->_protocolType = *(from + 14);
  *&self->_has |= 0x20u;
}

@end