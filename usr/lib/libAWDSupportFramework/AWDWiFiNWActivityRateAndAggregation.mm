@interface AWDWiFiNWActivityRateAndAggregation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)ampduAGGAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (unint64_t)rxMCSSuccessAtIndex:(unint64_t)index;
- (unint64_t)rxVHTSuccessAtIndex:(unint64_t)index;
- (unint64_t)txMCSSuccessAtIndex:(unint64_t)index;
- (unint64_t)txVHTSuccessAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiNWActivityRateAndAggregation

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityRateAndAggregation;
  [(AWDWiFiNWActivityRateAndAggregation *)&v3 dealloc];
}

- (unint64_t)rxVHTSuccessAtIndex:(unint64_t)index
{
  p_rxVHTSuccess = &self->_rxVHTSuccess;
  count = self->_rxVHTSuccess.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_rxVHTSuccess->list[index];
}

- (unint64_t)txVHTSuccessAtIndex:(unint64_t)index
{
  p_txVHTSuccess = &self->_txVHTSuccess;
  count = self->_txVHTSuccess.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_txVHTSuccess->list[index];
}

- (unint64_t)rxMCSSuccessAtIndex:(unint64_t)index
{
  p_rxMCSSuccess = &self->_rxMCSSuccess;
  count = self->_rxMCSSuccess.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_rxMCSSuccess->list[index];
}

- (unint64_t)txMCSSuccessAtIndex:(unint64_t)index
{
  p_txMCSSuccess = &self->_txMCSSuccess;
  count = self->_txMCSSuccess.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_txMCSSuccess->list[index];
}

- (unint64_t)ampduAGGAtIndex:(unint64_t)index
{
  p_ampduAGGs = &self->_ampduAGGs;
  count = self->_ampduAGGs.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_ampduAGGs->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityRateAndAggregation;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityRateAndAggregation description](&v3, sel_description), -[AWDWiFiNWActivityRateAndAggregation dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  [dictionary setObject:PBRepeatedUInt64NSArray() forKey:@"rxVHTSuccess"];
  [dictionary setObject:PBRepeatedUInt64NSArray() forKey:@"txVHTSuccess"];
  [dictionary setObject:PBRepeatedUInt64NSArray() forKey:@"rxMCSSuccess"];
  [dictionary setObject:PBRepeatedUInt64NSArray() forKey:@"txMCSSuccess"];
  [dictionary setObject:PBRepeatedUInt64NSArray() forKey:@"ampduAGG"];
  return dictionary;
}

- (void)writeTo:(id)to
{
  p_rxVHTSuccess = &self->_rxVHTSuccess;
  if (self->_rxVHTSuccess.count)
  {
    v5 = 0;
    do
    {
      v6 = p_rxVHTSuccess->list[v5];
      PBDataWriterWriteUint64Field();
      ++v5;
    }

    while (v5 < p_rxVHTSuccess->count);
  }

  if (self->_txVHTSuccess.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_txVHTSuccess.list[v7];
      PBDataWriterWriteUint64Field();
      ++v7;
    }

    while (v7 < self->_txVHTSuccess.count);
  }

  if (self->_rxMCSSuccess.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_rxMCSSuccess.list[v9];
      PBDataWriterWriteUint64Field();
      ++v9;
    }

    while (v9 < self->_rxMCSSuccess.count);
  }

  if (self->_txMCSSuccess.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_txMCSSuccess.list[v11];
      PBDataWriterWriteUint64Field();
      ++v11;
    }

    while (v11 < self->_txMCSSuccess.count);
  }

  p_ampduAGGs = &self->_ampduAGGs;
  if (p_ampduAGGs->count)
  {
    v14 = 0;
    do
    {
      v15 = p_ampduAGGs->list[v14];
      PBDataWriterWriteUint64Field();
      ++v14;
    }

    while (v14 < p_ampduAGGs->count);
  }
}

