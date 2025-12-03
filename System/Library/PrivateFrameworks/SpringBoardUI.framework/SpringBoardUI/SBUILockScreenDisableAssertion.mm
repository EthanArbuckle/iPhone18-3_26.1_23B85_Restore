@interface SBUILockScreenDisableAssertion
+ (id)lockScreenDisableAssertionWithIdentifier:(id)identifier;
- (SBUILockScreenDisableAssertion)initWithIdentifier:(id)identifier;
@end

@implementation SBUILockScreenDisableAssertion

+ (id)lockScreenDisableAssertionWithIdentifier:(id)identifier
{
  v3 = __assertionClass;
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithIdentifier:identifierCopy];

  return v5;
}

- (SBUILockScreenDisableAssertion)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = SBUILockScreenDisableAssertion;
  return [(SBUILockScreenDisableAssertion *)&v4 init];
}

@end