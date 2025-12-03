@interface STScheduleBackgroundActivityDirectiveData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDirectiveData:(id)data;
- (STScheduleBackgroundActivityDirectiveData)initWithType:(int64_t)type interval:(id)interval;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation STScheduleBackgroundActivityDirectiveData

- (STScheduleBackgroundActivityDirectiveData)initWithType:(int64_t)type interval:(id)interval
{
  v10.receiver = self;
  v10.super_class = STScheduleBackgroundActivityDirectiveData;
  intervalCopy = interval;
  v6 = [(STScheduleBackgroundActivityDirectiveData *)&v10 init];
  v6->_type = type;
  v7 = [intervalCopy copy];

  interval = v6->_interval;
  v6->_interval = v7;

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  type = self->_type;
  interval = self->_interval;

  return [v4 initWithType:type interval:interval];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STScheduleBackgroundActivityDirectiveData *)self isEqualToDirectiveData:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDirectiveData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy == self)
  {
    v12 = 1;
  }

  else
  {
    type = [(STScheduleBackgroundActivityDirectiveData *)dataCopy type];
    if (type == [(STScheduleBackgroundActivityDirectiveData *)self type])
    {
      interval = [(STScheduleBackgroundActivityDirectiveData *)v5 interval];
      [interval doubleValue];
      v9 = v8;
      interval2 = [(STScheduleBackgroundActivityDirectiveData *)self interval];
      [interval2 doubleValue];
      v12 = v9 == v11;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end