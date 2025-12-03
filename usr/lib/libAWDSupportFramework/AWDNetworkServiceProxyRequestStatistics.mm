@interface AWDNetworkServiceProxyRequestStatistics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInterfaceType:(id)type;
- (int)StringAsProtocolType:(id)type;
- (int)interfaceType;
- (int)protocolType;
- (unint64_t)hash;
- (unsigned)directConnectionFirstByteBucketsAtIndex:(unint64_t)index;
- (unsigned)directConnectionLastByteBucketsAtIndex:(unint64_t)index;
- (unsigned)firstByteBucketsAtIndex:(unint64_t)index;
- (unsigned)lastByteBucketsAtIndex:(unint64_t)index;
- (unsigned)udpRttBucketsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDirectConnectionCount:(BOOL)count;
- (void)setHasDirectConnectionFailedCount:(BOOL)count;
- (void)setHasInterfaceType:(BOOL)type;
- (void)setHasProtocolType:(BOOL)type;
- (void)setHasRequestCount:(BOOL)count;
- (void)setHasRequestFailedCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDNetworkServiceProxyRequestStatistics

- (void)dealloc
{
  [(AWDNetworkServiceProxyRequestStatistics *)self setFirstPartyServiceName:0];
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDNetworkServiceProxyRequestStatistics;
  [(AWDNetworkServiceProxyRequestStatistics *)&v3 dealloc];
}

- (int)interfaceType
{
  if ((*&self->_has & 8) != 0)
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
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

- (void)setHasRequestCount:(BOOL)count
{
  if (count)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasRequestFailedCount:(BOOL)count
{
  if (count)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasDirectConnectionCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDirectConnectionFailedCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (unsigned)firstByteBucketsAtIndex:(unint64_t)index
{
  p_firstByteBuckets = &self->_firstByteBuckets;
  count = self->_firstByteBuckets.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_firstByteBuckets->list[index];
}

- (unsigned)lastByteBucketsAtIndex:(unint64_t)index
{
  p_lastByteBuckets = &self->_lastByteBuckets;
  count = self->_lastByteBuckets.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_lastByteBuckets->list[index];
}

- (unsigned)directConnectionFirstByteBucketsAtIndex:(unint64_t)index
{
  p_directConnectionFirstByteBuckets = &self->_directConnectionFirstByteBuckets;
  count = self->_directConnectionFirstByteBuckets.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_directConnectionFirstByteBuckets->list[index];
}

- (unsigned)directConnectionLastByteBucketsAtIndex:(unint64_t)index
{
  p_directConnectionLastByteBuckets = &self->_directConnectionLastByteBuckets;
  count = self->_directConnectionLastByteBuckets.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_directConnectionLastByteBuckets->list[index];
}

- (unsigned)udpRttBucketsAtIndex:(unint64_t)index
{
  p_udpRttBuckets = &self->_udpRttBuckets;
  count = self->_udpRttBuckets.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_udpRttBuckets->list[index];
}

- (int)protocolType
{
  if ((*&self->_has & 0x10) != 0)
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
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
  v3.super_class = AWDNetworkServiceProxyRequestStatistics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNetworkServiceProxyRequestStatistics description](&v3, sel_description), -[AWDNetworkServiceProxyRequestStatistics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v5 = self->_interfaceType - 1;
    if (v5 >= 4)
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_interfaceType];
    }

    else
    {
      v6 = off_29EE32AF0[v5];
    }

    [dictionary setObject:v6 forKey:@"interface_type"];
  }

  firstPartyServiceName = self->_firstPartyServiceName;
  if (firstPartyServiceName)
  {
    [dictionary setObject:firstPartyServiceName forKey:@"first_party_service_name"];
  }

  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_requestCount), @"request_count"}];
    v8 = self->_has;
    if ((v8 & 0x40) == 0)
    {
LABEL_12:
      if ((v8 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_12;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_requestFailedCount), @"request_failed_count"}];
  v8 = self->_has;
  if ((v8 & 2) == 0)
  {
LABEL_13:
    if ((v8 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_directConnectionCount), @"direct_connection_count"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_14:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_directConnectionFailedCount), @"direct_connection_failed_count"}];
  }

