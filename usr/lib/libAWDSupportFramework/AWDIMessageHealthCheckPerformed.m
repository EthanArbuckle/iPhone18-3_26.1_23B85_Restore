@interface AWDIMessageHealthCheckPerformed
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)aliasesMatchedAtIndex:(unint64_t)a3;
- (unsigned)coarseMatchedAtIndex:(unint64_t)a3;
- (unsigned)numMissedAtIndex:(unint64_t)a3;
- (unsigned)numOutOfOrderAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasNumMessages:(BOOL)a3;
- (void)setHasNumberOfRequests:(BOOL)a3;
- (void)setHasNumberOfResponses:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIMessageHealthCheckPerformed

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDIMessageHealthCheckPerformed;
  [(AWDIMessageHealthCheckPerformed *)&v3 dealloc];
}

- (void)setHasNumberOfRequests:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumberOfResponses:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumMessages:(BOOL)a3
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

- (unsigned)numOutOfOrderAtIndex:(unint64_t)a3
{
  p_numOutOfOrders = &self->_numOutOfOrders;
  count = self->_numOutOfOrders.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_numOutOfOrders->list[a3];
}

- (unsigned)numMissedAtIndex:(unint64_t)a3
{
  p_numMisseds = &self->_numMisseds;
  count = self->_numMisseds.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_numMisseds->list[a3];
}

- (unsigned)aliasesMatchedAtIndex:(unint64_t)a3
{
  p_aliasesMatcheds = &self->_aliasesMatcheds;
  count = self->_aliasesMatcheds.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_aliasesMatcheds->list[a3];
}

- (unsigned)coarseMatchedAtIndex:(unint64_t)a3
{
  p_coarseMatcheds = &self->_coarseMatcheds;
  count = self->_coarseMatcheds.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_coarseMatcheds->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIMessageHealthCheckPerformed;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMessageHealthCheckPerformed description](&v3, sel_description), -[AWDIMessageHealthCheckPerformed dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numberOfResponses), @"numberOfResponses"}];
      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numberOfRequests), @"numberOfRequests"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
LABEL_5:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numMessages), @"numMessages"}];
  }

