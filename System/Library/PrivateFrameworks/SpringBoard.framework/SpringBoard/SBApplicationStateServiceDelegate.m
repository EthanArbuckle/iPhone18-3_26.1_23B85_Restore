@interface SBApplicationStateServiceDelegate
- (id)dataSourceForApplicationBundleIdentifier:(id)a3;
@end

@implementation SBApplicationStateServiceDelegate

- (id)dataSourceForApplicationBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[SBApplicationController sharedInstanceIfExists];
  v5 = [v4 applicationWithBundleIdentifier:v3];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:0];
    if ([v6 isWebAppPlaceholder])
    {
      v7 = +[SBIconController sharedIconRepository];
      v8 = [v7 bookmarkIconForWebClipPlaceholderBundleIdentifier:v3];
      v9 = objc_opt_self();
      v10 = [v8 bookmark];
      v5 = SBSafeCast(v9, v10);
    }
  }

  return v5;
}

@end