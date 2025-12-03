@interface AWDWiFiMetricsManagerNetworkTransitionCumulative
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)channelScanCountAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasColocatedNetworksFoundCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsManagerNetworkTransitionCumulative

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerNetworkTransitionCumulative;
  [(AWDWiFiMetricsManagerNetworkTransitionCumulative *)&v3 dealloc];
}

- (void)setHasColocatedNetworksFoundCount:(BOOL)count
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

- (unsigned)channelScanCountAtIndex:(unint64_t)index
{
  p_channelScanCounts = &self->_channelScanCounts;
  count = self->_channelScanCounts.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_channelScanCounts->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerNetworkTransitionCumulative;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerNetworkTransitionCumulative description](&v3, sel_description), -[AWDWiFiMetricsManagerNetworkTransitionCumulative dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_colocatedNetworksFoundCount), @"colocatedNetworksFoundCount"}];
  }

  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"channelScanCount"];
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 4) = self->_timestamp;
    *(to + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 10) = self->_colocatedNetworksFoundCount;
    *(to + 44) |= 2u;
  }

  if ([(AWDWiFiMetricsManagerNetworkTransitionCumulative *)self channelScanCountsCount])
  {
    [to clearChannelScanCounts];
    channelScanCountsCount = [(AWDWiFiMetricsManagerNetworkTransitionCumulative *)self channelScanCountsCount];
    if (channelScanCountsCount)
    {
      v7 = channelScanCountsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addChannelScanCount:{-[AWDWiFiMetricsManagerNetworkTransitionCumulative channelScanCountAtIndex:](self, "channelScanCountAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(equal + 44);
  if (*&self->_has)
  {
    if ((*(equal + 44) & 1) == 0 || self->_timestamp != *(equal + 4))
    {
      return 0;
    }
  }

  else if (*(equal + 44))
  {
    return 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 44) & 2) == 0 || self->_colocatedNetworksFoundCount != *(equal + 10))
    {
      return 0;
    }
  }

  else if ((*(equal + 44) & 2) != 0)
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

- (void)mergeFrom:(id)from
{
  v5 = *(from + 44);
  if (v5)
  {
    self->_timestamp = *(from + 4);
    *&self->_has |= 1u;
    v5 = *(from + 44);
  }

  if ((v5 & 2) != 0)
  {
    self->_colocatedNetworksFoundCount = *(from + 10);
    *&self->_has |= 2u;
  }

  channelScanCountsCount = [from channelScanCountsCount];
  if (channelScanCountsCount)
  {
    v7 = channelScanCountsCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDWiFiMetricsManagerNetworkTransitionCumulative addChannelScanCount:](self, "addChannelScanCount:", [from channelScanCountAtIndex:i]);
    }
  }
}

@end