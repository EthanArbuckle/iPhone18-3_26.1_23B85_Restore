@interface AWDMDNSResponderDNSMessageSizeStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)querySizeCountAtIndex:(unint64_t)a3;
- (unsigned)responseSizeCountAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (unsigned)querySizeCountAtIndex:(unint64_t)a3
{
  p_querySizeCounts = &self->_querySizeCounts;
  count = self->_querySizeCounts.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_querySizeCounts->list[a3];
}

- (unsigned)responseSizeCountAtIndex:(unint64_t)a3
{
  p_responseSizeCounts = &self->_responseSizeCounts;
  count = self->_responseSizeCounts.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_responseSizeCounts->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMDNSResponderDNSMessageSizeStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMDNSResponderDNSMessageSizeStats description](&v3, sel_description), -[AWDMDNSResponderDNSMessageSizeStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"querySizeCount"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"responseSizeCount"];
  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 7) = self->_timestamp;
    *(a3 + 64) |= 1u;
  }

  if ([(AWDMDNSResponderDNSMessageSizeStats *)self querySizeCountsCount])
  {
    [a3 clearQuerySizeCounts];
    v5 = [(AWDMDNSResponderDNSMessageSizeStats *)self querySizeCountsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addQuerySizeCount:{-[AWDMDNSResponderDNSMessageSizeStats querySizeCountAtIndex:](self, "querySizeCountAtIndex:", i)}];
      }
    }
  }

  if ([(AWDMDNSResponderDNSMessageSizeStats *)self responseSizeCountsCount])
  {
    [a3 clearResponseSizeCounts];
    v8 = [(AWDMDNSResponderDNSMessageSizeStats *)self responseSizeCountsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addResponseSizeCount:{-[AWDMDNSResponderDNSMessageSizeStats responseSizeCountAtIndex:](self, "responseSizeCountAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  if (![a3 isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(a3 + 64);
  if (*&self->_has)
  {
    if ((*(a3 + 64) & 1) == 0 || self->_timestamp != *(a3 + 7))
    {
      return 0;
    }
  }

  else if (*(a3 + 64))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 64))
  {
    self->_timestamp = *(a3 + 7);
    *&self->_has |= 1u;
  }

  v5 = [a3 querySizeCountsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDMDNSResponderDNSMessageSizeStats addQuerySizeCount:](self, "addQuerySizeCount:", [a3 querySizeCountAtIndex:i]);
    }
  }

  v8 = [a3 responseSizeCountsCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[AWDMDNSResponderDNSMessageSizeStats addResponseSizeCount:](self, "addResponseSizeCount:", [a3 responseSizeCountAtIndex:j]);
    }
  }
}

@end