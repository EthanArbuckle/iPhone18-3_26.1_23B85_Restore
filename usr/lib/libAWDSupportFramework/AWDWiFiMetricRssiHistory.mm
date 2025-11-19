@interface AWDWiFiMetricRssiHistory
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)bcnFrmsHistoryAtIndex:(unint64_t)a3;
- (int)bcnPerHistoryAtIndex:(unint64_t)a3;
- (int)fwTxFrmsHistoryAtIndex:(unint64_t)a3;
- (int)fwTxPerHistoryAtIndex:(unint64_t)a3;
- (int)rssiHistoryAtIndex:(unint64_t)a3;
- (int)txFrmsHistoryAtIndex:(unint64_t)a3;
- (int)txPerHistoryAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasGatewayARPHistory:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricRssiHistory

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricRssiHistory;
  [(AWDWiFiMetricRssiHistory *)&v3 dealloc];
}

- (int)rssiHistoryAtIndex:(unint64_t)a3
{
  p_rssiHistorys = &self->_rssiHistorys;
  count = self->_rssiHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_rssiHistorys->list[a3];
}

- (int)txPerHistoryAtIndex:(unint64_t)a3
{
  p_txPerHistorys = &self->_txPerHistorys;
  count = self->_txPerHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_txPerHistorys->list[a3];
}

- (int)txFrmsHistoryAtIndex:(unint64_t)a3
{
  p_txFrmsHistorys = &self->_txFrmsHistorys;
  count = self->_txFrmsHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_txFrmsHistorys->list[a3];
}

- (int)fwTxPerHistoryAtIndex:(unint64_t)a3
{
  p_fwTxPerHistorys = &self->_fwTxPerHistorys;
  count = self->_fwTxPerHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_fwTxPerHistorys->list[a3];
}

- (int)fwTxFrmsHistoryAtIndex:(unint64_t)a3
{
  p_fwTxFrmsHistorys = &self->_fwTxFrmsHistorys;
  count = self->_fwTxFrmsHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_fwTxFrmsHistorys->list[a3];
}

- (int)bcnPerHistoryAtIndex:(unint64_t)a3
{
  p_bcnPerHistorys = &self->_bcnPerHistorys;
  count = self->_bcnPerHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_bcnPerHistorys->list[a3];
}

- (int)bcnFrmsHistoryAtIndex:(unint64_t)a3
{
  p_bcnFrmsHistorys = &self->_bcnFrmsHistorys;
  count = self->_bcnFrmsHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_bcnFrmsHistorys->list[a3];
}

