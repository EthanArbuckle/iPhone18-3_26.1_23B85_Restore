@interface SCRCArgumentHolder
- (BOOL)isEqual:(id)equal;
- (BOOL)process;
- (SCRCArgumentHolder)init;
- (SCRCArgumentHolder)initWithArgument:(id)argument option:(id)option description:(id)description target:(id)target action:(SEL)action required:(BOOL)required;
- (SEL)action;
- (id)target;
- (int64_t)compare:(id)compare;
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

- (SCRCArgumentHolder)initWithArgument:(id)argument option:(id)option description:(id)description target:(id)target action:(SEL)action required:(BOOL)required
{
  argumentCopy = argument;
  optionCopy = option;
  descriptionCopy = description;
  targetCopy = target;
  v23.receiver = self;
  v23.super_class = SCRCArgumentHolder;
  v19 = [(SCRCArgumentHolder *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_argument, argument);
    objc_storeStrong(&v20->_option, option);
    objc_storeStrong(&v20->_argumentDescription, description);
    objc_storeWeak(&v20->_target, targetCopy);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v20->_action = actionCopy;
    v20->_required = required;
  }

  return v20;
}

- (BOOL)process
{
  target = [(SCRCArgumentHolder *)self target];
  if (target && (v4 = target, v5 = [(SCRCArgumentHolder *)self action], v4, v5))
  {
    target2 = [(SCRCArgumentHolder *)self target];
    action = [(SCRCArgumentHolder *)self action];
    argument = [(SCRCArgumentHolder *)self argument];
    v9 = SCRCPerformSelector(target2, action);
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    target2 = [MEMORY[0x277CCABB0] numberWithBool:{-[SCRCArgumentHolder required](self, "required") ^ 1}];
    bOOLValue = [target2 BOOLValue];
  }

  return bOOLValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  option = [(SCRCArgumentHolder *)self option];
  option2 = [equalCopy option];

  LOBYTE(equalCopy) = [option isEqualToString:option2];
  return equalCopy;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  option = [(SCRCArgumentHolder *)self option];
  option2 = [compareCopy option];

  v7 = [option compare:option2 options:1];
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