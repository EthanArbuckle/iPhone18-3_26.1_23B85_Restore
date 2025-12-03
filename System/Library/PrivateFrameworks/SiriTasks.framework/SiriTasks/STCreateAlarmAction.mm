@interface STCreateAlarmAction
- (STCreateAlarmAction)initWithCoder:(id)coder;
- (id)_initWithAlarm:(id)alarm;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STCreateAlarmAction

- (STCreateAlarmAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STCreateAlarmAction;
  v5 = [(STSiriModelObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_alarm"];
    alarm = v5->_alarm;
    v5->_alarm = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STCreateAlarmAction;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_alarm forKey:{@"_alarm", v5.receiver, v5.super_class}];
}

- (id)_initWithAlarm:(id)alarm
{
  alarmCopy = alarm;
  if (!alarmCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STCreateAlarmAction.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"alarm"}];
  }

  v11.receiver = self;
  v11.super_class = STCreateAlarmAction;
  v7 = [(STCreateAlarmAction *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_alarm, alarm);
  }

  return v8;
}

@end