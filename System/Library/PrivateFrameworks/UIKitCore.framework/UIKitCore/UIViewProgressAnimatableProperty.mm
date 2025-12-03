@interface UIViewProgressAnimatableProperty
+ (id)progressAnimatablePropertyByPerforming:(id)performing;
- (void)__swift_configureWithAction:(id)action;
@end

@implementation UIViewProgressAnimatableProperty

- (void)__swift_configureWithAction:(id)action
{
  v4 = _Block_copy(action);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1891264A8(sub_188A4AA04, v5);
}

+ (id)progressAnimatablePropertyByPerforming:(id)performing
{
  performingCopy = performing;
  v4 = objc_opt_new();
  [v4 __swift_configureWithAction:performingCopy];

  return v4;
}

@end