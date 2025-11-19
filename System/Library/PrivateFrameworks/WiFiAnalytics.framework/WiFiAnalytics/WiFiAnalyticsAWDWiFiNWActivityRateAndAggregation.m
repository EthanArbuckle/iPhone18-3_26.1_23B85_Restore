@interface WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)ampduAGGAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (unint64_t)rxHESuccessAtIndex:(unint64_t)a3;
- (unint64_t)rxMCSSuccessAtIndex:(unint64_t)a3;
- (unint64_t)rxVHTSuccessAtIndex:(unint64_t)a3;
- (unint64_t)rxampduMUMIMOAtIndex:(unint64_t)a3;
- (unint64_t)rxampduOFDMAAtIndex:(unint64_t)a3;
- (unint64_t)rxampduSUAtIndex:(unint64_t)a3;
- (unint64_t)txHESuccessAtIndex:(unint64_t)a3;
- (unint64_t)txMCSSuccessAtIndex:(unint64_t)a3;
- (unint64_t)txVHTSuccessAtIndex:(unint64_t)a3;
- (unint64_t)txampduMUMIMOAtIndex:(unint64_t)a3;
- (unint64_t)txampduOFDMAAtIndex:(unint64_t)a3;
- (unint64_t)txampduSUAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (unint64_t)rxVHTSuccessAtIndex:(unint64_t)a3
{
  p_rxVHTSuccess = &self->_rxVHTSuccess;
  count = self->_rxVHTSuccess.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rxVHTSuccess->list[a3];
}

- (unint64_t)txVHTSuccessAtIndex:(unint64_t)a3
{
  p_txVHTSuccess = &self->_txVHTSuccess;
  count = self->_txVHTSuccess.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_txVHTSuccess->list[a3];
}

- (unint64_t)rxMCSSuccessAtIndex:(unint64_t)a3
{
  p_rxMCSSuccess = &self->_rxMCSSuccess;
  count = self->_rxMCSSuccess.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rxMCSSuccess->list[a3];
}

- (unint64_t)txMCSSuccessAtIndex:(unint64_t)a3
{
  p_txMCSSuccess = &self->_txMCSSuccess;
  count = self->_txMCSSuccess.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_txMCSSuccess->list[a3];
}

- (unint64_t)ampduAGGAtIndex:(unint64_t)a3
{
  p_ampduAGGs = &self->_ampduAGGs;
  count = self->_ampduAGGs.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_ampduAGGs->list[a3];
}

- (unint64_t)rxHESuccessAtIndex:(unint64_t)a3
{
  p_rxHESuccess = &self->_rxHESuccess;
  count = self->_rxHESuccess.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rxHESuccess->list[a3];
}

- (unint64_t)txHESuccessAtIndex:(unint64_t)a3
{
  p_txHESuccess = &self->_txHESuccess;
  count = self->_txHESuccess.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_txHESuccess->list[a3];
}

- (unint64_t)rxampduSUAtIndex:(unint64_t)a3
{
  p_rxampduSUs = &self->_rxampduSUs;
  count = self->_rxampduSUs.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rxampduSUs->list[a3];
}

- (unint64_t)txampduSUAtIndex:(unint64_t)a3
{
  p_txampduSUs = &self->_txampduSUs;
  count = self->_txampduSUs.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_txampduSUs->list[a3];
}

- (unint64_t)rxampduOFDMAAtIndex:(unint64_t)a3
{
  p_rxampduOFDMAs = &self->_rxampduOFDMAs;
  count = self->_rxampduOFDMAs.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rxampduOFDMAs->list[a3];
}

- (unint64_t)txampduOFDMAAtIndex:(unint64_t)a3
{
  p_txampduOFDMAs = &self->_txampduOFDMAs;
  count = self->_txampduOFDMAs.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_txampduOFDMAs->list[a3];
}

- (unint64_t)rxampduMUMIMOAtIndex:(unint64_t)a3
{
  p_rxampduMUMIMOs = &self->_rxampduMUMIMOs;
  count = self->_rxampduMUMIMOs.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rxampduMUMIMOs->list[a3];
}

