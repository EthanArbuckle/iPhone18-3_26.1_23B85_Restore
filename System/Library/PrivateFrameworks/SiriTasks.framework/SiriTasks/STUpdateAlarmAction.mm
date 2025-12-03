@interface STUpdateAlarmAction
- (STUpdateAlarmAction)initWithCoder:(id)coder;
- (id)_initWithModifications:(id)modifications;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STUpdateAlarmAction

- (STUpdateAlarmAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STUpdateAlarmAction;
  v5 = [(STSiriModelObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_modifications"];
    modifications = v5->_modifications;
    v5->_modifications = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STUpdateAlarmAction;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_modifications forKey:{@"_modifications", v5.receiver, v5.super_class}];
}

- (id)_initWithModifications:(id)modifications
{
  modificationsCopy = modifications;
  if (!modificationsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STUpdateAlarmAction.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"modifications"}];
  }

  if (![modificationsCopy count])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"STUpdateAlarmAction.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"[modifications count] > 0"}];
  }

  v12.receiver = self;
  v12.super_class = STUpdateAlarmAction;
  v7 = [(STUpdateAlarmAction *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_modifications, modifications);
  }

  return v8;
}

@end