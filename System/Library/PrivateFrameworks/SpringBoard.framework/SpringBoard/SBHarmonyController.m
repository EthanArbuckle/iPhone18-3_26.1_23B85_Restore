@interface SBHarmonyController
+ (id)sharedInstance;
- (BOOL)isWhitePointAdaptationEnabled;
- (SBHarmonyController)init;
- (SBHarmonySettings)harmonySettings;
- (float)whitePointAdaptationStrengthForWhitePointAdaptivityStyle:(int64_t)a3;
- (int64_t)whitePointAdaptivityStyle;
- (void)setWhitePointAdaptationEnabled:(BOOL)a3;
- (void)setWhitePointAdaptationStrength:(float)a3 forWhitePointAdaptivityStyle:(int64_t)a4;
- (void)setWhitePointAdaptivityStyle:(int64_t)a3 animationSettings:(id)a4;
- (void)setWhitePointAdaptivityStyleWithStyles:(id)a3 animationSettings:(id)a4;
- (void)transitionFromWhitePointAdaptivityStyleWithStyles:(id)a3 toWhitePointAdaptivityStyleWithStyles:(id)a4 fromPercentage:(double)a5 toPercentage:(double)a6 animationSettings:(id)a7;
@end

@implementation SBHarmonyController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_27 != -1)
  {
    +[SBHarmonyController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_15;

  return v3;
}

- (SBHarmonySettings)harmonySettings
{
  harmonySettings = self->_harmonySettings;
  if (!harmonySettings)
  {
    v4 = [(PTSettings *)[SBHarmonySettings alloc] initWithDefaultValues];
    v5 = self->_harmonySettings;
    self->_harmonySettings = v4;

    harmonySettings = self->_harmonySettings;
  }

  return harmonySettings;
}

void __37__SBHarmonyController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBHarmonyController);
  v1 = sharedInstance___sharedInstance_15;
  sharedInstance___sharedInstance_15 = v0;
}

- (SBHarmonyController)init
{
  v7.receiver = self;
  v7.super_class = SBHarmonyController;
  v2 = [(SBHarmonyController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CFD3A8]);
    client = v2->_client;
    v2->_client = v3;

    v2->_supportsWhitePointAdaptation = [MEMORY[0x277CFD398] supportsAdaptation];
    v2->_supportsBlueLightReduction = [MEMORY[0x277CFD3A0] supportsBlueLightReduction];
    v5.f64[0] = NAN;
    v5.f64[1] = NAN;
    *&v2->_suppressedWhitePointAdaptationEnabled = vnegq_f64(v5);
  }

  return v2;
}

- (BOOL)isWhitePointAdaptationEnabled
{
  v3 = [(SBHarmonyController *)self supportsWhitePointAdaptation];
  if (v3)
  {
    v4 = [(SBHarmonyController *)self _adaptationClient];
    v5 = [v4 getEnabled];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)setWhitePointAdaptationEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(SBHarmonyController *)self supportsWhitePointAdaptation])
  {
    v5 = [(SBHarmonyController *)self _adaptationClient];
    [v5 setEnabled:v3];
  }
}

- (int64_t)whitePointAdaptivityStyle
{
  if (![(SBHarmonyController *)self supportsWhitePointAdaptation])
  {
    return -1;
  }

  v3 = [(SBHarmonyController *)self _adaptationClient];
  v4 = SBWhitePointAdaptivityStyleForAdaptationMode([v3 getAdaptationMode]);

  return v4;
}

- (void)setWhitePointAdaptivityStyle:(int64_t)a3 animationSettings:(id)a4
{
  v6 = a4;
  if ([(SBHarmonyController *)self supportsWhitePointAdaptation])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__SBHarmonyController_setWhitePointAdaptivityStyle_animationSettings___block_invoke;
    v13[3] = &unk_2783AB2A8;
    v13[4] = self;
    v15 = a3;
    v7 = v6;
    v14 = v7;
    v8 = MEMORY[0x223D6F7F0](v13);
    [v7 delay];
    if (v9 <= 0.0)
    {
      v8[2](v8);
    }

    else
    {
      v10 = dispatch_time(0, (v9 * 1000000000.0));
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __70__SBHarmonyController_setWhitePointAdaptivityStyle_animationSettings___block_invoke_2;
      v11[3] = &unk_2783A9348;
      v12 = v8;
      dispatch_after(v10, MEMORY[0x277D85CD0], v11);
    }
  }
}

