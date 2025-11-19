@interface SBHBookmark
- (BOOL)iconCompleteUninstall:(id)a3;
- (BOOL)iconSupportsUninstall:(id)a3;
- (BOOL)isAppClip;
- (BOOL)isShortcutsWebClip;
- (BOOL)isSingleStepShortcutWebClip;
- (BOOL)isUninstallSupported;
- (CPSWebClip)appClip;
- (NSString)identifier;
- (NSURL)launchURL;
- (SBHBookmark)initWithWebClip:(id)a3;
- (id)folderTitleOptionsForIcon:(id)a3;
- (id)icon:(id)a3 displayNameForLocation:(id)a4;
- (id)icon:(id)a3 imageWithInfo:(SBIconImageInfo *)a4;
- (id)icon:(id)a3 imageWithInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6;
- (id)icon:(id)a3 layerWithInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6;
- (id)icon:(id)a3 unmaskedImageWithInfo:(SBIconImageInfo *)a4;
- (id)isImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (void)_cleanupAppClipIfNecessary;
- (void)_deviceUnlockedForFirstTime:(id)a3;
- (void)dealloc;
@end

@implementation SBHBookmark

- (SBHBookmark)initWithWebClip:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SBHBookmark;
  v6 = [(SBHBookmark *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webClip, a3);
    v8 = [v5 placeholderBundleIdentifier];
    placeholderBundleIdentifier = v7->_placeholderBundleIdentifier;
    v7->_placeholderBundleIdentifier = v8;

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel__deviceUnlockedForFirstTime_ name:*MEMORY[0x1E69D4040] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69D4040] object:0];

  v4.receiver = self;
  v4.super_class = SBHBookmark;
  [(SBHBookmark *)&v4 dealloc];
}

- (NSString)identifier
{
  v2 = [(SBHBookmark *)self webClip];
  v3 = [v2 identifier];

  return v3;
}

- (NSURL)launchURL
{
  v2 = [(SBHBookmark *)self webClip];
  v3 = [v2 applicationLaunchURL];

  return v3;
}

- (BOOL)isShortcutsWebClip
{
  v2 = [(SBHBookmark *)self webClip];
  v3 = [v2 shortcutIdentifier];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isSingleStepShortcutWebClip
{
  if (![(SBHBookmark *)self isShortcutsWebClip])
  {
    return 0;
  }

  v3 = [(SBHBookmark *)self webClip];
  v4 = [v3 pageURL];
  v5 = v4 == 0;

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
    v5 = [v3 sharedStore];
    v6 = [(UIWebClip *)self->_webClip identifier];
    v7 = [v5 synchronouslyGetAppClipWithIdentifier:v6];
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

  v3 = [(SBHBookmark *)self webClip];
  v4 = [v3 isAppClip];

  return v4;
}

- (void)_deviceUnlockedForFirstTime:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [v4 postNotificationName:@"SBLeafIconDataSourceDidChangeNotification" object:self];
}

- (BOOL)isUninstallSupported
{
  v2 = [(SBHBookmark *)self webClip];
  v3 = [v2 removalDisallowed];

  return v3 ^ 1;
}

- (id)icon:(id)a3 displayNameForLocation:(id)a4
{
  v4 = [(SBHBookmark *)self webClip:a3];
  v5 = [v4 title];

  return v5;
}

- (id)icon:(id)a3 unmaskedImageWithInfo:(SBIconImageInfo *)a4
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [(SBHBookmark *)self webClip];
  v8 = [v7 iconImage];

  objc_autoreleasePoolPop(v6);

  return v8;
}

- (id)icon:(id)a3 imageWithInfo:(SBIconImageInfo *)a4
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  if ([(SBHBookmark *)self isAppClip:a3])
  {
    v11 = objc_alloc(MEMORY[0x1E69A8A00]);
    v12 = [(SBHBookmark *)self webClip];
    v13 = [v12 applicationBundleIdentifier];
    v14 = [v11 initWithBundleIdentifier:v13];

    v15 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v9 scale:{v8, v7}];
    v16 = [v14 prepareImageForDescriptor:v15];
    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x1E69DCAB8]);
      v18 = [v16 CGImage];
      [v16 scale];
      v19 = [v17 initWithCGImage:v18 scale:0 orientation:?];
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

