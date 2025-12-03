@interface SBBookmark
- (BOOL)icon:(id)icon launchFromLocation:(id)location context:(id)context;
- (BOOL)isTimedOutForIcon:(id)icon;
- (NSCopying)badgeValue;
- (SBBookmark)initWithWebClip:(id)clip;
- (void)_noteIconDataSourceDidChange;
- (void)setBadgeValue:(id)value;
@end

@implementation SBBookmark

- (SBBookmark)initWithWebClip:(id)clip
{
  clipCopy = clip;
  v9.receiver = self;
  v9.super_class = SBBookmark;
  v5 = [(SBHBookmark *)&v9 initWithWebClip:clipCopy];
  if (v5)
  {
    placeholderBundleIdentifier = [clipCopy placeholderBundleIdentifier];
    if (placeholderBundleIdentifier)
    {
      v7 = [MEMORY[0x277D0AC98] storeForApplication:placeholderBundleIdentifier];
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&v5->_dataStore, v7);
    if (placeholderBundleIdentifier)
    {
    }
  }

  return v5;
}

- (NSCopying)badgeValue
{
  if ((*(self + 32) & 6) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = [(FBSApplicationDataStore *)self->_dataStore safeObjectForKey:@"SBBookmarkBadgeKey" ofType:objc_opt_class()];
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    *(self + 32) = *(self + 32) & 0xF8 | v4;
  }

  return v2;
}

- (void)setBadgeValue:(id)value
{
  valueCopy = value;
  v10 = valueCopy;
  if (!valueCopy || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), valueCopy = v10, (isKindOfClass & 1) != 0) || (objc_opt_class(), v6 = objc_opt_isKindOfClass(), valueCopy = v10, (v6 & 1) != 0))
  {
    if ([valueCopy isEqual:&unk_283372290])
    {

      v10 = 0;
    }

    badgeValue = [(SBBookmark *)self badgeValue];
    if (([badgeValue isEqual:v10] & 1) == 0)
    {
      dataStore = self->_dataStore;
      if (v10 && dataStore)
      {
        [FBSApplicationDataStore setObject:"setObject:forKey:" forKey:?];
        v9 = 1;
      }

      else
      {
        [(FBSApplicationDataStore *)dataStore removeObjectForKey:@"SBBookmarkBadgeKey"];
        v9 = 2;
      }

      *(self + 32) = *(self + 32) & 0xF8 | v9;
      [(SBBookmark *)self _noteIconDataSourceDidChange];
    }
  }
}

- (BOOL)icon:(id)icon launchFromLocation:(id)location context:(id)context
{
  iconCopy = icon;
  locationCopy = location;
  contextCopy = context;
  if ([iconCopy isBookmarkIcon])
  {
    applicationToLaunch = [iconCopy applicationToLaunch];
    if (applicationToLaunch || (-[SBHBookmark webClip](self, "webClip"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isAppClip], v12, v13))
    {
      if (objc_opt_respondsToSelector())
      {
        actions = [contextCopy actions];
      }

      else
      {
        actions = 0;
      }

      v15 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        activationSettings = [contextCopy activationSettings];
      }

      else
      {
        activationSettings = 0;
      }

      v18 = +[SBUIController sharedInstance];
      [v18 activateApplication:applicationToLaunch fromIcon:iconCopy location:locationCopy activationSettings:activationSettings actions:actions];
    }
  }

  return 1;
}

- (BOOL)isTimedOutForIcon:(id)icon
{
  webClip = [(SBHBookmark *)self webClip];
  if ([webClip isAppClip])
  {
    v4 = +[SBApplicationController sharedInstance];
    applicationBundleIdentifier = [webClip applicationBundleIdentifier];
    v6 = [v4 applicationWithBundleIdentifier:applicationBundleIdentifier];
    info = [v6 info];

    isBlockedForScreenTimeExpiration = [info isBlockedForScreenTimeExpiration];
  }

  else
  {
    isBlockedForScreenTimeExpiration = 0;
  }

  return isBlockedForScreenTimeExpiration;
}

- (void)_noteIconDataSourceDidChange
{
  sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x277CCAB98] sbh_leafIconDataSourceNotificationCenter];
  [sbh_leafIconDataSourceNotificationCenter postNotificationName:*MEMORY[0x277D66730] object:self userInfo:0];
}

@end