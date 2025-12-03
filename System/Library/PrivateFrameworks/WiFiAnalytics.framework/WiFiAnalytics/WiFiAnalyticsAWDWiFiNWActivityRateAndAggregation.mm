@interface WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)ampduAGGAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (unint64_t)rxHESuccessAtIndex:(unint64_t)index;
- (unint64_t)rxMCSSuccessAtIndex:(unint64_t)index;
- (unint64_t)rxVHTSuccessAtIndex:(unint64_t)index;
- (unint64_t)rxampduMUMIMOAtIndex:(unint64_t)index;
- (unint64_t)rxampduOFDMAAtIndex:(unint64_t)index;
- (unint64_t)rxampduSUAtIndex:(unint64_t)index;
- (unint64_t)txHESuccessAtIndex:(unint64_t)index;
- (unint64_t)txMCSSuccessAtIndex:(unint64_t)index;
- (unint64_t)txVHTSuccessAtIndex:(unint64_t)index;
- (unint64_t)txampduMUMIMOAtIndex:(unint64_t)index;
- (unint64_t)txampduOFDMAAtIndex:(unint64_t)index;
- (unint64_t)txampduSUAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation;
  [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)&v3 dealloc];
}

- (unint64_t)rxVHTSuccessAtIndex:(unint64_t)index
{
  p_rxVHTSuccess = &self->_rxVHTSuccess;
  count = self->_rxVHTSuccess.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rxVHTSuccess->list[index];
}

- (unint64_t)txVHTSuccessAtIndex:(unint64_t)index
{
  p_txVHTSuccess = &self->_txVHTSuccess;
  count = self->_txVHTSuccess.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_txVHTSuccess->list[index];
}

- (unint64_t)rxMCSSuccessAtIndex:(unint64_t)index
{
  p_rxMCSSuccess = &self->_rxMCSSuccess;
  count = self->_rxMCSSuccess.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rxMCSSuccess->list[index];
}

- (unint64_t)txMCSSuccessAtIndex:(unint64_t)index
{
  p_txMCSSuccess = &self->_txMCSSuccess;
  count = self->_txMCSSuccess.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_txMCSSuccess->list[index];
}

- (unint64_t)ampduAGGAtIndex:(unint64_t)index
{
  p_ampduAGGs = &self->_ampduAGGs;
  count = self->_ampduAGGs.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_ampduAGGs->list[index];
}

- (unint64_t)rxHESuccessAtIndex:(unint64_t)index
{
  p_rxHESuccess = &self->_rxHESuccess;
  count = self->_rxHESuccess.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rxHESuccess->list[index];
}

- (unint64_t)txHESuccessAtIndex:(unint64_t)index
{
  p_txHESuccess = &self->_txHESuccess;
  count = self->_txHESuccess.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_txHESuccess->list[index];
}

- (unint64_t)rxampduSUAtIndex:(unint64_t)index
{
  p_rxampduSUs = &self->_rxampduSUs;
  count = self->_rxampduSUs.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rxampduSUs->list[index];
}

- (unint64_t)txampduSUAtIndex:(unint64_t)index
{
  p_txampduSUs = &self->_txampduSUs;
  count = self->_txampduSUs.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_txampduSUs->list[index];
}

- (unint64_t)rxampduOFDMAAtIndex:(unint64_t)index
{
  p_rxampduOFDMAs = &self->_rxampduOFDMAs;
  count = self->_rxampduOFDMAs.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rxampduOFDMAs->list[index];
}

- (unint64_t)txampduOFDMAAtIndex:(unint64_t)index
{
  p_txampduOFDMAs = &self->_txampduOFDMAs;
  count = self->_txampduOFDMAs.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_txampduOFDMAs->list[index];
}

- (unint64_t)rxampduMUMIMOAtIndex:(unint64_t)index
{
  p_rxampduMUMIMOs = &self->_rxampduMUMIMOs;
  count = self->_rxampduMUMIMOs.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rxampduMUMIMOs->list[index];
}

