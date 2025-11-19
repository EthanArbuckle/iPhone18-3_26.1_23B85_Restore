@interface _WBSSafariCyclerConfigurationCommand
- (BOOL)invokeWithParameters:(id)a3;
- (SEL)action;
- (_WBSSafariCyclerConfigurationCommand)initWithName:(id)a3 help:(id)a4;
- (id)target;
- (void)setAction:(SEL)a3;
@end

@implementation _WBSSafariCyclerConfigurationCommand

- (_WBSSafariCyclerConfigurationCommand)initWithName:(id)a3 help:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _WBSSafariCyclerConfigurationCommand;
  v8 = [(_WBSSafariCyclerConfigurationCommand *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    help = v8->_help;
    v8->_help = v11;

    v13 = v8;
  }

  return v8;
}

- (BOOL)invokeWithParameters:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if ([v4 count] >= self->_minimumArgumentCount && objc_msgSend(v4, "count") <= self->_maximumArgumentCount)
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
      v6 = [MEMORY[0x1E696AE30] processInfo];
      v7 = [v6 processName];
      printf("\nUSAGE: %s %s %s\n", [v7 UTF8String], -[NSString UTF8String](self->_name, "UTF8String"), -[NSString UTF8String](self->_usage, "UTF8String"));
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

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
}

@end