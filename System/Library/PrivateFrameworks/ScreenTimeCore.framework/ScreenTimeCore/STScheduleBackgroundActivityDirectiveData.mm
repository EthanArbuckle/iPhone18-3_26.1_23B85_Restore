@interface STScheduleBackgroundActivityDirectiveData
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDirectiveData:(id)a3;
- (STScheduleBackgroundActivityDirectiveData)initWithType:(int64_t)a3 interval:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation STScheduleBackgroundActivityDirectiveData

- (STScheduleBackgroundActivityDirectiveData)initWithType:(int64_t)a3 interval:(id)a4
{
  v10.receiver = self;
  v10.super_class = STScheduleBackgroundActivityDirectiveData;
  v5 = a4;
  v6 = [(STScheduleBackgroundActivityDirectiveData *)&v10 init];
  v6->_type = a3;
  v7 = [v5 copy];

  interval = v6->_interval;
  v6->_interval = v7;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  type = self->_type;
  interval = self->_interval;

  return [v4 initWithType:type interval:interval];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STScheduleBackgroundActivityDirectiveData *)self isEqualToDirectiveData:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDirectiveData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    v6 = [(STScheduleBackgroundActivityDirectiveData *)v4 type];
    if (v6 == [(STScheduleBackgroundActivityDirectiveData *)self type])
    {
      v7 = [(STScheduleBackgroundActivityDirectiveData *)v5 interval];
      [v7 doubleValue];
      v9 = v8;
      v10 = [(STScheduleBackgroundActivityDirectiveData *)self interval];
      [v10 doubleValue];
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