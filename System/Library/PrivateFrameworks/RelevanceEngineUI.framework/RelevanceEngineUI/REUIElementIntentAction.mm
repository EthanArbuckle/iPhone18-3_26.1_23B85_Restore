@interface REUIElementIntentAction
- (INIntent)intent;
- (REUIElementIntentAction)initWithCoder:(id)a3;
- (id)_newPerformer;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REUIElementIntentAction

- (INIntent)intent
{
  v2 = [(REUIElementDonatedActionAction *)self properties];
  v3 = [v2 intent];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REUIElementDonatedActionAction *)self properties];
  [v4 encodeObject:v5 forKey:@"properties"];
}

- (REUIElementIntentAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"properties"];

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