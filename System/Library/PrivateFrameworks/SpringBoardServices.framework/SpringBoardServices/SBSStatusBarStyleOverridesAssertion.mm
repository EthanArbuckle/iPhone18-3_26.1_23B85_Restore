@interface SBSStatusBarStyleOverridesAssertion
+ (id)assertionWithStatusBarStyleOverrides:(unint64_t)overrides forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground;
- (SBSStatusBarStyleOverridesAssertion)initWithStatusBarStyleOverrides:(unint64_t)overrides forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground;
- (unint64_t)statusBarStyleOverrides;
@end

@implementation SBSStatusBarStyleOverridesAssertion

+ (id)assertionWithStatusBarStyleOverrides:(unint64_t)overrides forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground
{
  v6 = [[SBSStatusBarStyleOverridesAssertion alloc] initWithStatusBarStyleOverrides:overrides forPID:*&d exclusive:exclusive showsWhenForeground:foreground];

  return v6;
}

- (SBSStatusBarStyleOverridesAssertion)initWithStatusBarStyleOverrides:(unint64_t)overrides forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  exclusiveCopy = exclusive;
  v8 = *&d;
  v10 = soft_STUIBackgroundActivityIdentifiersForStyleOverrides(overrides);
  v11 = [[SBSBackgroundActivityAssertionData alloc] initWithBackgroundActivityIdentifiers:v10 forPID:v8 exclusive:exclusiveCopy showsWhenForeground:foregroundCopy];
  v12 = [(SBSBackgroundActivityAssertion *)self initWithBackgroundActivityAssertionData:v11];

  return v12;
}

- (unint64_t)statusBarStyleOverrides
{
  backgroundActivityIdentifiers = [(SBSBackgroundActivityAssertion *)self backgroundActivityIdentifiers];

  return soft_STUIStyleOverridesForBackgroundActivityIdentifiers(backgroundActivityIdentifiers);
}

@end