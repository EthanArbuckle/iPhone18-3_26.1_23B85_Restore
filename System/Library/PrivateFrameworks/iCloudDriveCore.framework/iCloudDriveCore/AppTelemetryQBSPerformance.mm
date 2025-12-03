@interface AppTelemetryQBSPerformance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRecordsFetchedTotalMetadataSize:(BOOL)size;
- (void)setHasTotalTime:(BOOL)time;
- (void)setHasXattrsFetchedTotalSize:(BOOL)size;
- (void)writeTo:(id)to;
@end

@implementation AppTelemetryQBSPerformance

- (void)setHasTotalTime:(BOOL)time
{
  if (time)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRecordsFetchedTotalMetadataSize:(BOOL)size
{
  if (size)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasXattrsFetchedTotalSize:(BOOL)size
{
  if (size)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AppTelemetryQBSPerformance;
  v4 = [(AppTelemetryQBSPerformance *)&v8 description];
  dictionaryRepresentation = [(AppTelemetryQBSPerformance *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  operationType = self->_operationType;
  if (operationType)
  {
    [dictionary setObject:operationType forKey:@"operationType"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_totalTime];
    [v4 setObject:v9 forKey:@"totalTime"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_recordsFetched];
  [v4 setObject:v10 forKey:@"recordsFetched"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_recordsFetchedTotalMetadataSize];
  [v4 setObject:v11 forKey:@"recordsFetchedTotalMetadataSize"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_xattrsFetchedTotalSize];
    [v4 setObject:v7 forKey:@"xattrsFetchedTotalSize"];
  }

LABEL_8:

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_operationType)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    totalTime = self->_totalTime;
    PBDataWriterWriteUint64Field();
    toCopy = v10;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  recordsFetched = self->_recordsFetched;
  PBDataWriterWriteUint64Field();
  toCopy = v10;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  recordsFetchedTotalMetadataSize = self->_recordsFetchedTotalMetadataSize;
  PBDataWriterWriteUint64Field();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    xattrsFetchedTotalSize = self->_xattrsFetchedTotalSize;
    PBDataWriterWriteUint64Field();
    toCopy = v10;
  }

LABEL_8:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_operationType)
  {
    v6 = toCopy;
    [toCopy setOperationType:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 3) = self->_totalTime;
    *(toCopy + 48) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 1) = self->_recordsFetched;
  *(toCopy + 48) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(toCopy + 2) = self->_recordsFetchedTotalMetadataSize;
  *(toCopy + 48) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(toCopy + 4) = self->_xattrsFetchedTotalSize;
    *(toCopy + 48) |= 8u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_operationType copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_totalTime;
    *(v5 + 48) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 16) = self->_recordsFetchedTotalMetadataSize;
      *(v5 + 48) |= 2u;
      if ((*&self->_has & 8) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_recordsFetched;
  *(v5 + 48) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 32) = self->_xattrsFetchedTotalSize;
    *(v5 + 48) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  operationType = self->_operationType;
  if (operationType | *(equalCopy + 5))
  {
    if (![(NSString *)operationType isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_totalTime != *(equalCopy + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_recordsFetched != *(equalCopy + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_recordsFetchedTotalMetadataSize != *(equalCopy + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_23;
  }

  v6 = (*(equalCopy + 48) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_xattrsFetchedTotalSize != *(equalCopy + 4))
    {
      goto LABEL_23;
    }

    v6 = 1;
  }

LABEL_24:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_operationType hash];
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761u * self->_totalTime;
    if (*&self->_has)
    {
LABEL_3:
      v5 = 2654435761u * self->_recordsFetched;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
    }
  }

  else
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761u * self->_recordsFetchedTotalMetadataSize;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761u * self->_xattrsFetchedTotalSize;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    v6 = fromCopy;
    [(AppTelemetryQBSPerformance *)self setOperationType:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 48);
  if ((v5 & 4) != 0)
  {
    self->_totalTime = fromCopy[3];
    *&self->_has |= 4u;
    v5 = *(fromCopy + 48);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((fromCopy[6] & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_recordsFetched = fromCopy[1];
  *&self->_has |= 1u;
  v5 = *(fromCopy + 48);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  self->_recordsFetchedTotalMetadataSize = fromCopy[2];
  *&self->_has |= 2u;
  if ((fromCopy[6] & 8) != 0)
  {
LABEL_7:
    self->_xattrsFetchedTotalSize = fromCopy[4];
    *&self->_has |= 8u;
  }

LABEL_8:
}

@end