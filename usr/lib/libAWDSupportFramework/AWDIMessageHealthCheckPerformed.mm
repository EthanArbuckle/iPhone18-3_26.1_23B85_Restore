@interface AWDIMessageHealthCheckPerformed
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)aliasesMatchedAtIndex:(unint64_t)index;
- (unsigned)coarseMatchedAtIndex:(unint64_t)index;
- (unsigned)numMissedAtIndex:(unint64_t)index;
- (unsigned)numOutOfOrderAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasNumMessages:(BOOL)messages;
- (void)setHasNumberOfRequests:(BOOL)requests;
- (void)setHasNumberOfResponses:(BOOL)responses;
- (void)writeTo:(id)to;
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

- (void)setHasNumberOfRequests:(BOOL)requests
{
  if (requests)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumberOfResponses:(BOOL)responses
{
  if (responses)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumMessages:(BOOL)messages
{
  if (messages)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)numOutOfOrderAtIndex:(unint64_t)index
{
  p_numOutOfOrders = &self->_numOutOfOrders;
  count = self->_numOutOfOrders.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_numOutOfOrders->list[index];
}

- (unsigned)numMissedAtIndex:(unint64_t)index
{
  p_numMisseds = &self->_numMisseds;
  count = self->_numMisseds.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_numMisseds->list[index];
}

- (unsigned)aliasesMatchedAtIndex:(unint64_t)index
{
  p_aliasesMatcheds = &self->_aliasesMatcheds;
  count = self->_aliasesMatcheds.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_aliasesMatcheds->list[index];
}

- (unsigned)coarseMatchedAtIndex:(unint64_t)index
{
  p_coarseMatcheds = &self->_coarseMatcheds;
  count = self->_coarseMatcheds.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_coarseMatcheds->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIMessageHealthCheckPerformed;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMessageHealthCheckPerformed description](&v3, sel_description), -[AWDIMessageHealthCheckPerformed dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numberOfResponses), @"numberOfResponses"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numberOfRequests), @"numberOfRequests"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
LABEL_5:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numMessages), @"numMessages"}];
  }

LABEL_6:
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"numOutOfOrder"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"numMissed"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"aliasesMatched"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"coarseMatched"];
  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 13) = self->_timestamp;
    *(to + 124) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_25:
      *(to + 30) = self->_numberOfResponses;
      *(to + 124) |= 8u;
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

  *(to + 29) = self->_numberOfRequests;
  *(to + 124) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
LABEL_5:
    *(to + 28) = self->_numMessages;
    *(to + 124) |= 2u;
  }

LABEL_6:
  if ([(AWDIMessageHealthCheckPerformed *)self numOutOfOrdersCount])
  {
    [to clearNumOutOfOrders];
    numOutOfOrdersCount = [(AWDIMessageHealthCheckPerformed *)self numOutOfOrdersCount];
    if (numOutOfOrdersCount)
    {
      v7 = numOutOfOrdersCount;
      for (i = 0; i != v7; ++i)
      {
        [to addNumOutOfOrder:{-[AWDIMessageHealthCheckPerformed numOutOfOrderAtIndex:](self, "numOutOfOrderAtIndex:", i)}];
      }
    }
  }

  if ([(AWDIMessageHealthCheckPerformed *)self numMissedsCount])
  {
    [to clearNumMisseds];
    numMissedsCount = [(AWDIMessageHealthCheckPerformed *)self numMissedsCount];
    if (numMissedsCount)
    {
      v10 = numMissedsCount;
      for (j = 0; j != v10; ++j)
      {
        [to addNumMissed:{-[AWDIMessageHealthCheckPerformed numMissedAtIndex:](self, "numMissedAtIndex:", j)}];
      }
    }
  }

  if ([(AWDIMessageHealthCheckPerformed *)self aliasesMatchedsCount])
  {
    [to clearAliasesMatcheds];
    aliasesMatchedsCount = [(AWDIMessageHealthCheckPerformed *)self aliasesMatchedsCount];
    if (aliasesMatchedsCount)
    {
      v13 = aliasesMatchedsCount;
      for (k = 0; k != v13; ++k)
      {
        [to addAliasesMatched:{-[AWDIMessageHealthCheckPerformed aliasesMatchedAtIndex:](self, "aliasesMatchedAtIndex:", k)}];
      }
    }
  }

  if ([(AWDIMessageHealthCheckPerformed *)self coarseMatchedsCount])
  {
    [to clearCoarseMatcheds];
    coarseMatchedsCount = [(AWDIMessageHealthCheckPerformed *)self coarseMatchedsCount];
    if (coarseMatchedsCount)
    {
      v16 = coarseMatchedsCount;
      for (m = 0; m != v16; ++m)
      {
        [to addCoarseMatched:{-[AWDIMessageHealthCheckPerformed coarseMatchedAtIndex:](self, "coarseMatchedAtIndex:", m)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(equal + 124);
  if (*&self->_has)
  {
    if ((*(equal + 124) & 1) == 0 || self->_timestamp != *(equal + 13))
    {
      return 0;
    }
  }

  else if (*(equal + 124))
  {
    return 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equal + 124) & 4) == 0 || self->_numberOfRequests != *(equal + 29))
    {
      return 0;
    }
  }

  else if ((*(equal + 124) & 4) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equal + 124) & 8) == 0 || self->_numberOfResponses != *(equal + 30))
    {
      return 0;
    }
  }

  else if ((*(equal + 124) & 8) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 124) & 2) == 0 || self->_numMessages != *(equal + 28))
    {
      return 0;
    }
  }

  else if ((*(equal + 124) & 2) != 0)
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

- (void)mergeFrom:(id)from
{
  v5 = *(from + 124);
  if (v5)
  {
    self->_timestamp = *(from + 13);
    *&self->_has |= 1u;
    v5 = *(from + 124);
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

  else if ((*(from + 124) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_numberOfRequests = *(from + 29);
  *&self->_has |= 4u;
  v5 = *(from + 124);
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
  self->_numberOfResponses = *(from + 30);
  *&self->_has |= 8u;
  if ((*(from + 124) & 2) != 0)
  {
LABEL_5:
    self->_numMessages = *(from + 28);
    *&self->_has |= 2u;
  }

LABEL_6:
  numOutOfOrdersCount = [from numOutOfOrdersCount];
  if (numOutOfOrdersCount)
  {
    v7 = numOutOfOrdersCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDIMessageHealthCheckPerformed addNumOutOfOrder:](self, "addNumOutOfOrder:", [from numOutOfOrderAtIndex:i]);
    }
  }

  numMissedsCount = [from numMissedsCount];
  if (numMissedsCount)
  {
    v10 = numMissedsCount;
    for (j = 0; j != v10; ++j)
    {
      -[AWDIMessageHealthCheckPerformed addNumMissed:](self, "addNumMissed:", [from numMissedAtIndex:j]);
    }
  }

  aliasesMatchedsCount = [from aliasesMatchedsCount];
  if (aliasesMatchedsCount)
  {
    v13 = aliasesMatchedsCount;
    for (k = 0; k != v13; ++k)
    {
      -[AWDIMessageHealthCheckPerformed addAliasesMatched:](self, "addAliasesMatched:", [from aliasesMatchedAtIndex:k]);
    }
  }

  coarseMatchedsCount = [from coarseMatchedsCount];
  if (coarseMatchedsCount)
  {
    v16 = coarseMatchedsCount;
    for (m = 0; m != v16; ++m)
    {
      -[AWDIMessageHealthCheckPerformed addCoarseMatched:](self, "addCoarseMatched:", [from coarseMatchedAtIndex:m]);
    }
  }
}

@end