- (void)setHasGatewayARPHistory:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricRssiHistory;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricRssiHistory description](&v3, sel_description), -[AWDWiFiMetricRssiHistory dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"rssiHistory"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"txPerHistory"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"txFrmsHistory"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"fwTxPerHistory"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"fwTxFrmsHistory"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"bcnPerHistory"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"bcnFrmsHistory"];
  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_gatewayARPHistory), @"gatewayARPHistory"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_rssiHistorys.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_rssiHistorys.list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_rssiHistorys.count);
  }

  if (self->_txPerHistorys.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_txPerHistorys.list[v7];
      PBDataWriterWriteInt32Field();
      ++v7;
    }

    while (v7 < self->_txPerHistorys.count);
  }

  if (self->_txFrmsHistorys.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_txFrmsHistorys.list[v9];
      PBDataWriterWriteInt32Field();
      ++v9;
    }

    while (v9 < self->_txFrmsHistorys.count);
  }

  if (self->_fwTxPerHistorys.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_fwTxPerHistorys.list[v11];
      PBDataWriterWriteInt32Field();
      ++v11;
    }

    while (v11 < self->_fwTxPerHistorys.count);
  }

  if (self->_fwTxFrmsHistorys.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_fwTxFrmsHistorys.list[v13];
      PBDataWriterWriteInt32Field();
      ++v13;
    }

    while (v13 < self->_fwTxFrmsHistorys.count);
  }

  if (self->_bcnPerHistorys.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_bcnPerHistorys.list[v15];
      PBDataWriterWriteInt32Field();
      ++v15;
    }

    while (v15 < self->_bcnPerHistorys.count);
  }

  if (self->_bcnFrmsHistorys.count)
  {
    v17 = 0;
    do
    {
      v18 = self->_bcnFrmsHistorys.list[v17];
      PBDataWriterWriteInt32Field();
      ++v17;
    }

    while (v17 < self->_bcnFrmsHistorys.count);
  }

  if ((*&self->_has & 2) != 0)
  {
    gatewayARPHistory = self->_gatewayARPHistory;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 22) = self->_timestamp;
    *(a3 + 188) |= 1u;
  }

  if ([(AWDWiFiMetricRssiHistory *)self rssiHistorysCount])
  {
    [a3 clearRssiHistorys];
    v5 = [(AWDWiFiMetricRssiHistory *)self rssiHistorysCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addRssiHistory:{-[AWDWiFiMetricRssiHistory rssiHistoryAtIndex:](self, "rssiHistoryAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiMetricRssiHistory *)self txPerHistorysCount])
  {
    [a3 clearTxPerHistorys];
    v8 = [(AWDWiFiMetricRssiHistory *)self txPerHistorysCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addTxPerHistory:{-[AWDWiFiMetricRssiHistory txPerHistoryAtIndex:](self, "txPerHistoryAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiMetricRssiHistory *)self txFrmsHistorysCount])
  {
    [a3 clearTxFrmsHistorys];
    v11 = [(AWDWiFiMetricRssiHistory *)self txFrmsHistorysCount];
    if (v11)
    {
      v12 = v11;
      for (k = 0; k != v12; ++k)
      {
        [a3 addTxFrmsHistory:{-[AWDWiFiMetricRssiHistory txFrmsHistoryAtIndex:](self, "txFrmsHistoryAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiMetricRssiHistory *)self fwTxPerHistorysCount])
  {
    [a3 clearFwTxPerHistorys];
    v14 = [(AWDWiFiMetricRssiHistory *)self fwTxPerHistorysCount];
    if (v14)
    {
      v15 = v14;
      for (m = 0; m != v15; ++m)
      {
        [a3 addFwTxPerHistory:{-[AWDWiFiMetricRssiHistory fwTxPerHistoryAtIndex:](self, "fwTxPerHistoryAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiMetricRssiHistory *)self fwTxFrmsHistorysCount])
  {
    [a3 clearFwTxFrmsHistorys];
    v17 = [(AWDWiFiMetricRssiHistory *)self fwTxFrmsHistorysCount];
    if (v17)
    {
      v18 = v17;
      for (n = 0; n != v18; ++n)
      {
        [a3 addFwTxFrmsHistory:{-[AWDWiFiMetricRssiHistory fwTxFrmsHistoryAtIndex:](self, "fwTxFrmsHistoryAtIndex:", n)}];
      }
    }
  }

  if ([(AWDWiFiMetricRssiHistory *)self bcnPerHistorysCount])
  {
    [a3 clearBcnPerHistorys];
    v20 = [(AWDWiFiMetricRssiHistory *)self bcnPerHistorysCount];
    if (v20)
    {
      v21 = v20;
      for (ii = 0; ii != v21; ++ii)
      {
        [a3 addBcnPerHistory:{-[AWDWiFiMetricRssiHistory bcnPerHistoryAtIndex:](self, "bcnPerHistoryAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDWiFiMetricRssiHistory *)self bcnFrmsHistorysCount])
  {
    [a3 clearBcnFrmsHistorys];
    v23 = [(AWDWiFiMetricRssiHistory *)self bcnFrmsHistorysCount];
    if (v23)
    {
      v24 = v23;
      for (jj = 0; jj != v24; ++jj)
      {
        [a3 addBcnFrmsHistory:{-[AWDWiFiMetricRssiHistory bcnFrmsHistoryAtIndex:](self, "bcnFrmsHistoryAtIndex:", jj)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 46) = self->_gatewayARPHistory;
    *(a3 + 188) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 176) = self->_timestamp;
    *(v4 + 188) |= 1u;
  }

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 184) = self->_gatewayARPHistory;
    *(v5 + 188) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    v6 = *(a3 + 188);
    if (*&self->_has)
    {
      if ((*(a3 + 188) & 1) == 0 || self->_timestamp != *(a3 + 22))
      {
        goto LABEL_18;
      }
    }

    else if (*(a3 + 188))
    {
LABEL_18:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    IsEqual = PBRepeatedInt32IsEqual();
    if (IsEqual)
    {
      IsEqual = PBRepeatedInt32IsEqual();
      if (IsEqual)
      {
        IsEqual = PBRepeatedInt32IsEqual();
        if (IsEqual)
        {
          IsEqual = PBRepeatedInt32IsEqual();
          if (IsEqual)
          {
            IsEqual = PBRepeatedInt32IsEqual();
            if (IsEqual)
            {
              IsEqual = PBRepeatedInt32IsEqual();
              if (IsEqual)
              {
                IsEqual = PBRepeatedInt32IsEqual();
                if (IsEqual)
                {
                  LOBYTE(IsEqual) = (*(a3 + 188) & 2) == 0;
                  if ((*&self->_has & 2) != 0)
                  {
                    if ((*(a3 + 188) & 2) == 0 || self->_gatewayARPHistory != *(a3 + 46))
                    {
                      goto LABEL_18;
                    }

                    LOBYTE(IsEqual) = 1;
                  }
                }
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
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = PBRepeatedInt32Hash();
  v5 = PBRepeatedInt32Hash();
  v6 = PBRepeatedInt32Hash();
  v7 = PBRepeatedInt32Hash();
  v8 = PBRepeatedInt32Hash();
  v9 = PBRepeatedInt32Hash();
  v10 = PBRepeatedInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_gatewayARPHistory;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 188))
  {
    self->_timestamp = *(a3 + 22);
    *&self->_has |= 1u;
  }

  v5 = [a3 rssiHistorysCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiMetricRssiHistory addRssiHistory:](self, "addRssiHistory:", [a3 rssiHistoryAtIndex:i]);
    }
  }

  v8 = [a3 txPerHistorysCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[AWDWiFiMetricRssiHistory addTxPerHistory:](self, "addTxPerHistory:", [a3 txPerHistoryAtIndex:j]);
    }
  }

  v11 = [a3 txFrmsHistorysCount];
  if (v11)
  {
    v12 = v11;
    for (k = 0; k != v12; ++k)
    {
      -[AWDWiFiMetricRssiHistory addTxFrmsHistory:](self, "addTxFrmsHistory:", [a3 txFrmsHistoryAtIndex:k]);
    }
  }

  v14 = [a3 fwTxPerHistorysCount];
  if (v14)
  {
    v15 = v14;
    for (m = 0; m != v15; ++m)
    {
      -[AWDWiFiMetricRssiHistory addFwTxPerHistory:](self, "addFwTxPerHistory:", [a3 fwTxPerHistoryAtIndex:m]);
    }
  }

  v17 = [a3 fwTxFrmsHistorysCount];
  if (v17)
  {
    v18 = v17;
    for (n = 0; n != v18; ++n)
    {
      -[AWDWiFiMetricRssiHistory addFwTxFrmsHistory:](self, "addFwTxFrmsHistory:", [a3 fwTxFrmsHistoryAtIndex:n]);
    }
  }

  v20 = [a3 bcnPerHistorysCount];
  if (v20)
  {
    v21 = v20;
    for (ii = 0; ii != v21; ++ii)
    {
      -[AWDWiFiMetricRssiHistory addBcnPerHistory:](self, "addBcnPerHistory:", [a3 bcnPerHistoryAtIndex:ii]);
    }
  }

  v23 = [a3 bcnFrmsHistorysCount];
  if (v23)
  {
    v24 = v23;
    for (jj = 0; jj != v24; ++jj)
    {
      -[AWDWiFiMetricRssiHistory addBcnFrmsHistory:](self, "addBcnFrmsHistory:", [a3 bcnFrmsHistoryAtIndex:jj]);
    }
  }

  if ((*(a3 + 188) & 2) != 0)
  {
    self->_gatewayARPHistory = *(a3 + 46);
    *&self->_has |= 2u;
  }
}

@end