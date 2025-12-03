@interface AWDWiFiMetricJoinTimeout
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)associationStateAtIndex:(unint64_t)index;
- (unsigned)channelAtIndex:(unint64_t)index;
- (unsigned)joinClassificationInfoAtIndex:(unint64_t)index;
- (unsigned)joinTargetClassificationInfoAtIndex:(unint64_t)index;
- (unsigned)totalNumberOfJoinAttemptsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricJoinTimeout

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricJoinTimeout;
  [(AWDWiFiMetricJoinTimeout *)&v3 dealloc];
}

- (unsigned)joinClassificationInfoAtIndex:(unint64_t)index
{
  p_joinClassificationInfos = &self->_joinClassificationInfos;
  count = self->_joinClassificationInfos.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_joinClassificationInfos->list[index];
}

- (unsigned)joinTargetClassificationInfoAtIndex:(unint64_t)index
{
  p_joinTargetClassificationInfos = &self->_joinTargetClassificationInfos;
  count = self->_joinTargetClassificationInfos.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_joinTargetClassificationInfos->list[index];
}

- (unsigned)associationStateAtIndex:(unint64_t)index
{
  p_associationStates = &self->_associationStates;
  count = self->_associationStates.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_associationStates->list[index];
}

- (unsigned)channelAtIndex:(unint64_t)index
{
  p_channels = &self->_channels;
  count = self->_channels.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_channels->list[index];
}

