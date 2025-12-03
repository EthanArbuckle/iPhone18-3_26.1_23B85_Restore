@interface SBBookmarkIcon
- (BOOL)representsWebApp;
- (id)_applicationRecordForDefaultBrowser;
- (id)applicationToLaunch;
- (id)representedSceneIdentifier;
- (void)_applicationRecordForDefaultBrowser;
@end

@implementation SBBookmarkIcon

- (BOOL)representsWebApp
{
  v3 = +[SBApplicationController sharedInstance];
  webApplication = [v3 webApplication];
  applicationToLaunch = [(SBBookmarkIcon *)self applicationToLaunch];
  v6 = [webApplication isEqual:applicationToLaunch];

  return v6;
}

- (id)applicationToLaunch
{
  v3 = +[SBApplicationController sharedInstance];
  webClip = [(SBHBookmarkIcon *)self webClip];
  applicationBundleIdentifier = [webClip applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    restrictionController = [v3 restrictionController];
    v7 = [restrictionController isApplicationIdentifierRestricted:applicationBundleIdentifier];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v3 applicationWithBundleIdentifier:applicationBundleIdentifier];
    }
  }

  else
  {
    if (![webClip fullScreen] || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(webClip, "alternativeFullScreen") & 1) != 0)
    {
      _applicationRecordForDefaultBrowser = [(SBBookmarkIcon *)self _applicationRecordForDefaultBrowser];
      bundleIdentifier = [_applicationRecordForDefaultBrowser bundleIdentifier];

      if (bundleIdentifier)
      {
        v11 = v3;
        v12 = bundleIdentifier;
      }

      else
      {
        v12 = @"com.apple.mobilesafari";
        v11 = v3;
      }

      webApplication = [v11 applicationWithBundleIdentifier:v12];
    }

    else
    {
      bundleIdentifier = +[SBApplicationController sharedInstance];
      webApplication = [(__CFString *)bundleIdentifier webApplication];
    }

    v8 = webApplication;
  }

  return v8;
}

- (id)_applicationRecordForDefaultBrowser
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"http://"];
  if (!v4)
  {
    [(SBBookmarkIcon *)a2 _applicationRecordForDefaultBrowser];
  }

  v9 = 0;
  v5 = [objc_alloc(MEMORY[0x277CC1E98]) initWithURL:v4 error:&v9];
  v6 = v5;
  if (v5)
  {
    bundleRecord = [v5 bundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }

  bundleRecord = 0;
LABEL_7:

  return bundleRecord;
}

- (id)representedSceneIdentifier
{
  webClip = [(SBHBookmarkIcon *)self webClip];
  applicationBundleIdentifier = [webClip applicationBundleIdentifier];

  if (applicationBundleIdentifier)
  {
    v9.receiver = self;
    v9.super_class = SBBookmarkIcon;
    representedSceneIdentifier = [(SBIcon *)&v9 representedSceneIdentifier];
  }

  else
  {
    webClip2 = [(SBHBookmarkIcon *)self webClip];
    identifier = [webClip2 identifier];
    representedSceneIdentifier = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:identifier];
  }

  return representedSceneIdentifier;
}

- (void)_applicationRecordForDefaultBrowser
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBBookmarkIcon.m" lineNumber:62 description:@"HTTP URL should always construct"];
}

@end