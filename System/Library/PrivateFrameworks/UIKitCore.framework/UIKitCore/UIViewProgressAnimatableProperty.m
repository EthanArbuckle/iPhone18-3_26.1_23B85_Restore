@interface UIViewProgressAnimatableProperty
+ (id)progressAnimatablePropertyByPerforming:(id)a3;
- (void)__swift_configureWithAction:(id)a3;
@end

@implementation UIViewProgressAnimatableProperty

- (void)__swift_configureWithAction:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1891264A8(sub_188A4AA04, v5);
}

+ (id)progressAnimatablePropertyByPerforming:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 __swift_configureWithAction:v3];

  return v4;
}

@end