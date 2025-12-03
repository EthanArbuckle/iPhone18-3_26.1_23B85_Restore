@interface LSPropertyList(Entitlements)
- (uint64_t)ses_isEntitled:()Entitlements;
@end

@implementation LSPropertyList(Entitlements)

- (uint64_t)ses_isEntitled:()Entitlements
{
  v4 = a3;
  v5 = [self objectForKey:v4 ofClass:objc_opt_class()];

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

@end