@interface AllBackdropViews
@end

@implementation AllBackdropViews

void ___AllBackdropViews_block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v1 = qword_1ED49AF78;
  qword_1ED49AF78 = v0;

  _MergedGlobals_69 = _AXSEnhanceBackgroundContrastEnabled() != 0;
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:objc_opt_class() selector:sel_adjustGraphicsQualityForAccessibilityIfNeeded_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
  [v2 addObserver:objc_opt_class() selector:sel_adjustGraphicsQualityForAccessibilityIfNeeded_ name:@"UIAccessibilityReduceTransparencyStatusDidChangeNotification" object:0];
}

@end