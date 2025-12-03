@interface STAlarmShowAlarmAndPerformActionRequest
- (STAlarmShowAlarmAndPerformActionRequest)initWithCoder:(id)coder;
- (id)_initWithAction:(id)action;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STAlarmShowAlarmAndPerformActionRequest

- (STAlarmShowAlarmAndPerformActionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STAlarmShowAlarmAndPerformActionRequest;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_action"];
    action = v5->_action;
    v5->_action = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STAlarmShowAlarmAndPerformActionRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_action forKey:{@"_action", v5.receiver, v5.super_class}];
}

- (id)_initWithAction:(id)action
{
  actionCopy = action;
  if (!actionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STAlarmShowAlarmAndPerformActionRequest.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v11.receiver = self;
  v11.super_class = STAlarmShowAlarmAndPerformActionRequest;
  v7 = [(AFSiriRequest *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_action, action);
  }

  return v8;
}

@end