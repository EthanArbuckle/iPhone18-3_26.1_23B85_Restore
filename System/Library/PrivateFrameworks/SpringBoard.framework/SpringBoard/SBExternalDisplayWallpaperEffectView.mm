@interface SBExternalDisplayWallpaperEffectView
- (BOOL)enableBlurEffects;
- (SBExternalDisplayWallpaperConfigurations)delegate;
- (id)initExternalDisplayWithDelegate:(id)delegate wallpaperVariant:(int64_t)variant transformOptions:(unint64_t)options;
@end

@implementation SBExternalDisplayWallpaperEffectView

- (id)initExternalDisplayWithDelegate:(id)delegate wallpaperVariant:(int64_t)variant transformOptions:(unint64_t)options
{
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = SBExternalDisplayWallpaperEffectView;
  v9 = [(SBExternalDisplayWallpaperEffectView *)&v19 init];
  p_isa = &v9->super.super.super.isa;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v11 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:variant transformOptions:options];
    v12 = p_isa[53];
    p_isa[53] = v11;

    [p_isa[53] setClipsToBounds:1];
    [p_isa[53] setForcesOpaque:1];
    v13 = p_isa[53];
    defaultConfiguration = [MEMORY[0x277D37C58] defaultConfiguration];
    [v13 setExternalDisplayConfiguration:defaultConfiguration];

    [p_isa[53] setStyle:0];
    [p_isa[53] setFullscreen:1];
    [p_isa[53] setTranslatesAutoresizingMaskIntoConstraints:0];
    [p_isa addSubview:p_isa[53]];
    v15 = SBHPinViewWithinView();
    if ([p_isa enableBlurEffects])
    {
      v16 = [MEMORY[0x277D26718] materialViewWithRecipe:51 options:2 initialWeighting:1.0];
      [v16 setGroupNameBase:@"SBExternalDisplayWallpaperEffectView"];
      [v16 setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:1];
      [v16 bs_setHitTestingDisabled:1];
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      [p_isa addSubview:v16];
      v17 = SBHPinViewWithinView();
    }
  }

  return p_isa;
}

- (BOOL)enableBlurEffects
{
  delegate = [(SBExternalDisplayWallpaperEffectView *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    enableBlurEffects = [delegate enableBlurEffects];
  }

  else
  {
    enableBlurEffects = 0;
  }

  return enableBlurEffects;
}

- (SBExternalDisplayWallpaperConfigurations)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end