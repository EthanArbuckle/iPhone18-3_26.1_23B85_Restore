@interface UIHDRUsageCoordinator
@end

@implementation UIHDRUsageCoordinator

void __40___UIHDRUsageCoordinator_sharedInstance__block_invoke()
{
  v0 = [[_UIHDRUsageCoordinator alloc] _init];
  v1 = qword_1ED49E570;
  qword_1ED49E570 = v0;
}

void __64___UIHDRUsageCoordinator_registerForDefaultDynamicRangeChanges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = +[_UIHDRUsageCoordinator sharedInstance];
    [(_UIHDRUsageCoordinator *)v2 applyConstrainedHDROverrideToView:v3];

    WeakRetained = v3;
  }
}

void __64___UIHDRUsageCoordinator_registerForAndApplyHDRAnimationToView___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v12 = +[_UIHDRUsageCoordinator sharedInstance];
  v3 = v2;
  if (v12)
  {
    v4 = [v3 layer];
    if ([v4 wantsExtendedDynamicRangeContent])
    {
      v5 = [v3 traitCollection];
      if ([v5 _headroomUsage])
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.0;
      }

      v7 = _HDRInitialEDRStrength(v4);
      v8 = [MEMORY[0x1E696AE30] processInfo];
      v9 = [v8 isLowPowerModeEnabled];

      if (v9)
      {
        [v4 setContentsEDRStrength:v6];
LABEL_10:
        [v4 removeAnimationForKey:@"contentsEDRStrength"];
        goto LABEL_11;
      }

      v10 = _HDRAnimationDuration(v7, v6);
      [v4 setContentsEDRStrength:v6];
      if (v10 <= 0.00833333333)
      {
        goto LABEL_10;
      }

      v11 = _HDRSpringAnimation(v10, v7);
      [v4 addAnimation:v11 forKey:@"contentsEDRStrength"];
    }

LABEL_11:
  }
}

void __56___UIHDRUsageCoordinator_traitCollectionSuppressingHDR___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  [v2 setCGFloatValue:v3 forTrait:1.0];

  v4 = objc_opt_self();
  [v2 setNSIntegerValue:0 forTrait:v4];
}

@end