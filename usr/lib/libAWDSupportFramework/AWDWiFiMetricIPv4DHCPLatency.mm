@interface AWDWiFiMetricIPv4DHCPLatency
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDhcpLatencyMilliSecs:(BOOL)secs;
- (void)setHasDhcpLeaseMins:(BOOL)mins;
- (void)setHasSecurityType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricIPv4DHCPLatency

- (void)dealloc
{
  [(AWDWiFiMetricIPv4DHCPLatency *)self setPrivateMacType:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricIPv4DHCPLatency;
  [(AWDWiFiMetricIPv4DHCPLatency *)&v3 dealloc];
}

- (void)setHasDhcpLatencyMilliSecs:(BOOL)secs
{
  if (secs)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSecurityType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDhcpLeaseMins:(BOOL)mins
{
  if (mins)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricIPv4DHCPLatency;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricIPv4DHCPLatency description](&v3, sel_description), -[AWDWiFiMetricIPv4DHCPLatency dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dhcpLatencyMilliSecs), @"dhcpLatencyMilliSecs"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_securityType), @"securityType"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dhcpLeaseMins), @"dhcpLeaseMins"}];
  if (*&self->_has)
  {
LABEL_5:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

LABEL_6:
  privateMacType = self->_privateMacType;
  if (privateMacType)
  {
    [dictionary setObject:privateMacType forKey:@"privateMacType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    dhcpLatencyMilliSecs = self->_dhcpLatencyMilliSecs;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  securityType = self->_securityType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  timestamp = self->_timestamp;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    dhcpLeaseMins = self->_dhcpLeaseMins;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
  if (self->_privateMacType)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 4) = self->_dhcpLatencyMilliSecs;
    *(to + 36) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  *(to + 8) = self->_securityType;
  *(to + 36) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  *(to + 1) = self->_timestamp;
  *(to + 36) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    *(to + 5) = self->_dhcpLeaseMins;
    *(to + 36) |= 4u;
  }

LABEL_6:
  privateMacType = self->_privateMacType;
  if (privateMacType)
  {
    [to setPrivateMacType:privateMacType];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_dhcpLatencyMilliSecs;
    *(v5 + 36) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 8) = self->_timestamp;
      *(v5 + 36) |= 1u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_securityType;
  *(v5 + 36) |= 8u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    *(v5 + 20) = self->_dhcpLeaseMins;
    *(v5 + 36) |= 4u;
  }

LABEL_6:

  v6[3] = [(NSString *)self->_privateMacType copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 36);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 36) & 2) == 0 || self->_dhcpLatencyMilliSecs != *(equal + 4))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 36) & 2) != 0)
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 36) & 8) == 0 || self->_securityType != *(equal + 8))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 36) & 8) != 0)
    {
      goto LABEL_24;
    }

    if (*&self->_has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_24;
      }
    }

    else if (*(equal + 36))
    {
      goto LABEL_24;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 36) & 4) == 0 || self->_dhcpLeaseMins != *(equal + 5))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 36) & 4) != 0)
    {
      goto LABEL_24;
    }

    privateMacType = self->_privateMacType;
    if (privateMacType | *(equal + 3))
    {

      LOBYTE(v5) = [(NSString *)privateMacType isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_dhcpLatencyMilliSecs;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_securityType;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      return v7 ^ v6 ^ v8 ^ v9 ^ [(NSString *)self->_privateMacType hash:v3];
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761 * self->_dhcpLeaseMins;
  return v7 ^ v6 ^ v8 ^ v9 ^ [(NSString *)self->_privateMacType hash:v3];
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 36);
  if ((v3 & 2) != 0)
  {
    self->_dhcpLatencyMilliSecs = *(from + 4);
    *&self->_has |= 2u;
    v3 = *(from + 36);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(from + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_securityType = *(from + 8);
  *&self->_has |= 8u;
  v3 = *(from + 36);
  if ((v3 & 1) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  self->_timestamp = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 36) & 4) != 0)
  {
LABEL_5:
    self->_dhcpLeaseMins = *(from + 5);
    *&self->_has |= 4u;
  }

LABEL_6:
  if (*(from + 3))
  {
    [(AWDWiFiMetricIPv4DHCPLatency *)self setPrivateMacType:?];
  }
}

@end