LABEL_15:
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"first_byte_buckets"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"last_byte_buckets"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"direct_connection_first_byte_buckets"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"direct_connection_last_byte_buckets"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"udp_rtt_buckets"];
  if ((*&self->_has & 0x10) != 0)
  {
    v9 = self->_protocolType - 1;
    if (v9 >= 3)
    {
      v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_protocolType];
    }

    else
    {
      v10 = off_29EE32B10[v9];
    }

    [dictionary setObject:v10 forKey:@"protocol_type"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    interfaceType = self->_interfaceType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_firstPartyServiceName)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    requestCount = self->_requestCount;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
    if ((v7 & 0x40) == 0)
    {
LABEL_9:
      if ((v7 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_9;
  }

  requestFailedCount = self->_requestFailedCount;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((v7 & 2) == 0)
  {
LABEL_10:
    if ((v7 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_31:
  directConnectionCount = self->_directConnectionCount;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    directConnectionFailedCount = self->_directConnectionFailedCount;
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
  if (self->_firstByteBuckets.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_firstByteBuckets.list[v9];
      PBDataWriterWriteUint32Field();
      ++v9;
    }

    while (v9 < self->_firstByteBuckets.count);
  }

  if (self->_lastByteBuckets.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_lastByteBuckets.list[v11];
      PBDataWriterWriteUint32Field();
      ++v11;
    }

    while (v11 < self->_lastByteBuckets.count);
  }

  if (self->_directConnectionFirstByteBuckets.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_directConnectionFirstByteBuckets.list[v13];
      PBDataWriterWriteUint32Field();
      ++v13;
    }

    while (v13 < self->_directConnectionFirstByteBuckets.count);
  }

  if (self->_directConnectionLastByteBuckets.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_directConnectionLastByteBuckets.list[v15];
      PBDataWriterWriteUint32Field();
      ++v15;
    }

    while (v15 < self->_directConnectionLastByteBuckets.count);
  }

  if (self->_udpRttBuckets.count)
  {
    v17 = 0;
    do
    {
      v18 = self->_udpRttBuckets.list[v17];
      PBDataWriterWriteUint32Field();
      ++v17;
    }

    while (v17 < self->_udpRttBuckets.count);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    protocolType = self->_protocolType;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 16) = self->_timestamp;
    *(to + 168) |= 1u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(to + 38) = self->_interfaceType;
    *(to + 168) |= 8u;
  }

  if (self->_firstPartyServiceName)
  {
    [to setFirstPartyServiceName:?];
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    *(to + 40) = self->_requestCount;
    *(to + 168) |= 0x20u;
    v6 = self->_has;
    if ((v6 & 0x40) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_10;
      }

LABEL_37:
      *(to + 34) = self->_directConnectionCount;
      *(to + 168) |= 2u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_9;
  }

  *(to + 41) = self->_requestFailedCount;
  *(to + 168) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    goto LABEL_37;
  }

LABEL_10:
  if ((v6 & 4) != 0)
  {
LABEL_11:
    *(to + 35) = self->_directConnectionFailedCount;
    *(to + 168) |= 4u;
  }

