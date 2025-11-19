@interface AWDNetworkServiceProxyRequestStatistics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInterfaceType:(id)a3;
- (int)StringAsProtocolType:(id)a3;
- (int)interfaceType;
- (int)protocolType;
- (unint64_t)hash;
- (unsigned)directConnectionFirstByteBucketsAtIndex:(unint64_t)a3;
- (unsigned)directConnectionLastByteBucketsAtIndex:(unint64_t)a3;
- (unsigned)firstByteBucketsAtIndex:(unint64_t)a3;
- (unsigned)lastByteBucketsAtIndex:(unint64_t)a3;
- (unsigned)udpRttBucketsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDirectConnectionCount:(BOOL)a3;
- (void)setHasDirectConnectionFailedCount:(BOOL)a3;
- (void)setHasInterfaceType:(BOOL)a3;
- (void)setHasProtocolType:(BOOL)a3;
- (void)setHasRequestCount:(BOOL)a3;
- (void)setHasRequestFailedCount:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasInterfaceType:(BOOL)a3
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

- (int)StringAsInterfaceType:(id)a3
{
  if ([a3 isEqualToString:@"NetworkServiceProxyInterfaceType_WIFI"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NetworkServiceProxyInterfaceType_CELLULAR"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NetworkServiceProxyInterfaceType_WIRED"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NetworkServiceProxyInterfaceType_VIRTUAL"])
  {
    return 4;
  }

  return 1;
}

- (void)setHasRequestCount:(BOOL)a3
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

- (void)setHasRequestFailedCount:(BOOL)a3
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

- (void)setHasDirectConnectionCount:(BOOL)a3
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

- (void)setHasDirectConnectionFailedCount:(BOOL)a3
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

- (unsigned)firstByteBucketsAtIndex:(unint64_t)a3
{
  p_firstByteBuckets = &self->_firstByteBuckets;
  count = self->_firstByteBuckets.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_firstByteBuckets->list[a3];
}

- (unsigned)lastByteBucketsAtIndex:(unint64_t)a3
{
  p_lastByteBuckets = &self->_lastByteBuckets;
  count = self->_lastByteBuckets.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_lastByteBuckets->list[a3];
}

- (unsigned)directConnectionFirstByteBucketsAtIndex:(unint64_t)a3
{
  p_directConnectionFirstByteBuckets = &self->_directConnectionFirstByteBuckets;
  count = self->_directConnectionFirstByteBuckets.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_directConnectionFirstByteBuckets->list[a3];
}

- (unsigned)directConnectionLastByteBucketsAtIndex:(unint64_t)a3
{
  p_directConnectionLastByteBuckets = &self->_directConnectionLastByteBuckets;
  count = self->_directConnectionLastByteBuckets.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_directConnectionLastByteBuckets->list[a3];
}

- (unsigned)udpRttBucketsAtIndex:(unint64_t)a3
{
  p_udpRttBuckets = &self->_udpRttBuckets;
  count = self->_udpRttBuckets.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_udpRttBuckets->list[a3];
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

- (void)setHasProtocolType:(BOOL)a3
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

- (int)StringAsProtocolType:(id)a3
{
  if ([a3 isEqualToString:@"NetworkServiceProxyProtocolType_IPv4"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NetworkServiceProxyProtocolType_IPv6"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NetworkServiceProxyProtocolType_NAT64"])
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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

    [v3 setObject:v6 forKey:@"interface_type"];
  }

  firstPartyServiceName = self->_firstPartyServiceName;
  if (firstPartyServiceName)
  {
    [v3 setObject:firstPartyServiceName forKey:@"first_party_service_name"];
  }

  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_requestCount), @"request_count"}];
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_requestFailedCount), @"request_failed_count"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_directConnectionCount), @"direct_connection_count"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_14:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_directConnectionFailedCount), @"direct_connection_failed_count"}];
  }

LABEL_15:
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"first_byte_buckets"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"last_byte_buckets"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"direct_connection_first_byte_buckets"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"direct_connection_last_byte_buckets"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"udp_rtt_buckets"];
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

    [v3 setObject:v10 forKey:@"protocol_type"];
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 16) = self->_timestamp;
    *(a3 + 168) |= 1u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(a3 + 38) = self->_interfaceType;
    *(a3 + 168) |= 8u;
  }

  if (self->_firstPartyServiceName)
  {
    [a3 setFirstPartyServiceName:?];
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    *(a3 + 40) = self->_requestCount;
    *(a3 + 168) |= 0x20u;
    v6 = self->_has;
    if ((v6 & 0x40) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_10;
      }

LABEL_37:
      *(a3 + 34) = self->_directConnectionCount;
      *(a3 + 168) |= 2u;
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

  *(a3 + 41) = self->_requestFailedCount;
  *(a3 + 168) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    goto LABEL_37;
  }

