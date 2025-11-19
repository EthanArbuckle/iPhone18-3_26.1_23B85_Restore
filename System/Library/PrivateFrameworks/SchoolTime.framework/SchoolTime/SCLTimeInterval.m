@interface SCLTimeInterval
- (BOOL)containsScheduleTime:(id)a3;
- (BOOL)crossesDayBoundary;
- (BOOL)intersectsTimeInterval:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SCLTimeInterval)initWithCoder:(id)a3;
- (SCLTimeInterval)initWithStartTime:(id)a3 endTime:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCLTimeInterval

- (SCLTimeInterval)initWithStartTime:(id)a3 endTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SCLTimeInterval;
  v8 = [(SCLTimeInterval *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    startTime = v8->_startTime;
    v8->_startTime = v9;

    v11 = [v7 copy];
    endTime = v8->_endTime;
    v8->_endTime = v11;
  }

  return v8;
}

- (SCLTimeInterval)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SCLTimeInterval;
  v5 = [(SCLTimeInterval *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    startTime = v5->_startTime;
    v5->_startTime = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
    endTime = v5->_endTime;
    v5->_endTime = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  startTime = self->_startTime;
  v5 = a3;
  [v5 encodeObject:startTime forKey:@"startTime"];
  [v5 encodeObject:self->_endTime forKey:@"endTime"];
}

- (BOOL)crossesDayBoundary
{
  v3 = [(SCLTimeInterval *)self endTime];
  if ([v3 hour])
  {
  }

  else
  {
    v4 = [(SCLTimeInterval *)self endTime];
    v5 = [v4 minute];

    if (!v5)
    {
      return 0;
    }
  }

  v6 = [(SCLTimeInterval *)self startTime];
  v7 = [(SCLTimeInterval *)self endTime];
  v8 = [v6 compare:v7] == 1;

  return v8;
}

- (BOOL)containsScheduleTime:(id)a3
{
  v4 = a3;
  if ([(SCLTimeInterval *)self crossesDayBoundary])
  {
    v5 = [(SCLScheduleTime *)self->_endTime compare:v4]== 1 || [(SCLScheduleTime *)self->_startTime compare:v4]!= 1;
  }

  else
  {
    v6 = [(SCLTimeInterval *)self startTime];
    if ([v6 compare:v4] == 1)
    {
      v5 = 0;
    }

    else
    {
      v7 = [(SCLTimeInterval *)self endTime];
      v5 = [v7 compare:v4] == 1;
    }
  }

  return v5;
}

- (BOOL)intersectsTimeInterval:(id)a3
{
  v4 = a3;
  v5 = [v4 startTime];
  v6 = [(SCLTimeInterval *)self containsScheduleTime:v5];

  if (v6)
  {
    goto LABEL_2;
  }

  v8 = [v4 endTime];
  v9 = [(SCLTimeInterval *)self containsScheduleTime:v8];

  v10 = [(SCLTimeInterval *)self startTime];
  if (v9)
  {
    v11 = [v4 endTime];
LABEL_5:
    v12 = v11;
    v13 = [v10 isEqual:v11];

    v7 = v13 ^ 1;
    goto LABEL_6;
  }

  v15 = [v4 containsScheduleTime:v10];

  if ((v15 & 1) == 0)
  {
    v16 = [(SCLTimeInterval *)self endTime];
    v17 = [v4 containsScheduleTime:v16];

    if (!v17)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v10 = [(SCLTimeInterval *)self endTime];
    v11 = [v4 startTime];
    goto LABEL_5;
  }

LABEL_2:
  v7 = 1;
LABEL_6:

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SCLTimeInterval *)self startTime];
      v7 = [(SCLTimeInterval *)v5 startTime];
      if ([v6 isEqual:v7])
      {
        v8 = [(SCLTimeInterval *)self endTime];
        v9 = [(SCLTimeInterval *)v5 endTime];
        v10 = [v8 isEqual:v9];
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
  v3 = [(SCLTimeInterval *)self startTime];
  v4 = [v3 hash];
  v5 = [(SCLTimeInterval *)self endTime];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SCLTimeInterval *)self startTime];
  v7 = [v6 hour];
  v8 = [(SCLTimeInterval *)self startTime];
  v9 = [v8 minute];
  v10 = [(SCLTimeInterval *)self endTime];
  v11 = [v10 hour];
  v12 = [(SCLTimeInterval *)self endTime];
  v13 = [v3 stringWithFormat:@"<%@ %p %02d:%02d - %02d:%02d>", v5, self, v7, v9, v11, objc_msgSend(v12, "minute")];;

  return v13;
}

@end