LABEL_6:
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"numOutOfOrder"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"numMissed"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"aliasesMatched"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"coarseMatched"];
  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  numberOfRequests = self->_numberOfRequests;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_29:
  numberOfResponses = self->_numberOfResponses;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    numMessages = self->_numMessages;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
  if (self->_numOutOfOrders.count)
  {
    PBDataWriterPlaceMark();
    if (self->_numOutOfOrders.count)
    {
      v6 = 0;
      do
      {
        v7 = self->_numOutOfOrders.list[v6];
        PBDataWriterWriteUint32Field();
        ++v6;
      }

      while (v6 < self->_numOutOfOrders.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_numMisseds.count)
  {
    PBDataWriterPlaceMark();
    if (self->_numMisseds.count)
    {
      v8 = 0;
      do
      {
        v9 = self->_numMisseds.list[v8];
        PBDataWriterWriteUint32Field();
        ++v8;
      }

      while (v8 < self->_numMisseds.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_aliasesMatcheds.count)
  {
    PBDataWriterPlaceMark();
    if (self->_aliasesMatcheds.count)
    {
      v10 = 0;
      do
      {
        v11 = self->_aliasesMatcheds.list[v10];
        PBDataWriterWriteUint32Field();
        ++v10;
      }

      while (v10 < self->_aliasesMatcheds.count);
    }

    PBDataWriterRecallMark();
  }

  p_coarseMatcheds = &self->_coarseMatcheds;
  if (p_coarseMatcheds->count)
  {
    PBDataWriterPlaceMark();
    if (p_coarseMatcheds->count)
    {
      v13 = 0;
      do
      {
        v14 = p_coarseMatcheds->list[v13];
        PBDataWriterWriteUint32Field();
        ++v13;
      }

      while (v13 < p_coarseMatcheds->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 13) = self->_timestamp;
    *(a3 + 124) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_25:
      *(a3 + 30) = self->_numberOfResponses;
      *(a3 + 124) |= 8u;
      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 29) = self->_numberOfRequests;
  *(a3 + 124) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
LABEL_5:
    *(a3 + 28) = self->_numMessages;
    *(a3 + 124) |= 2u;
  }

LABEL_6:
  if ([(AWDIMessageHealthCheckPerformed *)self numOutOfOrdersCount])
  {
    [a3 clearNumOutOfOrders];
    v6 = [(AWDIMessageHealthCheckPerformed *)self numOutOfOrdersCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addNumOutOfOrder:{-[AWDIMessageHealthCheckPerformed numOutOfOrderAtIndex:](self, "numOutOfOrderAtIndex:", i)}];
      }
    }
  }

  if ([(AWDIMessageHealthCheckPerformed *)self numMissedsCount])
  {
    [a3 clearNumMisseds];
    v9 = [(AWDIMessageHealthCheckPerformed *)self numMissedsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [a3 addNumMissed:{-[AWDIMessageHealthCheckPerformed numMissedAtIndex:](self, "numMissedAtIndex:", j)}];
      }
    }
  }

  if ([(AWDIMessageHealthCheckPerformed *)self aliasesMatchedsCount])
  {
    [a3 clearAliasesMatcheds];
    v12 = [(AWDIMessageHealthCheckPerformed *)self aliasesMatchedsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        [a3 addAliasesMatched:{-[AWDIMessageHealthCheckPerformed aliasesMatchedAtIndex:](self, "aliasesMatchedAtIndex:", k)}];
      }
    }
  }

  if ([(AWDIMessageHealthCheckPerformed *)self coarseMatchedsCount])
  {
    [a3 clearCoarseMatcheds];
    v15 = [(AWDIMessageHealthCheckPerformed *)self coarseMatchedsCount];
    if (v15)
    {
      v16 = v15;
      for (m = 0; m != v16; ++m)
      {
        [a3 addCoarseMatched:{-[AWDIMessageHealthCheckPerformed coarseMatchedAtIndex:](self, "coarseMatchedAtIndex:", m)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if (has)
  {
    *(v4 + 104) = self->_timestamp;
    *(v4 + 124) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v4 + 120) = self->_numberOfResponses;
      *(v4 + 124) |= 8u;
      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 116) = self->_numberOfRequests;
  *(v4 + 124) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
LABEL_5:
    *(v4 + 112) = self->_numMessages;
    *(v4 + 124) |= 2u;
  }

LABEL_6:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
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

  v5 = *(a3 + 124);
  if (*&self->_has)
  {
    if ((*(a3 + 124) & 1) == 0 || self->_timestamp != *(a3 + 13))
    {
      return 0;
    }
  }

  else if (*(a3 + 124))
  {
    return 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(a3 + 124) & 4) == 0 || self->_numberOfRequests != *(a3 + 29))
    {
      return 0;
    }
  }

  else if ((*(a3 + 124) & 4) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(a3 + 124) & 8) == 0 || self->_numberOfResponses != *(a3 + 30))
    {
      return 0;
    }
  }

  else if ((*(a3 + 124) & 8) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 124) & 2) == 0 || self->_numMessages != *(a3 + 28))
    {
      return 0;
    }
  }

  else if ((*(a3 + 124) & 2) != 0)
  {
    return 0;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
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
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_numberOfRequests;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_numberOfResponses;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_numMessages;
LABEL_10:
  v6 = v3 ^ v2 ^ v4 ^ v5 ^ PBRepeatedUInt32Hash();
  v7 = PBRepeatedUInt32Hash();
  v8 = v6 ^ v7 ^ PBRepeatedUInt32Hash();
  return v8 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 124);
  if (v5)
  {
    self->_timestamp = *(a3 + 13);
    *&self->_has |= 1u;
    v5 = *(a3 + 124);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a3 + 124) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_numberOfRequests = *(a3 + 29);
  *&self->_has |= 4u;
  v5 = *(a3 + 124);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  self->_numberOfResponses = *(a3 + 30);
  *&self->_has |= 8u;
  if ((*(a3 + 124) & 2) != 0)
  {
LABEL_5:
    self->_numMessages = *(a3 + 28);
    *&self->_has |= 2u;
  }

LABEL_6:
  v6 = [a3 numOutOfOrdersCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[AWDIMessageHealthCheckPerformed addNumOutOfOrder:](self, "addNumOutOfOrder:", [a3 numOutOfOrderAtIndex:i]);
    }
  }

  v9 = [a3 numMissedsCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[AWDIMessageHealthCheckPerformed addNumMissed:](self, "addNumMissed:", [a3 numMissedAtIndex:j]);
    }
  }

  v12 = [a3 aliasesMatchedsCount];
  if (v12)
  {
    v13 = v12;
    for (k = 0; k != v13; ++k)
    {
      -[AWDIMessageHealthCheckPerformed addAliasesMatched:](self, "addAliasesMatched:", [a3 aliasesMatchedAtIndex:k]);
    }
  }

  v15 = [a3 coarseMatchedsCount];
  if (v15)
  {
    v16 = v15;
    for (m = 0; m != v16; ++m)
    {
      -[AWDIMessageHealthCheckPerformed addCoarseMatched:](self, "addCoarseMatched:", [a3 coarseMatchedAtIndex:m]);
    }
  }
}

@end