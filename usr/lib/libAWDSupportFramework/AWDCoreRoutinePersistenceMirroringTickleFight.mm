@interface AWDCoreRoutinePersistenceMirroringTickleFight
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)tickleTimesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasOperationType:(BOOL)type;
- (void)setHasRecordType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutinePersistenceMirroringTickleFight

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCoreRoutinePersistenceMirroringTickleFight;
  [(AWDCoreRoutinePersistenceMirroringTickleFight *)&v3 dealloc];
}

- (int)tickleTimesAtIndex:(unint64_t)index
{
  p_tickleTimes = &self->_tickleTimes;
  count = self->_tickleTimes.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_tickleTimes->list[index];
}

- (void)setHasRecordType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasOperationType:(BOOL)type
{
  if (type)
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
  v3.super_class = AWDCoreRoutinePersistenceMirroringTickleFight;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutinePersistenceMirroringTickleFight description](&v3, sel_description), -[AWDCoreRoutinePersistenceMirroringTickleFight dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"tickleTimes"];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_recordType), @"recordType"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_operationType), @"operationType"}];
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

  if (self->_tickleTimes.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_tickleTimes.list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_tickleTimes.count);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    recordType = self->_recordType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    operationType = self->_operationType;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 4) = self->_timestamp;
    *(to + 48) |= 1u;
  }

  if ([(AWDCoreRoutinePersistenceMirroringTickleFight *)self tickleTimesCount])
  {
    [to clearTickleTimes];
    tickleTimesCount = [(AWDCoreRoutinePersistenceMirroringTickleFight *)self tickleTimesCount];
    if (tickleTimesCount)
    {
      v6 = tickleTimesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addTickleTimes:{-[AWDCoreRoutinePersistenceMirroringTickleFight tickleTimesAtIndex:](self, "tickleTimesAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 11) = self->_recordType;
    *(to + 48) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 10) = self->_operationType;
    *(to + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 32) = self->_timestamp;
    *(v4 + 48) |= 1u;
  }

  PBRepeatedInt32Copy();
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 44) = self->_recordType;
    *(v5 + 48) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_operationType;
    *(v5 + 48) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    v6 = *(equal + 48);
    if (*&self->_has)
    {
      if ((*(equal + 48) & 1) == 0 || self->_timestamp != *(equal + 4))
      {
        goto LABEL_17;
      }
    }

    else if (*(equal + 48))
    {
LABEL_17:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    IsEqual = PBRepeatedInt32IsEqual();
    if (IsEqual)
    {
      if ((*&self->_has & 4) != 0)
      {
        if ((*(equal + 48) & 4) == 0 || self->_recordType != *(equal + 11))
        {
          goto LABEL_17;
        }
      }

      else if ((*(equal + 48) & 4) != 0)
      {
        goto LABEL_17;
      }

      LOBYTE(IsEqual) = (*(equal + 48) & 2) == 0;
      if ((*&self->_has & 2) != 0)
      {
        if ((*(equal + 48) & 2) == 0 || self->_operationType != *(equal + 10))
        {
          goto LABEL_17;
        }

        LOBYTE(IsEqual) = 1;
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
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_recordType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_operationType;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 48))
  {
    self->_timestamp = *(from + 4);
    *&self->_has |= 1u;
  }

  tickleTimesCount = [from tickleTimesCount];
  if (tickleTimesCount)
  {
    v6 = tickleTimesCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDCoreRoutinePersistenceMirroringTickleFight addTickleTimes:](self, "addTickleTimes:", [from tickleTimesAtIndex:i]);
    }
  }

  v8 = *(from + 48);
  if ((v8 & 4) != 0)
  {
    self->_recordType = *(from + 11);
    *&self->_has |= 4u;
    v8 = *(from + 48);
  }

  if ((v8 & 2) != 0)
  {
    self->_operationType = *(from + 10);
    *&self->_has |= 2u;
  }
}

@end