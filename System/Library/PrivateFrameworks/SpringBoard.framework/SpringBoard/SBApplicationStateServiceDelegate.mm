@interface SBApplicationStateServiceDelegate
- (id)dataSourceForApplicationBundleIdentifier:(id)identifier;
@end

@implementation SBApplicationStateServiceDelegate

- (id)dataSourceForApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SBApplicationController sharedInstanceIfExists];
  v5 = [v4 applicationWithBundleIdentifier:identifierCopy];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];
    if ([v6 isWebAppPlaceholder])
    {
      v7 = +[SBIconController sharedIconRepository];
      v8 = [v7 bookmarkIconForWebClipPlaceholderBundleIdentifier:identifierCopy];
      v9 = objc_opt_self();
      bookmark = [v8 bookmark];
      v5 = SBSafeCast(v9, bookmark);
    }
  }

  return v5;
}

@end