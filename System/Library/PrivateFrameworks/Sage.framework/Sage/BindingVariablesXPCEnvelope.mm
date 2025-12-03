@interface BindingVariablesXPCEnvelope
- (NSDictionary)_bindingVariables;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  BindingVariablesXPCEnvelope.encode(with:)(coderCopy);
}

@end