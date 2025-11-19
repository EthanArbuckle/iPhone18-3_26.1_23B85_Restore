@interface WFContentItemAction
- (WFContentItemAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (WFContentProperty)defaultProperty;
- (id)description;
- (id)inputContentClasses;
@end

@implementation WFContentItemAction

- (id)inputContentClasses
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = WFContentItemAction;
  v3 = [(WFAction *)&v9 inputContentClasses];
  v4 = [v3 count];

  if (v4)
  {
    v8.receiver = self;
    v8.super_class = WFContentItemAction;
    v5 = [(WFAction *)&v8 inputContentClasses];
  }

  else
  {
    v10[0] = [(WFAction *)self contentItemClass];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFAction *)self identifier];
  v7 = NSStringFromClass([(WFAction *)self contentItemClass]);
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, contentItemClass: %@>", v5, self, v6, v7];

  return v8;
}

- (WFContentProperty)defaultProperty
{
  defaultProperty = self->_defaultProperty;
  if (!defaultProperty)
  {
    v4 = [(WFAction *)self contentItemClass];
    v5 = [(WFAction *)self definition];
    v6 = [v5 objectForKey:@"WFContentItemDefaultProperty"];
    v7 = [(objc_class *)v4 propertyForName:v6];
    v8 = self->_defaultProperty;
    self->_defaultProperty = v7;

    defaultProperty = self->_defaultProperty;
  }

  return defaultProperty;
}

- (WFContentItemAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForKey:@"WFContentItemClass"];
  v12 = NSClassFromString(v11);

  if (v12)
  {
    if ([(WFContentItemAction *)v12 isSubclassOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = WFContentItemAction;
      self = [(WFAction *)&v14 initWithIdentifier:v8 definition:v9 serializedParameters:v10];
      v12 = self;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end