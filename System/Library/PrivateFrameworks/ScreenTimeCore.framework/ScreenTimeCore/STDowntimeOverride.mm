@interface STDowntimeOverride
+ (STDowntimeOverride)overrideWithState:(int64_t)a3 creationDate:(id)a4 calendar:(id)a5 endDate:(id)a6;
+ (STDowntimeOverride)overrideWithState:(int64_t)a3 creationDate:(id)a4 calendar:(id)a5 fixedDuration:(id)a6;
- (BOOL)isActiveAtDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDowntimeOverride:(id)a3;
- (BOOL)isExpiredAtDate:(id)a3;
- (id)_initWithType:(int64_t)a3 state:(int64_t)a4 creationDate:(id)a5 calendar:(id)a6 endDate:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation STDowntimeOverride

- (id)_initWithType:(int64_t)a3 state:(int64_t)a4 creationDate:(id)a5 calendar:(id)a6 endDate:(id)a7
{
  v22.receiver = self;
  v22.super_class = STDowntimeOverride;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = [(STDowntimeOverride *)&v22 init];
  v14->_type = a3;
  v14->_state = a4;
  v15 = [v13 copy];

  creationDate = v14->_creationDate;
  v14->_creationDate = v15;

  v17 = [v12 copy];
  calendar = v14->_calendar;
  v14->_calendar = v17;

  v19 = [v11 copy];
  endDate = v14->_endDate;
  v14->_endDate = v19;

  return v14;
}

+ (STDowntimeOverride)overrideWithState:(int64_t)a3 creationDate:(id)a4 calendar:(id)a5 fixedDuration:(id)a6
{
  v10 = a5;
  v11 = a4;
  [a6 doubleValue];
  v12 = [v11 dateByAddingTimeInterval:?];
  v13 = [[a1 alloc] _initWithType:1 state:a3 creationDate:v11 calendar:v10 endDate:v12];

  return v13;
}

+ (STDowntimeOverride)overrideWithState:(int64_t)a3 creationDate:(id)a4 calendar:(id)a5 endDate:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[a1 alloc] _initWithType:0 state:a3 creationDate:v12 calendar:v11 endDate:v10];

  return v13;
}

- (BOOL)isActiveAtDate:(id)a3
{
  v4 = a3;
  v5 = [(STDowntimeOverride *)self creationDate];
  if ([v5 compare:v4] == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(STDowntimeOverride *)self endDate];
    v6 = [v7 compare:v4] != -1;
  }

  return v6;
}

- (BOOL)isExpiredAtDate:(id)a3
{
  v4 = a3;
  v5 = [(STDowntimeOverride *)self endDate];
  v6 = [v5 compare:v4];

  return v6 != 1;
}

- (id)description
{
  if ([(STDowntimeOverride *)self type]== 1)
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = [(STDowntimeOverride *)self endDate];
    v5 = [(STDowntimeOverride *)self creationDate];
    [v4 timeIntervalSinceDate:v5];
    v6 = [v3 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  if ([(STDowntimeOverride *)self type])
  {
    v9 = @"FixedDuration";
  }

  else
  {
    v9 = @"Automatic";
  }

  if ([(STDowntimeOverride *)self state]== 1)
  {
    v10 = @"Enabled";
  }

  else
  {
    v10 = @"Disabled";
  }

  v11 = [(STDowntimeOverride *)self creationDate];
  v12 = [(STDowntimeOverride *)self calendar];
  v13 = [v12 calendarIdentifier];
  v14 = [(STDowntimeOverride *)self endDate];
  v15 = [v7 stringWithFormat:@"<%@: %p { Type: %@, State: %@, CreationDate: %@, Calendar: %@, FixedDuration: %@, EndDate: %@ }>", v8, self, v9, v10, v11, v13, v6, v14];

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  type = self->_type;
  state = self->_state;
  creationDate = self->_creationDate;
  calendar = self->_calendar;
  endDate = self->_endDate;

  return [v4 _initWithType:type state:state creationDate:creationDate calendar:calendar endDate:endDate];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STDowntimeOverride *)self isEqualToDowntimeOverride:v4];
  }

  return v5;
}

- (BOOL)isEqualToDowntimeOverride:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    v5 = [(STDowntimeOverride *)self type];
    if (v5 == [(STDowntimeOverride *)v4 type]&& (v6 = [(STDowntimeOverride *)self state], v6 == [(STDowntimeOverride *)v4 state]))
    {
      v7 = [(STDowntimeOverride *)self creationDate];
      v8 = [(STDowntimeOverride *)v4 creationDate];
      if ([v7 isEqualToDate:v8])
      {
        v9 = [(STDowntimeOverride *)self calendar];
        v10 = [v9 calendarIdentifier];
        v11 = [(STDowntimeOverride *)v4 calendar];
        v12 = [v11 calendarIdentifier];
        if ([v10 isEqualToString:v12])
        {
          v13 = [(STDowntimeOverride *)self endDate];
          v14 = [(STDowntimeOverride *)v4 endDate];
          v15 = [v13 isEqualToDate:v14];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(STDowntimeOverride *)self type];
  v4 = [(STDowntimeOverride *)self state]^ v3;
  v5 = [(STDowntimeOverride *)self calendar];
  v6 = v4 ^ [v5 hash];
  v7 = [(STDowntimeOverride *)self creationDate];
  v8 = [v7 hash];
  v9 = [(STDowntimeOverride *)self endDate];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

@end