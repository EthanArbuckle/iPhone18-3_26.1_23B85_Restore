@interface SBHProxiedApplicationPlaceholder
- (BOOL)canBeShared;
- (BOOL)cancel;
- (BOOL)icon:(id)a3 launchFromLocation:(id)a4 context:(id)a5;
- (BOOL)iconCompleteUninstall:(id)a3;
- (BOOL)iconSupportsUninstall:(id)a3;
- (BOOL)isActive;
- (BOOL)isCloudDemoted;
- (BOOL)isDone;
- (BOOL)isDownloading;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFailed;
- (BOOL)isInstalling;
- (BOOL)isNewAppInstallFromStore;
- (BOOL)isPausable;
- (BOOL)isPaused;
- (BOOL)isWaiting;
- (BOOL)pause;
- (BOOL)prioritize;
- (BOOL)resume;
- (SBHProxiedApplicationPlaceholder)initWithPlaceholderProxy:(id)a3;
- (SBHProxiedApplicationPlaceholderDelegate)delegate;
- (double)progressPercentForIcon:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)icon:(id)a3 statusDescriptionForLocation:(id)a4;
- (id)succinctDescription;
- (int64_t)labelAccessoryTypeForIcon:(id)a3;
- (int64_t)progressStateForIcon:(id)a3;
- (void)_progressChanged;
- (void)_reloadThumbnailImage;
- (void)dealloc;
- (void)invalidate;
- (void)placeholderDidChangeSignificantly:(id)a3;
- (void)placeholderProgressDidUpdate:(id)a3;
@end

@implementation SBHProxiedApplicationPlaceholder

- (BOOL)canBeShared
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:1 error:0];

  if (v5)
  {
    v6 = [v5 typeForInstallMachinery];
    v7 = [v5 iTunesMetadata];
    v8 = [v7 storeItemIdentifier];

    if ([v6 isEqualToString:*MEMORY[0x1E69635B8]])
    {
      v9 = v8 == 0;
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

- (SBHProxiedApplicationPlaceholder)initWithPlaceholderProxy:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = SBHProxiedApplicationPlaceholder;
  v6 = [(SBHProxiedApplicationPlaceholder *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placeholderProxy, a3);
    [(FBSApplicationPlaceholder *)v7->_placeholderProxy addObserver:v7];
    v8 = objc_alloc(MEMORY[0x1E69635F8]);
    v9 = [v5 bundleIdentifier];
    v10 = [v8 initWithBundleIdentifier:v9 allowPlaceholder:1 error:0];

    if (v10)
    {
      v11 = [v10 iTunesMetadata];
      v12 = [v11 storeItemIdentifier];

      if (v12)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];
        applicationItemID = v7->_applicationItemID;
        v7->_applicationItemID = v13;
      }

      v15 = [v10 appClipMetadata];
      v7->_appClip = v15 != 0;
    }

    [(SBHProxiedApplicationPlaceholder *)v7 placeholderDidChangeSignificantly:v5];
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
  v2 = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [v2 state] == 6;

  return v3;
}

- (BOOL)isActive
{
  v2 = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [v2 state] != 0;

  return v3;
}

- (BOOL)isWaiting
{
  v2 = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [v2 state] == 3;

  return v3;
}

- (BOOL)isPaused
{
  v2 = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [v2 state] == 2;

  return v3;
}

- (BOOL)isFailed
{
  v2 = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [v2 state] == 1;

  return v3;
}

- (BOOL)isDownloading
{
  v2 = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [v2 state] == 4;

  return v3;
}

- (BOOL)isInstalling
{
  v2 = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v3 = [v2 state] == 5;

  return v3;
}

- (BOOL)isPausable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained && ![WeakRetained placeholderShouldAllowPausing:self])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(FBSApplicationPlaceholder *)self->_placeholderProxy isPausable];
  }

  return v5;
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
    v4 = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
    v6 = 138543362;
    v7 = v4;
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
    v4 = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
    v6 = 138543362;
    v7 = v4;
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
    v4 = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
    v6 = 138543362;
    v7 = v4;
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
    v4 = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
    v6 = 138543362;
    v7 = v4;
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
    v6 = self;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Updated progress: %@", &v5, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [v4 postNotificationName:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self userInfo:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SBHProxiedApplicationPlaceholder *)self placeholderProxy];
    v6 = [v4 placeholderProxy];
    v7 = [v5 isEqual:v6];
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
    v3 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [v3 postNotificationName:@"SBLeafIconDataSourceDidInvalidateNotification" object:self];
  }
}

- (void)placeholderProgressDidUpdate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__SBHProxiedApplicationPlaceholder_placeholderProgressDidUpdate___block_invoke;
  v6[3] = &unk_1E8088F18;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)placeholderDidChangeSignificantly:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__SBHProxiedApplicationPlaceholder_placeholderDidChangeSignificantly___block_invoke;
  v6[3] = &unk_1E8088F18;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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
  v3 = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
  v4 = SBLogAppPlaceholder();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "Reloading thumbnail image for placeholder: %{public}@", &v6, 0xCu);
  }

  v5 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [v5 postNotificationName:@"SBLeafIconDataSourceDidGenerateImageNotification" object:self];
}

- (id)icon:(id)a3 statusDescriptionForLocation:(id)a4
{
  if (![(SBHProxiedApplicationPlaceholder *)self isActive:a3]|| [(SBHProxiedApplicationPlaceholder *)self isFailed]|| [(SBHProxiedApplicationPlaceholder *)self isDone])
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

- (int64_t)progressStateForIcon:(id)a3
{
  v4 = [(SBHProxiedApplicationPlaceholder *)self isCloudDemoted]^ 1;
  if (![(SBHProxiedApplicationPlaceholder *)self isFailed])
  {
    if ([(SBHProxiedApplicationPlaceholder *)self isActive])
    {
      v5 = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
      [v5 percentComplete];
      v7 = v6;

      if (v7 > 2.22044605e-16)
      {
        return 2;
      }
    }
  }

  return v4;
}

- (double)progressPercentForIcon:(id)a3
{
  v3 = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  [v3 percentComplete];
  v5 = v4;

  return v5;
}

- (int64_t)labelAccessoryTypeForIcon:(id)a3
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

- (BOOL)iconSupportsUninstall:(id)a3
{
  if ([(SBHProxiedApplicationPlaceholder *)self isDone])
  {
    return 0;
  }

  return [(SBHProxiedApplicationPlaceholder *)self isCancelable];
}

- (BOOL)iconCompleteUninstall:(id)a3
{
  v4 = a3;
  if ([v4 isApplicationIcon] && objc_msgSend(v4, "isUninstalledByUser"))
  {
    v5 = [(SBHProxiedApplicationPlaceholder *)self delegate];
    [v5 placeholderWantsUninstall:self];
  }

  return 1;
}

- (BOOL)icon:(id)a3 launchFromLocation:(id)a4 context:(id)a5
{
  if ([(SBHProxiedApplicationPlaceholder *)self isPaused:a3])
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHProxiedApplicationPlaceholder *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [(SBHProxiedApplicationPlaceholder *)self applicationBundleIdentifier];
  v6 = [v4 appendObject:v5 withName:@"bundleIdentifier"];

  v7 = [(SBHProxiedApplicationPlaceholder *)self applicationDisplayName];
  v8 = [v4 appendObject:v7 withName:@"displayName"];

  v9 = [(FBSApplicationPlaceholder *)self->_placeholderProxy progress];
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x1E696AEC0];
    [v9 percentComplete];
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
  v2 = [(SBHProxiedApplicationPlaceholder *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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