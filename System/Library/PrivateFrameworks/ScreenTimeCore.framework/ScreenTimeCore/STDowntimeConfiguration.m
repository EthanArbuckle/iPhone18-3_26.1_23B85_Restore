@interface STDowntimeConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDowntimeState:(id)a3;
- (STDowntimeConfiguration)initWithCurrentState:(int64_t)a3 currentDate:(id)a4 nextState:(int64_t)a5 nextStateChangeDate:(id)a6 calendar:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation STDowntimeConfiguration

- (STDowntimeConfiguration)initWithCurrentState:(int64_t)a3 currentDate:(id)a4 nextState:(int64_t)a5 nextStateChangeDate:(id)a6 calendar:(id)a7
{
  v22.receiver = self;
  v22.super_class = STDowntimeConfiguration;
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = [(STDowntimeConfiguration *)&v22 init];
  v14->_currentState = a3;
  v15 = [v13 copy];

  currentDate = v14->_currentDate;
  v14->_currentDate = v15;

  v14->_nextState = a5;
  v17 = [v12 copy];

  nextStateChangeDate = v14->_nextStateChangeDate;
  v14->_nextStateChangeDate = v17;

  v19 = [v11 copy];
  calendar = v14->_calendar;
  v14->_calendar = v19;

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(STDowntimeConfiguration *)self currentState]- 1;
  if (v5 > 3)
  {
    v6 = @"Disabled";
  }

  else
  {
    v6 = off_1E7CE7630[v5];
  }

  v7 = [(STDowntimeConfiguration *)self nextState]- 1;
  if (v7 > 3)
  {
    v8 = @"Disabled";
  }

  else
  {
    v8 = off_1E7CE7630[v7];
  }

  v9 = [(STDowntimeConfiguration *)self currentDate];
  v10 = [(STDowntimeConfiguration *)self nextStateChangeDate];
  v11 = [(STDowntimeConfiguration *)self calendar];
  v12 = [v11 calendarIdentifier];
  v13 = [v3 stringWithFormat:@"<%@: %p { Current: %@, Next: %@, CurrentDate: %@, NextDate: %@, Calendar: %@ }>", v4, self, v6, v8, v9, v10, v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  currentState = self->_currentState;
  currentDate = self->_currentDate;
  nextState = self->_nextState;
  nextStateChangeDate = self->_nextStateChangeDate;
  calendar = self->_calendar;

  return [v4 initWithCurrentState:currentState currentDate:currentDate nextState:nextState nextStateChangeDate:nextStateChangeDate calendar:calendar];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STDowntimeConfiguration *)self isEqualToDowntimeState:v4];
  }

  return v5;
}

- (BOOL)isEqualToDowntimeState:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    v5 = [(STDowntimeConfiguration *)self currentState];
    if (v5 == [(STDowntimeConfiguration *)v4 currentState])
    {
      v6 = [(STDowntimeConfiguration *)self nextState];
      if (v6 == [(STDowntimeConfiguration *)v4 nextState])
      {
        v7 = [(STDowntimeConfiguration *)self currentDate];
        v8 = [(STDowntimeConfiguration *)v4 currentDate];
        if (![v7 isEqualToDate:v8])
        {
          v13 = 0;
LABEL_17:

          goto LABEL_18;
        }

        v9 = [(STDowntimeConfiguration *)self nextStateChangeDate];
        v10 = [(STDowntimeConfiguration *)v4 nextStateChangeDate];
        if (v9 == v10)
        {
          [(STDowntimeConfiguration *)self calendar:v19];
        }

        else
        {
          v11 = [(STDowntimeConfiguration *)self nextStateChangeDate];
          v12 = [(STDowntimeConfiguration *)v4 nextStateChangeDate];
          if (![v11 isEqualToDate:v12])
          {
            v13 = 0;
LABEL_15:

LABEL_16:
            goto LABEL_17;
          }

          [(STDowntimeConfiguration *)self calendar:v12];
        }
        v14 = ;
        v15 = [v14 calendarIdentifier];
        v16 = [(STDowntimeConfiguration *)v4 calendar];
        v17 = [v16 calendarIdentifier];
        v13 = [v15 isEqualToString:v17];

        v12 = v20;
        v11 = v22;
        if (v9 == v10)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    v13 = 0;
  }

LABEL_18:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(STDowntimeConfiguration *)self currentState];
  v4 = [(STDowntimeConfiguration *)self nextState]^ v3;
  v5 = [(STDowntimeConfiguration *)self currentDate];
  v6 = v4 ^ [v5 hash];
  v7 = [(STDowntimeConfiguration *)self nextStateChangeDate];
  v8 = [v7 hash];
  v9 = [(STDowntimeConfiguration *)self calendar];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

@end