@interface _UIHDRUsageCoordinator
+ (id)convertDynamicRange:(uint64_t)range;
+ (id)sharedInstance;
+ (uint64_t)useCALayerDynamicRange;
- (char)traitCollectionSuppressingHDR:(char *)r;
- (id)_init;
- (id)animationForHDRHeadroomUsage:(void *)usage layer:;
- (uint64_t)rangeForHeadroom:(uint64_t)headroom;
- (void)applyConstrainedHDROverrideToView:(uint64_t)view;
- (void)applyRangeForHeadroom:(double)headroom toMutableTraits:;
- (void)enableHDRSuppression:(void *)suppression inViewHierarchy:;
- (void)prepareSceneForLowPowerModeChange:(uint64_t)change;
- (void)registerForAndApplyHDRAnimationToView:(uint64_t)view;
- (void)registerForDefaultDynamicRangeChanges:(uint64_t)changes;
- (void)unregisterForDefaultDynamicRangeChanges:(uint64_t)changes;
@end

@implementation _UIHDRUsageCoordinator

+ (uint64_t)useCALayerDynamicRange
{
  objc_opt_self();
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_UseLayerPreferredDynamicRange, _UIInternalPreferencesRevisionVar == _UIInternalPreference_UseLayerPreferredDynamicRange))
  {
    v1 = 1;
  }

  else
  {
    do
    {
      v1 = v0 >= v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_UseLayerPreferredDynamicRange, @"UseLayerPreferredDynamicRange", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_UseLayerPreferredDynamicRange;
    }

    while (v0 != _UIInternalPreference_UseLayerPreferredDynamicRange);
  }

  return byte_1ED48B19C || v1;
}

+ (id)sharedInstance
{
  objc_opt_self();
  objc_opt_self();
  if (dyld_program_sdk_at_least() && qword_1ED49E578 != -1)
  {
    dispatch_once(&qword_1ED49E578, &__block_literal_global_294);
  }

  v0 = qword_1ED49E570;

  return v0;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _UIHDRUsageCoordinator;
  return [(_UIHDRUsageCoordinator *)&v3 init];
}

+ (id)convertDynamicRange:(uint64_t)range
{
  objc_opt_self();
  v3 = MEMORY[0x1E69792A0];
  v4 = MEMORY[0x1E6979298];
  if (a2 != 1)
  {
    v4 = MEMORY[0x1E69792A8];
  }

  if (a2 != 2)
  {
    v3 = v4;
  }

  v5 = *v3;

  return v5;
}

- (uint64_t)rangeForHeadroom:(uint64_t)headroom
{
  result = 0;
  if (headroom)
  {
    if (a2 > 2.0)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      v5 = ~[processInfo isLowPowerModeEnabled];

      return v5 & 1;
    }
  }

  return result;
}

- (void)applyRangeForHeadroom:(double)headroom toMutableTraits:
{
  if (self)
  {
    v5 = a2;
    v6 = [(_UIHDRUsageCoordinator *)self rangeForHeadroom:headroom];
    v7 = objc_opt_self();
    [v5 setNSIntegerValue:v6 forTrait:v7];
  }
}

