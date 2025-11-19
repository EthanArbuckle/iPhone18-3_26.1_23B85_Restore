@interface RBSProcessInstancePredicate
- (RBSProcessInstancePredicate)initWithRBSXPCCoder:(id)a3;
@end

@implementation RBSProcessInstancePredicate

- (RBSProcessInstancePredicate)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RBSProcessInstancePredicate;
  v5 = [(RBSProcessInstancePredicate *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->super._identifier;
    v5->super._identifier = v6;
  }

  return v5;
}

@end