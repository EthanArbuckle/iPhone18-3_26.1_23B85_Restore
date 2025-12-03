@interface SCLState
- (BOOL)isEqual:(id)equal;
- (SCLState)initWithActiveState:(unint64_t)state scheduleEnabled:(BOOL)enabled inSchedule:(BOOL)schedule;
- (SCLState)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCLState

- (SCLState)initWithActiveState:(unint64_t)state scheduleEnabled:(BOOL)enabled inSchedule:(BOOL)schedule
{
  v9.receiver = self;
  v9.super_class = SCLState;
  result = [(SCLState *)&v9 init];
  if (result)
  {
    result->_activeState = state;
    result->_scheduleEnabled = enabled;
    result->_inSchedule = schedule;
  }

  return result;
}

- (SCLState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SCLState;
  v5 = [(SCLState *)&v7 init];
  if (v5)
  {
    v5->_activeState = [coderCopy decodeIntegerForKey:@"activeState"];
    v5->_scheduleEnabled = [coderCopy decodeBoolForKey:@"scheduleEnabled"];
    v5->_inSchedule = [coderCopy decodeBoolForKey:@"inSchedule"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  activeState = self->_activeState;
  coderCopy = coder;
  [coderCopy encodeInteger:activeState forKey:@"activeState"];
  [coderCopy encodeBool:-[SCLState isScheduleEnabled](self forKey:{"isScheduleEnabled"), @"scheduleEnabled"}];
  [coderCopy encodeBool:-[SCLState isInSchedule](self forKey:{"isInSchedule"), @"inSchedule"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  activeState = [(SCLState *)self activeState];
  if (activeState > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_279B6C768[activeState];
  }

  v8 = [v3 stringWithFormat:@"<%@ %p %@; scheduleEnabled=%u; inSchedule=%u>", v5, self, v7, -[SCLState isScheduleEnabled](self, "isScheduleEnabled"), -[SCLState isInSchedule](self, "isInSchedule")];;

  return v8;
}

- (unint64_t)hash
{
  activeState = [(SCLState *)self activeState];
  isScheduleEnabled = [(SCLState *)self isScheduleEnabled];
  v5 = 2;
  if (!isScheduleEnabled)
  {
    v5 = 0;
  }

  v6 = v5 ^ activeState;
  isInSchedule = [(SCLState *)self isInSchedule];
  v8 = 4;
  if (!isInSchedule)
  {
    v8 = 0;
  }

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    activeState = [(SCLState *)self activeState];
    if (activeState == [v5 activeState] && (v7 = -[SCLState isScheduleEnabled](self, "isScheduleEnabled"), v7 == objc_msgSend(v5, "isScheduleEnabled")))
    {
      isInSchedule = [(SCLState *)self isInSchedule];
      v8 = isInSchedule ^ [v5 isInSchedule] ^ 1;
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