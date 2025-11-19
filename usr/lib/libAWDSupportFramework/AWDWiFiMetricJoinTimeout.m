@interface AWDWiFiMetricJoinTimeout
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)associationStateAtIndex:(unint64_t)a3;
- (unsigned)channelAtIndex:(unint64_t)a3;
- (unsigned)joinClassificationInfoAtIndex:(unint64_t)a3;
- (unsigned)joinTargetClassificationInfoAtIndex:(unint64_t)a3;
- (unsigned)totalNumberOfJoinAttemptsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (unsigned)joinClassificationInfoAtIndex:(unint64_t)a3
{
  p_joinClassificationInfos = &self->_joinClassificationInfos;
  count = self->_joinClassificationInfos.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_joinClassificationInfos->list[a3];
}

- (unsigned)joinTargetClassificationInfoAtIndex:(unint64_t)a3
{
  p_joinTargetClassificationInfos = &self->_joinTargetClassificationInfos;
  count = self->_joinTargetClassificationInfos.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_joinTargetClassificationInfos->list[a3];
}

- (unsigned)associationStateAtIndex:(unint64_t)a3
{
  p_associationStates = &self->_associationStates;
  count = self->_associationStates.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_associationStates->list[a3];
}

- (unsigned)channelAtIndex:(unint64_t)a3
{
  p_channels = &self->_channels;
  count = self->_channels.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_channels->list[a3];
}

- (unsigned)totalNumberOfJoinAttemptsAtIndex:(unint64_t)a3
{
  p_totalNumberOfJoinAttempts = &self->_totalNumberOfJoinAttempts;
  count = self->_totalNumberOfJoinAttempts.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_totalNumberOfJoinAttempts->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricJoinTimeout;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricJoinTimeout description](&v3, sel_description), -[AWDWiFiMetricJoinTimeout dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sequence), @"sequence"}];
  }

  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"joinClassificationInfo"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"joinTargetClassificationInfo"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"associationState"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"channel"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"totalNumberOfJoinAttempts"];
  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 32) = self->_sequence;
    *(a3 + 132) |= 1u;
  }

  if ([(AWDWiFiMetricJoinTimeout *)self joinClassificationInfosCount])
  {
    [a3 clearJoinClassificationInfos];
    v5 = [(AWDWiFiMetricJoinTimeout *)self joinClassificationInfosCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addJoinClassificationInfo:{-[AWDWiFiMetricJoinTimeout joinClassificationInfoAtIndex:](self, "joinClassificationInfoAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiMetricJoinTimeout *)self joinTargetClassificationInfosCount])
  {
    [a3 clearJoinTargetClassificationInfos];
    v8 = [(AWDWiFiMetricJoinTimeout *)self joinTargetClassificationInfosCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addJoinTargetClassificationInfo:{-[AWDWiFiMetricJoinTimeout joinTargetClassificationInfoAtIndex:](self, "joinTargetClassificationInfoAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiMetricJoinTimeout *)self associationStatesCount])
  {
    [a3 clearAssociationStates];
    v11 = [(AWDWiFiMetricJoinTimeout *)self associationStatesCount];
    if (v11)
    {
      v12 = v11;
      for (k = 0; k != v12; ++k)
      {
        [a3 addAssociationState:{-[AWDWiFiMetricJoinTimeout associationStateAtIndex:](self, "associationStateAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiMetricJoinTimeout *)self channelsCount])
  {
    [a3 clearChannels];
    v14 = [(AWDWiFiMetricJoinTimeout *)self channelsCount];
    if (v14)
    {
      v15 = v14;
      for (m = 0; m != v15; ++m)
      {
        [a3 addChannel:{-[AWDWiFiMetricJoinTimeout channelAtIndex:](self, "channelAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiMetricJoinTimeout *)self totalNumberOfJoinAttemptsCount])
  {
    [a3 clearTotalNumberOfJoinAttempts];
    v17 = [(AWDWiFiMetricJoinTimeout *)self totalNumberOfJoinAttemptsCount];
    if (v17)
    {
      v18 = v17;
      for (n = 0; n != v18; ++n)
      {
        [a3 addTotalNumberOfJoinAttempts:{-[AWDWiFiMetricJoinTimeout totalNumberOfJoinAttemptsAtIndex:](self, "totalNumberOfJoinAttemptsAtIndex:", n)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  if (![a3 isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(a3 + 132);
  if (*&self->_has)
  {
    if ((*(a3 + 132) & 1) == 0 || self->_sequence != *(a3 + 32))
    {
      return 0;
    }
  }

  else if (*(a3 + 132))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 132))
  {
    self->_sequence = *(a3 + 32);
    *&self->_has |= 1u;
  }

  v5 = [a3 joinClassificationInfosCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiMetricJoinTimeout addJoinClassificationInfo:](self, "addJoinClassificationInfo:", [a3 joinClassificationInfoAtIndex:i]);
    }
  }

  v8 = [a3 joinTargetClassificationInfosCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[AWDWiFiMetricJoinTimeout addJoinTargetClassificationInfo:](self, "addJoinTargetClassificationInfo:", [a3 joinTargetClassificationInfoAtIndex:j]);
    }
  }

  v11 = [a3 associationStatesCount];
  if (v11)
  {
    v12 = v11;
    for (k = 0; k != v12; ++k)
    {
      -[AWDWiFiMetricJoinTimeout addAssociationState:](self, "addAssociationState:", [a3 associationStateAtIndex:k]);
    }
  }

  v14 = [a3 channelsCount];
  if (v14)
  {
    v15 = v14;
    for (m = 0; m != v15; ++m)
    {
      -[AWDWiFiMetricJoinTimeout addChannel:](self, "addChannel:", [a3 channelAtIndex:m]);
    }
  }

  v17 = [a3 totalNumberOfJoinAttemptsCount];
  if (v17)
  {
    v18 = v17;
    for (n = 0; n != v18; ++n)
    {
      -[AWDWiFiMetricJoinTimeout addTotalNumberOfJoinAttempts:](self, "addTotalNumberOfJoinAttempts:", [a3 totalNumberOfJoinAttemptsAtIndex:n]);
    }
  }
}

@end