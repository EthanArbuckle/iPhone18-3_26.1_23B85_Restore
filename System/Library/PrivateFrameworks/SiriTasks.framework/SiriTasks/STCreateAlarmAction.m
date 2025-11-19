@interface STCreateAlarmAction
- (STCreateAlarmAction)initWithCoder:(id)a3;
- (id)_initWithAlarm:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STCreateAlarmAction

- (STCreateAlarmAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STCreateAlarmAction;
  v5 = [(STSiriModelObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_alarm"];
    alarm = v5->_alarm;
    v5->_alarm = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STCreateAlarmAction;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_alarm forKey:{@"_alarm", v5.receiver, v5.super_class}];
}

- (id)_initWithAlarm:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"STCreateAlarmAction.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"alarm"}];
  }

  v11.receiver = self;
  v11.super_class = STCreateAlarmAction;
  v7 = [(STCreateAlarmAction *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_alarm, a3);
  }

  return v8;
}

@end