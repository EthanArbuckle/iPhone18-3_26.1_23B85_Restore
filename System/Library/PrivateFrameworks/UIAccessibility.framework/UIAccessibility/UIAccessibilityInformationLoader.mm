@interface UIAccessibilityInformationLoader
+ (id)sharedInstance;
- (id)_init;
- (void)_loadAccessibilityInformationOnMainThread:(BOOL)thread;
- (void)_setNeedsLoadAccessibilityInformationOnMainThread;
- (void)loadAccessibilityInformation;
- (void)setNeedsLoadAccessibilityInformation;
@end

@implementation UIAccessibilityInformationLoader

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[UIAccessibilityInformationLoader sharedInstance];
  }

  v3 = sharedInstance__SharedInfoLoader;

  return v3;
}

uint64_t __50__UIAccessibilityInformationLoader_sharedInstance__block_invoke()
{
  sharedInstance__SharedInfoLoader = [[UIAccessibilityInformationLoader alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UIAccessibilityInformationLoader;
  return [(UIAccessibilityInformationLoader *)&v3 init];
}

- (void)loadAccessibilityInformation
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(UIAccessibilityInformationLoader *)self _loadAccessibilityInformationOnMainThread:0];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__UIAccessibilityInformationLoader_loadAccessibilityInformation__block_invoke;
    block[3] = &unk_1E78AB028;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)setNeedsLoadAccessibilityInformation
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(UIAccessibilityInformationLoader *)self _setNeedsLoadAccessibilityInformationOnMainThread];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__UIAccessibilityInformationLoader_setNeedsLoadAccessibilityInformation__block_invoke;
    block[3] = &unk_1E78AB028;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_loadAccessibilityInformationOnMainThread:(BOOL)thread
{
  threadCopy = thread;
  v61 = *MEMORY[0x1E69E9840];
  if (AXShouldLogValidationErrors())
  {
    v4 = AXLogLoading();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = threadCopy;
      _os_log_impl(&dword_1A9B83000, v4, OS_LOG_TYPE_INFO, "loading ax info. wasCoalesced: %i", buf, 8u);
    }
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] _accessibilityLoadAccessibilityInformation];
  v39 = [mEMORY[0x1E69DC668] safeValueForKey:@"delegate"];
  if (objc_opt_respondsToSelector())
  {
    [v39 _accessibilityLoadAccessibilityInformation];
  }

  [mEMORY[0x1E69DC668] _accessibilityRegisterForDictationLifecycleNotifications];
  *buf = 0;
  v56 = buf;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__3;
  v59 = __Block_byref_object_dispose__3;
  v60 = 0;
  v47 = MEMORY[0x1E69E9820];
  v48 = 3221225472;
  v49 = __78__UIAccessibilityInformationLoader__loadAccessibilityInformationOnMainThread___block_invoke;
  v50 = &unk_1E78AA680;
  v51 = buf;
  AXPerformSafeBlock();
  if (*(v56 + 5))
  {
    v5 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v6 = [v5 initWithArray:*(v56 + 5)];
    v7 = [MEMORY[0x1E695DFA8] set];
    v8 = MEMORY[0x1E69DD258];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __78__UIAccessibilityInformationLoader__loadAccessibilityInformationOnMainThread___block_invoke_2;
    v45[3] = &unk_1E78AB618;
    v9 = v6;
    v46 = v9;
    [v8 _traverseViewControllerHierarchyWithDelayedRelease:v45];
    *&v10 = 138412290;
    v38 = v10;
    while (1)
    {
      if (![v9 count])
      {

        goto LABEL_69;
      }

      lastObject = [v9 lastObject];
      [v9 removeLastObject];
      if (([v7 containsObject:lastObject] & 1) == 0)
      {
        break;
      }

LABEL_67:
    }

    [v7 addObject:lastObject];
    [lastObject _accessibilityLoadAccessibilityInformation];
    if (AXShouldLogValidationErrors())
    {
      v12 = AXLogLoading();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *v53 = v38;
        v54 = lastObject;
        _os_log_impl(&dword_1A9B83000, v12, OS_LOG_TYPE_DEBUG, "loading ax info on %@", v53, 0xCu);
      }
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    _accessibilityLoadAccessibilityInformationSupplementaryItems = [lastObject _accessibilityLoadAccessibilityInformationSupplementaryItems];
    v14 = [_accessibilityLoadAccessibilityInformationSupplementaryItems countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v14)
    {
      v15 = *v42;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(_accessibilityLoadAccessibilityInformationSupplementaryItems);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          if (([v7 containsObject:v17] & 1) == 0)
          {
            [v9 addObject:v17];
          }
        }

        v14 = [_accessibilityLoadAccessibilityInformationSupplementaryItems countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v14);
    }

    v18 = objc_opt_class();
    if (_AXStrictIsKindOfClass(lastObject, v18))
    {
      rootViewController = [lastObject rootViewController];
      if (rootViewController)
      {
        [v9 addObject:rootViewController];
      }
    }

    v20 = objc_opt_class();
    if (_AXStrictIsKindOfClass(lastObject, v20))
    {
      v21 = [MEMORY[0x1E69DD258] viewControllerForView:lastObject];
      if (v21)
      {
        [v9 addObject:v21];
      }

      v22 = [lastObject safeValueForKey:@"subviews"];
      if (v22)
      {
        [v9 addObjectsFromArray:v22];
      }

      v23 = objc_opt_class();
      if (_AXStrictIsKindOfClass(lastObject, v23))
      {
        delegate = [lastObject delegate];
        v25 = delegate;
        if (delegate && ([delegate isProxy] & 1) == 0)
        {
          [v9 addObject:v25];
        }
      }

      v26 = objc_opt_class();
      if (_AXStrictIsKindOfClass(lastObject, v26))
      {
        v27 = [lastObject safeValueForKey:@"items"];
        if (v27)
        {
          [v9 addObjectsFromArray:v27];
        }
      }
    }

    else
    {
      v28 = objc_opt_class();
      if (_AXStrictIsKindOfClass(lastObject, v28))
      {
        v53[0] = 0;
        objc_opt_class();
        v29 = [lastObject safeValueForKey:@"_leftBarButtonItems"];
        v21 = __UIAccessibilityCastAsClass();

        if (v53[0] == 1)
        {
          goto LABEL_70;
        }

        if (v21)
        {
          [v9 addObjectsFromArray:v21];
        }

        v53[0] = 0;
        objc_opt_class();
        v30 = [lastObject safeValueForKey:@"_rightBarButtonItems"];
        v22 = __UIAccessibilityCastAsClass();

        if (v53[0] == 1)
        {
LABEL_70:
          abort();
        }

        if (!v22)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v31 = objc_opt_class();
        if (!_AXStrictIsKindOfClass(lastObject, v31))
        {
          goto LABEL_67;
        }

        v21 = [lastObject safeValueForKey:@"presentedViewController"];
        if (v21)
        {
          [v9 addObject:v21];
        }

        v32 = objc_opt_class();
        if (_AXStrictIsKindOfClass(lastObject, v32))
        {
          v33 = [lastObject safeValueForKey:@"navigationBar"];
          if (v33)
          {
            [v9 addObject:v33];
          }

          v34 = [lastObject safeValueForKey:@"toolbar"];
          if (v34)
          {
            [v9 addObject:v34];
          }

          v35 = [lastObject safeValueForKey:@"viewControllers"];
          if (v35)
          {
            [v9 addObjectsFromArray:v35];
          }
        }

        v36 = objc_opt_class();
        if (_AXStrictIsKindOfClass(lastObject, v36))
        {
          v37 = [lastObject safeValueForKeyPath:@"_panelImpl.panelController"];
          if (v37)
          {
            [v9 addObject:v37];
          }
        }

        v22 = [lastObject safeValueForKey:@"childViewControllers"];
        if (!v22)
        {
          goto LABEL_66;
        }
      }

      [v9 addObjectsFromArray:v22];
    }

LABEL_66:

    goto LABEL_67;
  }

LABEL_69:
  _Block_object_dispose(buf, 8);
}

uint64_t __78__UIAccessibilityInformationLoader__loadAccessibilityInformationOnMainThread___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [*MEMORY[0x1E69DDA98] _accessibilityAllWindowsOnlyVisibleWindows:0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __78__UIAccessibilityInformationLoader__loadAccessibilityInformationOnMainThread___block_invoke_2(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (void)_setNeedsLoadAccessibilityInformationOnMainThread
{
  [(NSTimer *)self->_coalesceTimer invalidate];
  self->_coalesceTimer = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__coalesceTimerFired_ selector:0 userInfo:0 repeats:0.5];

  MEMORY[0x1EEE66BB8]();
}

@end