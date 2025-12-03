@interface SCLPBScheduleRecurrence
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDay:(id)day;
- (int)day;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SCLPBScheduleRecurrence

- (int)day
{
  if (*&self->_has)
  {
    return self->_day;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsDay:(id)day
{
  dayCopy = day;
  if ([dayCopy isEqualToString:@"SUNDAY"])
  {
    v4 = 1;
  }

  else if ([dayCopy isEqualToString:@"MONDAY"])
  {
    v4 = 2;
  }

  else if ([dayCopy isEqualToString:@"TUESDAY"])
  {
    v4 = 3;
  }

  else if ([dayCopy isEqualToString:@"WEDNESDAY"])
  {
    v4 = 4;
  }

  else if ([dayCopy isEqualToString:@"THURSDAY"])
  {
    v4 = 5;
  }

  else if ([dayCopy isEqualToString:@"FRIDAY"])
  {
    v4 = 6;
  }

  else if ([dayCopy isEqualToString:@"SATURDAY"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SCLPBScheduleRecurrence;
  v4 = [(SCLPBScheduleRecurrence *)&v8 description];
  dictionaryRepresentation = [(SCLPBScheduleRecurrence *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  timeInterval = self->_timeInterval;
  if (timeInterval)
  {
    dictionaryRepresentation = [(SCLPBTimeInterval *)timeInterval dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"timeInterval"];
  }

  if (*&self->_has)
  {
    v6 = self->_day - 1;
    if (v6 >= 7)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_day];
    }

    else
    {
      v7 = off_279B6C780[v6];
    }

    [dictionary setObject:v7 forKey:@"day"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_timeInterval)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    day = self->_day;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_timeInterval)
  {
    v5 = toCopy;
    [toCopy setTimeInterval:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_day;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SCLPBTimeInterval *)self->_timeInterval copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_day;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  timeInterval = self->_timeInterval;
  if (timeInterval | *(equalCopy + 2))
  {
    if (![(SCLPBTimeInterval *)timeInterval isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_day == *(equalCopy + 2))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(SCLPBTimeInterval *)self->_timeInterval hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_day;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeInterval = self->_timeInterval;
  v6 = *(fromCopy + 2);
  if (timeInterval)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(SCLPBTimeInterval *)timeInterval mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(SCLPBScheduleRecurrence *)self setTimeInterval:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 24))
  {
    self->_day = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end