@interface SKUIStorePagePinnedBackdropDecorationView
- (SKUIStorePagePinnedBackdropDecorationView)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation SKUIStorePagePinnedBackdropDecorationView

- (SKUIStorePagePinnedBackdropDecorationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  height = [(SKUIStorePagePinnedBackdropDecorationView *)&v24 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
    backdropView = height->_backdropView;
    height->_backdropView = v17;

    [(_UIBackdropView *)height->_backdropView setAutoresizingMask:18];
    v19 = height->_backdropView;
    [(SKUIStorePagePinnedBackdropDecorationView *)height bounds];
    [(_UIBackdropView *)v19 setFrame:?];
    [(SKUIStorePagePinnedBackdropDecorationView *)height addSubview:height->_backdropView];
    v20 = [MEMORY[0x277D75DF0] settingsForStyle:{-[_UIBackdropView style](height->_backdropView, "style")}];
    backdropStyleDefaultSettings = height->_backdropStyleDefaultSettings;
    height->_backdropStyleDefaultSettings = v20;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SKUIStorePagePinnedBackdropDecorationView *)height setBackgroundColor:clearColor];
  }

  return height;
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy transitionProgress];
  v6 = v5;
  hidesBackdropView = [attributesCopy hidesBackdropView];
  if (v6 <= 0.00000011920929)
  {
    v8 = 1;
  }

  else
  {
    v8 = hidesBackdropView;
  }

  inputSettings = [(_UIBackdropView *)self->_backdropView inputSettings];
  backdropStyle = [attributesCopy backdropStyle];
  if ((v8 & 1) == 0)
  {
    v11 = backdropStyle;
    if ([(_UIBackdropView *)self->_backdropView style]!= backdropStyle)
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
    if (!v8 || ([attributesCopy backdropColor], (clearColor = objc_claimAutoreleasedReturnValue()) == 0))
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
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
    [(UIView *)self->_backgroundView setBackgroundColor:clearColor];
  }

  [(UIView *)self->_backgroundView setAlpha:v6];
  groupName = [(_UIBackdropView *)self->_backdropView groupName];
  v20 = 1.0 - v6;
  if (1.0 - v6 <= 0.00000011920929)
  {
    backdropGroupName = [attributesCopy backdropGroupName];
    v23 = backdropGroupName;
    v24 = @"_SKUIStorePagePinnedBackdropGroupName";
    if (backdropGroupName)
    {
      v24 = backdropGroupName;
    }

    v21 = v24;
  }

  else
  {
    v21 = 0;
  }

  if (groupName != v21 && ([(__CFString *)groupName isEqualToString:v21, v20]& 1) == 0)
  {
    [(_UIBackdropView *)self->_backdropView setGroupName:v21];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings blurRadius];
  v26 = v25;
  v27 = v6 * v25;
  [inputSettings blurRadius];
  v29 = vabdd_f64(v27, v28);
  if (v29 >= 1.0 || (vabdd_f64(v26, v27) <= 1.0 ? (v30 = v29 <= 0.00000011920929) : (v30 = 1), !v30))
  {
    [inputSettings setBlurRadius:v27];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings saturationDeltaFactor];
  v32 = v6 * v31;
  [inputSettings saturationDeltaFactor];
  if (vabdd_f64(v32, v33) > 0.00000011920929)
  {
    [inputSettings setSaturationDeltaFactor:v32];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings darkeningTintAlpha];
  v35 = v6 * v34;
  [inputSettings darkeningTintAlpha];
  if (vabdd_f64(v35, v36) > 0.00000011920929)
  {
    [inputSettings setDarkeningTintAlpha:v35];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings grayscaleTintAlpha];
  v38 = v6 * v37;
  [inputSettings grayscaleTintAlpha];
  if (vabdd_f64(v38, v39) > 0.00000011920929)
  {
    [inputSettings setGrayscaleTintAlpha:v38];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings colorBurnTintAlpha];
  v41 = v6 * v40;
  [inputSettings colorBurnTintAlpha];
  if (vabdd_f64(v41, v42) > 0.00000011920929)
  {
    [inputSettings setColorBurnTintAlpha:v41];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings colorTintAlpha];
  v44 = v6 * v43;
  [inputSettings colorTintAlpha];
  if (vabdd_f64(v44, v45) > 0.00000011920929)
  {
    [inputSettings setColorTintAlpha:v44];
  }

  v46.receiver = self;
  v46.super_class = SKUIStorePagePinnedBackdropDecorationView;
  [(SKUIStorePagePinnedBackdropDecorationView *)&v46 applyLayoutAttributes:attributesCopy];
}

@end