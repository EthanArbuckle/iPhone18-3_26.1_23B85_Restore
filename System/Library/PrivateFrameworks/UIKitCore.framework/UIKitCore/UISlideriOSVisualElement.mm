@interface UISlideriOSVisualElement
@end

@implementation UISlideriOSVisualElement

void __76___UISlideriOSVisualElement__modernThumbImageWithTraitCollection_tintColor___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _MergedGlobals_19_6;
  _MergedGlobals_19_6 = v0;
}

void __76___UISlideriOSVisualElement__modernThumbImageWithTraitCollection_tintColor___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    *(*(a1[5] + 8) + 24) = [v2 CGColor];
  }

  else
  {
    v3 = +[UIColor whiteColor];
    *(*(a1[5] + 8) + 24) = [v3 CGColor];
  }

  v5 = +[UIColor _controlShadowColor];
  v4 = v5;
  *(*(a1[6] + 8) + 24) = [v5 CGColor];
}

void __76___UISlideriOSVisualElement__modernThumbImageWithTraitCollection_tintColor___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) userInterfaceIdiom];
  v5 = [v3 CGContext];
  v6 = 0;
  if (v4 == 5)
  {
    v7 = 0.0;
    v8 = 1.0;
  }

  else
  {
    v7 = 6.0;
    v8 = 13.0;
  }

  CGContextSetShadowWithColor(v5, *&v6, v8, *(*(*(a1 + 40) + 8) + 24));
  CGContextSetFillColorWithColor([v3 CGContext], *(*(*(a1 + 48) + 8) + 24));
  +[_UISlideriOSVisualElement drawingMetricsForPlatform];
  v9 = [UIBezierPath bezierPathWithOvalInRect:v11, v12, v13, v14];
  [v9 fill];
  CGContextSetStrokeColorWithColor([v3 CGContext], *(*(*(a1 + 40) + 8) + 24));
  if ([*(a1 + 32) userInterfaceIdiom] == 5)
  {
    [v9 stroke];
  }

  else
  {
    v10 = [v3 CGContext];
    v15.width = 0.0;
    v15.height = 0.5;
    CGContextSetShadowWithColor(v10, v15, 4.0, *(*(*(a1 + 40) + 8) + 24));
    [v9 fill];
  }
}

void __54___UISlideriOSVisualElement_drawingMetricsForPlatform__block_invoke()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 31.0;
  v3 = vdup_n_s32(v1 == 5);
  if (v1 == 5)
  {
    v2 = 20.0;
  }

  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5 = vcltzq_s64(vshlq_n_s64(v4, 0x3FuLL));
  __asm { FMOV            V3.2D, #2.0 }

  xmmword_1ED49B210 = vbslq_s8(v5, _Q3, xmmword_18A6806C0);
  v11 = vbslq_s8(v5, xmmword_18A6806E0, xmmword_18A6806D0);
  qword_1ED49B220 = v11.i64[0];
  *algn_1ED49B228 = v11;
  __asm { FMOV            V3.2D, #24.0 }

  *(&xmmword_1ED49B230 + 8) = vbslq_s8(v5, _Q3, xmmword_18A6806F0);
  qword_1ED49B248 = *&v2;
}

void __63___UISlideriOSVisualElement__traitCollectionDidChangeInternal___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    os_variant_has_internal_diagnostics();
    v9 = +[UITraitCollection _currentTraitCollectionIfExists];
    v2 = [v1 traitCollection];
    [UITraitCollection setCurrentTraitCollection:v2];

    v3 = _UISetCurrentFallbackEnvironment(v1);
    v4 = [v1 slider];
    v5 = [v4 minimumTrackTintColor];

    if (v5)
    {
      [v1 _updateMinimumTrackTintColor];
    }

    v6 = [v1 slider];
    v7 = [v6 maximumTrackTintColor];

    if (v7)
    {
      v8 = v1[64];
      v1[64] = 0;

      [v1 _updateMaxTrackColorForInitialization:0];
    }

    [v1 _rebuildControlThumb:1 track:1];
    _UIRestorePreviousFallbackEnvironment(v3);
    [UITraitCollection setCurrentTraitCollection:v9];
    [v1 _layoutSubviewsForBoundsChange:0];
  }
}

void __67___UISlideriOSVisualElement__updateMaxTrackColorForInitialization___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) slider];
  [v2 setMaximumTrackImage:0 forStates:0];

  v3 = [*(a1 + 32) slider];
  [v3 setMaximumTrackImage:0 forStates:7];

  v4 = [*(a1 + 32) traitCollection];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 536));
  [*(a1 + 32) bounds];
  [WeakRetained trackRectForBounds:?];
  v9 = [UIProgressViewModernVisualElement _tintedImageWithTraitCollection:v4 forHeight:*(*(a1 + 32) + 512) andColors:v6];

  LODWORD(v3) = dyld_program_sdk_at_least();
  v7 = [*(a1 + 32) slider];
  v8 = v7;
  if (v3)
  {
    [v7 setMaximumTrackImage:v9 forStates:0];
  }

  else
  {
    [v7 setMaximumTrackImage:v9 forState:0];
  }
}

uint64_t __70___UISlideriOSVisualElement_didChangeMinimumTrackVisibleWithDuration___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 440);
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
  v4 = *(*(a1 + 32) + 432);
  if (*(a1 + 40))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  return [v4 setAlpha:v5];
}

@end