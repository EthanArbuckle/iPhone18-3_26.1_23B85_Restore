@interface SBHBookmark
- (BOOL)iconCompleteUninstall:(id)uninstall;
- (BOOL)iconSupportsUninstall:(id)uninstall;
- (BOOL)isAppClip;
- (BOOL)isShortcutsWebClip;
- (BOOL)isSingleStepShortcutWebClip;
- (BOOL)isUninstallSupported;
- (CPSWebClip)appClip;
- (NSString)identifier;
- (NSURL)launchURL;
- (SBHBookmark)initWithWebClip:(id)clip;
- (id)folderTitleOptionsForIcon:(id)icon;
- (id)icon:(id)icon displayNameForLocation:(id)location;
- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info;
- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (id)icon:(id)icon layerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (id)icon:(id)icon unmaskedImageWithInfo:(SBIconImageInfo *)info;
- (id)isImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (void)_cleanupAppClipIfNecessary;
- (void)_deviceUnlockedForFirstTime:(id)time;
- (void)dealloc;
@end

@implementation SBHBookmark

- (SBHBookmark)initWithWebClip:(id)clip
{
  clipCopy = clip;
  v12.receiver = self;
  v12.super_class = SBHBookmark;
  v6 = [(SBHBookmark *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webClip, clip);
    placeholderBundleIdentifier = [clipCopy placeholderBundleIdentifier];
    placeholderBundleIdentifier = v7->_placeholderBundleIdentifier;
    v7->_placeholderBundleIdentifier = placeholderBundleIdentifier;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__deviceUnlockedForFirstTime_ name:*MEMORY[0x1E69D4040] object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69D4040] object:0];

  v4.receiver = self;
  v4.super_class = SBHBookmark;
  [(SBHBookmark *)&v4 dealloc];
}

- (NSString)identifier
{
  webClip = [(SBHBookmark *)self webClip];
  identifier = [webClip identifier];

  return identifier;
}

- (NSURL)launchURL
{
  webClip = [(SBHBookmark *)self webClip];
  applicationLaunchURL = [webClip applicationLaunchURL];

  return applicationLaunchURL;
}

- (BOOL)isShortcutsWebClip
{
  webClip = [(SBHBookmark *)self webClip];
  shortcutIdentifier = [webClip shortcutIdentifier];
  v4 = shortcutIdentifier != 0;

  return v4;
}

- (BOOL)isSingleStepShortcutWebClip
{
  if (![(SBHBookmark *)self isShortcutsWebClip])
  {
    return 0;
  }

  webClip = [(SBHBookmark *)self webClip];
  pageURL = [webClip pageURL];
  v5 = pageURL == 0;

  return v5;
}

- (CPSWebClip)appClip
{
  if (!self->_appClip && [(SBHBookmark *)self isAppClip])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v3 = getCPSWebClipStoreClass_softClass;
    v15 = getCPSWebClipStoreClass_softClass;
    if (!getCPSWebClipStoreClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getCPSWebClipStoreClass_block_invoke;
      v11[3] = &unk_1E8089848;
      v11[4] = &v12;
      __getCPSWebClipStoreClass_block_invoke(v11);
      v3 = v13[3];
    }

    v4 = v3;
    _Block_object_dispose(&v12, 8);
    sharedStore = [v3 sharedStore];
    identifier = [(UIWebClip *)self->_webClip identifier];
    v7 = [sharedStore synchronouslyGetAppClipWithIdentifier:identifier];
    appClip = self->_appClip;
    self->_appClip = v7;
  }

  v9 = self->_appClip;

  return v9;
}

- (BOOL)isAppClip
{
  if (self->_appClip)
  {
    return 1;
  }

  webClip = [(SBHBookmark *)self webClip];
  isAppClip = [webClip isAppClip];

  return isAppClip;
}

- (void)_deviceUnlockedForFirstTime:(id)time
{
  sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [sbh_leafIconDataSourceNotificationCenter postNotificationName:@"SBLeafIconDataSourceDidChangeNotification" object:self];
}

- (BOOL)isUninstallSupported
{
  webClip = [(SBHBookmark *)self webClip];
  removalDisallowed = [webClip removalDisallowed];

  return removalDisallowed ^ 1;
}

