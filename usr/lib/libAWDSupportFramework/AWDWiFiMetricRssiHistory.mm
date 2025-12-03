@interface AWDWiFiMetricRssiHistory
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)bcnFrmsHistoryAtIndex:(unint64_t)index;
- (int)bcnPerHistoryAtIndex:(unint64_t)index;
- (int)fwTxFrmsHistoryAtIndex:(unint64_t)index;
- (int)fwTxPerHistoryAtIndex:(unint64_t)index;
- (int)rssiHistoryAtIndex:(unint64_t)index;
- (int)txFrmsHistoryAtIndex:(unint64_t)index;
- (int)txPerHistoryAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasGatewayARPHistory:(BOOL)history;
- (void)writeTo:(id)to;
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

- (int)rssiHistoryAtIndex:(unint64_t)index
{
  p_rssiHistorys = &self->_rssiHistorys;
  count = self->_rssiHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_rssiHistorys->list[index];
}

- (int)txPerHistoryAtIndex:(unint64_t)index
{
  p_txPerHistorys = &self->_txPerHistorys;
  count = self->_txPerHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_txPerHistorys->list[index];
}

- (int)txFrmsHistoryAtIndex:(unint64_t)index
{
  p_txFrmsHistorys = &self->_txFrmsHistorys;
  count = self->_txFrmsHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_txFrmsHistorys->list[index];
}

- (int)fwTxPerHistoryAtIndex:(unint64_t)index
{
  p_fwTxPerHistorys = &self->_fwTxPerHistorys;
  count = self->_fwTxPerHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_fwTxPerHistorys->list[index];
}

- (int)fwTxFrmsHistoryAtIndex:(unint64_t)index
{
  p_fwTxFrmsHistorys = &self->_fwTxFrmsHistorys;
  count = self->_fwTxFrmsHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_fwTxFrmsHistorys->list[index];
}

- (int)bcnPerHistoryAtIndex:(unint64_t)index
{
  p_bcnPerHistorys = &self->_bcnPerHistorys;
  count = self->_bcnPerHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_bcnPerHistorys->list[index];
}

- (int)bcnFrmsHistoryAtIndex:(unint64_t)index
{
  p_bcnFrmsHistorys = &self->_bcnFrmsHistorys;
  count = self->_bcnFrmsHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_bcnFrmsHistorys->list[index];
}

