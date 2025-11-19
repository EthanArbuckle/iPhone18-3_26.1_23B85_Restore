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
  v4 = [v3 webApplication];
  v5 = [(SBBookmarkIcon *)self applicationToLaunch];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)applicationToLaunch
{
  v3 = +[SBApplicationController sharedInstance];
  v4 = [(SBHBookmarkIcon *)self webClip];
  v5 = [v4 applicationBundleIdentifier];
  if (v5)
  {
    v6 = [v3 restrictionController];
    v7 = [v6 isApplicationIdentifierRestricted:v5];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v3 applicationWithBundleIdentifier:v5];
    }
  }

  else
  {
    if (![v4 fullScreen] || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v4, "alternativeFullScreen") & 1) != 0)
    {
      v9 = [(SBBookmarkIcon *)self _applicationRecordForDefaultBrowser];
      v10 = [v9 bundleIdentifier];

      if (v10)
      {
        v11 = v3;
        v12 = v10;
      }

      else
      {
        v12 = @"com.apple.mobilesafari";
        v11 = v3;
      }

      v13 = [v11 applicationWithBundleIdentifier:v12];
    }

    else
    {
      v10 = +[SBApplicationController sharedInstance];
      v13 = [(__CFString *)v10 webApplication];
    }

    v8 = v13;
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
    v7 = [v5 bundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)representedSceneIdentifier
{
  v3 = [(SBHBookmarkIcon *)self webClip];
  v4 = [v3 applicationBundleIdentifier];

  if (v4)
  {
    v9.receiver = self;
    v9.super_class = SBBookmarkIcon;
    v5 = [(SBIcon *)&v9 representedSceneIdentifier];
  }

  else
  {
    v6 = [(SBHBookmarkIcon *)self webClip];
    v7 = [v6 identifier];
    v5 = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:v7];
  }

  return v5;
}

- (void)_applicationRecordForDefaultBrowser
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBBookmarkIcon.m" lineNumber:62 description:@"HTTP URL should always construct"];
}

@end