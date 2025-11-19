@interface SCRCArgumentHolder
- (BOOL)isEqual:(id)a3;
- (BOOL)process;
- (SCRCArgumentHolder)init;
- (SCRCArgumentHolder)initWithArgument:(id)a3 option:(id)a4 description:(id)a5 target:(id)a6 action:(SEL)a7 required:(BOOL)a8;
- (SEL)action;
- (id)target;
- (int64_t)compare:(id)a3;
@end

@implementation SCRCArgumentHolder

- (SCRCArgumentHolder)init
{
  v3.receiver = self;
  v3.super_class = SCRCArgumentHolder;
  result = [(SCRCArgumentHolder *)&v3 init];
  if (result)
  {
    result->_action = 0;
  }

  return result;
}

- (SCRCArgumentHolder)initWithArgument:(id)a3 option:(id)a4 description:(id)a5 target:(id)a6 action:(SEL)a7 required:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v23.receiver = self;
  v23.super_class = SCRCArgumentHolder;
  v19 = [(SCRCArgumentHolder *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_argument, a3);
    objc_storeStrong(&v20->_option, a4);
    objc_storeStrong(&v20->_argumentDescription, a5);
    objc_storeWeak(&v20->_target, v18);
    if (a7)
    {
      v21 = a7;
    }

    else
    {
      v21 = 0;
    }

    v20->_action = v21;
    v20->_required = a8;
  }

  return v20;
}

- (BOOL)process
{
  v3 = [(SCRCArgumentHolder *)self target];
  if (v3 && (v4 = v3, v5 = [(SCRCArgumentHolder *)self action], v4, v5))
  {
    v6 = [(SCRCArgumentHolder *)self target];
    v7 = [(SCRCArgumentHolder *)self action];
    v8 = [(SCRCArgumentHolder *)self argument];
    v9 = SCRCPerformSelector(v6, v7);
    v10 = [v9 BOOLValue];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SCRCArgumentHolder required](self, "required") ^ 1}];
    v10 = [v6 BOOLValue];
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(SCRCArgumentHolder *)self option];
  v6 = [v4 option];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(SCRCArgumentHolder *)self option];
  v6 = [v4 option];

  v7 = [v5 compare:v6 options:1];
  return v7;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

@end