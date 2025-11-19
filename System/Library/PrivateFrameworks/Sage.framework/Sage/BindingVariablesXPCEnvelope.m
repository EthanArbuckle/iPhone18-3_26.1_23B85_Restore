@interface BindingVariablesXPCEnvelope
- (NSDictionary)_bindingVariables;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BindingVariablesXPCEnvelope

- (NSDictionary)_bindingVariables
{
  if (sub_1B5E3959C())
  {
    v2 = sub_1B5EA55C0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  BindingVariablesXPCEnvelope.encode(with:)(v4);
}

@end