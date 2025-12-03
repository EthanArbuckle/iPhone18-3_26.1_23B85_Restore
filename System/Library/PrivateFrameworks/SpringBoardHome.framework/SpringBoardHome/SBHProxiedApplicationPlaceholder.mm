@interface SBHProxiedApplicationPlaceholder
- (BOOL)canBeShared;
- (BOOL)cancel;
- (BOOL)icon:(id)icon launchFromLocation:(id)location context:(id)context;
- (BOOL)iconCompleteUninstall:(id)uninstall;
- (BOOL)iconSupportsUninstall:(id)uninstall;
- (BOOL)isActive;
- (BOOL)isCloudDemoted;
- (BOOL)isDone;
- (BOOL)isDownloading;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFailed;
- (BOOL)isInstalling;
- (BOOL)isNewAppInstallFromStore;
- (BOOL)isPausable;
- (BOOL)isPaused;
- (BOOL)isWaiting;
- (BOOL)pause;
- (BOOL)prioritize;
- (BOOL)resume;
- (SBHProxiedApplicationPlaceholder)initWithPlaceholderProxy:(id)proxy;
- (SBHProxiedApplicationPlaceholderDelegate)delegate;
- (double)progressPercentForIcon:(id)icon;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)icon:(id)icon statusDescriptionForLocation:(id)location;
- (id)succinctDescription;
- (int64_t)labelAccessoryTypeForIcon:(id)icon;
- (int64_t)progressStateForIcon:(id)icon;
- (void)_progressChanged;
- (void)_reloadThumbnailImage;
- (void)dealloc;
- (void)invalidate;
- (void)placeholderDidChangeSignificantly:(id)significantly;
- (void)placeholderProgressDidUpdate:(id)update;
@end

@implementation SBHProxiedApplicationPlaceholder

- (BOOL)canBeShared
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  applicationBundleID = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
  v5 = [v3 initWithBundleIdentifier:applicationBundleID allowPlaceholder:1 error:0];

  if (v5)
  {
    typeForInstallMachinery = [v5 typeForInstallMachinery];
    iTunesMetadata = [v5 iTunesMetadata];
    storeItemIdentifier = [iTunesMetadata storeItemIdentifier];

    if ([typeForInstallMachinery isEqualToString:*MEMORY[0x1E69635B8]])
    {
      v9 = storeItemIdentifier == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v10 = [v5 isBeta] ^ 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (SBHProxiedApplicationPlaceholder)initWithPlaceholderProxy:(id)proxy
{
  proxyCopy = proxy;
  v17.receiver = self;
  v17.super_class = SBHProxiedApplicationPlaceholder;
  v6 = [(SBHProxiedApplicationPlaceholder *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placeholderProxy, proxy);
    [(FBSApplicationPlaceholder *)v7->_placeholderProxy addObserver:v7];
    v8 = objc_alloc(MEMORY[0x1E69635F8]);
    bundleIdentifier = [proxyCopy bundleIdentifier];
    v10 = [v8 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:0];

    if (v10)
    {
      iTunesMetadata = [v10 iTunesMetadata];
      storeItemIdentifier = [iTunesMetadata storeItemIdentifier];

      if (storeItemIdentifier)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:storeItemIdentifier];
        applicationItemID = v7->_applicationItemID;
        v7->_applicationItemID = v13;
      }

      appClipMetadata = [v10 appClipMetadata];
      v7->_appClip = appClipMetadata != 0;
    }

    [(SBHProxiedApplicationPlaceholder *)v7 placeholderDidChangeSignificantly:proxyCopy];
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SBHProxiedApplicationPlaceholder;
  [(SBHProxiedApplicationPlaceholder *)&v2 dealloc];
}

- (BOOL)isDone
{
  progress = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [progress state] == 6;

  return v3;
}

- (BOOL)isActive
{
  progress = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [progress state] != 0;

  return v3;
}

- (BOOL)isWaiting
{
  progress = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [progress state] == 3;

  return v3;
}

- (BOOL)isPaused
{
  progress = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [progress state] == 2;

  return v3;
}

- (BOOL)isFailed
{
  progress = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [progress state] == 1;

  return v3;
}

- (BOOL)isDownloading
{
  progress = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [progress state] == 4;

  return v3;
}

- (BOOL)isInstalling
{
  progress = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [progress state] == 5;

  return v3;
}

- (BOOL)isPausable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained && ![WeakRetained placeholderShouldAllowPausing:self])
  {
    isPausable = 0;
  }

  else
  {
    isPausable = [(FBSApplicationPlaceholder *)self->_placeholderProxy isPausable];
  }

  return isPausable;
}

