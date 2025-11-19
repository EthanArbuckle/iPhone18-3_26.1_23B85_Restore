@interface HDSummariesHealthDaemonPlugin
- (id)extensionForProfile:(id)a3;
@end

@implementation HDSummariesHealthDaemonPlugin

- (id)extensionForProfile:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[HDSummariesHealthDaemonPluginProfileExtension alloc] initWithProfile:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end