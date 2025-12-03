@interface REUIElementIntentAction
- (INIntent)intent;
- (REUIElementIntentAction)initWithCoder:(id)coder;
- (id)_newPerformer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REUIElementIntentAction

- (INIntent)intent
{
  properties = [(REUIElementDonatedActionAction *)self properties];
  intent = [properties intent];

  return intent;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  properties = [(REUIElementDonatedActionAction *)self properties];
  [coderCopy encodeObject:properties forKey:@"properties"];
}

- (REUIElementIntentAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"properties"];

  v6 = [(REUIElementDonatedActionAction *)self initWithProperties:v5];
  return v6;
}

- (id)_newPerformer
{
  v3.receiver = self;
  v3.super_class = REUIElementIntentAction;
  return [(REUIElementDonatedActionAction *)&v3 _newPerformer];
}

@end