- (id)isImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v32[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = objc_autoreleasePoolPush();
  v15 = [(SBHBookmark *)self webClip];
  v16 = SBHIconServicesOptionsForImageOptions(v8);
  if ([(SBHBookmark *)self isAppClip])
  {
    v17 = objc_alloc(MEMORY[0x1E69A8A00]);
    v18 = [v15 applicationBundleIdentifier];
    v19 = [v17 initWithBundleIdentifier:v18];
  }

  else
  {
    v20 = [(SBIconImageInfo *)v13 sbh_iconImageAppearance];
    v21 = [v20 appearanceType];
    if (v21 > 6)
    {
      v23 = 0;
    }

    else
    {
      if (((1 << v21) & 0x70) != 0)
      {
        v22 = [v15 tintableIconImage];
      }

      else
      {
        if (((1 << v21) & 5) != 0)
        {
          [v15 iconImage];
        }

        else
        {
          [v15 darkIconImage];
        }
        v22 = ;
      }

      v23 = v22;
    }

    v24 = objc_alloc(MEMORY[0x1E69A8988]);
    v25 = [v23 CGImage];
    [v23 scale];
    v26 = [v24 initWithCGImage:v25 scale:?];
    v27 = objc_alloc(MEMORY[0x1E69A8A00]);
    v32[0] = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v19 = [v27 initWithImages:v28];
  }

  v29 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v11 scale:{v10, v9}];
  SBHModifyImageDescriptorWithTraitCollection(v29, v13, v16);
  v30 = [v19 prepareImageForDescriptor:v29];

  objc_autoreleasePoolPop(v14);

  return v30;
}

- (id)icon:(id)a3 imageWithInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  v16 = a4;
  v17 = [(SBHBookmark *)self isImageWithInfo:v16 traitCollection:a5 options:v14, v13, v12, v11];
  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v19 = [v17 CGImage];
    [v17 scale];
    v20 = [v18 initWithCGImage:v19 scale:0 orientation:?];
  }

  else
  {
    v20 = 0;
  }

  v21 = SBHIconServicesAddDebugImageOverlayWithTraitCollection(v20);

  return v21;
}

- (id)icon:(id)a3 layerWithInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  v16 = a4;
  v17 = [(SBHBookmark *)self isImageWithInfo:v16 traitCollection:a5 options:v14, v13, v12, v11];
  if ([(SBHBookmark *)self isAppClip])
  {
    v18 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v19 = [v17 CGImage];
    [v17 scale];
    v20 = [v18 initWithCGImage:v19 scale:0 orientation:?];
    v21 = [SBIcon makeIconLayerFromImage:v20];
  }

  else
  {
    v21 = [v17 ICRIconLayer];
  }

  v22 = SBHIconServicesOptionsForImageOptions(a5);
  SBHIconServicesAddDebugLayerOverlayWithTraitCollection(v21, v16, v22, v14, v13, v12, v11);

  return v21;
}

- (BOOL)iconSupportsUninstall:(id)a3
{
  v3 = [(SBHBookmark *)self webClip];
  v4 = [v3 removalDisallowed];

  return v4 ^ 1;
}

- (BOOL)iconCompleteUninstall:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"SBWebBookmarkWasUninstalledNotification" object:self];

  if ([(SBHBookmark *)self isAppClip])
  {
    v5 = [(SBHBookmark *)self appClip];
  }

  v6 = [(SBHBookmark *)self webClip];
  v7 = [v6 removeFromDisk];

  [(SBHBookmark *)self _cleanupAppClipIfNecessary];
  return v7;
}

- (id)folderTitleOptionsForIcon:(id)a3
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
    v3 = [(SBHBookmark *)self appClip];
    v4 = [v3 applicationBundleIdentifier];
    v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];
    v6 = [v5 appClipMetadata];

    if (v6)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = [MEMORY[0x1E69DD2B8] appClips];
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
              objc_enumerationMutation(v7);
            }

            v11 = [*(*(&v19 + 1) + 8 * v10) applicationBundleIdentifier];
            v12 = [v11 isEqualToString:v4];

            if (v12)
            {
              v16 = SBLogCommon();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v4;
                _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "Bailing on cleanup of app clip '%@'; appclip in use by other UIWebClip", &buf, 0xCu);
              }

              goto LABEL_21;
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
        *(&buf + 4) = v4;
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
      v18 = v4;
      [v14 uninstallAppWithBundleID:v18 requestUserConfirmation:0 completion:v17];
      v7 = v18;
    }

    else
    {
      v7 = SBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v4;
        _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "Bailing on cleanup of app clip '%@': Appclips were removed from install of the real app.", &buf, 0xCu);
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