LABEL_12:
  if ([(AWDNetworkServiceProxyRequestStatistics *)self firstByteBucketsCount])
  {
    [to clearFirstByteBuckets];
    firstByteBucketsCount = [(AWDNetworkServiceProxyRequestStatistics *)self firstByteBucketsCount];
    if (firstByteBucketsCount)
    {
      v8 = firstByteBucketsCount;
      for (i = 0; i != v8; ++i)
      {
        [to addFirstByteBuckets:{-[AWDNetworkServiceProxyRequestStatistics firstByteBucketsAtIndex:](self, "firstByteBucketsAtIndex:", i)}];
      }
    }
  }

  if ([(AWDNetworkServiceProxyRequestStatistics *)self lastByteBucketsCount])
  {
    [to clearLastByteBuckets];
    lastByteBucketsCount = [(AWDNetworkServiceProxyRequestStatistics *)self lastByteBucketsCount];
    if (lastByteBucketsCount)
    {
      v11 = lastByteBucketsCount;
      for (j = 0; j != v11; ++j)
      {
        [to addLastByteBuckets:{-[AWDNetworkServiceProxyRequestStatistics lastByteBucketsAtIndex:](self, "lastByteBucketsAtIndex:", j)}];
      }
    }
  }

  if ([(AWDNetworkServiceProxyRequestStatistics *)self directConnectionFirstByteBucketsCount])
  {
    [to clearDirectConnectionFirstByteBuckets];
    directConnectionFirstByteBucketsCount = [(AWDNetworkServiceProxyRequestStatistics *)self directConnectionFirstByteBucketsCount];
    if (directConnectionFirstByteBucketsCount)
    {
      v14 = directConnectionFirstByteBucketsCount;
      for (k = 0; k != v14; ++k)
      {
        [to addDirectConnectionFirstByteBuckets:{-[AWDNetworkServiceProxyRequestStatistics directConnectionFirstByteBucketsAtIndex:](self, "directConnectionFirstByteBucketsAtIndex:", k)}];
      }
    }
  }

  if ([(AWDNetworkServiceProxyRequestStatistics *)self directConnectionLastByteBucketsCount])
  {
    [to clearDirectConnectionLastByteBuckets];
    directConnectionLastByteBucketsCount = [(AWDNetworkServiceProxyRequestStatistics *)self directConnectionLastByteBucketsCount];
    if (directConnectionLastByteBucketsCount)
    {
      v17 = directConnectionLastByteBucketsCount;
      for (m = 0; m != v17; ++m)
      {
        [to addDirectConnectionLastByteBuckets:{-[AWDNetworkServiceProxyRequestStatistics directConnectionLastByteBucketsAtIndex:](self, "directConnectionLastByteBucketsAtIndex:", m)}];
      }
    }
  }

  if ([(AWDNetworkServiceProxyRequestStatistics *)self udpRttBucketsCount])
  {
    [to clearUdpRttBuckets];
    udpRttBucketsCount = [(AWDNetworkServiceProxyRequestStatistics *)self udpRttBucketsCount];
    if (udpRttBucketsCount)
    {
      v20 = udpRttBucketsCount;
      for (n = 0; n != v20; ++n)
      {
        [to addUdpRttBuckets:{-[AWDNetworkServiceProxyRequestStatistics udpRttBucketsAtIndex:](self, "udpRttBucketsAtIndex:", n)}];
      }
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(to + 39) = self->_protocolType;
    *(to + 168) |= 0x10u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 128) = self->_timestamp;
    *(v5 + 168) |= 1u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 152) = self->_interfaceType;
    *(v5 + 168) |= 8u;
  }

  *(v6 + 144) = [(NSString *)self->_firstPartyServiceName copyWithZone:zone];
  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    *(v6 + 160) = self->_requestCount;
    *(v6 + 168) |= 0x20u;
    v8 = self->_has;
    if ((v8 & 0x40) == 0)
    {
LABEL_7:
      if ((v8 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 164) = self->_requestFailedCount;
  *(v6 + 168) |= 0x40u;
  v8 = self->_has;
  if ((v8 & 2) == 0)
  {
LABEL_8:
    if ((v8 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  *(v6 + 136) = self->_directConnectionCount;
  *(v6 + 168) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    *(v6 + 140) = self->_directConnectionFailedCount;
    *(v6 + 168) |= 4u;
  }

LABEL_10:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 156) = self->_protocolType;
    *(v6 + 168) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    has = self->_has;
    v7 = *(equal + 168);
    if (has)
    {
      if ((*(equal + 168) & 1) == 0 || self->_timestamp != *(equal + 16))
      {
        goto LABEL_44;
      }
    }

    else if (*(equal + 168))
    {
LABEL_44:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 168) & 8) == 0 || self->_interfaceType != *(equal + 38))
      {
        goto LABEL_44;
      }
    }

    else if ((*(equal + 168) & 8) != 0)
    {
      goto LABEL_44;
    }

    firstPartyServiceName = self->_firstPartyServiceName;
    if (firstPartyServiceName | *(equal + 18))
    {
      IsEqual = [(NSString *)firstPartyServiceName isEqual:?];
      if (!IsEqual)
      {
        return IsEqual;
      }

      has = self->_has;
    }

    v9 = *(equal + 168);
    if ((has & 0x20) != 0)
    {
      if ((*(equal + 168) & 0x20) == 0 || self->_requestCount != *(equal + 40))
      {
        goto LABEL_44;
      }
    }

    else if ((*(equal + 168) & 0x20) != 0)
    {
      goto LABEL_44;
    }

    if ((has & 0x40) != 0)
    {
      if ((*(equal + 168) & 0x40) == 0 || self->_requestFailedCount != *(equal + 41))
      {
        goto LABEL_44;
      }
    }

    else if ((*(equal + 168) & 0x40) != 0)
    {
      goto LABEL_44;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 168) & 2) == 0 || self->_directConnectionCount != *(equal + 34))
      {
        goto LABEL_44;
      }
    }

    else if ((*(equal + 168) & 2) != 0)
    {
      goto LABEL_44;
    }

    if ((has & 4) != 0)
    {
      if ((*(equal + 168) & 4) == 0 || self->_directConnectionFailedCount != *(equal + 35))
      {
        goto LABEL_44;
      }
    }

    else if ((*(equal + 168) & 4) != 0)
    {
      goto LABEL_44;
    }

    IsEqual = PBRepeatedUInt32IsEqual();
    if (IsEqual)
    {
      IsEqual = PBRepeatedUInt32IsEqual();
      if (IsEqual)
      {
        IsEqual = PBRepeatedUInt32IsEqual();
        if (IsEqual)
        {
          IsEqual = PBRepeatedUInt32IsEqual();
          if (IsEqual)
          {
            IsEqual = PBRepeatedUInt32IsEqual();
            if (IsEqual)
            {
              LOBYTE(IsEqual) = (*(equal + 168) & 0x10) == 0;
              if ((*&self->_has & 0x10) != 0)
              {
                if ((*(equal + 168) & 0x10) == 0 || self->_protocolType != *(equal + 39))
                {
                  goto LABEL_44;
                }

                LOBYTE(IsEqual) = 1;
              }
            }
          }
        }
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v16 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v15 = 2654435761 * self->_interfaceType;
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_6:
  v14 = [(NSString *)self->_firstPartyServiceName hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v13 = 2654435761 * self->_requestCount;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_8:
      v3 = 2654435761 * self->_requestFailedCount;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      v4 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v4 = 2654435761 * self->_directConnectionCount;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    v5 = 2654435761 * self->_directConnectionFailedCount;
    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
LABEL_15:
  v6 = PBRepeatedUInt32Hash();
  v7 = PBRepeatedUInt32Hash();
  v8 = PBRepeatedUInt32Hash();
  v9 = PBRepeatedUInt32Hash();
  v10 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x10) != 0)
  {
    v11 = 2654435761 * self->_protocolType;
  }

  else
  {
    v11 = 0;
  }

  return v15 ^ v16 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v14 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 168);
  if (v5)
  {
    self->_timestamp = *(from + 16);
    *&self->_has |= 1u;
    v5 = *(from + 168);
  }

  if ((v5 & 8) != 0)
  {
    self->_interfaceType = *(from + 38);
    *&self->_has |= 8u;
  }

  if (*(from + 18))
  {
    [(AWDNetworkServiceProxyRequestStatistics *)self setFirstPartyServiceName:?];
  }

  v6 = *(from + 168);
  if ((v6 & 0x20) != 0)
  {
    self->_requestCount = *(from + 40);
    *&self->_has |= 0x20u;
    v6 = *(from + 168);
    if ((v6 & 0x40) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }
  }

  else if ((*(from + 168) & 0x40) == 0)
  {
    goto LABEL_9;
  }

  self->_requestFailedCount = *(from + 41);
  *&self->_has |= 0x40u;
  v6 = *(from + 168);
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_32:
  self->_directConnectionCount = *(from + 34);
  *&self->_has |= 2u;
  if ((*(from + 168) & 4) != 0)
  {
LABEL_11:
    self->_directConnectionFailedCount = *(from + 35);
    *&self->_has |= 4u;
  }

