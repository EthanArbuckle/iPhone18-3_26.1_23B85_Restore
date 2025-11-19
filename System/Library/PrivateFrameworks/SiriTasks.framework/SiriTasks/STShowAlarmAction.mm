@interface STShowAlarmAction
- (STShowAlarmAction)initWithCoder:(id)a3;
- (id)_initWithAlarmIds:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowAlarmAction

- (STShowAlarmAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STShowAlarmAction;
  v5 = [(STSiriModelObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_alarmIds"];
    alarmIds = v5->_alarmIds;
    v5->_alarmIds = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowAlarmAction;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_alarmIds forKey:{@"_alarmIds", v5.receiver, v5.super_class}];
}

- (id)_initWithAlarmIds:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"STShowAlarmAction.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"alarmIds"}];
  }

  v11.receiver = self;
  v11.super_class = STShowAlarmAction;
  v7 = [(STShowAlarmAction *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_alarmIds, a3);
  }

  return v8;
}

@end