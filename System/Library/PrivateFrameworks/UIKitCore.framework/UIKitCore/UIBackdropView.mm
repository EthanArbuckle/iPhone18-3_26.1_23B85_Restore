@interface UIBackdropView
@end

@implementation UIBackdropView

void __35___UIBackdropView_allBackdropViews__block_invoke(uint64_t a1)
{
  v5 = _AllBackdropViews();
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __50___UIBackdropView_prepareForTransitionToSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inputSettings];
  if (v2)
  {
    v3 = [*(a1 + 32) inputSettings];
    v4 = v3[76];
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) setInputSettings:*(a1 + 40)];
  v5 = +[_UIBackdropViewSettings settingsForStyle:](_UIBackdropViewSettings, "settingsForStyle:", [*(a1 + 40) style]);
  [*(a1 + 32) setOutputSettings:v5];

  v6 = [*(a1 + 32) outputSettings];
  [v6 copyAdditionalSettingsFromSettings:*(a1 + 40)];

  *(*(a1 + 32) + 435) = (v4 | *(*(*(a1 + 32) + 480) + 76)) & 1;
  v7 = *(a1 + 32);
  v8 = [v7 inputSettings];
  [v7 updateSubviewHierarchyIfNeededForSettings:v8];

  v9 = [*(a1 + 32) inputSettings];
  LODWORD(v8) = [v9 isBackdropVisible];

  if (v8)
  {
    [*(a1 + 32) setBackdropVisible:1];
  }

  v10 = *(a1 + 32);
  if (*(v10 + 435) == 1)
  {
    v11 = [*(v10 + 504) backdropLayer];
    [v11 setShouldRasterize:1];

    v12 = [*(*(a1 + 32) + 504) backdropLayer];
    [v12 setScale:0.5];
LABEL_11:

    goto LABEL_12;
  }

  if ((*(a1 + 48) & 1) != 0 || *(a1 + 49) == 1)
  {
    v12 = [v10 backdropEffectView];
    v13 = [v12 backdropLayer];
    [v13 setScale:1.0];

    goto LABEL_11;
  }

LABEL_12:
  v14 = [*(a1 + 40) style];
  v15 = *(a1 + 32);

  return [v15 setStyle:v14];
}

void __52___UIBackdropView_adjustTintImplementationIfNeeded___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 49) == 1)
    {
      [*(a1 + 32) setTintFilter:0];
      [*(a1 + 32) _updateFilters];
      v2 = [*(a1 + 32) grayscaleTintView];
      [v2 setHidden:0];

      v3 = [*(a1 + 32) colorTintView];
      [v3 setHidden:0];

      v4 = [*(a1 + 40) isBackdropVisible];
      v5 = *(a1 + 32);

      [v5 setBackdropVisible:v4];
    }
  }

  else if (*(a1 + 50) == 1 && (*(a1 + 49) & 1) == 0)
  {
    [*(a1 + 32) setBackdropVisible:1];
    [*(a1 + 32) setTintFilterForSettings:*(a1 + 40)];
    *(*(a1 + 32) + 816) = 0xBFF0000000000000;
    v6 = *(a1 + 32);
    [*(a1 + 40) blurRadius];
    v8 = v7;
    v9 = [*(a1 + 40) blurQuality];
    [v6 setBlurFilterWithRadius:v9 blurQuality:v8];

    *(*(a1 + 32) + 824) = 0xC059000000000000;
    v10 = *(a1 + 32);
    [*(a1 + 40) saturationDeltaFactor];
    [v10 setSaturationDeltaFactor:?];
    v11 = [*(a1 + 32) grayscaleTintView];
    [v11 setHidden:1];

    v12 = [*(a1 + 32) colorTintView];
    [v12 setHidden:1];
  }
}

uint64_t __55___UIBackdropView_computeAndApplySettingsForTransition__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) transitionComplete];
  }

  return result;
}

void __53___UIBackdropView_applySettingsWithBuiltInAnimation___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 outputSettings];
  [v1 adjustTintImplementationIfNeeded:v2];
}

uint64_t __33___UIBackdropView_applySettings___block_invoke(double *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33___UIBackdropView_applySettings___block_invoke_2;
  v4[3] = &unk_1E70F3590;
  *&v4[4] = a1[4];
  return [UIView addKeyframeWithRelativeStartTime:v4 relativeDuration:v1 animations:v2];
}

void __33___UIBackdropView_applySettings___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) backdropEffectView];
  [v1 setAlpha:1.0];
}

uint64_t __33___UIBackdropView_applySettings___block_invoke_3(uint64_t a1)
{
  v1 = 1.0 - *(a1 + 40) - *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33___UIBackdropView_applySettings___block_invoke_4;
  v3[3] = &unk_1E70F3590;
  v3[4] = *(a1 + 32);
  return [UIView addKeyframeWithRelativeStartTime:v3 relativeDuration:v1 animations:?];
}

void __33___UIBackdropView_applySettings___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) backdropEffectView];
  [v1 setAlpha:0.0];
}

void __33___UIBackdropView_applySettings___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) backdropEffectView];
  [v1 setAlpha:1.0];
}

uint64_t __33___UIBackdropView_applySettings___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) backdropEffectView];
  [v2 setAlpha:1.0];

  [*(a1 + 32) setBackdropVisible:{objc_msgSend(*(a1 + 40), "isBackdropVisible")}];
  v3 = *(a1 + 32);

  return [v3 _applyCornerRadiusToSubviews];
}

@end