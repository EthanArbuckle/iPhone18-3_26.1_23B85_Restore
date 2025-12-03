@interface VUIUpNextButtonProperties
- (VUIUpNextButtonProperties)init;
- (VUIUpNextButtonProtocol)delegate;
- (void)_handleClearFromPlayHistoryNotification:(id)notification;
- (void)_toggleUpNextState;
- (void)_updatingState:(id)state;
- (void)callAPIAndToggleUpNextState;
- (void)dealloc;
- (void)removeNotificationObserver;
- (void)setupNotificationObserver;
- (void)updateButtonContentView;
@end

@implementation VUIUpNextButtonProperties

- (VUIUpNextButtonProperties)init
{
  v8.receiver = self;
  v8.super_class = VUIUpNextButtonProperties;
  v2 = [(VUIUpNextButtonProperties *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    addedStateView = v2->_addedStateView;
    v2->_addedStateView = v3;

    v5 = objc_opt_new();
    removedStateView = v2->_removedStateView;
    v2->_removedStateView = v5;

    v2->_removeTitleForSquareAspectRatio = 0;
  }

  return v2;
}

- (void)setupNotificationObserver
{
  canonicalID = [(VUIUpNextButtonProperties *)self canonicalID];
  if (canonicalID)
  {
    v7 = canonicalID;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__updatingState_ name:@"VUIUpNextRequestDidFinishNotification" object:0];

    v5 = _os_feature_enabled_impl();
    canonicalID = v7;
    if (v5)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__handleClearFromPlayHistoryNotification_ name:@"VUIClearFromPlayHistoryRequestDidFinishNotification" object:0];

      canonicalID = v7;
    }
  }
}

- (void)removeNotificationObserver
{
  canonicalID = [(VUIUpNextButtonProperties *)self canonicalID];
  if (canonicalID)
  {
    v5 = canonicalID;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"VUIUpNextRequestDidFinishNotification" object:0];

    canonicalID = v5;
  }
}

- (void)_toggleUpNextState
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VUIUpNextButtonProperties__toggleUpNextState__block_invoke;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __47__VUIUpNextButtonProperties__toggleUpNextState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dismissOnSelect];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setIsWatchListed:{objc_msgSend(*(a1 + 32), "isWatchListed") ^ 1}];
    v3 = *(a1 + 32);

    return [v3 updateButtonContentView];
  }

  return result;
}

- (void)callAPIAndToggleUpNextState
{
  v17[3] = *MEMORY[0x1E69E9840];
  isWatchListed = [(VUIUpNextButtonProperties *)self isWatchListed];
  v4 = @"removed";
  if (isWatchListed)
  {
    v4 = @"added";
  }

  canonicalID = self->_canonicalID;
  v16[0] = @"itemID";
  v16[1] = @"state";
  v17[0] = canonicalID;
  v17[1] = v4;
  v16[2] = @"confirmationShouldWaitCompletion";
  v6 = MEMORY[0x1E696AD98];
  confirmationShouldWaitCompletion = self->_confirmationShouldWaitCompletion;
  v8 = canonicalID;
  v9 = [v6 numberWithBool:confirmationShouldWaitCompletion];
  v17[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v11 = [[VUIActionUpdateUpNext alloc] initWithContextData:v10];
  if ([(VUIActionUpdateUpNext *)v11 isAccountRequired]&& !+[VUIAuthenticationManager userHasActiveAccount](VUIAuthenticationManager, "userHasActiveAccount") && +[VUIAuthenticationManager allowsAccountModification])
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__VUIUpNextButtonProperties_callAPIAndToggleUpNextState__block_invoke;
    v12[3] = &unk_1E8732730;
    objc_copyWeak(&v14, &location);
    v13 = v11;
    [VUIAuthenticationManager requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [(VUIUpNextButtonProperties *)self _toggleUpNextState];
    [(VUIActionUpdateUpNext *)v11 performWithTargetResponder:0 completionHandler:0];
  }
}

void __56__VUIUpNextButtonProperties_callAPIAndToggleUpNextState__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (a2)
  {
    [WeakRetained _toggleUpNextState];
    [*(a1 + 32) performWithTargetResponder:0 completionHandler:0];
  }

  else
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "VUIUpNextButtonProperties:: Authentication request failed with error: %@", &v9, 0xCu);
    }
  }
}

- (void)updateButtonContentView
{
  delegate = [(VUIUpNextButtonProperties *)self delegate];
  if ([(VUIUpNextButtonProperties *)self isWatchListed])
  {
    [delegate upNextStateChangedToAdded];
  }

  else
  {
    [delegate upNextStateChangedToRemoved];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"VUIUpNextRequestDidFinishNotification" object:0];

  v4.receiver = self;
  v4.super_class = VUIUpNextButtonProperties;
  [(VUIUpNextButtonProperties *)&v4 dealloc];
}

- (void)_updatingState:(id)state
{
  stateCopy = state;
  userInfo = [stateCopy userInfo];
  v5 = [userInfo objectForKey:@"Error"];
  v6 = [userInfo objectForKey:@"Action"];
  object = [stateCopy object];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    canonicalID = [(VUIUpNextButtonProperties *)self canonicalID];
    v9 = [object isEqualToString:canonicalID];

    if (v9)
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
      if (v5)
      {
        v11 = v6 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        if (unsignedIntegerValue == 1)
        {
          if ([(VUIUpNextButtonProperties *)self isWatchListed])
          {
            goto LABEL_21;
          }
        }

        else if (unsignedIntegerValue || ![(VUIUpNextButtonProperties *)self isWatchListed])
        {
          goto LABEL_21;
        }

        v12 = [(VUIUpNextButtonProperties *)self isWatchListed]^ 1;
LABEL_20:
        [(VUIUpNextButtonProperties *)self setIsWatchListed:v12];
        [(VUIUpNextButtonProperties *)self updateButtonContentView];
        goto LABEL_21;
      }

      if (unsignedIntegerValue == 1)
      {
        if (![(VUIUpNextButtonProperties *)self isWatchListed])
        {
          goto LABEL_21;
        }

        v12 = 0;
        goto LABEL_20;
      }

      if (!unsignedIntegerValue && ![(VUIUpNextButtonProperties *)self isWatchListed])
      {
        v12 = 1;
        goto LABEL_20;
      }
    }
  }

LABEL_21:
}

- (void)_handleClearFromPlayHistoryNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKey:@"Error"];
  object = [notificationCopy object];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    canonicalID = [(VUIUpNextButtonProperties *)self canonicalID];
    v8 = [object isEqualToString:canonicalID];

    if (v8)
    {
      if (!v5)
      {
        [(VUIUpNextButtonProperties *)self setIsWatchListed:0];
        [(VUIUpNextButtonProperties *)self updateButtonContentView];
      }
    }
  }
}

- (VUIUpNextButtonProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end