void __70__SBHarmonyController_setWhitePointAdaptivityStyle_animationSettings___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _adaptationClient];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v3 < 5)
  {
    v4 = (v3 + 1);
  }

  else
  {
    v4 = 0;
  }

  [v2 duration];
  *&v5 = v5;
  [v6 setAdaptationMode:v4 withPeriod:v5];
}

- (void)setWhitePointAdaptivityStyleWithStyles:(id)a3 animationSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SBHarmonyController *)self supportsWhitePointAdaptation])
  {
    v8 = [v6 count];
    if (v8)
    {
      v9 = v8;
      if (v8 == 1)
      {
        v10 = [v6 firstObject];
        -[SBHarmonyController setWhitePointAdaptivityStyle:animationSettings:](self, "setWhitePointAdaptivityStyle:animationSettings:", [v10 integerValue], v7);
      }

      else
      {
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v11 = 0;
        v28 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
        do
        {
          v12 = [v6 objectAtIndexedSubscript:v11];
          v13 = [v12 integerValue];
          if (v13 < 5)
          {
            v14 = v13 + 1;
          }

          else
          {
            v14 = 0;
          }

          *(v26[3] + 4 * v11) = v14;

          ++v11;
        }

        while (v9 != v11);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __80__SBHarmonyController_setWhitePointAdaptivityStyleWithStyles_animationSettings___block_invoke;
        v21[3] = &unk_2783B7738;
        v21[4] = self;
        v23 = &v25;
        v24 = v9;
        v15 = v7;
        v22 = v15;
        v16 = MEMORY[0x223D6F7F0](v21);
        [v15 delay];
        if (v17 <= 0.0)
        {
          v16[2](v16);
        }

        else
        {
          v18 = dispatch_time(0, (v17 * 1000000000.0));
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __80__SBHarmonyController_setWhitePointAdaptivityStyleWithStyles_animationSettings___block_invoke_2;
          block[3] = &unk_2783A9348;
          v20 = v16;
          dispatch_after(v18, MEMORY[0x277D85CD0], block);
        }

        _Block_object_dispose(&v25, 8);
      }
    }
  }
}

void __80__SBHarmonyController_setWhitePointAdaptivityStyleWithStyles_animationSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _adaptationClient];
  v3 = *(*(*(a1 + 48) + 8) + 24);
  v4 = *(a1 + 56);
  [*(a1 + 40) duration];
  *&v5 = v5;
  [v2 setWeakestAdaptationModeFromArray:v3 withLength:v4 andPeriod:v5];

  free(*(*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 48) + 8) + 24) = 0;
}

