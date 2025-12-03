@interface HDSummariesHealthDaemonPlugin
- (id)extensionForProfile:(id)profile;
@end

@implementation HDSummariesHealthDaemonPlugin

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[HDSummariesHealthDaemonPluginProfileExtension alloc] initWithProfile:profileCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end