- (unint64_t)txampduMUMIMOAtIndex:(unint64_t)a3
{
  p_txampduMUMIMOs = &self->_txampduMUMIMOs;
  count = self->_txampduMUMIMOs.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_txampduMUMIMOs->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = PBRepeatedUInt64NSArray();
  [v2 setObject:v3 forKey:@"rxVHTSuccess"];

  v4 = PBRepeatedUInt64NSArray();
  [v2 setObject:v4 forKey:@"txVHTSuccess"];

  v5 = PBRepeatedUInt64NSArray();
  [v2 setObject:v5 forKey:@"rxMCSSuccess"];

  v6 = PBRepeatedUInt64NSArray();
  [v2 setObject:v6 forKey:@"txMCSSuccess"];

  v7 = PBRepeatedUInt64NSArray();
  [v2 setObject:v7 forKey:@"ampduAGG"];

  v8 = PBRepeatedUInt64NSArray();
  [v2 setObject:v8 forKey:@"rxHESuccess"];

  v9 = PBRepeatedUInt64NSArray();
  [v2 setObject:v9 forKey:@"txHESuccess"];

  v10 = PBRepeatedUInt64NSArray();
  [v2 setObject:v10 forKey:@"rxampduSU"];

  v11 = PBRepeatedUInt64NSArray();
  [v2 setObject:v11 forKey:@"txampduSU"];

  v12 = PBRepeatedUInt64NSArray();
  [v2 setObject:v12 forKey:@"rxampduOFDMA"];

  v13 = PBRepeatedUInt64NSArray();
  [v2 setObject:v13 forKey:@"txampduOFDMA"];

  v14 = PBRepeatedUInt64NSArray();
  [v2 setObject:v14 forKey:@"rxampduMUMIMO"];

  v15 = PBRepeatedUInt64NSArray();
  [v2 setObject:v15 forKey:@"txampduMUMIMO"];

  return v2;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v32 = v4;
  if (self->_rxVHTSuccess.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_rxVHTSuccess.list[v5];
      PBDataWriterWriteUint64Field();
      v4 = v32;
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
      v4 = v32;
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
      v4 = v32;
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
      v4 = v32;
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
      v4 = v32;
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
      v4 = v32;
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
      v4 = v32;
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
      v4 = v32;
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
      v4 = v32;
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
      v4 = v32;
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
      v4 = v32;
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
      v4 = v32;
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
      v4 = v32;
      ++v30;
    }

    while (v30 < p_txampduMUMIMOs->count);
  }
}

- (void)copyTo:(id)a3
{
  v43 = a3;
  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxVHTSuccessCount])
  {
    [v43 clearRxVHTSuccess];
    v4 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxVHTSuccessCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v43 addRxVHTSuccess:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation rxVHTSuccessAtIndex:](self, "rxVHTSuccessAtIndex:", i)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txVHTSuccessCount])
  {
    [v43 clearTxVHTSuccess];
    v7 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txVHTSuccessCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        [v43 addTxVHTSuccess:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation txVHTSuccessAtIndex:](self, "txVHTSuccessAtIndex:", j)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxMCSSuccessCount])
  {
    [v43 clearRxMCSSuccess];
    v10 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxMCSSuccessCount];
    if (v10)
    {
      v11 = v10;
      for (k = 0; k != v11; ++k)
      {
        [v43 addRxMCSSuccess:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation rxMCSSuccessAtIndex:](self, "rxMCSSuccessAtIndex:", k)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txMCSSuccessCount])
  {
    [v43 clearTxMCSSuccess];
    v13 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txMCSSuccessCount];
    if (v13)
    {
      v14 = v13;
      for (m = 0; m != v14; ++m)
      {
        [v43 addTxMCSSuccess:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation txMCSSuccessAtIndex:](self, "txMCSSuccessAtIndex:", m)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self ampduAGGsCount])
  {
    [v43 clearAmpduAGGs];
    v16 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self ampduAGGsCount];
    if (v16)
    {
      v17 = v16;
      for (n = 0; n != v17; ++n)
      {
        [v43 addAmpduAGG:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation ampduAGGAtIndex:](self, "ampduAGGAtIndex:", n)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxHESuccessCount])
  {
    [v43 clearRxHESuccess];
    v19 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxHESuccessCount];
    if (v19)
    {
      v20 = v19;
      for (ii = 0; ii != v20; ++ii)
      {
        [v43 addRxHESuccess:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation rxHESuccessAtIndex:](self, "rxHESuccessAtIndex:", ii)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txHESuccessCount])
  {
    [v43 clearTxHESuccess];
    v22 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txHESuccessCount];
    if (v22)
    {
      v23 = v22;
      for (jj = 0; jj != v23; ++jj)
      {
        [v43 addTxHESuccess:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation txHESuccessAtIndex:](self, "txHESuccessAtIndex:", jj)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxampduSUsCount])
  {
    [v43 clearRxampduSUs];
    v25 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxampduSUsCount];
    if (v25)
    {
      v26 = v25;
      for (kk = 0; kk != v26; ++kk)
      {
        [v43 addRxampduSU:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation rxampduSUAtIndex:](self, "rxampduSUAtIndex:", kk)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txampduSUsCount])
  {
    [v43 clearTxampduSUs];
    v28 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txampduSUsCount];
    if (v28)
    {
      v29 = v28;
      for (mm = 0; mm != v29; ++mm)
      {
        [v43 addTxampduSU:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation txampduSUAtIndex:](self, "txampduSUAtIndex:", mm)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxampduOFDMAsCount])
  {
    [v43 clearRxampduOFDMAs];
    v31 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxampduOFDMAsCount];
    if (v31)
    {
      v32 = v31;
      for (nn = 0; nn != v32; ++nn)
      {
        [v43 addRxampduOFDMA:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation rxampduOFDMAAtIndex:](self, "rxampduOFDMAAtIndex:", nn)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txampduOFDMAsCount])
  {
    [v43 clearTxampduOFDMAs];
    v34 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txampduOFDMAsCount];
    if (v34)
    {
      v35 = v34;
      for (i1 = 0; i1 != v35; ++i1)
      {
        [v43 addTxampduOFDMA:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation txampduOFDMAAtIndex:](self, "txampduOFDMAAtIndex:", i1)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxampduMUMIMOsCount])
  {
    [v43 clearRxampduMUMIMOs];
    v37 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self rxampduMUMIMOsCount];
    if (v37)
    {
      v38 = v37;
      for (i2 = 0; i2 != v38; ++i2)
      {
        [v43 addRxampduMUMIMO:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation rxampduMUMIMOAtIndex:](self, "rxampduMUMIMOAtIndex:", i2)}];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txampduMUMIMOsCount])
  {
    [v43 clearTxampduMUMIMOs];
    v40 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self txampduMUMIMOsCount];
    if (v40)
    {
      v41 = v40;
      for (i3 = 0; i3 != v41; ++i3)
      {
        [v43 addTxampduMUMIMO:{-[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation txampduMUMIMOAtIndex:](self, "txampduMUMIMOAtIndex:", i3)}];
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

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()] && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual())
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

