@interface SBVolumeButtonEventMapper
+ (BOOL)isVolumeButtonRemappingSupported;
+ (BOOL)shouldInvertVolumeButtonsOnEdge:(unint64_t)a3 forInterfaceOrientation:(int64_t)a4 userInterfaceLayoutDirection:(int64_t)a5;
- (BOOL)isVolumeButtonEventInvertible:(id)a3 withPressType:(int64_t)a4;
- (BOOL)shouldInvertVolumeButtonsForEvent:(id)a3 withPressType:(int64_t)a4;
- (SBVolumeButtonEventMapper)init;
- (int64_t)effectiveInterfaceOrientation;
- (void)_hardwareDefaultsChanged;
- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)a3 willAnimateWithDuration:(double)a4 fromOrientation:(int64_t)a5;
- (void)dealloc;
- (void)setVolumeButtonRemappingEnabled:(BOOL)a3;
@end

@implementation SBVolumeButtonEventMapper

- (SBVolumeButtonEventMapper)init
{
  v18.receiver = self;
  v18.super_class = SBVolumeButtonEventMapper;
  v2 = [(SBVolumeButtonEventMapper *)&v18 init];
  if (v2)
  {
    v3 = SBHScreenTypeForCurrentDevice();
    v4 = 8;
    if (v3 == 105)
    {
      v4 = 1;
    }

    v2->_effectiveInterfaceOrientation = 0;
    v2->_buttonsEdge = v4;
    v2->_layoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    v5 = +[SBDefaults localDefaults];
    v6 = [v5 hardwareDefaults];

    objc_initWeak(&location, v2);
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableNaturalVolumeButtonOrientation"];
    v8 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __33__SBVolumeButtonEventMapper_init__block_invoke;
    v15 = &unk_2783A8C68;
    objc_copyWeak(&v16, &location);
    v10 = [v6 observeDefault:v7 onQueue:v8 withBlock:&v12];

    [(SBVolumeButtonEventMapper *)v2 _hardwareDefaultsChanged:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __33__SBVolumeButtonEventMapper_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hardwareDefaultsChanged];
}

- (void)dealloc
{
  [(SBVolumeButtonEventMapper *)self setVolumeButtonRemappingEnabled:0];
  v3.receiver = self;
  v3.super_class = SBVolumeButtonEventMapper;
  [(SBVolumeButtonEventMapper *)&v3 dealloc];
}

+ (BOOL)isVolumeButtonRemappingSupported
{
  if (__sb__runningInSpringBoard())
  {
    return SBFEffectiveDeviceClass() == 2;
  }

  v3 = [MEMORY[0x277D75418] currentDevice];
  v2 = [v3 userInterfaceIdiom] == 1;

  return v2;
}

+ (BOOL)shouldInvertVolumeButtonsOnEdge:(unint64_t)a3 forInterfaceOrientation:(int64_t)a4 userInterfaceLayoutDirection:(int64_t)a5
{
  if (a3 == 8)
  {
    if (a5 == 1)
    {
      return [a1 _shouldInvertVolumeButtonsForRTLRightEdgePadInInterfaceOrientation:a4];
    }

    else
    {
      return [a1 _shouldInvertVolumeButtonsForLTRRightEdgePadInInterfaceOrientation:a4];
    }
  }

  else if (a3 == 1)
  {
    if (a5 == 1)
    {
      return [a1 _shouldInvertVolumeButtonsForRTLTopEdgePadInInterfaceOrientation:a4];
    }

    else
    {
      return [a1 _shouldInvertVolumeButtonsForLTRTopEdgePadInInterfaceOrientation:a4];
    }
  }

  else
  {
    return 0;
  }
}

- (BOOL)isVolumeButtonEventInvertible:(id)a3 withPressType:(int64_t)a4
{
  v4 = 0;
  v16 = *MEMORY[0x277D85DE8];
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 0x66 && self->_volumeButtonRemappingEnabled)
  {
    v5 = [a3 _hidEvent];
    if ((IOHIDEventGetIntegerValue() - 233) > 1)
    {
      return 0;
    }

    else
    {
      Type = IOHIDEventGetType();
      v4 = 0;
      if (v5 && Type == 3)
      {
        v7 = BKSHIDEventGetBaseAttributes();
        if ([v7 source])
        {
          v8 = SBLogButtonsVolume();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v9 = NSStringFromBKSHIDEventSource();
            v14 = 138543362;
            v15 = v9;
            _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "will not remap presses from source: %{public}@", &v14, 0xCu);
          }

          v4 = 0;
        }

        else
        {
          SenderID = IOHIDEventGetSenderID();
          v11 = SBHIDIsAccessibilitySenderID(SenderID);
          if (v11)
          {
            v12 = SBLogButtonsVolume();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v14 = 134217984;
              v15 = SenderID;
              _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "will not remap presses from accessibility sender: %llX", &v14, 0xCu);
            }
          }

          v4 = v11 ^ 1;
        }
      }
    }
  }

  return v4;
}

