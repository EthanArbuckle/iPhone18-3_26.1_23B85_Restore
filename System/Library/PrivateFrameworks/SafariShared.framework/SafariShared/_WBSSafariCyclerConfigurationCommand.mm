@interface _WBSSafariCyclerConfigurationCommand
- (BOOL)invokeWithParameters:(id)parameters;
- (SEL)action;
- (_WBSSafariCyclerConfigurationCommand)initWithName:(id)name help:(id)help;
- (id)target;
- (void)setAction:(SEL)action;
@end

@implementation _WBSSafariCyclerConfigurationCommand

- (_WBSSafariCyclerConfigurationCommand)initWithName:(id)name help:(id)help
{
  nameCopy = name;
  helpCopy = help;
  v15.receiver = self;
  v15.super_class = _WBSSafariCyclerConfigurationCommand;
  v8 = [(_WBSSafariCyclerConfigurationCommand *)&v15 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [helpCopy copy];
    help = v8->_help;
    v8->_help = v11;

    v13 = v8;
  }

  return v8;
}

- (BOOL)invokeWithParameters:(id)parameters
{
  parametersCopy = parameters;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if ([parametersCopy count] >= self->_minimumArgumentCount && objc_msgSend(parametersCopy, "count") <= self->_maximumArgumentCount)
  {
    action = self->_action;
    if (action)
    {
      [WeakRetained action];
    }

    else
    {
      [WeakRetained 0];
    }

    v8 = 1;
  }

  else
  {
    printf("Invalid arguments to subcommand '%s'", [(NSString *)self->_name UTF8String]);
    if (self->_usage)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      printf("\nUSAGE: %s %s %s\n", [processName UTF8String], -[NSString UTF8String](self->_name, "UTF8String"), -[NSString UTF8String](self->_usage, "UTF8String"));
    }

    v8 = 0;
  }

  return v8;
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

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

@end