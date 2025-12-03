@interface SCLPBTimeInterval
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SCLPBTimeInterval

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SCLPBTimeInterval;
  v4 = [(SCLPBTimeInterval *)&v8 description];
  dictionaryRepresentation = [(SCLPBTimeInterval *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  startTime = self->_startTime;
  if (startTime)
  {
    dictionaryRepresentation = [(SCLPBScheduleTime *)startTime dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"startTime"];
  }

  endTime = self->_endTime;
  if (endTime)
  {
    dictionaryRepresentation2 = [(SCLPBScheduleTime *)endTime dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"endTime"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_startTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_endTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_startTime)
  {
    [toCopy setStartTime:?];
    toCopy = v5;
  }

  if (self->_endTime)
  {
    [v5 setEndTime:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SCLPBScheduleTime *)self->_startTime copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SCLPBScheduleTime *)self->_endTime copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((startTime = self->_startTime, !(startTime | equalCopy[2])) || -[SCLPBScheduleTime isEqual:](startTime, "isEqual:")))
  {
    endTime = self->_endTime;
    if (endTime | equalCopy[1])
    {
      v7 = [(SCLPBScheduleTime *)endTime isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  startTime = self->_startTime;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (startTime)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SCLPBScheduleTime *)startTime mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SCLPBTimeInterval *)self setStartTime:?];
  }

  fromCopy = v9;
LABEL_7:
  endTime = self->_endTime;
  v8 = fromCopy[1];
  if (endTime)
  {
    if (v8)
    {
      [(SCLPBScheduleTime *)endTime mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SCLPBTimeInterval *)self setEndTime:?];
  }

  MEMORY[0x2821F96F8]();
}

@end