LABEL_10:
  if ((v6 & 4) != 0)
  {
LABEL_11:
    *(a3 + 35) = self->_directConnectionFailedCount;
    *(a3 + 168) |= 4u;
  }

LABEL_12:
  if ([(AWDNetworkServiceProxyRequestStatistics *)self firstByteBucketsCount])
  {
    [a3 clearFirstByteBuckets];
    v7 = [(AWDNetworkServiceProxyRequestStatistics *)self firstByteBucketsCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        [a3 addFirstByteBuckets:{-[AWDNetworkServiceProxyRequestStatistics firstByteBucketsAtIndex:](self, "firstByteBucketsAtIndex:", i)}];
      }
    }
  }

  if ([(AWDNetworkServiceProxyRequestStatistics *)self lastByteBucketsCount])
  {
    [a3 clearLastByteBuckets];
    v10 = [(AWDNetworkServiceProxyRequestStatistics *)self lastByteBucketsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        [a3 addLastByteBuckets:{-[AWDNetworkServiceProxyRequestStatistics lastByteBucketsAtIndex:](self, "lastByteBucketsAtIndex:", j)}];
      }
    }
  }

  if ([(AWDNetworkServiceProxyRequestStatistics *)self directConnectionFirstByteBucketsCount])
  {
    [a3 clearDirectConnectionFirstByteBuckets];
    v13 = [(AWDNetworkServiceProxyRequestStatistics *)self directConnectionFirstByteBucketsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        [a3 addDirectConnectionFirstByteBuckets:{-[AWDNetworkServiceProxyRequestStatistics directConnectionFirstByteBucketsAtIndex:](self, "directConnectionFirstByteBucketsAtIndex:", k)}];
      }
    }
  }

  if ([(AWDNetworkServiceProxyRequestStatistics *)self directConnectionLastByteBucketsCount])
  {
    [a3 clearDirectConnectionLastByteBuckets];
    v16 = [(AWDNetworkServiceProxyRequestStatistics *)self directConnectionLastByteBucketsCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        [a3 addDirectConnectionLastByteBuckets:{-[AWDNetworkServiceProxyRequestStatistics directConnectionLastByteBucketsAtIndex:](self, "directConnectionLastByteBucketsAtIndex:", m)}];
      }
    }
  }

  if ([(AWDNetworkServiceProxyRequestStatistics *)self udpRttBucketsCount])
  {
    [a3 clearUdpRttBuckets];
    v19 = [(AWDNetworkServiceProxyRequestStatistics *)self udpRttBucketsCount];
    if (v19)
    {
      v20 = v19;
      for (n = 0; n != v20; ++n)
      {
        [a3 addUdpRttBuckets:{-[AWDNetworkServiceProxyRequestStatistics udpRttBucketsAtIndex:](self, "udpRttBucketsAtIndex:", n)}];
      }
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(a3 + 39) = self->_protocolType;
    *(a3 + 168) |= 0x10u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  *(v6 + 144) = [(NSString *)self->_firstPartyServiceName copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    has = self->_has;
    v7 = *(a3 + 168);
    if (has)
    {
      if ((*(a3 + 168) & 1) == 0 || self->_timestamp != *(a3 + 16))
      {
        goto LABEL_44;
      }
    }

    else if (*(a3 + 168))
    {
LABEL_44:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 168) & 8) == 0 || self->_interfaceType != *(a3 + 38))
      {
        goto LABEL_44;
      }
    }

    else if ((*(a3 + 168) & 8) != 0)
    {
      goto LABEL_44;
    }

    firstPartyServiceName = self->_firstPartyServiceName;
    if (firstPartyServiceName | *(a3 + 18))
    {
      IsEqual = [(NSString *)firstPartyServiceName isEqual:?];
      if (!IsEqual)
      {
        return IsEqual;
      }

      has = self->_has;
    }

    v9 = *(a3 + 168);
    if ((has & 0x20) != 0)
    {
      if ((*(a3 + 168) & 0x20) == 0 || self->_requestCount != *(a3 + 40))
      {
        goto LABEL_44;
      }
    }

    else if ((*(a3 + 168) & 0x20) != 0)
    {
      goto LABEL_44;
    }

    if ((has & 0x40) != 0)
    {
      if ((*(a3 + 168) & 0x40) == 0 || self->_requestFailedCount != *(a3 + 41))
      {
        goto LABEL_44;
      }
    }

    else if ((*(a3 + 168) & 0x40) != 0)
    {
      goto LABEL_44;
    }

    if ((has & 2) != 0)
    {
      if ((*(a3 + 168) & 2) == 0 || self->_directConnectionCount != *(a3 + 34))
      {
        goto LABEL_44;
      }
    }

    else if ((*(a3 + 168) & 2) != 0)
    {
      goto LABEL_44;
    }

    if ((has & 4) != 0)
    {
      if ((*(a3 + 168) & 4) == 0 || self->_directConnectionFailedCount != *(a3 + 35))
      {
        goto LABEL_44;
      }
    }

    else if ((*(a3 + 168) & 4) != 0)
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
              LOBYTE(IsEqual) = (*(a3 + 168) & 0x10) == 0;
              if ((*&self->_has & 0x10) != 0)
              {
                if ((*(a3 + 168) & 0x10) == 0 || self->_protocolType != *(a3 + 39))
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

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 168);
  if (v5)
  {
    self->_timestamp = *(a3 + 16);
    *&self->_has |= 1u;
    v5 = *(a3 + 168);
  }

  if ((v5 & 8) != 0)
  {
    self->_interfaceType = *(a3 + 38);
    *&self->_has |= 8u;
  }

  if (*(a3 + 18))
  {
    [(AWDNetworkServiceProxyRequestStatistics *)self setFirstPartyServiceName:?];
  }

  v6 = *(a3 + 168);
  if ((v6 & 0x20) != 0)
  {
    self->_requestCount = *(a3 + 40);
    *&self->_has |= 0x20u;
    v6 = *(a3 + 168);
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

  else if ((*(a3 + 168) & 0x40) == 0)
  {
    goto LABEL_9;
  }

  self->_requestFailedCount = *(a3 + 41);
  *&self->_has |= 0x40u;
  v6 = *(a3 + 168);
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
  self->_directConnectionCount = *(a3 + 34);
  *&self->_has |= 2u;
  if ((*(a3 + 168) & 4) != 0)
  {
LABEL_11:
    self->_directConnectionFailedCount = *(a3 + 35);
    *&self->_has |= 4u;
  }

LABEL_12:
  v7 = [a3 firstByteBucketsCount];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      -[AWDNetworkServiceProxyRequestStatistics addFirstByteBuckets:](self, "addFirstByteBuckets:", [a3 firstByteBucketsAtIndex:i]);
    }
  }

  v10 = [a3 lastByteBucketsCount];
  if (v10)
  {
    v11 = v10;
    for (j = 0; j != v11; ++j)
    {
      -[AWDNetworkServiceProxyRequestStatistics addLastByteBuckets:](self, "addLastByteBuckets:", [a3 lastByteBucketsAtIndex:j]);
    }
  }

  v13 = [a3 directConnectionFirstByteBucketsCount];
  if (v13)
  {
    v14 = v13;
    for (k = 0; k != v14; ++k)
    {
      -[AWDNetworkServiceProxyRequestStatistics addDirectConnectionFirstByteBuckets:](self, "addDirectConnectionFirstByteBuckets:", [a3 directConnectionFirstByteBucketsAtIndex:k]);
    }
  }

  v16 = [a3 directConnectionLastByteBucketsCount];
  if (v16)
  {
    v17 = v16;
    for (m = 0; m != v17; ++m)
    {
      -[AWDNetworkServiceProxyRequestStatistics addDirectConnectionLastByteBuckets:](self, "addDirectConnectionLastByteBuckets:", [a3 directConnectionLastByteBucketsAtIndex:m]);
    }
  }

  v19 = [a3 udpRttBucketsCount];
  if (v19)
  {
    v20 = v19;
    for (n = 0; n != v20; ++n)
    {
      -[AWDNetworkServiceProxyRequestStatistics addUdpRttBuckets:](self, "addUdpRttBuckets:", [a3 udpRttBucketsAtIndex:n]);
    }
  }

  if ((*(a3 + 168) & 0x10) != 0)
  {
    self->_protocolType = *(a3 + 39);
    *&self->_has |= 0x10u;
  }
}

@end