- (void)setHasGatewayARPHistory:(BOOL)history
{
  if (history)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"rssiHistory"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"txPerHistory"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"txFrmsHistory"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"fwTxPerHistory"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"fwTxFrmsHistory"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"bcnPerHistory"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"bcnFrmsHistory"];
  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_gatewayARPHistory), @"gatewayARPHistory"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 22) = self->_timestamp;
    *(to + 188) |= 1u;
  }

  if ([(AWDWiFiMetricRssiHistory *)self rssiHistorysCount])
  {
    [to clearRssiHistorys];
    rssiHistorysCount = [(AWDWiFiMetricRssiHistory *)self rssiHistorysCount];
    if (rssiHistorysCount)
    {
      v6 = rssiHistorysCount;
      for (i = 0; i != v6; ++i)
      {
        [to addRssiHistory:{-[AWDWiFiMetricRssiHistory rssiHistoryAtIndex:](self, "rssiHistoryAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiMetricRssiHistory *)self txPerHistorysCount])
  {
    [to clearTxPerHistorys];
    txPerHistorysCount = [(AWDWiFiMetricRssiHistory *)self txPerHistorysCount];
    if (txPerHistorysCount)
    {
      v9 = txPerHistorysCount;
      for (j = 0; j != v9; ++j)
      {
        [to addTxPerHistory:{-[AWDWiFiMetricRssiHistory txPerHistoryAtIndex:](self, "txPerHistoryAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiMetricRssiHistory *)self txFrmsHistorysCount])
  {
    [to clearTxFrmsHistorys];
    txFrmsHistorysCount = [(AWDWiFiMetricRssiHistory *)self txFrmsHistorysCount];
    if (txFrmsHistorysCount)
    {
      v12 = txFrmsHistorysCount;
      for (k = 0; k != v12; ++k)
      {
        [to addTxFrmsHistory:{-[AWDWiFiMetricRssiHistory txFrmsHistoryAtIndex:](self, "txFrmsHistoryAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiMetricRssiHistory *)self fwTxPerHistorysCount])
  {
    [to clearFwTxPerHistorys];
    fwTxPerHistorysCount = [(AWDWiFiMetricRssiHistory *)self fwTxPerHistorysCount];
    if (fwTxPerHistorysCount)
    {
      v15 = fwTxPerHistorysCount;
      for (m = 0; m != v15; ++m)
      {
        [to addFwTxPerHistory:{-[AWDWiFiMetricRssiHistory fwTxPerHistoryAtIndex:](self, "fwTxPerHistoryAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiMetricRssiHistory *)self fwTxFrmsHistorysCount])
  {
    [to clearFwTxFrmsHistorys];
    fwTxFrmsHistorysCount = [(AWDWiFiMetricRssiHistory *)self fwTxFrmsHistorysCount];
    if (fwTxFrmsHistorysCount)
    {
      v18 = fwTxFrmsHistorysCount;
      for (n = 0; n != v18; ++n)
      {
        [to addFwTxFrmsHistory:{-[AWDWiFiMetricRssiHistory fwTxFrmsHistoryAtIndex:](self, "fwTxFrmsHistoryAtIndex:", n)}];
      }
    }
  }

  if ([(AWDWiFiMetricRssiHistory *)self bcnPerHistorysCount])
  {
    [to clearBcnPerHistorys];
    bcnPerHistorysCount = [(AWDWiFiMetricRssiHistory *)self bcnPerHistorysCount];
    if (bcnPerHistorysCount)
    {
      v21 = bcnPerHistorysCount;
      for (ii = 0; ii != v21; ++ii)
      {
        [to addBcnPerHistory:{-[AWDWiFiMetricRssiHistory bcnPerHistoryAtIndex:](self, "bcnPerHistoryAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDWiFiMetricRssiHistory *)self bcnFrmsHistorysCount])
  {
    [to clearBcnFrmsHistorys];
    bcnFrmsHistorysCount = [(AWDWiFiMetricRssiHistory *)self bcnFrmsHistorysCount];
    if (bcnFrmsHistorysCount)
    {
      v24 = bcnFrmsHistorysCount;
      for (jj = 0; jj != v24; ++jj)
      {
        [to addBcnFrmsHistory:{-[AWDWiFiMetricRssiHistory bcnFrmsHistoryAtIndex:](self, "bcnFrmsHistoryAtIndex:", jj)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 46) = self->_gatewayARPHistory;
    *(to + 188) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    v6 = *(equal + 188);
    if (*&self->_has)
    {
      if ((*(equal + 188) & 1) == 0 || self->_timestamp != *(equal + 22))
      {
        goto LABEL_18;
      }
    }

    else if (*(equal + 188))
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
                  LOBYTE(IsEqual) = (*(equal + 188) & 2) == 0;
                  if ((*&self->_has & 2) != 0)
                  {
                    if ((*(equal + 188) & 2) == 0 || self->_gatewayARPHistory != *(equal + 46))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 188))
  {
    self->_timestamp = *(from + 22);
    *&self->_has |= 1u;
  }

  rssiHistorysCount = [from rssiHistorysCount];
  if (rssiHistorysCount)
  {
    v6 = rssiHistorysCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiMetricRssiHistory addRssiHistory:](self, "addRssiHistory:", [from rssiHistoryAtIndex:i]);
    }
  }

  txPerHistorysCount = [from txPerHistorysCount];
  if (txPerHistorysCount)
  {
    v9 = txPerHistorysCount;
    for (j = 0; j != v9; ++j)
    {
      -[AWDWiFiMetricRssiHistory addTxPerHistory:](self, "addTxPerHistory:", [from txPerHistoryAtIndex:j]);
    }
  }

  txFrmsHistorysCount = [from txFrmsHistorysCount];
  if (txFrmsHistorysCount)
  {
    v12 = txFrmsHistorysCount;
    for (k = 0; k != v12; ++k)
    {
      -[AWDWiFiMetricRssiHistory addTxFrmsHistory:](self, "addTxFrmsHistory:", [from txFrmsHistoryAtIndex:k]);
    }
  }

  fwTxPerHistorysCount = [from fwTxPerHistorysCount];
  if (fwTxPerHistorysCount)
  {
    v15 = fwTxPerHistorysCount;
    for (m = 0; m != v15; ++m)
    {
      -[AWDWiFiMetricRssiHistory addFwTxPerHistory:](self, "addFwTxPerHistory:", [from fwTxPerHistoryAtIndex:m]);
    }
  }

  fwTxFrmsHistorysCount = [from fwTxFrmsHistorysCount];
  if (fwTxFrmsHistorysCount)
  {
    v18 = fwTxFrmsHistorysCount;
    for (n = 0; n != v18; ++n)
    {
      -[AWDWiFiMetricRssiHistory addFwTxFrmsHistory:](self, "addFwTxFrmsHistory:", [from fwTxFrmsHistoryAtIndex:n]);
    }
  }

  bcnPerHistorysCount = [from bcnPerHistorysCount];
  if (bcnPerHistorysCount)
  {
    v21 = bcnPerHistorysCount;
    for (ii = 0; ii != v21; ++ii)
    {
      -[AWDWiFiMetricRssiHistory addBcnPerHistory:](self, "addBcnPerHistory:", [from bcnPerHistoryAtIndex:ii]);
    }
  }

  bcnFrmsHistorysCount = [from bcnFrmsHistorysCount];
  if (bcnFrmsHistorysCount)
  {
    v24 = bcnFrmsHistorysCount;
    for (jj = 0; jj != v24; ++jj)
    {
      -[AWDWiFiMetricRssiHistory addBcnFrmsHistory:](self, "addBcnFrmsHistory:", [from bcnFrmsHistoryAtIndex:jj]);
    }
  }

  if ((*(from + 188) & 2) != 0)
  {
    self->_gatewayARPHistory = *(from + 46);
    *&self->_has |= 2u;
  }
}

@end