- (unint64_t)txampduMUMIMOAtIndex:(unint64_t)index
{
  p_txampduMUMIMOs = &self->_txampduMUMIMOs;
  count = self->_txampduMUMIMOs.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_txampduMUMIMOs->list[index];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v3 forKey:@"rxVHTSuccess"];

  v4 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v4 forKey:@"txVHTSuccess"];

  v5 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v5 forKey:@"rxMCSSuccess"];

  v6 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v6 forKey:@"txMCSSuccess"];

  v7 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v7 forKey:@"ampduAGG"];

  v8 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v8 forKey:@"rxHESuccess"];

  v9 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v9 forKey:@"txHESuccess"];

  v10 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v10 forKey:@"rxampduSU"];

  v11 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v11 forKey:@"txampduSU"];

  v12 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v12 forKey:@"rxampduOFDMA"];

  v13 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v13 forKey:@"txampduOFDMA"];

  v14 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v14 forKey:@"rxampduMUMIMO"];

  v15 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v15 forKey:@"txampduMUMIMO"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v32 = toCopy;
  if (self->_rxVHTSuccess.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_rxVHTSuccess.list[v5];
      PBDataWriterWriteUint64Field();
      toCopy = v32;
      ++v5;
    }

    while (v5 < self->_rxVHTSuccess.count);
  }

  if (self->_txVHTSuccess.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_txVHTSuccess.list[v7];
      PBDataWriterWriteUint64Field();
      toCopy = v32;
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
      toCopy = v32;
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
      toCopy = v32;
      ++v11;
    }

    while (v11 < self->_txMCSSuccess.count);
  }

  if (self->_ampduAGGs.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_ampduAGGs.list[v13];
      PBDataWriterWriteUint64Field();
      toCopy = v32;
      ++v13;
    }

    while (v13 < self->_ampduAGGs.count);
  }

  if (self->_rxHESuccess.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_rxHESuccess.list[v15];
      PBDataWriterWriteUint64Field();
      toCopy = v32;
      ++v15;
    }

    while (v15 < self->_rxHESuccess.count);
  }

  if (self->_txHESuccess.count)
  {
    v17 = 0;
    do
    {
      v18 = self->_txHESuccess.list[v17];
      PBDataWriterWriteUint64Field();
      toCopy = v32;
      ++v17;
    }

    while (v17 < self->_txHESuccess.count);
  }

  if (self->_rxampduSUs.count)
  {
    v19 = 0;
    do
    {
      v20 = self->_rxampduSUs.list[v19];
      PBDataWriterWriteUint64Field();
      toCopy = v32;
      ++v19;
    }

    while (v19 < self->_rxampduSUs.count);
  }

  if (self->_txampduSUs.count)
  {
    v21 = 0;
    do
    {
      v22 = self->_txampduSUs.list[v21];
      PBDataWriterWriteUint64Field();
      toCopy = v32;
      ++v21;
    }

    while (v21 < self->_txampduSUs.count);
  }

  if (self->_rxampduOFDMAs.count)
  {
    v23 = 0;
    do
    {
      v24 = self->_rxampduOFDMAs.list[v23];
      PBDataWriterWriteUint64Field();
      toCopy = v32;
      ++v23;
    }

    while (v23 < self->_rxampduOFDMAs.count);
  }

  if (self->_txampduOFDMAs.count)
  {
    v25 = 0;
    do
    {
      v26 = self->_txampduOFDMAs.list[v25];
      PBDataWriterWriteUint64Field();
      toCopy = v32;
      ++v25;
    }

    while (v25 < self->_txampduOFDMAs.count);
  }

  if (self->_rxampduMUMIMOs.count)
  {
    v27 = 0;
    do
    {
      v28 = self->_rxampduMUMIMOs.list[v27];
      PBDataWriterWriteUint64Field();
      toCopy = v32;
      ++v27;
    }

    while (v27 < self->_rxampduMUMIMOs.count);
  }

  p_txampduMUMIMOs = &self->_txampduMUMIMOs;
  if (p_txampduMUMIMOs->count)
  {
    v30 = 0;
    do
    {
      v31 = p_txampduMUMIMOs->list[v30];
      PBDataWriterWriteUint64Field();
      toCopy = v32;
      ++v30;
    }

    while (v30 < p_txampduMUMIMOs->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxVHTSuccessCount])
  {
    [toCopy clearRxVHTSuccess];
    rxVHTSuccessCount = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxVHTSuccessCount];
    if (rxVHTSuccessCount)
    {
      v5 = rxVHTSuccessCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addRxVHTSuccess:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation rxVHTSuccessAtIndex:](self, "rxVHTSuccessAtIndex:", i)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txVHTSuccessCount])
  {
    [toCopy clearTxVHTSuccess];
    txVHTSuccessCount = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txVHTSuccessCount];
    if (txVHTSuccessCount)
    {
      v8 = txVHTSuccessCount;
      for (j = 0; j != v8; ++j)
      {
        [toCopy addTxVHTSuccess:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation txVHTSuccessAtIndex:](self, "txVHTSuccessAtIndex:", j)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxMCSSuccessCount])
  {
    [toCopy clearRxMCSSuccess];
    rxMCSSuccessCount = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxMCSSuccessCount];
    if (rxMCSSuccessCount)
    {
      v11 = rxMCSSuccessCount;
      for (k = 0; k != v11; ++k)
      {
        [toCopy addRxMCSSuccess:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation rxMCSSuccessAtIndex:](self, "rxMCSSuccessAtIndex:", k)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txMCSSuccessCount])
  {
    [toCopy clearTxMCSSuccess];
    txMCSSuccessCount = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txMCSSuccessCount];
    if (txMCSSuccessCount)
    {
      v14 = txMCSSuccessCount;
      for (m = 0; m != v14; ++m)
      {
        [toCopy addTxMCSSuccess:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation txMCSSuccessAtIndex:](self, "txMCSSuccessAtIndex:", m)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self ampduAGGsCount])
  {
    [toCopy clearAmpduAGGs];
    ampduAGGsCount = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self ampduAGGsCount];
    if (ampduAGGsCount)
    {
      v17 = ampduAGGsCount;
      for (n = 0; n != v17; ++n)
      {
        [toCopy addAmpduAGG:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation ampduAGGAtIndex:](self, "ampduAGGAtIndex:", n)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxHESuccessCount])
  {
    [toCopy clearRxHESuccess];
    rxHESuccessCount = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxHESuccessCount];
    if (rxHESuccessCount)
    {
      v20 = rxHESuccessCount;
      for (ii = 0; ii != v20; ++ii)
      {
        [toCopy addRxHESuccess:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation rxHESuccessAtIndex:](self, "rxHESuccessAtIndex:", ii)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txHESuccessCount])
  {
    [toCopy clearTxHESuccess];
    txHESuccessCount = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txHESuccessCount];
    if (txHESuccessCount)
    {
      v23 = txHESuccessCount;
      for (jj = 0; jj != v23; ++jj)
      {
        [toCopy addTxHESuccess:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation txHESuccessAtIndex:](self, "txHESuccessAtIndex:", jj)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxampduSUsCount])
  {
    [toCopy clearRxampduSUs];
    rxampduSUsCount = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxampduSUsCount];
    if (rxampduSUsCount)
    {
      v26 = rxampduSUsCount;
      for (kk = 0; kk != v26; ++kk)
      {
        [toCopy addRxampduSU:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation rxampduSUAtIndex:](self, "rxampduSUAtIndex:", kk)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txampduSUsCount])
  {
    [toCopy clearTxampduSUs];
    txampduSUsCount = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txampduSUsCount];
    if (txampduSUsCount)
    {
      v29 = txampduSUsCount;
      for (mm = 0; mm != v29; ++mm)
      {
        [toCopy addTxampduSU:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation txampduSUAtIndex:](self, "txampduSUAtIndex:", mm)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxampduOFDMAsCount])
  {
    [toCopy clearRxampduOFDMAs];
    rxampduOFDMAsCount = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxampduOFDMAsCount];
    if (rxampduOFDMAsCount)
    {
      v32 = rxampduOFDMAsCount;
      for (nn = 0; nn != v32; ++nn)
      {
        [toCopy addRxampduOFDMA:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation rxampduOFDMAAtIndex:](self, "rxampduOFDMAAtIndex:", nn)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txampduOFDMAsCount])
  {
    [toCopy clearTxampduOFDMAs];
    txampduOFDMAsCount = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txampduOFDMAsCount];
    if (txampduOFDMAsCount)
    {
      v35 = txampduOFDMAsCount;
      for (i1 = 0; i1 != v35; ++i1)
      {
        [toCopy addTxampduOFDMA:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation txampduOFDMAAtIndex:](self, "txampduOFDMAAtIndex:", i1)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxampduMUMIMOsCount])
  {
    [toCopy clearRxampduMUMIMOs];
    rxampduMUMIMOsCount = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxampduMUMIMOsCount];
    if (rxampduMUMIMOsCount)
    {
      v38 = rxampduMUMIMOsCount;
      for (i2 = 0; i2 != v38; ++i2)
      {
        [toCopy addRxampduMUMIMO:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation rxampduMUMIMOAtIndex:](self, "rxampduMUMIMOAtIndex:", i2)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txampduMUMIMOsCount])
  {
    [toCopy clearTxampduMUMIMOs];
    txampduMUMIMOsCount = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txampduMUMIMOsCount];
    if (txampduMUMIMOsCount)
    {
      v41 = txampduMUMIMOsCount;
      for (i3 = 0; i3 != v41; ++i3)
      {
        [toCopy addTxampduMUMIMO:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation txampduMUMIMOAtIndex:](self, "txampduMUMIMOAtIndex:", i3)}];
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
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual())
  {
    IsEqual = PBRepeatedUInt64IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v2 = PBRepeatedUInt64Hash();
  v3 = PBRepeatedUInt64Hash() ^ v2;
  v4 = PBRepeatedUInt64Hash();
  v5 = v3 ^ v4 ^ PBRepeatedUInt64Hash();
  v6 = PBRepeatedUInt64Hash();
  v7 = v6 ^ PBRepeatedUInt64Hash();
  v8 = v5 ^ v7 ^ PBRepeatedUInt64Hash();
  v9 = PBRepeatedUInt64Hash();
  v10 = v9 ^ PBRepeatedUInt64Hash();
  v11 = v10 ^ PBRepeatedUInt64Hash();
  v12 = v8 ^ v11 ^ PBRepeatedUInt64Hash();
  v13 = PBRepeatedUInt64Hash();
  return v12 ^ v13 ^ PBRepeatedUInt64Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  rxVHTSuccessCount = [fromCopy rxVHTSuccessCount];
  if (rxVHTSuccessCount)
  {
    v5 = rxVHTSuccessCount;
    for (i = 0; i != v5; ++i)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addRxVHTSuccess:](self, "addRxVHTSuccess:", [fromCopy rxVHTSuccessAtIndex:i]);
    }
  }

  txVHTSuccessCount = [fromCopy txVHTSuccessCount];
  if (txVHTSuccessCount)
  {
    v8 = txVHTSuccessCount;
    for (j = 0; j != v8; ++j)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addTxVHTSuccess:](self, "addTxVHTSuccess:", [fromCopy txVHTSuccessAtIndex:j]);
    }
  }

  rxMCSSuccessCount = [fromCopy rxMCSSuccessCount];
  if (rxMCSSuccessCount)
  {
    v11 = rxMCSSuccessCount;
    for (k = 0; k != v11; ++k)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addRxMCSSuccess:](self, "addRxMCSSuccess:", [fromCopy rxMCSSuccessAtIndex:k]);
    }
  }

  txMCSSuccessCount = [fromCopy txMCSSuccessCount];
  if (txMCSSuccessCount)
  {
    v14 = txMCSSuccessCount;
    for (m = 0; m != v14; ++m)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addTxMCSSuccess:](self, "addTxMCSSuccess:", [fromCopy txMCSSuccessAtIndex:m]);
    }
  }

  ampduAGGsCount = [fromCopy ampduAGGsCount];
  if (ampduAGGsCount)
  {
    v17 = ampduAGGsCount;
    for (n = 0; n != v17; ++n)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addAmpduAGG:](self, "addAmpduAGG:", [fromCopy ampduAGGAtIndex:n]);
    }
  }

  rxHESuccessCount = [fromCopy rxHESuccessCount];
  if (rxHESuccessCount)
  {
    v20 = rxHESuccessCount;
    for (ii = 0; ii != v20; ++ii)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addRxHESuccess:](self, "addRxHESuccess:", [fromCopy rxHESuccessAtIndex:ii]);
    }
  }

  txHESuccessCount = [fromCopy txHESuccessCount];
  if (txHESuccessCount)
  {
    v23 = txHESuccessCount;
    for (jj = 0; jj != v23; ++jj)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addTxHESuccess:](self, "addTxHESuccess:", [fromCopy txHESuccessAtIndex:jj]);
    }
  }

  rxampduSUsCount = [fromCopy rxampduSUsCount];
  if (rxampduSUsCount)
  {
    v26 = rxampduSUsCount;
    for (kk = 0; kk != v26; ++kk)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addRxampduSU:](self, "addRxampduSU:", [fromCopy rxampduSUAtIndex:kk]);
    }
  }

  txampduSUsCount = [fromCopy txampduSUsCount];
  if (txampduSUsCount)
  {
    v29 = txampduSUsCount;
    for (mm = 0; mm != v29; ++mm)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addTxampduSU:](self, "addTxampduSU:", [fromCopy txampduSUAtIndex:mm]);
    }
  }

  rxampduOFDMAsCount = [fromCopy rxampduOFDMAsCount];
  if (rxampduOFDMAsCount)
  {
    v32 = rxampduOFDMAsCount;
    for (nn = 0; nn != v32; ++nn)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addRxampduOFDMA:](self, "addRxampduOFDMA:", [fromCopy rxampduOFDMAAtIndex:nn]);
    }
  }

  txampduOFDMAsCount = [fromCopy txampduOFDMAsCount];
  if (txampduOFDMAsCount)
  {
    v35 = txampduOFDMAsCount;
    for (i1 = 0; i1 != v35; ++i1)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addTxampduOFDMA:](self, "addTxampduOFDMA:", [fromCopy txampduOFDMAAtIndex:i1]);
    }
  }

  rxampduMUMIMOsCount = [fromCopy rxampduMUMIMOsCount];
  if (rxampduMUMIMOsCount)
  {
    v38 = rxampduMUMIMOsCount;
    for (i2 = 0; i2 != v38; ++i2)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addRxampduMUMIMO:](self, "addRxampduMUMIMO:", [fromCopy rxampduMUMIMOAtIndex:i2]);
    }
  }

  txampduMUMIMOsCount = [fromCopy txampduMUMIMOsCount];
  if (txampduMUMIMOsCount)
  {
    v41 = txampduMUMIMOsCount;
    for (i3 = 0; i3 != v41; ++i3)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addTxampduMUMIMO:](self, "addTxampduMUMIMO:", [fromCopy txampduMUMIMOAtIndex:i3]);
    }
  }
}

@end