@interface STSurfPaymentAction
- (STSurfPaymentAction)initWithCoder:(id)coder;
- (id)_initWithInteraction:(id)interaction;
- (unint64_t)action;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSurfPaymentAction

- (STSurfPaymentAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STSurfPaymentAction;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_interaction"];
    interaction = v5->_interaction;
    v5->_interaction = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STSurfPaymentAction;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_interaction forKey:{@"_interaction", v5.receiver, v5.super_class}];
}

- (unint64_t)action
{
  interaction = [(STSurfPaymentAction *)self interaction];
  intent = [interaction intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  interaction2 = [(STSurfPaymentAction *)self interaction];
  intent2 = [interaction2 intent];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)_initWithInteraction:(id)interaction
{
  interactionCopy = interaction;
  v9.receiver = self;
  v9.super_class = STSurfPaymentAction;
  v6 = [(AFSiriRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interaction, interaction);
  }

  return v7;
}

@end