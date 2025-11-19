@interface SKUIStorePagePinnedBackdropDecorationView
- (SKUIStorePagePinnedBackdropDecorationView)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation SKUIStorePagePinnedBackdropDecorationView

- (SKUIStorePagePinnedBackdropDecorationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIStorePagePinnedBackdropDecorationView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v24.receiver = self;
  v24.super_class = SKUIStorePagePinnedBackdropDecorationView;
  v16 = [(SKUIStorePagePinnedBackdropDecorationView *)&v24 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
    backdropView = v16->_backdropView;
    v16->_backdropView = v17;

    [(_UIBackdropView *)v16->_backdropView setAutoresizingMask:18];
    v19 = v16->_backdropView;
    [(SKUIStorePagePinnedBackdropDecorationView *)v16 bounds];
    [(_UIBackdropView *)v19 setFrame:?];
    [(SKUIStorePagePinnedBackdropDecorationView *)v16 addSubview:v16->_backdropView];
    v20 = [MEMORY[0x277D75DF0] settingsForStyle:{-[_UIBackdropView style](v16->_backdropView, "style")}];
    backdropStyleDefaultSettings = v16->_backdropStyleDefaultSettings;
    v16->_backdropStyleDefaultSettings = v20;

    v22 = [MEMORY[0x277D75348] clearColor];
    [(SKUIStorePagePinnedBackdropDecorationView *)v16 setBackgroundColor:v22];
  }

  return v16;
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  [v4 transitionProgress];
  v6 = v5;
  v7 = [v4 hidesBackdropView];
  if (v6 <= 0.00000011920929)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(_UIBackdropView *)self->_backdropView inputSettings];
  v10 = [v4 backdropStyle];
  if ((v8 & 1) == 0)
  {
    v11 = v10;
    if ([(_UIBackdropView *)self->_backdropView style]!= v10)
    {
      [(_UIBackdropView *)self->_backdropView transitionToPrivateStyle:v11];
      v12 = [MEMORY[0x277D75DF0] settingsForStyle:{-[_UIBackdropView style](self->_backdropView, "style")}];
      backdropStyleDefaultSettings = self->_backdropStyleDefaultSettings;
      self->_backdropStyleDefaultSettings = v12;
    }
  }

  if (v8 != [(_UIBackdropView *)self->_backdropView isHidden])
  {
    [(_UIBackdropView *)self->_backdropView setHidden:v8];
    if (!v8 || ([v4 backdropColor], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v14 = [MEMORY[0x277D75348] clearColor];
    }

    backgroundView = self->_backgroundView;
    if (!backgroundView)
    {
      v16 = objc_alloc(MEMORY[0x277D75D18]);
      [(SKUIStorePagePinnedBackdropDecorationView *)self bounds];
      v17 = [v16 initWithFrame:?];
      v18 = self->_backgroundView;
      self->_backgroundView = v17;

      [(UIView *)self->_backgroundView setAutoresizingMask:18];
      [(SKUIStorePagePinnedBackdropDecorationView *)self insertSubview:self->_backgroundView atIndex:0];
      backgroundView = self->_backgroundView;
    }

    [(UIView *)backgroundView setHidden:v8 ^ 1];
    [(UIView *)self->_backgroundView setBackgroundColor:v14];
  }

  [(UIView *)self->_backgroundView setAlpha:v6];
  v19 = [(_UIBackdropView *)self->_backdropView groupName];
  v20 = 1.0 - v6;
  if (1.0 - v6 <= 0.00000011920929)
  {
    v22 = [v4 backdropGroupName];
    v23 = v22;
    v24 = @"_SKUIStorePagePinnedBackdropGroupName";
    if (v22)
    {
      v24 = v22;
    }

    v21 = v24;
  }

  else
  {
    v21 = 0;
  }

  if (v19 != v21 && ([(__CFString *)v19 isEqualToString:v21, v20]& 1) == 0)
  {
    [(_UIBackdropView *)self->_backdropView setGroupName:v21];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings blurRadius];
  v26 = v25;
  v27 = v6 * v25;
  [v9 blurRadius];
  v29 = vabdd_f64(v27, v28);
  if (v29 >= 1.0 || (vabdd_f64(v26, v27) <= 1.0 ? (v30 = v29 <= 0.00000011920929) : (v30 = 1), !v30))
  {
    [v9 setBlurRadius:v27];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings saturationDeltaFactor];
  v32 = v6 * v31;
  [v9 saturationDeltaFactor];
  if (vabdd_f64(v32, v33) > 0.00000011920929)
  {
    [v9 setSaturationDeltaFactor:v32];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings darkeningTintAlpha];
  v35 = v6 * v34;
  [v9 darkeningTintAlpha];
  if (vabdd_f64(v35, v36) > 0.00000011920929)
  {
    [v9 setDarkeningTintAlpha:v35];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings grayscaleTintAlpha];
  v38 = v6 * v37;
  [v9 grayscaleTintAlpha];
  if (vabdd_f64(v38, v39) > 0.00000011920929)
  {
    [v9 setGrayscaleTintAlpha:v38];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings colorBurnTintAlpha];
  v41 = v6 * v40;
  [v9 colorBurnTintAlpha];
  if (vabdd_f64(v41, v42) > 0.00000011920929)
  {
    [v9 setColorBurnTintAlpha:v41];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings colorTintAlpha];
  v44 = v6 * v43;
  [v9 colorTintAlpha];
  if (vabdd_f64(v44, v45) > 0.00000011920929)
  {
    [v9 setColorTintAlpha:v44];
  }

  v46.receiver = self;
  v46.super_class = SKUIStorePagePinnedBackdropDecorationView;
  [(SKUIStorePagePinnedBackdropDecorationView *)&v46 applyLayoutAttributes:v4];
}

@end