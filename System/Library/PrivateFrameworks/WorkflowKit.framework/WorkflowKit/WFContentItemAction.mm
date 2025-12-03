@interface WFContentItemAction
- (WFContentItemAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
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
  inputContentClasses = [(WFAction *)&v9 inputContentClasses];
  v4 = [inputContentClasses count];

  if (v4)
  {
    v8.receiver = self;
    v8.super_class = WFContentItemAction;
    inputContentClasses2 = [(WFAction *)&v8 inputContentClasses];
  }

  else
  {
    v10[0] = [(WFAction *)self contentItemClass];
    inputContentClasses2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  v6 = *MEMORY[0x1E69E9840];

  return inputContentClasses2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WFAction *)self identifier];
  v7 = NSStringFromClass([(WFAction *)self contentItemClass]);
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, contentItemClass: %@>", v5, self, identifier, v7];

  return v8;
}

- (WFContentProperty)defaultProperty
{
  defaultProperty = self->_defaultProperty;
  if (!defaultProperty)
  {
    contentItemClass = [(WFAction *)self contentItemClass];
    definition = [(WFAction *)self definition];
    v6 = [definition objectForKey:@"WFContentItemDefaultProperty"];
    v7 = [(objc_class *)contentItemClass propertyForName:v6];
    v8 = self->_defaultProperty;
    self->_defaultProperty = v7;

    defaultProperty = self->_defaultProperty;
  }

  return defaultProperty;
}

- (WFContentItemAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  identifierCopy = identifier;
  definitionCopy = definition;
  parametersCopy = parameters;
  v11 = [definitionCopy objectForKey:@"WFContentItemClass"];
  selfCopy = NSClassFromString(v11);

  if (selfCopy)
  {
    if ([(WFContentItemAction *)selfCopy isSubclassOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = WFContentItemAction;
      self = [(WFAction *)&v14 initWithIdentifier:identifierCopy definition:definitionCopy serializedParameters:parametersCopy];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end