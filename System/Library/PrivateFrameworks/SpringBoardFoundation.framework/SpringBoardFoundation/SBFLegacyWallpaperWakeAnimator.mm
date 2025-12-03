@interface SBFLegacyWallpaperWakeAnimator
- (BOOL)_shouldHideWakeEffectViewAfterUpdate;
- (UIVisualEffectView)wakeEffectView;
- (id)_wakeEffectsForAnimatingWakeState:(int64_t)state;
- (id)_wakeEffectsForPersistentWakeState:(int64_t)state;
- (int64_t)_targetWakeStateForFadeIn:(BOOL)in;
- (void)removeAllWakeEffects;
- (void)setWakeEffectView:(id)view;
- (void)updateWakeEffectsForWake:(BOOL)wake animated:(BOOL)animated completion:(id)completion;
@end

@implementation SBFLegacyWallpaperWakeAnimator

- (void)removeAllWakeEffects
{
  WeakRetained = objc_loadWeakRetained(&self->_wakeEffectView);
  [WeakRetained setBackgroundEffects:MEMORY[0x1E695E0F0]];
}

- (void)setWakeEffectView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_wakeEffectView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_wakeEffectView, obj);
    v5 = obj;
    wakeState = self->_wakeState;
    if (wakeState)
    {
      self->_wakeState = 0;
      [(SBFLegacyWallpaperWakeAnimator *)self updateWakeEffectsForWake:wakeState == 2 animated:0 completion:0];
      v5 = obj;
    }
  }
}

- (void)updateWakeEffectsForWake:(BOOL)wake animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  wakeCopy = wake;
  v49 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v9 = [(SBFLegacyWallpaperWakeAnimator *)self _targetWakeStateForFadeIn:wakeCopy];
  wakeState = [(SBFLegacyWallpaperWakeAnimator *)self wakeState];
  v11 = SBLogScreenWake();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v27 = @"unknown";
    if (wakeState == 1)
    {
      v27 = @"sleep";
    }

    if (wakeState == 2)
    {
      v27 = @"awake";
    }

    v28 = v27;
    v29 = @"unknown";
    if (v9 == 1)
    {
      v29 = @"sleep";
    }

    if (v9 == 2)
    {
      v29 = @"awake";
    }

    v30 = v29;
    *buf = 67109890;
    v42 = wakeCopy;
    v43 = 1024;
    v44 = animatedCopy;
    v45 = 2112;
    v46 = v28;
    v47 = 2112;
    v48 = v30;
    _os_log_debug_impl(&dword_1BEA11000, v11, OS_LOG_TYPE_DEBUG, "updateWakeEffectsForWake:%{BOOL}d animated:%{BOOL}d (%@ -> %@)", buf, 0x22u);
  }

  if (v9 != wakeState)
  {
    [(SBFLegacyWallpaperWakeAnimator *)self setWakeState:v9];
    WeakRetained = objc_loadWeakRetained(&self->_wakeEffectView);
    if (!animatedCopy)
    {
      v13 = [(SBFLegacyWallpaperWakeAnimator *)self _wakeEffectsForAnimatingWakeState:v9];
      [WeakRetained setBackgroundEffects:v13];
      v17 = [(SBFLegacyWallpaperWakeAnimator *)self _wakeEffectsForPersistentWakeState:v9];
      [WeakRetained setBackgroundEffects:v17];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }

      goto LABEL_15;
    }

    v13 = [(SBFLegacyWallpaperWakeAnimator *)self _wakeEffectsForAnimatingWakeState:wakeState];
    v14 = [(SBFLegacyWallpaperWakeAnimator *)self _wakeEffectsForAnimatingWakeState:v9];
    v15 = [(SBFLegacyWallpaperWakeAnimator *)self _wakeEffectsForPersistentWakeState:v9];
    v16 = +[SBFWakeAnimationDomain rootSettings];
    v17 = v16;
    v32 = v14;
    if (v9 == 2)
    {
      awakeWallpaperFilterSettings = [v16 awakeWallpaperFilterSettings];
    }

    else
    {
      if (v9 != 1)
      {
        v19 = 0;
        goto LABEL_14;
      }

      awakeWallpaperFilterSettings = [v16 sleepWallpaperFilterSettings];
    }

    v19 = awakeWallpaperFilterSettings;
LABEL_14:
    [WeakRetained setHidden:0];
    [WeakRetained setBackgroundEffects:v13];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __79__SBFLegacyWallpaperWakeAnimator_updateWakeEffectsForWake_animated_completion___block_invoke;
    v36[3] = &unk_1E80804B8;
    v40 = v9;
    v36[4] = self;
    v37 = v15;
    v20 = WeakRetained;
    v38 = v20;
    v39 = completionCopy;
    v31 = v15;
    v21 = MEMORY[0x1BFB4D9B0](v36);
    v22 = MEMORY[0x1E698E7D0];
    bSAnimationSettings = [v19 BSAnimationSettings];
    v24 = [v22 factoryWithSettings:bSAnimationSettings];

    v25 = MEMORY[0x1E698E7D0];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __79__SBFLegacyWallpaperWakeAnimator_updateWakeEffectsForWake_animated_completion___block_invoke_2;
    v33[3] = &unk_1E807F290;
    v34 = v20;
    v35 = v32;
    v26 = v32;
    [v25 animateWithFactory:v24 options:4 actions:v33 completion:v21];

LABEL_15:
    goto LABEL_16;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }

LABEL_16:
}

uint64_t __79__SBFLegacyWallpaperWakeAnimator_updateWakeEffectsForWake_animated_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) wakeState] == *(a1 + 64))
  {
    if ([*(a1 + 40) count])
    {
      [*(a1 + 48) setBackgroundEffects:*(a1 + 40)];
    }

    else
    {
      [*(a1 + 48) setHidden:{objc_msgSend(*(a1 + 32), "_shouldHideWakeEffectViewAfterUpdate")}];
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (int64_t)_targetWakeStateForFadeIn:(BOOL)in
{
  if (in)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)_wakeEffectsForAnimatingWakeState:(int64_t)state
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = +[SBFWakeAnimationDomain rootSettings];
  v5 = v4;
  switch(state)
  {
    case 0:
      v8 = MEMORY[0x1E695E0F0];
      goto LABEL_10;
    case 2:
      v6 = MEMORY[0x1E69DC898];
      [v4 awakeColorBrightness];
      break;
    case 1:
      v6 = MEMORY[0x1E69DC898];
      [v4 sleepColorBrightness];
      break;
    default:
      v7 = 0;
      goto LABEL_9;
  }

  v7 = [v6 colorEffectBrightness:?];
LABEL_9:
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

LABEL_10:

  return v8;
}

- (id)_wakeEffectsForPersistentWakeState:(int64_t)state
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = +[SBFWakeAnimationDomain rootSettings];
  v5 = v4;
  if (state == 1 && (v6 = MEMORY[0x1E69DC898], [v4 sleepColorBrightness], objc_msgSend(v6, "colorEffectBrightness:"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v11[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (BOOL)_shouldHideWakeEffectViewAfterUpdate
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (UIVisualEffectView)wakeEffectView
{
  WeakRetained = objc_loadWeakRetained(&self->_wakeEffectView);

  return WeakRetained;
}

@end