@interface AWDMDNSResponderDNSMessageSizeStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)querySizeCountAtIndex:(unint64_t)index;
- (unsigned)responseSizeCountAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDMDNSResponderDNSMessageSizeStats

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDMDNSResponderDNSMessageSizeStats;
  [(AWDMDNSResponderDNSMessageSizeStats *)&v3 dealloc];
}

- (unsigned)querySizeCountAtIndex:(unint64_t)index
{
  p_querySizeCounts = &self->_querySizeCounts;
  count = self->_querySizeCounts.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_querySizeCounts->list[index];
}

- (unsigned)responseSizeCountAtIndex:(unint64_t)index
{
  p_responseSizeCounts = &self->_responseSizeCounts;
  count = self->_responseSizeCounts.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_responseSizeCounts->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMDNSResponderDNSMessageSizeStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMDNSResponderDNSMessageSizeStats description](&v3, sel_description), -[AWDMDNSResponderDNSMessageSizeStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"querySizeCount"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"responseSizeCount"];
  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_querySizeCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_querySizeCounts.count)
    {
      v5 = 0;
      do
      {
        v6 = self->_querySizeCounts.list[v5];
        PBDataWriterWriteUint32Field();
        ++v5;
      }

      while (v5 < self->_querySizeCounts.count);
    }

    PBDataWriterRecallMark();
  }

  p_responseSizeCounts = &self->_responseSizeCounts;
  if (p_responseSizeCounts->count)
  {
    PBDataWriterPlaceMark();
    if (p_responseSizeCounts->count)
    {
      v8 = 0;
      do
      {
        v9 = p_responseSizeCounts->list[v8];
        PBDataWriterWriteUint32Field();
        ++v8;
      }

      while (v8 < p_responseSizeCounts->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 7) = self->_timestamp;
    *(to + 64) |= 1u;
  }

  if ([(AWDMDNSResponderDNSMessageSizeStats *)self querySizeCountsCount])
  {
    [to clearQuerySizeCounts];
    querySizeCountsCount = [(AWDMDNSResponderDNSMessageSizeStats *)self querySizeCountsCount];
    if (querySizeCountsCount)
    {
      v6 = querySizeCountsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addQuerySizeCount:{-[AWDMDNSResponderDNSMessageSizeStats querySizeCountAtIndex:](self, "querySizeCountAtIndex:", i)}];
      }
    }
  }

  if ([(AWDMDNSResponderDNSMessageSizeStats *)self responseSizeCountsCount])
  {
    [to clearResponseSizeCounts];
    responseSizeCountsCount = [(AWDMDNSResponderDNSMessageSizeStats *)self responseSizeCountsCount];
    if (responseSizeCountsCount)
    {
      v9 = responseSizeCountsCount;
      for (j = 0; j != v9; ++j)
      {
        [to addResponseSizeCount:{-[AWDMDNSResponderDNSMessageSizeStats responseSizeCountAtIndex:](self, "responseSizeCountAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 56) = self->_timestamp;
    *(v4 + 64) |= 1u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(equal + 64);
  if (*&self->_has)
  {
    if ((*(equal + 64) & 1) == 0 || self->_timestamp != *(equal + 7))
    {
      return 0;
    }
  }

  else if (*(equal + 64))
  {
    return 0;
  }

  if (!PBRepeatedUInt32IsEqual())
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
  }

  else
  {
    v2 = 0;
  }

  v3 = PBRepeatedUInt32Hash() ^ v2;
  return v3 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  if (*(from + 64))
  {
    self->_timestamp = *(from + 7);
    *&self->_has |= 1u;
  }

  querySizeCountsCount = [from querySizeCountsCount];
  if (querySizeCountsCount)
  {
    v6 = querySizeCountsCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDMDNSResponderDNSMessageSizeStats addQuerySizeCount:](self, "addQuerySizeCount:", [from querySizeCountAtIndex:i]);
    }
  }

  responseSizeCountsCount = [from responseSizeCountsCount];
  if (responseSizeCountsCount)
  {
    v9 = responseSizeCountsCount;
    for (j = 0; j != v9; ++j)
    {
      -[AWDMDNSResponderDNSMessageSizeStats addResponseSizeCount:](self, "addResponseSizeCount:", [from responseSizeCountAtIndex:j]);
    }
  }
}

@end