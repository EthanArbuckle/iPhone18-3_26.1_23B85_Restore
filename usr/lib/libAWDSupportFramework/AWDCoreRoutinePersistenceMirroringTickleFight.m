@interface AWDCoreRoutinePersistenceMirroringTickleFight
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)tickleTimesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasOperationType:(BOOL)a3;
- (void)setHasRecordType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutinePersistenceMirroringTickleFight

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCoreRoutinePersistenceMirroringTickleFight;
  [(AWDCoreRoutinePersistenceMirroringTickleFight *)&v3 dealloc];
}

- (int)tickleTimesAtIndex:(unint64_t)a3
{
  p_tickleTimes = &self->_tickleTimes;
  count = self->_tickleTimes.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_tickleTimes->list[a3];
}

- (void)setHasRecordType:(BOOL)a3
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

- (void)setHasOperationType:(BOOL)a3
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
  v3.super_class = AWDCoreRoutinePersistenceMirroringTickleFight;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutinePersistenceMirroringTickleFight description](&v3, sel_description), -[AWDCoreRoutinePersistenceMirroringTickleFight dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"tickleTimes"];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_recordType), @"recordType"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_operationType), @"operationType"}];
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 4) = self->_timestamp;
    *(a3 + 48) |= 1u;
  }

  if ([(AWDCoreRoutinePersistenceMirroringTickleFight *)self tickleTimesCount])
  {
    [a3 clearTickleTimes];
    v5 = [(AWDCoreRoutinePersistenceMirroringTickleFight *)self tickleTimesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addTickleTimes:{-[AWDCoreRoutinePersistenceMirroringTickleFight tickleTimesAtIndex:](self, "tickleTimesAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 11) = self->_recordType;
    *(a3 + 48) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 10) = self->_operationType;
    *(a3 + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    v6 = *(a3 + 48);
    if (*&self->_has)
    {
      if ((*(a3 + 48) & 1) == 0 || self->_timestamp != *(a3 + 4))
      {
        goto LABEL_17;
      }
    }

    else if (*(a3 + 48))
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
        if ((*(a3 + 48) & 4) == 0 || self->_recordType != *(a3 + 11))
        {
          goto LABEL_17;
        }
      }

      else if ((*(a3 + 48) & 4) != 0)
      {
        goto LABEL_17;
      }

      LOBYTE(IsEqual) = (*(a3 + 48) & 2) == 0;
      if ((*&self->_has & 2) != 0)
      {
        if ((*(a3 + 48) & 2) == 0 || self->_operationType != *(a3 + 10))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 48))
  {
    self->_timestamp = *(a3 + 4);
    *&self->_has |= 1u;
  }

  v5 = [a3 tickleTimesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDCoreRoutinePersistenceMirroringTickleFight addTickleTimes:](self, "addTickleTimes:", [a3 tickleTimesAtIndex:i]);
    }
  }

  v8 = *(a3 + 48);
  if ((v8 & 4) != 0)
  {
    self->_recordType = *(a3 + 11);
    *&self->_has |= 4u;
    v8 = *(a3 + 48);
  }

  if ((v8 & 2) != 0)
  {
    self->_operationType = *(a3 + 10);
    *&self->_has |= 2u;
  }
}

@end