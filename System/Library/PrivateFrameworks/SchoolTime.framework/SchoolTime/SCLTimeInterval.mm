@interface SCLTimeInterval
- (BOOL)containsScheduleTime:(id)time;
- (BOOL)crossesDayBoundary;
- (BOOL)intersectsTimeInterval:(id)interval;
- (BOOL)isEqual:(id)equal;
- (SCLTimeInterval)initWithCoder:(id)coder;
- (SCLTimeInterval)initWithStartTime:(id)time endTime:(id)endTime;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCLTimeInterval

- (SCLTimeInterval)initWithStartTime:(id)time endTime:(id)endTime
{
  timeCopy = time;
  endTimeCopy = endTime;
  v14.receiver = self;
  v14.super_class = SCLTimeInterval;
  v8 = [(SCLTimeInterval *)&v14 init];
  if (v8)
  {
    v9 = [timeCopy copy];
    startTime = v8->_startTime;
    v8->_startTime = v9;

    v11 = [endTimeCopy copy];
    endTime = v8->_endTime;
    v8->_endTime = v11;
  }

  return v8;
}

- (SCLTimeInterval)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SCLTimeInterval;
  v5 = [(SCLTimeInterval *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    startTime = v5->_startTime;
    v5->_startTime = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
    endTime = v5->_endTime;
    v5->_endTime = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  startTime = self->_startTime;
  coderCopy = coder;
  [coderCopy encodeObject:startTime forKey:@"startTime"];
  [coderCopy encodeObject:self->_endTime forKey:@"endTime"];
}

- (BOOL)crossesDayBoundary
{
  endTime = [(SCLTimeInterval *)self endTime];
  if ([endTime hour])
  {
  }

  else
  {
    endTime2 = [(SCLTimeInterval *)self endTime];
    minute = [endTime2 minute];

    if (!minute)
    {
      return 0;
    }
  }

  startTime = [(SCLTimeInterval *)self startTime];
  endTime3 = [(SCLTimeInterval *)self endTime];
  v8 = [startTime compare:endTime3] == 1;

  return v8;
}

- (BOOL)containsScheduleTime:(id)time
{
  timeCopy = time;
  if ([(SCLTimeInterval *)self crossesDayBoundary])
  {
    v5 = [(SCLScheduleTime *)self->_endTime compare:timeCopy]== 1 || [(SCLScheduleTime *)self->_startTime compare:timeCopy]!= 1;
  }

  else
  {
    startTime = [(SCLTimeInterval *)self startTime];
    if ([startTime compare:timeCopy] == 1)
    {
      v5 = 0;
    }

    else
    {
      endTime = [(SCLTimeInterval *)self endTime];
      v5 = [endTime compare:timeCopy] == 1;
    }
  }

  return v5;
}

- (BOOL)intersectsTimeInterval:(id)interval
{
  intervalCopy = interval;
  startTime = [intervalCopy startTime];
  v6 = [(SCLTimeInterval *)self containsScheduleTime:startTime];

  if (v6)
  {
    goto LABEL_2;
  }

  endTime = [intervalCopy endTime];
  v9 = [(SCLTimeInterval *)self containsScheduleTime:endTime];

  startTime2 = [(SCLTimeInterval *)self startTime];
  if (v9)
  {
    endTime2 = [intervalCopy endTime];
LABEL_5:
    v12 = endTime2;
    v13 = [startTime2 isEqual:endTime2];

    v7 = v13 ^ 1;
    goto LABEL_6;
  }

  v15 = [intervalCopy containsScheduleTime:startTime2];

  if ((v15 & 1) == 0)
  {
    endTime3 = [(SCLTimeInterval *)self endTime];
    v17 = [intervalCopy containsScheduleTime:endTime3];

    if (!v17)
    {
      v7 = 0;
      goto LABEL_6;
    }

    startTime2 = [(SCLTimeInterval *)self endTime];
    endTime2 = [intervalCopy startTime];
    goto LABEL_5;
  }

LABEL_2:
  v7 = 1;
LABEL_6:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      startTime = [(SCLTimeInterval *)self startTime];
      startTime2 = [(SCLTimeInterval *)v5 startTime];
      if ([startTime isEqual:startTime2])
      {
        endTime = [(SCLTimeInterval *)self endTime];
        endTime2 = [(SCLTimeInterval *)v5 endTime];
        v10 = [endTime isEqual:endTime2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  startTime = [(SCLTimeInterval *)self startTime];
  v4 = [startTime hash];
  endTime = [(SCLTimeInterval *)self endTime];
  v6 = [endTime hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  startTime = [(SCLTimeInterval *)self startTime];
  hour = [startTime hour];
  startTime2 = [(SCLTimeInterval *)self startTime];
  minute = [startTime2 minute];
  endTime = [(SCLTimeInterval *)self endTime];
  hour2 = [endTime hour];
  endTime2 = [(SCLTimeInterval *)self endTime];
  v13 = [v3 stringWithFormat:@"<%@ %p %02d:%02d - %02d:%02d>", v5, self, hour, minute, hour2, objc_msgSend(endTime2, "minute")];;

  return v13;
}

@end