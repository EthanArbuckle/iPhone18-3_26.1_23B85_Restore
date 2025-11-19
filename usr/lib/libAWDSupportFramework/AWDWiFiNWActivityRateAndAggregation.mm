@interface AWDWiFiNWActivityRateAndAggregation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)ampduAGGAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (unint64_t)rxMCSSuccessAtIndex:(unint64_t)a3;
- (unint64_t)rxVHTSuccessAtIndex:(unint64_t)a3;
- (unint64_t)txMCSSuccessAtIndex:(unint64_t)a3;
- (unint64_t)txVHTSuccessAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (unint64_t)rxVHTSuccessAtIndex:(unint64_t)a3
{
  p_rxVHTSuccess = &self->_rxVHTSuccess;
  count = self->_rxVHTSuccess.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_rxVHTSuccess->list[a3];
}

- (unint64_t)txVHTSuccessAtIndex:(unint64_t)a3
{
  p_txVHTSuccess = &self->_txVHTSuccess;
  count = self->_txVHTSuccess.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_txVHTSuccess->list[a3];
}

- (unint64_t)rxMCSSuccessAtIndex:(unint64_t)a3
{
  p_rxMCSSuccess = &self->_rxMCSSuccess;
  count = self->_rxMCSSuccess.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_rxMCSSuccess->list[a3];
}

- (unint64_t)txMCSSuccessAtIndex:(unint64_t)a3
{
  p_txMCSSuccess = &self->_txMCSSuccess;
  count = self->_txMCSSuccess.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_txMCSSuccess->list[a3];
}

- (unint64_t)ampduAGGAtIndex:(unint64_t)a3
{
  p_ampduAGGs = &self->_ampduAGGs;
  count = self->_ampduAGGs.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_ampduAGGs->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityRateAndAggregation;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityRateAndAggregation description](&v3, sel_description), -[AWDWiFiNWActivityRateAndAggregation dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v2 = [MEMORY[0x29EDB8E00] dictionary];
  [v2 setObject:PBRepeatedUInt64NSArray() forKey:@"rxVHTSuccess"];
  [v2 setObject:PBRepeatedUInt64NSArray() forKey:@"txVHTSuccess"];
  [v2 setObject:PBRepeatedUInt64NSArray() forKey:@"rxMCSSuccess"];
  [v2 setObject:PBRepeatedUInt64NSArray() forKey:@"txMCSSuccess"];
  [v2 setObject:PBRepeatedUInt64NSArray() forKey:@"ampduAGG"];
  return v2;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if ([(AWDWiFiNWActivityRateAndAggregation *)self rxVHTSuccessCount])
  {
    [a3 clearRxVHTSuccess];
    v5 = [(AWDWiFiNWActivityRateAndAggregation *)self rxVHTSuccessCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addRxVHTSuccess:{-[AWDWiFiNWActivityRateAndAggregation rxVHTSuccessAtIndex:](self, "rxVHTSuccessAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityRateAndAggregation *)self txVHTSuccessCount])
  {
    [a3 clearTxVHTSuccess];
    v8 = [(AWDWiFiNWActivityRateAndAggregation *)self txVHTSuccessCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addTxVHTSuccess:{-[AWDWiFiNWActivityRateAndAggregation txVHTSuccessAtIndex:](self, "txVHTSuccessAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityRateAndAggregation *)self rxMCSSuccessCount])
  {
    [a3 clearRxMCSSuccess];
    v11 = [(AWDWiFiNWActivityRateAndAggregation *)self rxMCSSuccessCount];
    if (v11)
    {
      v12 = v11;
      for (k = 0; k != v12; ++k)
      {
        [a3 addRxMCSSuccess:{-[AWDWiFiNWActivityRateAndAggregation rxMCSSuccessAtIndex:](self, "rxMCSSuccessAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityRateAndAggregation *)self txMCSSuccessCount])
  {
    [a3 clearTxMCSSuccess];
    v14 = [(AWDWiFiNWActivityRateAndAggregation *)self txMCSSuccessCount];
    if (v14)
    {
      v15 = v14;
      for (m = 0; m != v15; ++m)
      {
        [a3 addTxMCSSuccess:{-[AWDWiFiNWActivityRateAndAggregation txMCSSuccessAtIndex:](self, "txMCSSuccessAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityRateAndAggregation *)self ampduAGGsCount])
  {
    [a3 clearAmpduAGGs];
    v17 = [(AWDWiFiNWActivityRateAndAggregation *)self ampduAGGsCount];
    if (v17)
    {
      v18 = v17;
      for (n = 0; n != v18; ++n)
      {
        [a3 addAmpduAGG:{-[AWDWiFiNWActivityRateAndAggregation ampduAGGAtIndex:](self, "ampduAGGAtIndex:", n)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (![a3 isMemberOfClass:objc_opt_class()] || !PBRepeatedUInt64IsEqual() || !PBRepeatedUInt64IsEqual() || !PBRepeatedUInt64IsEqual() || !PBRepeatedUInt64IsEqual())
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

- (void)mergeFrom:(id)a3
{
  v5 = [a3 rxVHTSuccessCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiNWActivityRateAndAggregation addRxVHTSuccess:](self, "addRxVHTSuccess:", [a3 rxVHTSuccessAtIndex:i]);
    }
  }

  v8 = [a3 txVHTSuccessCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[AWDWiFiNWActivityRateAndAggregation addTxVHTSuccess:](self, "addTxVHTSuccess:", [a3 txVHTSuccessAtIndex:j]);
    }
  }

  v11 = [a3 rxMCSSuccessCount];
  if (v11)
  {
    v12 = v11;
    for (k = 0; k != v12; ++k)
    {
      -[AWDWiFiNWActivityRateAndAggregation addRxMCSSuccess:](self, "addRxMCSSuccess:", [a3 rxMCSSuccessAtIndex:k]);
    }
  }

  v14 = [a3 txMCSSuccessCount];
  if (v14)
  {
    v15 = v14;
    for (m = 0; m != v15; ++m)
    {
      -[AWDWiFiNWActivityRateAndAggregation addTxMCSSuccess:](self, "addTxMCSSuccess:", [a3 txMCSSuccessAtIndex:m]);
    }
  }

  v17 = [a3 ampduAGGsCount];
  if (v17)
  {
    v18 = v17;
    for (n = 0; n != v18; ++n)
    {
      -[AWDWiFiNWActivityRateAndAggregation addAmpduAGG:](self, "addAmpduAGG:", [a3 ampduAGGAtIndex:n]);
    }
  }
}

@end