- (BOOL)isCloudDemoted
{
  [(SBHProxiedApplicationPlaceholder *)self installType];

  return FBSInstallTypeIsCloudDemoted();
}

- (BOOL)isNewAppInstallFromStore
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained placeholderRepresentsNewAppInstallFromStore:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)prioritize
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = SBLogAppPlaceholder();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    applicationBundleID = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
    v6 = 138543362;
    v7 = applicationBundleID;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "PRIORITIZE: %{public}@", &v6, 0xCu);
  }

  return [(FBSApplicationPlaceholder *)self->_placeholderProxy prioritizeWithResult:0];
}

- (BOOL)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = SBLogAppPlaceholder();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    applicationBundleID = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
    v6 = 138543362;
    v7 = applicationBundleID;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "CANCEL: %{public}@", &v6, 0xCu);
  }

  return [(FBSApplicationPlaceholder *)self->_placeholderProxy cancelWithResult:0];
}

- (BOOL)pause
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = SBLogAppPlaceholder();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    applicationBundleID = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
    v6 = 138543362;
    v7 = applicationBundleID;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "PAUSE: %{public}@", &v6, 0xCu);
  }

  return [(FBSApplicationPlaceholder *)self->_placeholderProxy pauseWithResult:0];
}

- (BOOL)resume
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = SBLogAppPlaceholder();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    applicationBundleID = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
    v6 = 138543362;
    v7 = applicationBundleID;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "RESUME: %{public}@", &v6, 0xCu);
  }

  return [(FBSApplicationPlaceholder *)self->_placeholderProxy resumeWithResult:0];
}

- (void)_progressChanged
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = SBLogAppPlaceholder();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Updated progress: %@", &v5, 0xCu);
  }

  sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [sbh_leafIconDataSourceNotificationCenter postNotificationName:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self userInfo:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    placeholderProxy = [(SBHProxiedApplicationPlaceholder *)self placeholderProxy];
    placeholderProxy2 = [equalCopy placeholderProxy];
    v7 = [placeholderProxy isEqual:placeholderProxy2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)invalidate
{
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(FBSApplicationPlaceholder *)self->_placeholderProxy removeObserver:self];
    objc_storeWeak(&self->_delegate, 0);
    sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [sbh_leafIconDataSourceNotificationCenter postNotificationName:@"SBLeafIconDataSourceDidInvalidateNotification" object:self];
  }
}

- (void)placeholderProgressDidUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__SBHProxiedApplicationPlaceholder_placeholderProgressDidUpdate___block_invoke;
  v6[3] = &unk_1E8088F18;
  v6[4] = self;
  v7 = updateCopy;
  v5 = updateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __65__SBHProxiedApplicationPlaceholder_placeholderProgressDidUpdate___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + 8) & 1) == 0 && *(result + 16) == *(a1 + 40))
  {
    return [result _progressChanged];
  }

  return result;
}

- (void)placeholderDidChangeSignificantly:(id)significantly
{
  significantlyCopy = significantly;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__SBHProxiedApplicationPlaceholder_placeholderDidChangeSignificantly___block_invoke;
  v6[3] = &unk_1E8088F18;
  v6[4] = self;
  v7 = significantlyCopy;
  v5 = significantlyCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __70__SBHProxiedApplicationPlaceholder_placeholderDidChangeSignificantly___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + 8) & 1) == 0 && *(result + 16) == *(a1 + 40))
  {
    [result _progressChanged];
    v3 = *(a1 + 32);

    return [v3 _reloadThumbnailImage];
  }

  return result;
}

- (void)_reloadThumbnailImage
{
  v8 = *MEMORY[0x1E69E9840];
  applicationBundleID = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
  v4 = SBLogAppPlaceholder();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = applicationBundleID;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "Reloading thumbnail image for placeholder: %{public}@", &v6, 0xCu);
  }

  sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [sbh_leafIconDataSourceNotificationCenter postNotificationName:@"SBLeafIconDataSourceDidGenerateImageNotification" object:self];
}