- (void)registerForDefaultDynamicRangeChanges:(uint64_t)changes
{
  v3 = a2;
  v4 = v3;
  if (changes && v3)
  {
    v5 = objc_getAssociatedObject(v3, &_UIHDRUsageCoordinatorDefaultDynamicRangeRegistrationKey);
    if (!v5)
    {
      objc_initWeak(&location, v4);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
      v8 = *MEMORY[0x1E696A7D8];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __64___UIHDRUsageCoordinator_registerForDefaultDynamicRangeChanges___block_invoke;
      v10[3] = &unk_1E70F3D28;
      objc_copyWeak(&v11, &location);
      v9 = [defaultCenter addObserverForName:v8 object:0 queue:mainQueue usingBlock:v10];

      objc_setAssociatedObject(v4, &_UIHDRUsageCoordinatorDefaultDynamicRangeRegistrationKey, v9, 0x301);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

- (void)applyConstrainedHDROverrideToView:(uint64_t)view
{
  if (view)
  {
    v3 = a2;
    _screen = [v3 _screen];
    [_screen potentialEDRHeadroom];
    v5 = [(_UIHDRUsageCoordinator *)view rangeForHeadroom:v4];
    _internalTraitOverrides = [(UIView *)v3 _internalTraitOverrides];

    [_internalTraitOverrides setImageDynamicRange:v5];
  }
}

- (void)unregisterForDefaultDynamicRangeChanges:(uint64_t)changes
{
  v3 = a2;
  if (changes && v3)
  {
    object = v3;
    v4 = objc_getAssociatedObject(v3, &_UIHDRUsageCoordinatorDefaultDynamicRangeRegistrationKey);
    if (v4)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:v4 name:*MEMORY[0x1E696A7D8] object:0];

      objc_setAssociatedObject(object, &_UIHDRUsageCoordinatorDefaultDynamicRangeRegistrationKey, 0, 0x301);
    }

    v3 = object;
  }
}

- (void)registerForAndApplyHDRAnimationToView:(uint64_t)view
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (view)
  {
    v4 = objc_opt_self();
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v6 = [v3 registerForTraitChanges:v5 withHandler:&__block_literal_global_10_7];
  }
}

- (id)animationForHDRHeadroomUsage:(void *)usage layer:
{
  usageCopy = usage;
  if (self)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    if ([processInfo isLowPowerModeEnabled])
    {
    }

    else
    {
      wantsExtendedDynamicRangeContent = [usageCopy wantsExtendedDynamicRangeContent];

      if (wantsExtendedDynamicRangeContent)
      {
        v8 = a2 ? 1.0 : 0.0;
        v9 = _HDRInitialEDRStrength(usageCopy);
        v10 = _HDRAnimationDuration(v9, v8);
        if (v10 > 0.00833333333)
        {
          v11 = _HDRSpringAnimation(v10, v9);
          goto LABEL_11;
        }
      }
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)enableHDRSuppression:(void *)suppression inViewHierarchy:
{
  suppressionCopy = suppression;
  if (self)
  {
    v9 = suppressionCopy;
    shouldSuppressHDR = _shouldSuppressHDR(a2);
    _internalTraitOverrides = [(UIView *)v9 _internalTraitOverrides];
    v8 = objc_opt_self();
    if (shouldSuppressHDR)
    {
      [_internalTraitOverrides setNSIntegerValue:0 forTrait:v8];
    }

    else
    {
      [_internalTraitOverrides removeTrait:v8];
    }

    suppressionCopy = v9;
  }
}

- (char)traitCollectionSuppressingHDR:(char *)r
{
  if (r)
  {
    rCopy = r;
    if (_shouldSuppressHDR(a2))
    {
      v6 = *(rCopy + 2);
      v5 = (rCopy + 16);
      v4 = v6;
      if (!v6)
      {
        v7 = [UITraitCollection traitCollectionWithTraits:&__block_literal_global_15_5];
LABEL_7:
        v9 = *v5;
        *v5 = v7;

        v4 = *v5;
      }
    }

    else
    {
      v8 = *(rCopy + 1);
      v5 = (rCopy + 8);
      v4 = v8;
      if (!v8)
      {
        v7 = [UITraitCollection _traitCollectionWithHeadroomUsage:1];
        goto LABEL_7;
      }
    }

    r = v4;
    v2 = vars8;
  }

  return r;
}

- (void)prepareSceneForLowPowerModeChange:(uint64_t)change
{
  if (change)
  {
    screen = [a2 screen];
    traitCollection = [screen traitCollection];
    imageDynamicRange = [traitCollection imageDynamicRange];

    [screen potentialEDRHeadroom];
    if (imageDynamicRange != [(_UIHDRUsageCoordinator *)change rangeForHeadroom:v5])
    {
      [screen _updateTraits];
    }
  }
}

@end