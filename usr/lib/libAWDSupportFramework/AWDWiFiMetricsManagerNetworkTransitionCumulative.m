@interface AWDWiFiMetricsManagerNetworkTransitionCumulative
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)channelScanCountAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasColocatedNetworksFoundCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerNetworkTransitionCumulative

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerNetworkTransitionCumulative;
  [(AWDWiFiMetricsManagerNetworkTransitionCumulative *)&v3 dealloc];
}

- (void)setHasColocatedNetworksFoundCount:(BOOL)a3
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

- (unsigned)channelScanCountAtIndex:(unint64_t)a3
{
  p_channelScanCounts = &self->_channelScanCounts;
  count = self->_channelScanCounts.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_channelScanCounts->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerNetworkTransitionCumulative;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerNetworkTransitionCumulative description](&v3, sel_description), -[AWDWiFiMetricsManagerNetworkTransitionCumulative dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_colocatedNetworksFoundCount), @"colocatedNetworksFoundCount"}];
  }

  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"channelScanCount"];
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

  if ((has & 2) != 0)
  {
    colocatedNetworksFoundCount = self->_colocatedNetworksFoundCount;
    PBDataWriterWriteUint32Field();
  }

  p_channelScanCounts = &self->_channelScanCounts;
  if (p_channelScanCounts->count)
  {
    v8 = 0;
    do
    {
      v9 = p_channelScanCounts->list[v8];
      PBDataWriterWriteUint32Field();
      ++v8;
    }

    while (v8 < p_channelScanCounts->count);
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 4) = self->_timestamp;
    *(a3 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 10) = self->_colocatedNetworksFoundCount;
    *(a3 + 44) |= 2u;
  }

  if ([(AWDWiFiMetricsManagerNetworkTransitionCumulative *)self channelScanCountsCount])
  {
    [a3 clearChannelScanCounts];
    v6 = [(AWDWiFiMetricsManagerNetworkTransitionCumulative *)self channelScanCountsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addChannelScanCount:{-[AWDWiFiMetricsManagerNetworkTransitionCumulative channelScanCountAtIndex:](self, "channelScanCountAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if (has)
  {
    *(v4 + 32) = self->_timestamp;
    *(v4 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 40) = self->_colocatedNetworksFoundCount;
    *(v4 + 44) |= 2u;
  }

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (![a3 isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(a3 + 44);
  if (*&self->_has)
  {
    if ((*(a3 + 44) & 1) == 0 || self->_timestamp != *(a3 + 4))
    {
      return 0;
    }
  }

  else if (*(a3 + 44))
  {
    return 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 44) & 2) == 0 || self->_colocatedNetworksFoundCount != *(a3 + 10))
    {
      return 0;
    }
  }

  else if ((*(a3 + 44) & 2) != 0)
  {
    return 0;
  }

  return PBRepeatedUInt32IsEqual();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2 ^ PBRepeatedUInt32Hash();
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_colocatedNetworksFoundCount;
  return v3 ^ v2 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 44);
  if (v5)
  {
    self->_timestamp = *(a3 + 4);
    *&self->_has |= 1u;
    v5 = *(a3 + 44);
  }

  if ((v5 & 2) != 0)
  {
    self->_colocatedNetworksFoundCount = *(a3 + 10);
    *&self->_has |= 2u;
  }

  v6 = [a3 channelScanCountsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[AWDWiFiMetricsManagerNetworkTransitionCumulative addChannelScanCount:](self, "addChannelScanCount:", [a3 channelScanCountAtIndex:i]);
    }
  }
}

@end