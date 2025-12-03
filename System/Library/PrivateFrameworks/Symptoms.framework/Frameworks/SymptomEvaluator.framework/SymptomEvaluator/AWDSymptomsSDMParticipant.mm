@interface AWDSymptomsSDMParticipant
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDlThroughputBytesPerSecond:(BOOL)second;
- (void)setHasParticipationDelta:(BOOL)delta;
- (void)setHasPeriodDuration:(BOOL)duration;
- (void)setHasUlThroughputBytesPerSecond:(BOOL)second;
- (void)writeTo:(id)to;
@end

@implementation AWDSymptomsSDMParticipant

- (void)setHasParticipationDelta:(BOOL)delta
{
  if (delta)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPeriodDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDlThroughputBytesPerSecond:(BOOL)second
{
  if (second)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasUlThroughputBytesPerSecond:(BOOL)second
{
  if (second)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsSDMParticipant;
  v4 = [(AWDSymptomsSDMParticipant *)&v8 description];
  dictionaryRepresentation = [(AWDSymptomsSDMParticipant *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_participationDelta];
    [dictionary setObject:v4 forKey:@"participationDelta"];
  }

  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_periodDuration];
    [dictionary setObject:v9 forKey:@"periodDuration"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_dlThroughputBytesPerSecond];
  [dictionary setObject:v10 forKey:@"dlThroughputBytesPerSecond"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_ulThroughputBytesPerSecond];
  [dictionary setObject:v11 forKey:@"ulThroughputBytesPerSecond"];

  if (*&self->_has)
  {
LABEL_9:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_additionalFlags];
    [dictionary setObject:v7 forKey:@"additionalFlags"];
  }

LABEL_10:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    participationDelta = self->_participationDelta;
    PBDataWriterWriteUint64Field();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    periodDuration = self->_periodDuration;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  dlThroughputBytesPerSecond = self->_dlThroughputBytesPerSecond;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  ulThroughputBytesPerSecond = self->_ulThroughputBytesPerSecond;
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
LABEL_9:
    additionalFlags = self->_additionalFlags;
    PBDataWriterWriteUint64Field();
  }

LABEL_10:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[3] = self->_participationDelta;
    *(toCopy + 56) |= 4u;
  }

  if (self->_name)
  {
    v6 = toCopy;
    [toCopy setName:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[4] = self->_periodDuration;
    *(toCopy + 56) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  toCopy[2] = self->_dlThroughputBytesPerSecond;
  *(toCopy + 56) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  toCopy[5] = self->_ulThroughputBytesPerSecond;
  *(toCopy + 56) |= 0x10u;
  if (*&self->_has)
  {
LABEL_9:
    toCopy[1] = self->_additionalFlags;
    *(toCopy + 56) |= 1u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_participationDelta;
    *(v5 + 56) |= 4u;
  }

  v7 = [(NSString *)self->_name copyWithZone:zone];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 32) = self->_periodDuration;
    *(v6 + 56) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 40) = self->_ulThroughputBytesPerSecond;
      *(v6 + 56) |= 0x10u;
      if ((*&self->_has & 1) == 0)
      {
        return v6;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_dlThroughputBytesPerSecond;
  *(v6 + 56) |= 2u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (has)
  {
LABEL_7:
    *(v6 + 8) = self->_additionalFlags;
    *(v6 + 56) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  has = self->_has;
  v6 = *(equalCopy + 56);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_participationDelta != *(equalCopy + 3))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_29;
  }

  name = self->_name;
  if (name | *(equalCopy + 6))
  {
    if (![(NSString *)name isEqual:?])
    {
LABEL_29:
      v8 = 0;
      goto LABEL_30;
    }

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_periodDuration != *(equalCopy + 4))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 56) & 8) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_dlThroughputBytesPerSecond != *(equalCopy + 2))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 56) & 0x10) == 0 || self->_ulThroughputBytesPerSecond != *(equalCopy + 5))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 56) & 0x10) != 0)
  {
    goto LABEL_29;
  }

  v8 = (*(equalCopy + 56) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_additionalFlags != *(equalCopy + 1))
    {
      goto LABEL_29;
    }

    v8 = 1;
  }

LABEL_30:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_participationDelta;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_name hash];
  if ((*&self->_has & 8) != 0)
  {
    v5 = 2654435761u * self->_periodDuration;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v6 = 2654435761u * self->_dlThroughputBytesPerSecond;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if (*&self->_has)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761u * self->_ulThroughputBytesPerSecond;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761u * self->_additionalFlags;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[7] & 4) != 0)
  {
    self->_participationDelta = fromCopy[3];
    *&self->_has |= 4u;
  }

  if (fromCopy[6])
  {
    v6 = fromCopy;
    [(AWDSymptomsSDMParticipant *)self setName:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 56);
  if ((v5 & 8) != 0)
  {
    self->_periodDuration = fromCopy[4];
    *&self->_has |= 8u;
    v5 = *(fromCopy + 56);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((fromCopy[7] & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_dlThroughputBytesPerSecond = fromCopy[2];
  *&self->_has |= 2u;
  v5 = *(fromCopy + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  self->_ulThroughputBytesPerSecond = fromCopy[5];
  *&self->_has |= 0x10u;
  if (fromCopy[7])
  {
LABEL_9:
    self->_additionalFlags = fromCopy[1];
    *&self->_has |= 1u;
  }

LABEL_10:
}

@end