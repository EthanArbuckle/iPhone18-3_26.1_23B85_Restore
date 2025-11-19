@interface LSPropertyList(Entitlements)
- (uint64_t)ses_isEntitled:()Entitlements;
@end

@implementation LSPropertyList(Entitlements)

- (uint64_t)ses_isEntitled:()Entitlements
{
  v4 = a3;
  v5 = [a1 objectForKey:v4 ofClass:objc_opt_class()];

  v6 = [v5 BOOLValue];
  return v6;
}

@end