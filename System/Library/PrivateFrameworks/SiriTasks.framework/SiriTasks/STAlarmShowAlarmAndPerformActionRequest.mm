@interface STAlarmShowAlarmAndPerformActionRequest
- (STAlarmShowAlarmAndPerformActionRequest)initWithCoder:(id)a3;
- (id)_initWithAction:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STAlarmShowAlarmAndPerformActionRequest

- (STAlarmShowAlarmAndPerformActionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STAlarmShowAlarmAndPerformActionRequest;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_action"];
    action = v5->_action;
    v5->_action = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STAlarmShowAlarmAndPerformActionRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_action forKey:{@"_action", v5.receiver, v5.super_class}];
}

- (id)_initWithAction:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"STAlarmShowAlarmAndPerformActionRequest.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v11.receiver = self;
  v11.super_class = STAlarmShowAlarmAndPerformActionRequest;
  v7 = [(AFSiriRequest *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_action, a3);
  }

  return v8;
}

@end