- (BOOL)shouldInvertVolumeButtonsForEvent:(id)a3 withPressType:(int64_t)a4
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(SBVolumeButtonEventMapper *)self isVolumeButtonEventInvertible:a3 withPressType:a4])
  {
    v5 = [(SBVolumeButtonEventMapper *)self effectiveInterfaceOrientation];
    layoutDirection = self->_layoutDirection;
    v7 = [objc_opt_class() shouldInvertVolumeButtonsOnEdge:self->_buttonsEdge forInterfaceOrientation:v5 userInterfaceLayoutDirection:layoutDirection];
    v8 = SBLogButtonsVolume();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = BSInterfaceOrientationDescription();
        v11 = v10;
        v12 = self->_buttonsEdge - 1;
        if (v12 > 7)
        {
          v13 = @"(unknown)";
        }

        else
        {
          v13 = off_2783BF060[v12];
        }

        v17 = @"LTR";
        v23 = 138543874;
        v24 = v10;
        v25 = 2114;
        if (layoutDirection == 1)
        {
          v17 = @"RTL";
        }

        v26 = v13;
        v27 = 2114;
        v28 = v17;
        v18 = "we will remap presses in %{public}@ on a device with buttons on the %{public}@ in %{public}@";
        v19 = v9;
        v20 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
        _os_log_impl(&dword_21ED4E000, v19, v20, v18, &v23, 0x20u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = BSInterfaceOrientationDescription();
      v11 = v14;
      v15 = self->_buttonsEdge - 1;
      if (v15 > 7)
      {
        v16 = @"(unknown)";
      }

      else
      {
        v16 = off_2783BF060[v15];
      }

      v21 = @"LTR";
      v23 = 138543874;
      v24 = v14;
      v25 = 2114;
      if (layoutDirection == 1)
      {
        v21 = @"RTL";
      }

      v26 = v16;
      v27 = 2114;
      v28 = v21;
      v18 = "presses in %{public}@ don't need remapping on a device with buttons on the %{public}@ in %{public}@";
      v19 = v9;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    return v7;
  }

  LOBYTE(v7) = 0;
  return v7;
}

- (void)setVolumeButtonRemappingEnabled:(BOOL)a3
{
  if (self->_volumeButtonRemappingEnabled != a3)
  {
    self->_volumeButtonRemappingEnabled = a3;
    if (a3)
    {
      [SBApp addActiveOrientationObserver:self];

      [(SBVolumeButtonEventMapper *)self _resetEffectiveInterfaceOrientation];
    }

    else
    {
      [SBApp removeActiveOrientationObserver:self];
      self->_effectiveInterfaceOrientation = 0;
    }
  }
}

- (int64_t)effectiveInterfaceOrientation
{
  v3 = +[SBBacklightController sharedInstance];
  v4 = [v3 screenIsOn];

  if (v4)
  {
    return self->_effectiveInterfaceOrientation;
  }

  return BKHIDServicesGetNonFlatDeviceOrientation();
}

- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)a3 willAnimateWithDuration:(double)a4 fromOrientation:(int64_t)a5
{
  objc_initWeak(&location, self);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __118__SBVolumeButtonEventMapper_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke;
  v13 = &unk_2783BF040;
  objc_copyWeak(v14, &location);
  v14[1] = a3;
  v14[2] = a5;
  v8 = MEMORY[0x223D6F7F0](&v10);
  v9 = v8;
  if (a4 <= 0.0)
  {
    (*(v8 + 16))(v8, 1);
  }

  else
  {
    [MEMORY[0x277D75D18] animateWithDuration:&__block_literal_global_324 animations:v8 completion:{a4, v10, v11, v12, v13}];
  }

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __118__SBVolumeButtonEventMapper_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained[2];
  if ([WeakRetained isPreventingEffectiveInterfaceOrientationChanges])
  {
    v4 = SBLogButtonsVolume();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = BSInterfaceOrientationDescription();
      v6 = BSInterfaceOrientationDescription();
      v12 = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "effective interface orientation for volume button remapping NOT changing from: %{public}@ to: %{public}@ (it's disabled!)", &v12, 0x16u);
    }

LABEL_9:

    goto LABEL_10;
  }

  WeakRetained[2] = *(a1 + 40);
  v7 = SBLogButtonsVolume();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = BSInterfaceOrientationDescription();
    v9 = BSInterfaceOrientationDescription();
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "effective interface orientation for volume button remapping changing from: %{public}@ to: %{public}@", &v12, 0x16u);
  }

  if (*(a1 + 48) != v3)
  {
    v4 = SBLogButtonsVolume();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = BSInterfaceOrientationDescription();
      v11 = BSInterfaceOrientationDescription();
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "effective interface orientation for volume button remapping - update had a fromOrientation mismatch, got: %{public}@, expected: %{public}@", &v12, 0x16u);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)_hardwareDefaultsChanged
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(SBVolumeButtonEventMapper *)self isVolumeButtonRemappingEnabled];
  v4 = +[SBDefaults localDefaults];
  v5 = [v4 hardwareDefaults];
  -[SBVolumeButtonEventMapper setVolumeButtonRemappingEnabled:](self, "setVolumeButtonRemappingEnabled:", [v5 isNaturalVolumeButtonOrientationEnabled]);

  if (v3 != [(SBVolumeButtonEventMapper *)self isVolumeButtonRemappingEnabled])
  {
    v6 = SBLogButtonsVolume();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_volumeButtonRemappingEnabled)
      {
        v7 = @"enabled";
      }

      else
      {
        v7 = @"disabled";
      }

      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "volume button remapping is now %{public}@", &v8, 0xCu);
    }
  }
}

@end