LABEL_12:
  firstByteBucketsCount = [from firstByteBucketsCount];
  if (firstByteBucketsCount)
  {
    v8 = firstByteBucketsCount;
    for (i = 0; i != v8; ++i)
    {
      -[AWDNetworkServiceProxyRequestStatistics addFirstByteBuckets:](self, "addFirstByteBuckets:", [from firstByteBucketsAtIndex:i]);
    }
  }

  lastByteBucketsCount = [from lastByteBucketsCount];
  if (lastByteBucketsCount)
  {
    v11 = lastByteBucketsCount;
    for (j = 0; j != v11; ++j)
    {
      -[AWDNetworkServiceProxyRequestStatistics addLastByteBuckets:](self, "addLastByteBuckets:", [from lastByteBucketsAtIndex:j]);
    }
  }

  directConnectionFirstByteBucketsCount = [from directConnectionFirstByteBucketsCount];
  if (directConnectionFirstByteBucketsCount)
  {
    v14 = directConnectionFirstByteBucketsCount;
    for (k = 0; k != v14; ++k)
    {
      -[AWDNetworkServiceProxyRequestStatistics addDirectConnectionFirstByteBuckets:](self, "addDirectConnectionFirstByteBuckets:", [from directConnectionFirstByteBucketsAtIndex:k]);
    }
  }

  directConnectionLastByteBucketsCount = [from directConnectionLastByteBucketsCount];
  if (directConnectionLastByteBucketsCount)
  {
    v17 = directConnectionLastByteBucketsCount;
    for (m = 0; m != v17; ++m)
    {
      -[AWDNetworkServiceProxyRequestStatistics addDirectConnectionLastByteBuckets:](self, "addDirectConnectionLastByteBuckets:", [from directConnectionLastByteBucketsAtIndex:m]);
    }
  }

  udpRttBucketsCount = [from udpRttBucketsCount];
  if (udpRttBucketsCount)
  {
    v20 = udpRttBucketsCount;
    for (n = 0; n != v20; ++n)
    {
      -[AWDNetworkServiceProxyRequestStatistics addUdpRttBuckets:](self, "addUdpRttBuckets:", [from udpRttBucketsAtIndex:n]);
    }
  }

  if ((*(from + 168) & 0x10) != 0)
  {
    self->_protocolType = *(from + 39);
    *&self->_has |= 0x10u;
  }
}

@end