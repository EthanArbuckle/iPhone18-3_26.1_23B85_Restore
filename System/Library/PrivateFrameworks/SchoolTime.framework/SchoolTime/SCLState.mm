@interface SCLState
- (BOOL)isEqual:(id)a3;
- (SCLState)initWithActiveState:(unint64_t)a3 scheduleEnabled:(BOOL)a4 inSchedule:(BOOL)a5;
- (SCLState)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCLState

- (SCLState)initWithActiveState:(unint64_t)a3 scheduleEnabled:(BOOL)a4 inSchedule:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = SCLState;
  result = [(SCLState *)&v9 init];
  if (result)
  {
    result->_activeState = a3;
    result->_scheduleEnabled = a4;
    result->_inSchedule = a5;
  }

  return result;
}

- (SCLState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SCLState;
  v5 = [(SCLState *)&v7 init];
  if (v5)
  {
    v5->_activeState = [v4 decodeIntegerForKey:@"activeState"];
    v5->_scheduleEnabled = [v4 decodeBoolForKey:@"scheduleEnabled"];
    v5->_inSchedule = [v4 decodeBoolForKey:@"inSchedule"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  activeState = self->_activeState;
  v5 = a3;
  [v5 encodeInteger:activeState forKey:@"activeState"];
  [v5 encodeBool:-[SCLState isScheduleEnabled](self forKey:{"isScheduleEnabled"), @"scheduleEnabled"}];
  [v5 encodeBool:-[SCLState isInSchedule](self forKey:{"isInSchedule"), @"inSchedule"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SCLState *)self activeState];
  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_279B6C768[v6];
  }

  v8 = [v3 stringWithFormat:@"<%@ %p %@; scheduleEnabled=%u; inSchedule=%u>", v5, self, v7, -[SCLState isScheduleEnabled](self, "isScheduleEnabled"), -[SCLState isInSchedule](self, "isInSchedule")];;

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SCLState *)self activeState];
  v4 = [(SCLState *)self isScheduleEnabled];
  v5 = 2;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 ^ v3;
  v7 = [(SCLState *)self isInSchedule];
  v8 = 4;
  if (!v7)
  {
    v8 = 0;
  }

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SCLState *)self activeState];
    if (v6 == [v5 activeState] && (v7 = -[SCLState isScheduleEnabled](self, "isScheduleEnabled"), v7 == objc_msgSend(v5, "isScheduleEnabled")))
    {
      v9 = [(SCLState *)self isInSchedule];
      v8 = v9 ^ [v5 isInSchedule] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end