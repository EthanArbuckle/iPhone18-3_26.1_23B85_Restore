@interface SBSStatusBarStyleOverridesAssertion
+ (id)assertionWithStatusBarStyleOverrides:(unint64_t)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6;
- (SBSStatusBarStyleOverridesAssertion)initWithStatusBarStyleOverrides:(unint64_t)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6;
- (unint64_t)statusBarStyleOverrides;
@end

@implementation SBSStatusBarStyleOverridesAssertion

+ (id)assertionWithStatusBarStyleOverrides:(unint64_t)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6
{
  v6 = [[SBSStatusBarStyleOverridesAssertion alloc] initWithStatusBarStyleOverrides:a3 forPID:*&a4 exclusive:a5 showsWhenForeground:a6];

  return v6;
}

- (SBSStatusBarStyleOverridesAssertion)initWithStatusBarStyleOverrides:(unint64_t)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = *&a4;
  v10 = soft_STUIBackgroundActivityIdentifiersForStyleOverrides(a3);
  v11 = [[SBSBackgroundActivityAssertionData alloc] initWithBackgroundActivityIdentifiers:v10 forPID:v8 exclusive:v7 showsWhenForeground:v6];
  v12 = [(SBSBackgroundActivityAssertion *)self initWithBackgroundActivityAssertionData:v11];

  return v12;
}

- (unint64_t)statusBarStyleOverrides
{
  v2 = [(SBSBackgroundActivityAssertion *)self backgroundActivityIdentifiers];

  return soft_STUIStyleOverridesForBackgroundActivityIdentifiers(v2);
}

@end