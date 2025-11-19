@interface SBUILockScreenDisableAssertion
+ (id)lockScreenDisableAssertionWithIdentifier:(id)a3;
- (SBUILockScreenDisableAssertion)initWithIdentifier:(id)a3;
@end

@implementation SBUILockScreenDisableAssertion

+ (id)lockScreenDisableAssertionWithIdentifier:(id)a3
{
  v3 = __assertionClass;
  v4 = a3;
  v5 = [[v3 alloc] initWithIdentifier:v4];

  return v5;
}

- (SBUILockScreenDisableAssertion)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBUILockScreenDisableAssertion;
  return [(SBUILockScreenDisableAssertion *)&v4 init];
}

@end