- (void)copyTo:(id)to
{
  if ([(AWDWiFiNWActivityRateAndAggregation *)self rxVHTSuccessCount])
  {
    [to clearRxVHTSuccess];
    rxVHTSuccessCount = [(AWDWiFiNWActivityRateAndAggregation *)self rxVHTSuccessCount];
    if (rxVHTSuccessCount)
    {
      v6 = rxVHTSuccessCount;
      for (i = 0; i != v6; ++i)
      {
        [to addRxVHTSuccess:{-[AWDWiFiNWActivityRateAndAggregation rxVHTSuccessAtIndex:](self, "rxVHTSuccessAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityRateAndAggregation *)self txVHTSuccessCount])
  {
    [to clearTxVHTSuccess];
    txVHTSuccessCount = [(AWDWiFiNWActivityRateAndAggregation *)self txVHTSuccessCount];
    if (txVHTSuccessCount)
    {
      v9 = txVHTSuccessCount;
      for (j = 0; j != v9; ++j)
      {
        [to addTxVHTSuccess:{-[AWDWiFiNWActivityRateAndAggregation txVHTSuccessAtIndex:](self, "txVHTSuccessAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityRateAndAggregation *)self rxMCSSuccessCount])
  {
    [to clearRxMCSSuccess];
    rxMCSSuccessCount = [(AWDWiFiNWActivityRateAndAggregation *)self rxMCSSuccessCount];
    if (rxMCSSuccessCount)
    {
      v12 = rxMCSSuccessCount;
      for (k = 0; k != v12; ++k)
      {
        [to addRxMCSSuccess:{-[AWDWiFiNWActivityRateAndAggregation rxMCSSuccessAtIndex:](self, "rxMCSSuccessAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityRateAndAggregation *)self txMCSSuccessCount])
  {
    [to clearTxMCSSuccess];
    txMCSSuccessCount = [(AWDWiFiNWActivityRateAndAggregation *)self txMCSSuccessCount];
    if (txMCSSuccessCount)
    {
      v15 = txMCSSuccessCount;
      for (m = 0; m != v15; ++m)
      {
        [to addTxMCSSuccess:{-[AWDWiFiNWActivityRateAndAggregation txMCSSuccessAtIndex:](self, "txMCSSuccessAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityRateAndAggregation *)self ampduAGGsCount])
  {
    [to clearAmpduAGGs];
    ampduAGGsCount = [(AWDWiFiNWActivityRateAndAggregation *)self ampduAGGsCount];
    if (ampduAGGsCount)
    {
      v18 = ampduAGGsCount;
      for (n = 0; n != v18; ++n)
      {
        [to addAmpduAGG:{-[AWDWiFiNWActivityRateAndAggregation ampduAGGAtIndex:](self, "ampduAGGAtIndex:", n)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()] || !PBRepeatedUInt64IsEqual() || !PBRepeatedUInt64IsEqual() || !PBRepeatedUInt64IsEqual() || !PBRepeatedUInt64IsEqual())
  {
    return 0;
  }

  return PBRepeatedUInt64IsEqual();
}

- (unint64_t)hash
{
  v2 = PBRepeatedUInt64Hash();
  v3 = PBRepeatedUInt64Hash() ^ v2;
  v4 = PBRepeatedUInt64Hash();
  v5 = v3 ^ v4 ^ PBRepeatedUInt64Hash();
  return v5 ^ PBRepeatedUInt64Hash();
}

- (void)mergeFrom:(id)from
{
  rxVHTSuccessCount = [from rxVHTSuccessCount];
  if (rxVHTSuccessCount)
  {
    v6 = rxVHTSuccessCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiNWActivityRateAndAggregation addRxVHTSuccess:](self, "addRxVHTSuccess:", [from rxVHTSuccessAtIndex:i]);
    }
  }

  txVHTSuccessCount = [from txVHTSuccessCount];
  if (txVHTSuccessCount)
  {
    v9 = txVHTSuccessCount;
    for (j = 0; j != v9; ++j)
    {
      -[AWDWiFiNWActivityRateAndAggregation addTxVHTSuccess:](self, "addTxVHTSuccess:", [from txVHTSuccessAtIndex:j]);
    }
  }

  rxMCSSuccessCount = [from rxMCSSuccessCount];
  if (rxMCSSuccessCount)
  {
    v12 = rxMCSSuccessCount;
    for (k = 0; k != v12; ++k)
    {
      -[AWDWiFiNWActivityRateAndAggregation addRxMCSSuccess:](self, "addRxMCSSuccess:", [from rxMCSSuccessAtIndex:k]);
    }
  }

  txMCSSuccessCount = [from txMCSSuccessCount];
  if (txMCSSuccessCount)
  {
    v15 = txMCSSuccessCount;
    for (m = 0; m != v15; ++m)
    {
      -[AWDWiFiNWActivityRateAndAggregation addTxMCSSuccess:](self, "addTxMCSSuccess:", [from txMCSSuccessAtIndex:m]);
    }
  }

  ampduAGGsCount = [from ampduAGGsCount];
  if (ampduAGGsCount)
  {
    v18 = ampduAGGsCount;
    for (n = 0; n != v18; ++n)
    {
      -[AWDWiFiNWActivityRateAndAggregation addAmpduAGG:](self, "addAmpduAGG:", [from ampduAGGAtIndex:n]);
    }
  }
}

@end