- (id)icon:(id)icon displayNameForLocation:(id)location
{
  v4 = [(SBHBookmark *)self webClip:icon];
  title = [v4 title];

  return title;
}

- (id)icon:(id)icon unmaskedImageWithInfo:(SBIconImageInfo *)info
{
  iconCopy = icon;
  v6 = objc_autoreleasePoolPush();
  webClip = [(SBHBookmark *)self webClip];
  iconImage = [webClip iconImage];

  objc_autoreleasePoolPop(v6);

  return iconImage;
}

- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  if ([(SBHBookmark *)self isAppClip:icon])
  {
    v11 = objc_alloc(MEMORY[0x1E69A8A00]);
    webClip = [(SBHBookmark *)self webClip];
    applicationBundleIdentifier = [webClip applicationBundleIdentifier];
    v14 = [v11 initWithBundleIdentifier:applicationBundleIdentifier];

    v15 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v9 scale:{v8, v7}];
    v16 = [v14 prepareImageForDescriptor:v15];
    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x1E69DCAB8]);
      cGImage = [v16 CGImage];
      [v16 scale];
      v19 = [v17 initWithCGImage:cGImage scale:0 orientation:?];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)isImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v32[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v14 = objc_autoreleasePoolPush();
  webClip = [(SBHBookmark *)self webClip];
  v16 = SBHIconServicesOptionsForImageOptions(collectionCopy);
  if ([(SBHBookmark *)self isAppClip])
  {
    v17 = objc_alloc(MEMORY[0x1E69A8A00]);
    applicationBundleIdentifier = [webClip applicationBundleIdentifier];
    v19 = [v17 initWithBundleIdentifier:applicationBundleIdentifier];
  }

  else
  {
    sbh_iconImageAppearance = [(SBIconImageInfo *)infoCopy sbh_iconImageAppearance];
    appearanceType = [sbh_iconImageAppearance appearanceType];
    if (appearanceType > 6)
    {
      v23 = 0;
    }

    else
    {
      if (((1 << appearanceType) & 0x70) != 0)
      {
        tintableIconImage = [webClip tintableIconImage];
      }

      else
      {
        if (((1 << appearanceType) & 5) != 0)
        {
          [webClip iconImage];
        }

        else
        {
          [webClip darkIconImage];
        }
        tintableIconImage = ;
      }

      v23 = tintableIconImage;
    }

    v24 = objc_alloc(MEMORY[0x1E69A8988]);
    cGImage = [v23 CGImage];
    [v23 scale];
    v26 = [v24 initWithCGImage:cGImage scale:?];
    v27 = objc_alloc(MEMORY[0x1E69A8A00]);
    v32[0] = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v19 = [v27 initWithImages:v28];
  }

  v29 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v11 scale:{v10, v9}];
  SBHModifyImageDescriptorWithTraitCollection(v29, infoCopy, v16);
  v30 = [v19 prepareImageForDescriptor:v29];

  objc_autoreleasePoolPop(v14);

  return v30;
}

- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  infoCopy = info;
  v17 = [(SBHBookmark *)self isImageWithInfo:infoCopy traitCollection:collection options:v14, v13, v12, v11];
  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x1E69DCAB8]);
    cGImage = [v17 CGImage];
    [v17 scale];
    v20 = [v18 initWithCGImage:cGImage scale:0 orientation:?];
  }

  else
  {
    v20 = 0;
  }

  v21 = SBHIconServicesAddDebugImageOverlayWithTraitCollection(v20);

  return v21;
}

- (id)icon:(id)icon layerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  infoCopy = info;
  v17 = [(SBHBookmark *)self isImageWithInfo:infoCopy traitCollection:collection options:v14, v13, v12, v11];
  if ([(SBHBookmark *)self isAppClip])
  {
    v18 = objc_alloc(MEMORY[0x1E69DCAB8]);
    cGImage = [v17 CGImage];
    [v17 scale];
    v20 = [v18 initWithCGImage:cGImage scale:0 orientation:?];
    iCRIconLayer = [SBIcon makeIconLayerFromImage:v20];
  }

  else
  {
    iCRIconLayer = [v17 ICRIconLayer];
  }

  v22 = SBHIconServicesOptionsForImageOptions(collection);
  SBHIconServicesAddDebugLayerOverlayWithTraitCollection(iCRIconLayer, infoCopy, v22, v14, v13, v12, v11);

  return iCRIconLayer;
}

