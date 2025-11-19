@interface STUpdateAlarmAction
- (STUpdateAlarmAction)initWithCoder:(id)a3;
- (id)_initWithModifications:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STUpdateAlarmAction

- (STUpdateAlarmAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STUpdateAlarmAction;
  v5 = [(STSiriModelObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_modifications"];
    modifications = v5->_modifications;
    v5->_modifications = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STUpdateAlarmAction;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_modifications forKey:{@"_modifications", v5.receiver, v5.super_class}];
}

- (id)_initWithModifications:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"STUpdateAlarmAction.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"modifications"}];
  }

  if (![v6 count])
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"STUpdateAlarmAction.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"[modifications count] > 0"}];
  }

  v12.receiver = self;
  v12.super_class = STUpdateAlarmAction;
  v7 = [(STUpdateAlarmAction *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_modifications, a3);
  }

  return v8;
}

@end