- (void)transitionFromWhitePointAdaptivityStyleWithStyles:(id)a3 toWhitePointAdaptivityStyleWithStyles:(id)a4 fromPercentage:(double)a5 toPercentage:(double)a6 animationSettings:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  if ([(SBHarmonyController *)self supportsWhitePointAdaptation])
  {
    v14 = [v11 count];
    v15 = [v12 count];
    if (v14 | v15)
    {
      v16 = v15;
      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v43 = 0;
      if (v14)
      {
        v17 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
        v18 = 0;
        v45[3] = v17;
        do
        {
          v19 = [v11 objectAtIndexedSubscript:v18];
          v20 = [v19 integerValue];
          if (v20 < 5)
          {
            v21 = v20 + 1;
          }

          else
          {
            v21 = 0;
          }

          *(v45[3] + 4 * v18) = v21;

          ++v18;
        }

        while (v14 != v18);
      }

      if (v16)
      {
        v22 = malloc_type_malloc(4 * v16, 0x100004052888210uLL);
        v23 = 0;
        v41[3] = v22;
        do
        {
          v24 = [v12 objectAtIndexedSubscript:v23];
          v25 = [v24 integerValue];
          if (v25 < 5)
          {
            v26 = v25 + 1;
          }

          else
          {
            v26 = 0;
          }

          *(v41[3] + 4 * v23) = v26;

          ++v23;
        }

        while (v16 != v23);
      }

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __157__SBHarmonyController_transitionFromWhitePointAdaptivityStyleWithStyles_toWhitePointAdaptivityStyleWithStyles_fromPercentage_toPercentage_animationSettings___block_invoke;
      v33[3] = &unk_2783B7760;
      v33[4] = self;
      v35 = &v44;
      v36 = &v40;
      v37 = v14;
      v38 = v16;
      v39 = a6;
      v27 = v13;
      v34 = v27;
      v28 = MEMORY[0x223D6F7F0](v33);
      [v27 delay];
      if (v29 <= 0.0)
      {
        v28[2](v28);
      }

      else
      {
        v30 = dispatch_time(0, (v29 * 1000000000.0));
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __157__SBHarmonyController_transitionFromWhitePointAdaptivityStyleWithStyles_toWhitePointAdaptivityStyleWithStyles_fromPercentage_toPercentage_animationSettings___block_invoke_2;
        v31[3] = &unk_2783A9348;
        v32 = v28;
        dispatch_after(v30, MEMORY[0x277D85CD0], v31);
      }

      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v44, 8);
    }
  }
}

void __157__SBHarmonyController_transitionFromWhitePointAdaptivityStyleWithStyles_toWhitePointAdaptivityStyleWithStyles_fromPercentage_toPercentage_animationSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _adaptationClient];
  v3 = *(*(*(a1 + 48) + 8) + 24);
  v4 = *(a1 + 64);
  v5 = *(*(*(a1 + 56) + 8) + 24);
  v6 = *(a1 + 72);
  updated = SBSampleValueWithWhitePointAdaptationInteractiveUpdateTimingFunction(*(a1 + 80));
  [*(a1 + 40) duration];
  *&v9 = v8;
  *&v8 = updated;
  [v2 animateFromWeakestAdaptationModeInArray:v3 withLength:v4 toWeakestInArray:v5 withLength:v6 withProgress:v8 andPeriod:v9];

  if (*(a1 + 64))
  {
    free(*(*(*(a1 + 48) + 8) + 24));
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  if (*(a1 + 72))
  {
    free(*(*(*(a1 + 56) + 8) + 24));
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

- (float)whitePointAdaptationStrengthForWhitePointAdaptivityStyle:(int64_t)a3
{
  *(&v14 + 1) = *MEMORY[0x277D85DE8];
  if (![(SBHarmonyController *)self supportsWhitePointAdaptation])
  {
    return NAN;
  }

  v5 = [(SBHarmonyController *)self _adaptationClient];
  v6 = [v5 getStrengths:v11 nStrengths:6];

  if (!v6)
  {
    return NAN;
  }

  v7 = &v14 + 1;
  v8 = &v12;
  if (a3 != 4)
  {
    v7 = v11;
  }

  if (a3 == 3)
  {
    v7 = &v14;
  }

  if (a3 == 2)
  {
    v7 = &v13 + 1;
  }

  if (a3 == 1)
  {
    v9 = &v13;
  }

  else
  {
    v9 = v11;
  }

  if (a3)
  {
    v8 = v9;
  }

  if (a3 > 1)
  {
    v8 = v7;
  }

  return *v8;
}

- (void)setWhitePointAdaptationStrength:(float)a3 forWhitePointAdaptivityStyle:(int64_t)a4
{
  v9 = a3;
  if ([(SBHarmonyController *)self supportsWhitePointAdaptation])
  {
    if (a4 < 5)
    {
      v6 = a4 + 1;
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;
    v7 = [(SBHarmonyController *)self _adaptationClient];
    [v7 overrideStrengths:&v9 forModes:&v8 nModes:1];
  }
}

@end