- (id)icon:(id)icon statusDescriptionForLocation:(id)location
{
  if (![(SBHProxiedApplicationPlaceholder *)self isActive:icon]|| [(SBHProxiedApplicationPlaceholder *)self isFailed]|| [(SBHProxiedApplicationPlaceholder *)self isDone])
  {
    v5 = 0;
  }

  else
  {
    if ([(SBHProxiedApplicationPlaceholder *)self isPaused])
    {
      v7 = @"PAUSED_ICON_LABEL";
    }

    else if ([(SBHProxiedApplicationPlaceholder *)self isWaiting])
    {
      v7 = @"WAITING_ICON_LABEL";
    }

    else if ([(SBHProxiedApplicationPlaceholder *)self isInstalling]&& [(SBHProxiedApplicationPlaceholder *)self _expectedFinalInstallPhase]!= 4)
    {
      v7 = @"INSTALLING_ICON_LABEL";
    }

    else
    {
      v7 = @"DOWNLOADING_ICON_LABEL";
    }

    v8 = SBHBundle();
    v5 = [v8 localizedStringForKey:v7 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  }

  return v5;
}

- (int64_t)progressStateForIcon:(id)icon
{
  v4 = [(SBHProxiedApplicationPlaceholder *)self isCloudDemoted]^ 1;
  if (![(SBHProxiedApplicationPlaceholder *)self isFailed])
  {
    if ([(SBHProxiedApplicationPlaceholder *)self isActive])
    {
      progress = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
      [progress percentComplete];
      v7 = v6;

      if (v7 > 2.22044605e-16)
      {
        return 2;
      }
    }
  }

  return v4;
}

- (double)progressPercentForIcon:(id)icon
{
  progress = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  [progress percentComplete];
  v5 = v4;

  return v5;
}

- (int64_t)labelAccessoryTypeForIcon:(id)icon
{
  if ([(SBHProxiedApplicationPlaceholder *)self isCloudDemoted])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)iconSupportsUninstall:(id)uninstall
{
  if ([(SBHProxiedApplicationPlaceholder *)self isDone])
  {
    return 0;
  }

  return [(SBHProxiedApplicationPlaceholder *)self isCancelable];
}

- (BOOL)iconCompleteUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  if ([uninstallCopy isApplicationIcon] && objc_msgSend(uninstallCopy, "isUninstalledByUser"))
  {
    delegate = [(SBHProxiedApplicationPlaceholder *)self delegate];
    [delegate placeholderWantsUninstall:self];
  }

  return 1;
}

- (BOOL)icon:(id)icon launchFromLocation:(id)location context:(id)context
{
  if ([(SBHProxiedApplicationPlaceholder *)self isPaused:icon])
  {
    if ([(SBHProxiedApplicationPlaceholder *)self resume])
    {
      return 1;
    }
  }

  else if ([(SBHProxiedApplicationPlaceholder *)self isPausable]&& [(SBHProxiedApplicationPlaceholder *)self pause])
  {
    return 1;
  }

  if ([(SBHProxiedApplicationPlaceholder *)self prioritize])
  {
    return 1;
  }

  v7 = SBLogAppPlaceholder();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SBHProxiedApplicationPlaceholder icon:v7 launchFromLocation:? context:?];
  }

  return 0;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHProxiedApplicationPlaceholder *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  applicationBundleIdentifier = [(SBHProxiedApplicationPlaceholder *)self applicationBundleIdentifier];
  v6 = [v4 appendObject:applicationBundleIdentifier withName:@"bundleIdentifier"];

  applicationDisplayName = [(SBHProxiedApplicationPlaceholder *)self applicationDisplayName];
  v8 = [v4 appendObject:applicationDisplayName withName:@"displayName"];

  progress = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v10 = progress;
  if (progress)
  {
    v11 = MEMORY[0x1E696AEC0];
    [progress percentComplete];
    v13 = [v11 stringWithFormat:@"%.0f%%", v12 * 100.0];
    v14 = [v4 appendObject:v13 withName:@"progress"];

    [v10 state];
    v15 = NSStringFromFBSApplicationPlaceholderProgressState();
    v16 = [v4 appendObject:v15 withName:@"state"];
  }

  v17 = [v4 appendBool:-[SBHProxiedApplicationPlaceholder isPausable](self withName:"isPausable") ifEqualTo:{@"canPause?", 1}];
  v18 = [v4 appendBool:-[SBHProxiedApplicationPlaceholder isPrioritizable](self withName:"isPrioritizable") ifEqualTo:{@"canPromote?", 1}];
  v19 = [v4 appendBool:-[SBHProxiedApplicationPlaceholder isCancelable](self withName:"isCancelable") ifEqualTo:{@"canCancel?", 1}];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHProxiedApplicationPlaceholder *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (SBHProxiedApplicationPlaceholderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)icon:(void *)a1 launchFromLocation:(NSObject *)a2 context:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 applicationBundleID];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "All action attempts failed for placeholder: %{public}@", &v4, 0xCu);
}

@end