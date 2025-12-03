@interface AWDSymptomsCellularSDMPollingStatistics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)pollingIntervalCountAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasPollIntervalVersion:(BOOL)version;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDSymptomsCellularSDMPollingStatistics

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDSymptomsCellularSDMPollingStatistics;
  [(AWDSymptomsCellularSDMPollingStatistics *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPollIntervalVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (unsigned)pollingIntervalCountAtIndex:(unint64_t)index
{
  p_pollingIntervalCounts = &self->_pollingIntervalCounts;
  count = self->_pollingIntervalCounts.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_pollingIntervalCounts->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsCellularSDMPollingStatistics;
  v4 = [(AWDSymptomsCellularSDMPollingStatistics *)&v8 description];
  dictionaryRepresentation = [(AWDSymptomsCellularSDMPollingStatistics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v8 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_durationSeconds];
  [dictionary setObject:v9 forKey:@"durationSeconds"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_pollIntervalVersion];
    [dictionary setObject:v5 forKey:@"pollIntervalVersion"];
  }

LABEL_5:
  v6 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v6 forKey:@"pollingIntervalCount"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  durationSeconds = self->_durationSeconds;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    pollIntervalVersion = self->_pollIntervalVersion;
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  p_pollingIntervalCounts = &self->_pollingIntervalCounts;
  if (p_pollingIntervalCounts->count)
  {
    PBDataWriterPlaceMark();
    if (p_pollingIntervalCounts->count)
    {
      v8 = 0;
      do
      {
        v9 = p_pollingIntervalCounts->list[v8];
        PBDataWriterWriteUint32Field();
        ++v8;
      }

      while (v8 < p_pollingIntervalCounts->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    toCopy[4] = self->_durationSeconds;
    *(toCopy + 52) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  toCopy[5] = self->_timestamp;
  *(toCopy + 52) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(toCopy + 12) = self->_pollIntervalVersion;
    *(toCopy + 52) |= 4u;
  }

LABEL_5:
  v9 = toCopy;
  if ([(AWDSymptomsCellularSDMPollingStatistics *)self pollingIntervalCountsCount])
  {
    [v9 clearPollingIntervalCounts];
    pollingIntervalCountsCount = [(AWDSymptomsCellularSDMPollingStatistics *)self pollingIntervalCountsCount];
    if (pollingIntervalCountsCount)
    {
      v7 = pollingIntervalCountsCount;
      for (i = 0; i != v7; ++i)
      {
        [v9 addPollingIntervalCount:{-[AWDSymptomsCellularSDMPollingStatistics pollingIntervalCountAtIndex:](self, "pollingIntervalCountAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v4 + 32) = self->_durationSeconds;
    *(v4 + 52) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v4 + 40) = self->_timestamp;
  *(v4 + 52) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v4 + 48) = self->_pollIntervalVersion;
    *(v4 + 52) |= 4u;
  }

LABEL_5:
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(equalCopy + 52);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_timestamp != *(equalCopy + 5))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
LABEL_18:
    IsEqual = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_durationSeconds != *(equalCopy + 4))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_pollIntervalVersion != *(equalCopy + 12))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_18;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_19:

  return IsEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4 ^ PBRepeatedUInt32Hash();
  }

  v2 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761u * self->_durationSeconds;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_pollIntervalVersion;
  return v3 ^ v2 ^ v4 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 52);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(fromCopy + 5);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 52);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 52) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_durationSeconds = *(fromCopy + 4);
  *&self->_has |= 1u;
  if ((*(fromCopy + 52) & 4) != 0)
  {
LABEL_4:
    self->_pollIntervalVersion = *(fromCopy + 12);
    *&self->_has |= 4u;
  }

LABEL_5:
  v9 = fromCopy;
  pollingIntervalCountsCount = [fromCopy pollingIntervalCountsCount];
  if (pollingIntervalCountsCount)
  {
    v7 = pollingIntervalCountsCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDSymptomsCellularSDMPollingStatistics addPollingIntervalCount:](self, "addPollingIntervalCount:", [v9 pollingIntervalCountAtIndex:i]);
    }
  }
}

@end