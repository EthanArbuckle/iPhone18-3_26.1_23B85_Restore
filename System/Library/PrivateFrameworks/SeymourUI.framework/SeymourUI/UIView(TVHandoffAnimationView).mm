@interface UIView(TVHandoffAnimationView)
+ (_SMUHandoffAnimationView)smu_tvHandoffAnimationViewWithState:()TVHandoffAnimationView;
@end

@implementation UIView(TVHandoffAnimationView)

+ (_SMUHandoffAnimationView)smu_tvHandoffAnimationViewWithState:()TVHandoffAnimationView
{
  v3 = [[_SMUHandoffAnimationView alloc] initWithState:a3];

  return v3;
}

@end