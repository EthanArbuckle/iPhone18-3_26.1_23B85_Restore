@interface AWDPowerBBLQMDataTransferMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)lQMTransitionCntBucketsAtIndex:(unint64_t)a3;
- (void)addLQMBytes:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDPowerBBLQMDataTransferMetrics

- (void)dealloc
{
  [(AWDPowerBBLQMDataTransferMetrics *)self setLQMBytes:0];
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDPowerBBLQMDataTransferMetrics;
  [(AWDPowerBBLQMDataTransferMetrics *)&v3 dealloc];
}

- (void)addLQMBytes:(id)a3
{
  lQMBytes = self->_lQMBytes;
  if (!lQMBytes)
  {
    lQMBytes = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_lQMBytes = lQMBytes;
  }

  [(NSMutableArray *)lQMBytes addObject:a3];
}

- (unsigned)lQMTransitionCntBucketsAtIndex:(unint64_t)a3
{
  p_lQMTransitionCntBuckets = &self->_lQMTransitionCntBuckets;
  count = self->_lQMTransitionCntBuckets.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_lQMTransitionCntBuckets->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPowerBBLQMDataTransferMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPowerBBLQMDataTransferMetrics description](&v3, sel_description), -[AWDPowerBBLQMDataTransferMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_lQMBytes count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_lQMBytes, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    lQMBytes = self->_lQMBytes;
    v6 = [(NSMutableArray *)lQMBytes countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(lQMBytes);
          }

          [v4 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)lQMBytes countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"LQMBytes"];
  }

  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"LQMTransitionCntBuckets"];
  v10 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  lQMBytes = self->_lQMBytes;
  v6 = [(NSMutableArray *)lQMBytes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(lQMBytes);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)lQMBytes countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  p_lQMTransitionCntBuckets = &self->_lQMTransitionCntBuckets;
  if (p_lQMTransitionCntBuckets->count)
  {
    v12 = 0;
    do
    {
      v13 = p_lQMTransitionCntBuckets->list[v12];
      PBDataWriterWriteUint32Field();
      ++v12;
    }

    while (v12 < p_lQMTransitionCntBuckets->count);
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 4) = self->_timestamp;
    *(a3 + 48) |= 1u;
  }

  if ([(AWDPowerBBLQMDataTransferMetrics *)self lQMBytesCount])
  {
    [a3 clearLQMBytes];
    v5 = [(AWDPowerBBLQMDataTransferMetrics *)self lQMBytesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addLQMBytes:{-[AWDPowerBBLQMDataTransferMetrics lQMBytesAtIndex:](self, "lQMBytesAtIndex:", i)}];
      }
    }
  }

  if ([(AWDPowerBBLQMDataTransferMetrics *)self lQMTransitionCntBucketsCount])
  {
    [a3 clearLQMTransitionCntBuckets];
    v8 = [(AWDPowerBBLQMDataTransferMetrics *)self lQMTransitionCntBucketsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addLQMTransitionCntBuckets:{-[AWDPowerBBLQMDataTransferMetrics lQMTransitionCntBucketsAtIndex:](self, "lQMTransitionCntBucketsAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  lQMBytes = self->_lQMBytes;
  v8 = [(NSMutableArray *)lQMBytes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(lQMBytes);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) copyWithZone:a3];
        [v6 addLQMBytes:v12];
      }

      v9 = [(NSMutableArray *)lQMBytes countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  PBRepeatedUInt32Copy();
  v13 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (![a3 isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(a3 + 48);
  if (*&self->_has)
  {
    if ((*(a3 + 48) & 1) == 0 || self->_timestamp != *(a3 + 4))
    {
      return 0;
    }
  }

  else if (*(a3 + 48))
  {
    return 0;
  }

  lQMBytes = self->_lQMBytes;
  if (lQMBytes | *(a3 + 5) && ![(NSMutableArray *)lQMBytes isEqual:?])
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

  v3 = [(NSMutableArray *)self->_lQMBytes hash];
  return v3 ^ v2 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x29EDCA608];
  if (*(a3 + 48))
  {
    self->_timestamp = *(a3 + 4);
    *&self->_has |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a3 + 5);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDPowerBBLQMDataTransferMetrics *)self addLQMBytes:*(*(&v14 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v10 = [a3 lQMTransitionCntBucketsCount];
  if (v10)
  {
    v11 = v10;
    for (j = 0; j != v11; ++j)
    {
      -[AWDPowerBBLQMDataTransferMetrics addLQMTransitionCntBuckets:](self, "addLQMTransitionCntBuckets:", [a3 lQMTransitionCntBucketsAtIndex:j]);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

@end