- (void)mergeFrom:(id)a3
{
  v43 = a3;
  v4 = [v43 rxVHTSuccessCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addRxVHTSuccess:](self, "addRxVHTSuccess:", [v43 rxVHTSuccessAtIndex:i]);
    }
  }

  v7 = [v43 txVHTSuccessCount];
  if (v7)
  {
    v8 = v7;
    for (j = 0; j != v8; ++j)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addTxVHTSuccess:](self, "addTxVHTSuccess:", [v43 txVHTSuccessAtIndex:j]);
    }
  }

  v10 = [v43 rxMCSSuccessCount];
  if (v10)
  {
    v11 = v10;
    for (k = 0; k != v11; ++k)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addRxMCSSuccess:](self, "addRxMCSSuccess:", [v43 rxMCSSuccessAtIndex:k]);
    }
  }

  v13 = [v43 txMCSSuccessCount];
  if (v13)
  {
    v14 = v13;
    for (m = 0; m != v14; ++m)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addTxMCSSuccess:](self, "addTxMCSSuccess:", [v43 txMCSSuccessAtIndex:m]);
    }
  }

  v16 = [v43 ampduAGGsCount];
  if (v16)
  {
    v17 = v16;
    for (n = 0; n != v17; ++n)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addAmpduAGG:](self, "addAmpduAGG:", [v43 ampduAGGAtIndex:n]);
    }
  }

  v19 = [v43 rxHESuccessCount];
  if (v19)
  {
    v20 = v19;
    for (ii = 0; ii != v20; ++ii)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addRxHESuccess:](self, "addRxHESuccess:", [v43 rxHESuccessAtIndex:ii]);
    }
  }

  v22 = [v43 txHESuccessCount];
  if (v22)
  {
    v23 = v22;
    for (jj = 0; jj != v23; ++jj)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addTxHESuccess:](self, "addTxHESuccess:", [v43 txHESuccessAtIndex:jj]);
    }
  }

  v25 = [v43 rxampduSUsCount];
  if (v25)
  {
    v26 = v25;
    for (kk = 0; kk != v26; ++kk)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addRxampduSU:](self, "addRxampduSU:", [v43 rxampduSUAtIndex:kk]);
    }
  }

  v28 = [v43 txampduSUsCount];
  if (v28)
  {
    v29 = v28;
    for (mm = 0; mm != v29; ++mm)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addTxampduSU:](self, "addTxampduSU:", [v43 txampduSUAtIndex:mm]);
    }
  }

  v31 = [v43 rxampduOFDMAsCount];
  if (v31)
  {
    v32 = v31;
    for (nn = 0; nn != v32; ++nn)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addRxampduOFDMA:](self, "addRxampduOFDMA:", [v43 rxampduOFDMAAtIndex:nn]);
    }
  }

  v34 = [v43 txampduOFDMAsCount];
  if (v34)
  {
    v35 = v34;
    for (i1 = 0; i1 != v35; ++i1)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addTxampduOFDMA:](self, "addTxampduOFDMA:", [v43 txampduOFDMAAtIndex:i1]);
    }
  }

  v37 = [v43 rxampduMUMIMOsCount];
  if (v37)
  {
    v38 = v37;
    for (i2 = 0; i2 != v38; ++i2)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addRxampduMUMIMO:](self, "addRxampduMUMIMO:", [v43 rxampduMUMIMOAtIndex:i2]);
    }
  }

  v40 = [v43 txampduMUMIMOsCount];
  if (v40)
  {
    v41 = v40;
    for (i3 = 0; i3 != v41; ++i3)
    {
      -[WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation addTxampduMUMIMO:](self, "addTxampduMUMIMO:", [v43 txampduMUMIMOAtIndex:i3]);
    }
  }
}

@end