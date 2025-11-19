@interface SBExternalDisplayWallpaperEffectView
- (BOOL)enableBlurEffects;
- (SBExternalDisplayWallpaperConfigurations)delegate;
- (id)initExternalDisplayWithDelegate:(id)a3 wallpaperVariant:(int64_t)a4 transformOptions:(unint64_t)a5;
@end

@implementation SBExternalDisplayWallpaperEffectView

- (id)initExternalDisplayWithDelegate:(id)a3 wallpaperVariant:(int64_t)a4 transformOptions:(unint64_t)a5
{
  v8 = a3;
  v19.receiver = self;
  v19.super_class = SBExternalDisplayWallpaperEffectView;
  v9 = [(SBExternalDisplayWallpaperEffectView *)&v19 init];
  p_isa = &v9->super.super.super.isa;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    v11 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:a4 transformOptions:a5];
    v12 = p_isa[53];
    p_isa[53] = v11;

    [p_isa[53] setClipsToBounds:1];
    [p_isa[53] setForcesOpaque:1];
    v13 = p_isa[53];
    v14 = [MEMORY[0x277D37C58] defaultConfiguration];
    [v13 setExternalDisplayConfiguration:v14];

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
  v2 = [(SBExternalDisplayWallpaperEffectView *)self delegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 enableBlurEffects];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SBExternalDisplayWallpaperConfigurations)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end