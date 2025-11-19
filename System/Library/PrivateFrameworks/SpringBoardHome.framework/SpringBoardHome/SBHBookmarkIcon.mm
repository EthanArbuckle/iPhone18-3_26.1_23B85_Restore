@interface SBHBookmarkIcon
- (BOOL)canBeAddedToMultiItemDrag;
- (BOOL)canBeAddedToSubfolder;
- (BOOL)displaysAppStoreURLShortcutItem;
- (BOOL)displaysShareBookmarkShortcutItem;
- (BOOL)isWebAppIcon;
- (SBHBookmarkIcon)initWithBookmark:(id)a3;
- (id)_sbhIconLibraryOverrideCollationSectionTitle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)draggingUserActivity;
- (id)uninstallAlertBody;
- (id)uninstallAlertTitle;
- (uint64_t)_isSaneURL;
- (void)setBookmark:(id)a3;
@end

@implementation SBHBookmarkIcon

- (SBHBookmarkIcon)initWithBookmark:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  v9.receiver = self;
  v9.super_class = SBHBookmarkIcon;
  v7 = [(SBLeafIcon *)&v9 initWithLeafIdentifier:v6 applicationBundleID:0];

  if (v7)
  {
    objc_storeStrong(&v7->_bookmark, a3);
    [(SBLeafIcon *)v7 addIconDataSource:v5];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  bookmark = self->_bookmark;

  return [v4 initWithBookmark:bookmark];
}

- (void)setBookmark:(id)a3
{
  v5 = a3;
  if (self->_bookmark != v5)
  {
    v6 = v5;
    [(SBLeafIcon *)self removeIconDataSource:?];
    objc_storeStrong(&self->_bookmark, a3);
    [(SBLeafIcon *)self addIconDataSource:self->_bookmark];
    [(SBIcon *)self _notifyImageDidUpdate];
    [(SBIcon *)self _notifyAccessoriesDidUpdate];
    v5 = v6;
  }
}

- (BOOL)displaysShareBookmarkShortcutItem
{
  if (![(SBHBookmarkIcon *)self _isSaneURL])
  {
    return 0;
  }

  if ([(SBHBookmarkIcon *)self isAppClipIcon])
  {
    return 1;
  }

  v4 = [(SBHBookmarkIcon *)self webClip];
  v5 = [v4 applicationBundleIdentifier];

  if (v5)
  {
    v3 = [v5 isEqualToString:@"com.apple.mobilesafari"];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)displaysAppStoreURLShortcutItem
{
  if (![(SBHBookmarkIcon *)self isAppClipIcon])
  {
    return 0;
  }

  v3 = [(SBHBookmarkIcon *)self appClip];
  v4 = [v3 fullAppStoreURL];

  v5 = v4 != 0;
  return v5;
}

- (BOOL)canBeAddedToMultiItemDrag
{
  if ([(SBHBookmarkIcon *)self isAppClipIcon])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SBHBookmarkIcon;
  return [(SBIcon *)&v4 canBeAddedToMultiItemDrag];
}

- (BOOL)canBeAddedToSubfolder
{
  if ([(SBHBookmarkIcon *)self isAppClipIcon])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SBHBookmarkIcon;
  return [(SBIcon *)&v4 canBeAddedToSubfolder];
}

- (id)uninstallAlertTitle
{
  if ([(SBHBookmarkIcon *)self isAppClipIcon])
  {
    v3 = SBHBundle();
    v4 = v3;
    v5 = @"UNINSTALL_APPCLIP_TITLE";
  }

  else
  {
    if ([(SBHBookmarkIcon *)self isWebAppIcon])
    {
      v6 = MEMORY[0x1E696AEC0];
      v4 = SBHBundle();
      v7 = [v4 localizedStringForKey:@"UNINSTALL_WEBAPP_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v8 = [(SBIcon *)self displayName];
      v9 = [v6 stringWithFormat:v7, v8];

      goto LABEL_7;
    }

    v3 = SBHBundle();
    v4 = v3;
    v5 = @"UNINSTALL_BOOKMARK_TITLE";
  }

  v9 = [v3 localizedStringForKey:v5 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
LABEL_7:

  return v9;
}

- (id)uninstallAlertBody
{
  if ([(SBHBookmarkIcon *)self isAppClipIcon])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = SBHBundle();
    v5 = v4;
    v6 = @"UNINSTALL_APPCLIP_BODY_DELETE_DATA";
  }

  else
  {
    if ([(SBHBookmarkIcon *)self isWebAppIcon])
    {
      v5 = SBHBundle();
      v7 = [v5 localizedStringForKey:@"UNINSTALL_WEBAPP_BODY_DELETE_DATA" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      goto LABEL_7;
    }

    v3 = MEMORY[0x1E696AEC0];
    v4 = SBHBundle();
    v5 = v4;
    v6 = @"UNINSTALL_BOOKMARK_BODY_DELETE_DATA";
  }

  v8 = [v4 localizedStringForKey:v6 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v9 = [(SBIcon *)self displayName];
  v7 = [v3 stringWithFormat:v8, v9];

LABEL_7:

  return v7;
}

- (id)draggingUserActivity
{
  if ([(SBHBookmarkIcon *)self isAppClipIcon])
  {
    v3 = [(SBHBookmarkIcon *)self bookmark];
    v4 = [v3 webClip];
    v5 = [v4 appClipUserActivity];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isWebAppIcon
{
  v3 = [(SBHBookmarkIcon *)self webClip];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SBHBookmarkIcon *)self webClip];
    v5 = [v4 needsWebAppDeletionStrings];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_sbhIconLibraryOverrideCollationSectionTitle
{
  v3 = [(SBHBookmarkIcon *)self webClip];
  v4 = [v3 isAppClip];

  if (v4)
  {
    v5 = *MEMORY[0x1E69DE3E0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBHBookmarkIcon;
    v5 = [(SBIcon *)&v7 _sbhIconLibraryOverrideCollationSectionTitle];
  }

  return v5;
}

- (uint64_t)_isSaneURL
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 webClip];
  v2 = [v1 pageURL];

  v3 = [v2 isFileURL] ^ 1;
  return v3;
}

@end