- (unsigned)totalNumberOfJoinAttemptsAtIndex:(unint64_t)index
{
  p_totalNumberOfJoinAttempts = &self->_totalNumberOfJoinAttempts;
  count = self->_totalNumberOfJoinAttempts.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_totalNumberOfJoinAttempts->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricJoinTimeout;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricJoinTimeout description](&v3, sel_description), -[AWDWiFiMetricJoinTimeout dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sequence), @"sequence"}];
  }

  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"joinClassificationInfo"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"joinTargetClassificationInfo"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"associationState"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"channel"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"totalNumberOfJoinAttempts"];
  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    sequence = self->_sequence;
    PBDataWriterWriteUint32Field();
  }

  if (self->_joinClassificationInfos.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_joinClassificationInfos.list[v5];
      PBDataWriterWriteUint32Field();
      ++v5;
    }

    while (v5 < self->_joinClassificationInfos.count);
  }

  if (self->_joinTargetClassificationInfos.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_joinTargetClassificationInfos.list[v7];
      PBDataWriterWriteUint32Field();
      ++v7;
    }

    while (v7 < self->_joinTargetClassificationInfos.count);
  }

  if (self->_associationStates.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_associationStates.list[v9];
      PBDataWriterWriteUint32Field();
      ++v9;
    }

    while (v9 < self->_associationStates.count);
  }

  if (self->_channels.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_channels.list[v11];
      PBDataWriterWriteUint32Field();
      ++v11;
    }

    while (v11 < self->_channels.count);
  }

  p_totalNumberOfJoinAttempts = &self->_totalNumberOfJoinAttempts;
  if (p_totalNumberOfJoinAttempts->count)
  {
    v14 = 0;
    do
    {
      v15 = p_totalNumberOfJoinAttempts->list[v14];
      PBDataWriterWriteUint32Field();
      ++v14;
    }

    while (v14 < p_totalNumberOfJoinAttempts->count);
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 32) = self->_sequence;
    *(to + 132) |= 1u;
  }

  if ([(AWDWiFiMetricJoinTimeout *)self joinClassificationInfosCount])
  {
    [to clearJoinClassificationInfos];
    joinClassificationInfosCount = [(AWDWiFiMetricJoinTimeout *)self joinClassificationInfosCount];
    if (joinClassificationInfosCount)
    {
      v6 = joinClassificationInfosCount;
      for (i = 0; i != v6; ++i)
      {
        [to addJoinClassificationInfo:{-[AWDWiFiMetricJoinTimeout joinClassificationInfoAtIndex:](self, "joinClassificationInfoAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiMetricJoinTimeout *)self joinTargetClassificationInfosCount])
  {
    [to clearJoinTargetClassificationInfos];
    joinTargetClassificationInfosCount = [(AWDWiFiMetricJoinTimeout *)self joinTargetClassificationInfosCount];
    if (joinTargetClassificationInfosCount)
    {
      v9 = joinTargetClassificationInfosCount;
      for (j = 0; j != v9; ++j)
      {
        [to addJoinTargetClassificationInfo:{-[AWDWiFiMetricJoinTimeout joinTargetClassificationInfoAtIndex:](self, "joinTargetClassificationInfoAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiMetricJoinTimeout *)self associationStatesCount])
  {
    [to clearAssociationStates];
    associationStatesCount = [(AWDWiFiMetricJoinTimeout *)self associationStatesCount];
    if (associationStatesCount)
    {
      v12 = associationStatesCount;
      for (k = 0; k != v12; ++k)
      {
        [to addAssociationState:{-[AWDWiFiMetricJoinTimeout associationStateAtIndex:](self, "associationStateAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiMetricJoinTimeout *)self channelsCount])
  {
    [to clearChannels];
    channelsCount = [(AWDWiFiMetricJoinTimeout *)self channelsCount];
    if (channelsCount)
    {
      v15 = channelsCount;
      for (m = 0; m != v15; ++m)
      {
        [to addChannel:{-[AWDWiFiMetricJoinTimeout channelAtIndex:](self, "channelAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiMetricJoinTimeout *)self totalNumberOfJoinAttemptsCount])
  {
    [to clearTotalNumberOfJoinAttempts];
    totalNumberOfJoinAttemptsCount = [(AWDWiFiMetricJoinTimeout *)self totalNumberOfJoinAttemptsCount];
    if (totalNumberOfJoinAttemptsCount)
    {
      v18 = totalNumberOfJoinAttemptsCount;
      for (n = 0; n != v18; ++n)
      {
        [to addTotalNumberOfJoinAttempts:{-[AWDWiFiMetricJoinTimeout totalNumberOfJoinAttemptsAtIndex:](self, "totalNumberOfJoinAttemptsAtIndex:", n)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 128) = self->_sequence;
    *(v4 + 132) |= 1u;
  }

  PBRepeatedUInt32Copy();
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

  v5 = *(equal + 132);
  if (*&self->_has)
  {
    if ((*(equal + 132) & 1) == 0 || self->_sequence != *(equal + 32))
    {
      return 0;
    }
  }

  else if (*(equal + 132))
  {
    return 0;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    return 0;
  }

  return PBRepeatedUInt32IsEqual();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_sequence;
  }

  else
  {
    v2 = 0;
  }

  v3 = PBRepeatedUInt32Hash() ^ v2;
  v4 = PBRepeatedUInt32Hash();
  v5 = v3 ^ v4 ^ PBRepeatedUInt32Hash();
  v6 = PBRepeatedUInt32Hash();
  return v5 ^ v6 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  if (*(from + 132))
  {
    self->_sequence = *(from + 32);
    *&self->_has |= 1u;
  }

  joinClassificationInfosCount = [from joinClassificationInfosCount];
  if (joinClassificationInfosCount)
  {
    v6 = joinClassificationInfosCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiMetricJoinTimeout addJoinClassificationInfo:](self, "addJoinClassificationInfo:", [from joinClassificationInfoAtIndex:i]);
    }
  }

  joinTargetClassificationInfosCount = [from joinTargetClassificationInfosCount];
  if (joinTargetClassificationInfosCount)
  {
    v9 = joinTargetClassificationInfosCount;
    for (j = 0; j != v9; ++j)
    {
      -[AWDWiFiMetricJoinTimeout addJoinTargetClassificationInfo:](self, "addJoinTargetClassificationInfo:", [from joinTargetClassificationInfoAtIndex:j]);
    }
  }

  associationStatesCount = [from associationStatesCount];
  if (associationStatesCount)
  {
    v12 = associationStatesCount;
    for (k = 0; k != v12; ++k)
    {
      -[AWDWiFiMetricJoinTimeout addAssociationState:](self, "addAssociationState:", [from associationStateAtIndex:k]);
    }
  }

  channelsCount = [from channelsCount];
  if (channelsCount)
  {
    v15 = channelsCount;
    for (m = 0; m != v15; ++m)
    {
      -[AWDWiFiMetricJoinTimeout addChannel:](self, "addChannel:", [from channelAtIndex:m]);
    }
  }

  totalNumberOfJoinAttemptsCount = [from totalNumberOfJoinAttemptsCount];
  if (totalNumberOfJoinAttemptsCount)
  {
    v18 = totalNumberOfJoinAttemptsCount;
    for (n = 0; n != v18; ++n)
    {
      -[AWDWiFiMetricJoinTimeout addTotalNumberOfJoinAttempts:](self, "addTotalNumberOfJoinAttempts:", [from totalNumberOfJoinAttemptsAtIndex:n]);
    }
  }
}

@end