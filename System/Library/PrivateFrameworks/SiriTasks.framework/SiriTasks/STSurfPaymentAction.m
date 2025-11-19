@interface STSurfPaymentAction
- (STSurfPaymentAction)initWithCoder:(id)a3;
- (id)_initWithInteraction:(id)a3;
- (unint64_t)action;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSurfPaymentAction

- (STSurfPaymentAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STSurfPaymentAction;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_interaction"];
    interaction = v5->_interaction;
    v5->_interaction = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STSurfPaymentAction;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_interaction forKey:{@"_interaction", v5.receiver, v5.super_class}];
}

- (unint64_t)action
{
  v3 = [(STSurfPaymentAction *)self interaction];
  v4 = [v3 intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  v7 = [(STSurfPaymentAction *)self interaction];
  v8 = [v7 intent];
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

- (id)_initWithInteraction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STSurfPaymentAction;
  v6 = [(AFSiriRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interaction, a3);
  }

  return v7;
}

@end