- (BOOL)iconSupportsUninstall:(id)uninstall
{
  webClip = [(SBHBookmark *)self webClip];
  removalDisallowed = [webClip removalDisallowed];

  return removalDisallowed ^ 1;
}

- (BOOL)iconCompleteUninstall:(id)uninstall
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBWebBookmarkWasUninstalledNotification" object:self];

  if ([(SBHBookmark *)self isAppClip])
  {
    appClip = [(SBHBookmark *)self appClip];
  }

  webClip = [(SBHBookmark *)self webClip];
  removeFromDisk = [webClip removeFromDisk];

  [(SBHBookmark *)self _cleanupAppClipIfNecessary];
  return removeFromDisk;
}

- (id)folderTitleOptionsForIcon:(id)icon
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = SBHBundle();
  v4 = [v3 localizedStringForKey:@"BOOKMARK_FOLDER_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (void)_cleanupAppClipIfNecessary
{
  v32 = *MEMORY[0x1E69E9840];
  if ([(SBHBookmark *)self isAppClip])
  {
    appClip = [(SBHBookmark *)self appClip];
    applicationBundleIdentifier = [appClip applicationBundleIdentifier];
    v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:0 error:0];
    appClipMetadata = [v5 appClipMetadata];

    if (appClipMetadata)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      appClips = [MEMORY[0x1E69DD2B8] appClips];
      v8 = [appClips countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v8)
      {
        v9 = *v20;
        while (2)
        {
          v10 = 0;
          do
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(appClips);
            }

            applicationBundleIdentifier2 = [*(*(&v19 + 1) + 8 * v10) applicationBundleIdentifier];
            v12 = [applicationBundleIdentifier2 isEqualToString:applicationBundleIdentifier];

            if (v12)
            {
              v16 = SBLogCommon();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = applicationBundleIdentifier;
                _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "Bailing on cleanup of app clip '%@'; appclip in use by other UIWebClip", &buf, 0xCu);
              }

              goto LABEL_21;
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [appClips countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v13 = SBLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = applicationBundleIdentifier;
        _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "Starting cleanup of app clip '%@'", &buf, 0xCu);
      }

      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v14 = getIXAppInstallCoordinatorClass_softClass;
      v26 = getIXAppInstallCoordinatorClass_softClass;
      if (!getIXAppInstallCoordinatorClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v29 = __getIXAppInstallCoordinatorClass_block_invoke;
        v30 = &unk_1E8089848;
        v31 = &v23;
        __getIXAppInstallCoordinatorClass_block_invoke(&buf);
        v14 = v24[3];
      }

      v15 = v14;
      _Block_object_dispose(&v23, 8);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __41__SBHBookmark__cleanupAppClipIfNecessary__block_invoke;
      v17[3] = &unk_1E808C058;
      v18 = applicationBundleIdentifier;
      [v14 uninstallAppWithBundleID:v18 requestUserConfirmation:0 completion:v17];
      appClips = v18;
    }

    else
    {
      appClips = SBLogCommon();
      if (os_log_type_enabled(appClips, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = applicationBundleIdentifier;
        _os_log_impl(&dword_1BEB18000, appClips, OS_LOG_TYPE_DEFAULT, "Bailing on cleanup of app clip '%@': Appclips were removed from install of the real app.", &buf, 0xCu);
      }
    }

LABEL_21:
  }
}

void __41__SBHBookmark__cleanupAppClipIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__SBHBookmark__cleanupAppClipIfNecessary__block_invoke_cold_1(a1, v3, v4);
    }
  }
}

void __41__SBHBookmark__cleanupAppClipIfNecessary__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1BEB18000, log, OS_LOG_TYPE_ERROR, "Error uninstalling bundle identifier %@: %{public}@", &v4, 0x16u);
}

@end