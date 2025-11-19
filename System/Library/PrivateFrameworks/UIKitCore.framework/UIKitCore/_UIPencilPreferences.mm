@interface _UIPencilPreferences
+ (id)sharedPreferences;
+ (uint64_t)hasSeenPencilPairingUI;
+ (uint64_t)hasUsedPassivePencil;
+ (uint64_t)preferredSqueezeAction;
+ (uint64_t)preferredTapAction;
+ (uint64_t)prefersHoverToolPreview;
+ (uint64_t)prefersPencilOnlyDrawing;
+ (void)setHasUsedPassivePencil:(uint64_t)a1;
+ (void)setPrefersPencilOnlyDrawing:(uint64_t)a1;
- (_UIPencilPreferences)init;
- (void)_hasUsedPassivePencilDidChange;
- (void)_preferredSqueezeActionDidChange;
- (void)_preferredTapActionDidChange;
- (void)_prefersPencilOnlyDrawingDidChange;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _UIPencilPreferences

- (_UIPencilPreferences)init
{
  v9.receiver = self;
  v9.super_class = _UIPencilPreferences;
  v2 = [(_UIPencilPreferences *)&v9 init];
  if (v2)
  {
    v2->_cachedPreferredTapAction = _UIPencilPreferredActionForKey(@"UIPencilPreferredTapAction");
    v2->_cachedPreferredSqueezeAction = _UIPencilPreferredActionForKey(@"UIPencilPreferredSqueezeAction");
    v3 = _UIKitUserDefaults();
    *&v2->_preferenceFlags = *&v2->_preferenceFlags & 0xFE | _UIPencilPrefersPencilOnlyDrawingForKey();
    if (_UIPencilPrefersHoverToolPreview())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *&v2->_preferenceFlags = *&v2->_preferenceFlags & 0xFD | v4;
    if ([v3 BOOLForKey:@"PKHasEverShownEduUI"])
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    *&v2->_preferenceFlags = *&v2->_preferenceFlags & 0xFB | v5;
    if ([v3 BOOLForKey:@"UIPencilHasUsedPassivePencilKey"])
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    *&v2->_preferenceFlags = *&v2->_preferenceFlags & 0xF7 | v6;
    [v3 addObserver:v2 forKeyPath:@"UIPencilPreferredTapAction" options:0 context:0];
    [v3 addObserver:v2 forKeyPath:@"UIPencilPreferredSqueezeAction" options:0 context:0];
    [v3 addObserver:v2 forKeyPath:@"UIPencilOnlyDrawWithPencilKey" options:0 context:0];
    [v3 addObserver:v2 forKeyPath:@"PKUIPencilHoverPreviewEnabledKey" options:0 context:0];
    [v3 addObserver:v2 forKeyPath:@"PKHasEverShownEduUI" options:0 context:0];
    [v3 addObserver:v2 forKeyPath:@"UIPencilHasUsedPassivePencilKey" options:0 context:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _accessibilityOpaqueTouchGestureValueChangedCallback, *MEMORY[0x1E69E4C40], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

+ (id)sharedPreferences
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___UIPencilPreferences_sharedPreferences__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (qword_1ED4A0780 != -1)
  {
    dispatch_once(&qword_1ED4A0780, block);
  }

  v1 = _MergedGlobals_1268;

  return v1;
}

+ (uint64_t)preferredSqueezeAction
{
  objc_opt_self();
  v0 = +[_UIPencilPreferences sharedPreferences];
  if (v0)
  {
    v1 = v0[2];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

+ (uint64_t)preferredTapAction
{
  objc_opt_self();
  v0 = +[_UIPencilPreferences sharedPreferences];
  if (v0)
  {
    v1 = v0[1];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

+ (uint64_t)prefersPencilOnlyDrawing
{
  objc_opt_self();
  v0 = +[_UIPencilPreferences sharedPreferences];
  if (v0)
  {
    v1 = v0[24] & 1;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

+ (uint64_t)hasSeenPencilPairingUI
{
  objc_opt_self();
  v0 = +[_UIPencilPreferences sharedPreferences];
  if (v0)
  {
    v1 = (v0[24] >> 2) & 1;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

+ (uint64_t)hasUsedPassivePencil
{
  objc_opt_self();
  v0 = +[_UIPencilPreferences sharedPreferences];
  if (v0)
  {
    v1 = (v0[24] >> 3) & 1;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

+ (void)setHasUsedPassivePencil:(uint64_t)a1
{
  objc_opt_self();
  v3 = +[_UIPencilPreferences sharedPreferences];
  if (v3 && ((((v3[24] & 8) == 0) ^ a2) & 1) == 0)
  {
    v5 = v3;
    v4 = _UIKitUserDefaults();
    [v4 setBool:a2 forKey:@"UIPencilHasUsedPassivePencilKey"];

    [(_UIPencilPreferences *)v5 _hasUsedPassivePencilDidChange];
    v3 = v5;
  }
}

+ (void)setPrefersPencilOnlyDrawing:(uint64_t)a1
{
  objc_opt_self();
  v3 = +[_UIPencilPreferences sharedPreferences];
  if (v3 && (v3[24] & 1) != a2)
  {
    val = v3;
    v4 = _UIKitUserDefaults();
    [v4 setBool:a2 forKey:@"UIPencilOnlyDrawWithPencilKey"];

    [(_UIPencilPreferences *)val _prefersPencilOnlyDrawingDidChange];
    v3 = val;
  }
}

+ (uint64_t)prefersHoverToolPreview
{
  objc_opt_self();
  v0 = +[_UIPencilPreferences sharedPreferences];
  if (v0)
  {
    v1 = (v0[24] >> 1) & 1;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (void)dealloc
{
  v3 = _UIKitUserDefaults();
  [v3 removeObserver:self forKeyPath:@"UIPencilPreferredTapAction"];
  [v3 removeObserver:self forKeyPath:@"UIPencilPreferredSqueezeAction"];
  [v3 removeObserver:self forKeyPath:@"UIPencilOnlyDrawWithPencilKey"];
  [v3 removeObserver:self forKeyPath:@"PKUIPencilHoverPreviewEnabledKey"];
  [v3 removeObserver:self forKeyPath:@"PKHasEverShownEduUI"];
  [v3 removeObserver:self forKeyPath:@"UIPencilHasUsedPassivePencilKey"];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E69E4C40], 0);

  v5.receiver = self;
  v5.super_class = _UIPencilPreferences;
  [(_UIPencilPreferences *)&v5 dealloc];
}

- (void)_prefersPencilOnlyDrawingDidChange
{
  if (val)
  {
    objc_initWeak(&location, val);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58___UIPencilPreferences__prefersPencilOnlyDrawingDidChange__block_invoke;
    aBlock[3] = &unk_1E70F5A28;
    objc_copyWeak(&v5, &location);
    v1 = _Block_copy(aBlock);
    if (pthread_main_np() == 1)
    {
      v1[2](v1);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58___UIPencilPreferences__prefersPencilOnlyDrawingDidChange__block_invoke_2;
      block[3] = &unk_1E70F0F78;
      v3 = v1;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_hasUsedPassivePencilDidChange
{
  if (a1)
  {
    v2 = _UIKitUserDefaults();
    if ([v2 BOOLForKey:@"UIPencilHasUsedPassivePencilKey"])
    {
      v3 = 8;
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 24) = *(a1 + 24) & 0xF7 | v3;

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"_UIPencilHasUsedPassivePencilChangedNotification" object:a1];
  }
}

- (void)_preferredTapActionDidChange
{
  if (val)
  {
    objc_initWeak(&location, val);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52___UIPencilPreferences__preferredTapActionDidChange__block_invoke;
    aBlock[3] = &unk_1E70F5A28;
    objc_copyWeak(&v5, &location);
    v1 = _Block_copy(aBlock);
    if (pthread_main_np() == 1)
    {
      v1[2](v1);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52___UIPencilPreferences__preferredTapActionDidChange__block_invoke_2;
      block[3] = &unk_1E70F0F78;
      v3 = v1;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_preferredSqueezeActionDidChange
{
  if (val)
  {
    objc_initWeak(&location, val);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56___UIPencilPreferences__preferredSqueezeActionDidChange__block_invoke;
    aBlock[3] = &unk_1E70F5A28;
    objc_copyWeak(&v5, &location);
    v1 = _Block_copy(aBlock);
    if (pthread_main_np() == 1)
    {
      v1[2](v1);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56___UIPencilPreferences__preferredSqueezeActionDidChange__block_invoke_2;
      block[3] = &unk_1E70F0F78;
      v3 = v1;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PencilPreferences", &observeValueForKeyPath_ofObject_change_context____s_category);
  if (*CategoryCachedImpl)
  {
    v13 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(aBlock) = 138412290;
      *(&aBlock + 4) = a3;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "KVO callback received for key: %@", &aBlock, 0xCu);
    }
  }

  if ([a3 isEqualToString:@"UIPencilPreferredTapAction"])
  {
    [(_UIPencilPreferences *)self _preferredTapActionDidChange];
  }

  else if ([a3 isEqualToString:@"UIPencilPreferredSqueezeAction"])
  {
    [(_UIPencilPreferences *)self _preferredSqueezeActionDidChange];
  }

  else if ([a3 isEqualToString:@"UIPencilOnlyDrawWithPencilKey"])
  {
    [(_UIPencilPreferences *)self _prefersPencilOnlyDrawingDidChange];
  }

  else if ([a3 isEqualToString:@"PKUIPencilHoverPreviewEnabledKey"])
  {
    if (self)
    {
      objc_initWeak(&location, self);
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 3221225472;
      v18 = __57___UIPencilPreferences__prefersHoverToolPreviewDidChange__block_invoke;
      v19 = &unk_1E70F5A28;
      objc_copyWeak(v20, &location);
      v9 = _Block_copy(&aBlock);
      if (pthread_main_np() == 1)
      {
        v9[2](v9);
      }

      else
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __57___UIPencilPreferences__prefersHoverToolPreviewDidChange__block_invoke_2;
        v14[3] = &unk_1E70F0F78;
        v15 = v9;
        dispatch_sync(MEMORY[0x1E69E96A0], v14);
      }

      objc_destroyWeak(v20);
      objc_destroyWeak(&location);
    }
  }

  else if ([a3 isEqualToString:@"PKHasEverShownEduUI"])
  {
    if (self)
    {
      v10 = _UIKitUserDefaults();
      if ([v10 BOOLForKey:@"PKHasEverShownEduUI"])
      {
        v11 = 4;
      }

      else
      {
        v11 = 0;
      }

      *&self->_preferenceFlags = *&self->_preferenceFlags & 0xFB | v11;

      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 postNotificationName:@"_UIPencilHasSeenPencilPairingUIChangedNotification" object:self];
    }
  }

  else if ([a3 isEqualToString:@"UIPencilHasUsedPassivePencilKey"])
  {
    [(_UIPencilPreferences *)self _hasUsedPassivePencilDidChange];
  }
}

@end