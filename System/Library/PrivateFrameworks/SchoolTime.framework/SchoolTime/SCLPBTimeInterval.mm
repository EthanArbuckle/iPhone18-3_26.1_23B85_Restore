@interface SCLPBTimeInterval
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SCLPBTimeInterval

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SCLPBTimeInterval;
  v4 = [(SCLPBTimeInterval *)&v8 description];
  v5 = [(SCLPBTimeInterval *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  startTime = self->_startTime;
  if (startTime)
  {
    v5 = [(SCLPBScheduleTime *)startTime dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"startTime"];
  }

  endTime = self->_endTime;
  if (endTime)
  {
    v7 = [(SCLPBScheduleTime *)endTime dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"endTime"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_startTime)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_endTime)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_startTime)
  {
    [v4 setStartTime:?];
    v4 = v5;
  }

  if (self->_endTime)
  {
    [v5 setEndTime:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SCLPBScheduleTime *)self->_startTime copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SCLPBScheduleTime *)self->_endTime copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((startTime = self->_startTime, !(startTime | v4[2])) || -[SCLPBScheduleTime isEqual:](startTime, "isEqual:")))
  {
    endTime = self->_endTime;
    if (endTime | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  startTime = self->_startTime;
  v6 = v4[2];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  endTime = self->_endTime;
  v8 = v4[1];
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