@interface STDeleteAlarmAction
- (STDeleteAlarmAction)initWithCoder:(id)coder;
- (id)_initWithAlarmIds:(id)ids;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STDeleteAlarmAction

- (STDeleteAlarmAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STDeleteAlarmAction;
  v5 = [(STSiriModelObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_alarmIds"];
    alarmIds = v5->_alarmIds;
    v5->_alarmIds = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STDeleteAlarmAction;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_alarmIds forKey:{@"_alarmIds", v5.receiver, v5.super_class}];
}

- (id)_initWithAlarmIds:(id)ids
{
  idsCopy = ids;
  if (!idsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STDeleteAlarmAction.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"alarmIds"}];
  }

  v11.receiver = self;
  v11.super_class = STDeleteAlarmAction;
  v7 = [(STDeleteAlarmAction *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_alarmIds, ids);
  }

  return v8;
}

@end