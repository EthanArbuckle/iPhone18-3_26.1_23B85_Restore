@interface PLPlatterView
+ (id)platterViewWithBlurEffectStyle:(int64_t)style;
+ (id)platterViewWithStyle:(id)style inBundle:(id)bundle;
- ($2162B30EF87954972E631D01CBA5CFD1)shadowAttributes;
- (BOOL)_configureGlassIfNecessary;
- (BOOL)_shouldConfigureGlass;
- (BOOL)isHighlighted;
- (CGSize)contentSizeForSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTMaterialView)backgroundMaterialView;
- (PLPlatterView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)shadowOutsets;
- (UIView)customContentView;
- (id)_contentLight;
- (id)_initWithBlurEffectStyle:(int64_t)style;
- (id)_initWithCarPlayBannerStyle;
- (id)_initWithNavigationBannerStyle;
- (id)_initWithNotificationsBannerStyle;
- (id)_initWithRecipe:(int64_t)recipe orRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle;
- (id)_innerEdgeLight;
- (id)_newDefaultBackgroundView;
- (id)_outerEdgeLight;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_configureBackgroundView:(id)view;
- (void)_configureBackgroundViewIfNecessary;
- (void)_configureCustomContentView;
- (void)_configureCustomContentViewIfNecessary;
- (void)_configureLightViewsIfNecessary;
- (void)_configureShadowViewIfNecessary;
- (void)_invalidateShadowView;
- (void)_layoutShadowView;
- (void)_setBackground:(id)background;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)layoutSubviews;
- (void)setBackgroundView:(id)view;
- (void)setHasShadow:(BOOL)shadow;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setMaterialRecipe:(int64_t)recipe;
- (void)setRecipeDynamic:(BOOL)dynamic;
- (void)setShadowAttributes:(id *)attributes;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)startLightEffect;
- (void)stopLightEffect;
@end

@implementation PLPlatterView

- (UIView)customContentView
{
  [(PLPlatterView *)self _configureCustomContentViewIfNecessary];
  customContentView = self->_customContentView;

  return customContentView;
}

- (void)_configureCustomContentViewIfNecessary
{
  if (!self->_customContentView)
  {
    [(PLPlatterView *)self _configureCustomContentView];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PLPlatterView;
  [(PLPlatterView *)&v3 layoutSubviews];
  [(PLPlatterView *)self _configureGlassIfNecessary];
  [(PLPlatterView *)self _configureShadowViewIfNecessary];
  [(PLPlatterView *)self _configureBackgroundViewIfNecessary];
  [(PLPlatterView *)self _configureCustomContentViewIfNecessary];
  [(PLPlatterView *)self _configureLightViewsIfNecessary];
  [(PLPlatterView *)self _layoutShadowView];
}

- (BOOL)_configureGlassIfNecessary
{
  _shouldConfigureGlass = [(PLPlatterView *)self _shouldConfigureGlass];
  self->_wantsAutomaticGlass = _shouldConfigureGlass;
  if (_shouldConfigureGlass)
  {
    superview = [(MTShadowView *)self->_shadowView superview];

    if (superview == self)
    {
      [(MTShadowView *)self->_shadowView removeFromSuperview];
    }

    shadowView = self->_shadowView;
    self->_shadowView = 0;

    superview2 = [(UIView *)self->_backgroundView superview];

    if (superview2 == self)
    {
      [(UIView *)self->_backgroundView removeFromSuperview];
    }

    backgroundView = self->_backgroundView;
    self->_backgroundView = 0;

    superview3 = [(UIVisualEffectView *)self->_contentLightView superview];

    if (superview3 == self)
    {
      [(UIVisualEffectView *)self->_contentLightView removeFromSuperview];
    }

    contentLightView = self->_contentLightView;
    self->_contentLightView = 0;

    superview4 = [(UIVisualEffectView *)self->_edgeLightView superview];

    if (superview4 == self)
    {
      [(UIVisualEffectView *)self->_edgeLightView removeFromSuperview];
    }

    edgeLightView = self->_edgeLightView;
    self->_edgeLightView = 0;

    v12 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:0 size:1];
    v13 = v12;
    if (self->_materialRecipe == 15)
    {
      [v12 setAdaptive:0];
    }

    v19.receiver = self;
    v19.super_class = PLPlatterView;
    [(PLPlatterView *)&v19 _setBackground:v13];
    if (self->_materialRecipe == 15)
    {
      [(PLPlatterView *)self _continuousCornerRadius];
      v15 = v14;
      layer = [(PLPlatterView *)self layer];
      [layer setCornerRadius:v15];
    }
  }

  else if (!self->_hasClientSpecifiedBackground)
  {
    v18.receiver = self;
    v18.super_class = PLPlatterView;
    [(PLPlatterView *)&v18 _setBackground:0];
  }

  return self->_wantsAutomaticGlass;
}

- (void)_configureShadowViewIfNecessary
{
  if (![(PLPlatterView *)self _configureGlassIfNecessary]&& [(PLPlatterView *)self hasShadow]&& !self->_shadowView)
  {
    v3 = objc_alloc(MEMORY[0x277D26728]);
    [(PLPlatterView *)self _continuousCornerRadius];
    v4 = *&self->_shadowAttributes.offset.height;
    v7[0] = *&self->_shadowAttributes.opacity;
    v7[1] = v4;
    v5 = [v3 initWithShadowAttributes:v7 maskCornerRadius:?];
    shadowView = self->_shadowView;
    self->_shadowView = v5;

    [(PLPlatterView *)self insertSubview:self->_shadowView atIndex:0];
  }
}

- (void)_configureBackgroundViewIfNecessary
{
  if (![(PLPlatterView *)self _configureGlassIfNecessary]&& !self->_backgroundView && self->_usesBackgroundView && [(PLPlatterView *)self _isMaterialViewSufficientlySpecified])
  {
    _newDefaultBackgroundView = [(PLPlatterView *)self _newDefaultBackgroundView];
    [(PLPlatterView *)self setBackgroundView:_newDefaultBackgroundView];
  }
}

- (void)_configureLightViewsIfNecessary
{
  if (![(PLPlatterView *)self _configureGlassIfNecessary])
  {
    if (!self->_contentLightView)
    {
      v3 = objc_alloc_init(MEMORY[0x277D75D68]);
      contentLightView = self->_contentLightView;
      self->_contentLightView = v3;

      [(UIVisualEffectView *)self->_contentLightView setUserInteractionEnabled:0];
      [(PLPlatterView *)self _continuousCornerRadius];
      if (v5 > 0.0)
      {
        [(UIVisualEffectView *)self->_contentLightView _setContinuousCornerRadius:?];
      }

      [(UIVisualEffectView *)self->_contentLightView setAutoresizingMask:18];
      v6 = self->_contentLightView;
      [(PLPlatterView *)self bounds];
      [(UIVisualEffectView *)v6 setFrame:?];
      if (self->_backgroundView)
      {
        [(PLPlatterView *)self insertSubview:self->_contentLightView belowSubview:?];
      }

      else
      {
        v7 = self->_contentLightView;
        if (self->_shadowView)
        {
          [(PLPlatterView *)self insertSubview:v7 aboveSubview:?];
        }

        else
        {
          [(PLPlatterView *)self addSubview:v7];
          [(PLPlatterView *)self sendSubviewToBack:self->_contentLightView];
        }
      }
    }

    if (!self->_edgeLightView)
    {
      v8 = objc_alloc_init(MEMORY[0x277D75D68]);
      edgeLightView = self->_edgeLightView;
      self->_edgeLightView = v8;

      [(UIVisualEffectView *)self->_edgeLightView setUserInteractionEnabled:0];
      [(PLPlatterView *)self _continuousCornerRadius];
      if (v10 > 0.0)
      {
        [(UIVisualEffectView *)self->_edgeLightView _setContinuousCornerRadius:?];
      }

      [(UIVisualEffectView *)self->_edgeLightView setAutoresizingMask:18];
      v11 = self->_edgeLightView;
      [(PLPlatterView *)self bounds];
      [(UIVisualEffectView *)v11 setFrame:?];
      if (self->_backgroundView)
      {
        v12 = self->_edgeLightView;
      }

      else
      {
        v12 = self->_edgeLightView;
        if (!self->_shadowView)
        {
          [(PLPlatterView *)self addSubview:v12];
          v13 = self->_edgeLightView;

          [(PLPlatterView *)self sendSubviewToBack:v13];
          return;
        }
      }

      [(PLPlatterView *)self insertSubview:v12 aboveSubview:?];
    }
  }
}

- (void)_layoutShadowView
{
  if (![(PLPlatterView *)self _configureGlassIfNecessary])
  {
    shadowView = self->_shadowView;
    if (shadowView)
    {
      [(PLPlatterView *)self bounds];
      [(MTShadowView *)shadowView frameWithContentWithFrame:?];
      v4 = self->_shadowView;

      [(MTShadowView *)v4 setFrame:?];
    }
  }
}

- (MTMaterialView)backgroundMaterialView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    backgroundView = self->_backgroundView;
  }

  else
  {
    backgroundView = 0;
  }

  return backgroundView;
}

- (id)_initWithNavigationBannerStyle
{
  v2 = [(PLPlatterView *)self initWithRecipe:0];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2030];
    [(PLPlatterView *)v2 setBackgroundView:v3];
  }

  return v2;
}

- (id)_initWithCarPlayBannerStyle
{
  v2 = [(PLPlatterView *)self initWithRecipe:15];
  v3 = v2;
  if (v2)
  {
    [(PLPlatterView *)v2 _setContinuousCornerRadius:20.0];
    v5 = 1034147594;
    v6 = xmmword_21FE0D250;
    v7 = 0x4030000000000000;
    [(PLPlatterView *)v3 setShadowAttributes:&v5];
  }

  return v3;
}

- (id)_initWithNotificationsBannerStyle
{
  v2 = [(PLPlatterView *)self initWithRecipe:1];
  v3 = v2;
  if (v2)
  {
    [(PLPlatterView *)v2 setHasShadow:1];
    [(PLPlatterView *)v3 _setContinuousCornerRadius:23.5];
  }

  return v3;
}

- (id)_initWithBlurEffectStyle:(int64_t)style
{
  v3 = [(PLPlatterView *)self initWithRecipe:MTMaterialRecipeForUIBlurEffectStyle()];
  v4 = v3;
  if (v3)
  {
    [(PLPlatterView *)v3 setHasShadow:1];
    [(PLPlatterView *)v4 setRecipeDynamic:MTIsUIBlurEffectStyleDynamic()];
  }

  return v4;
}

+ (id)platterViewWithBlurEffectStyle:(int64_t)style
{
  v3 = [[PLPlatterView alloc] _initWithBlurEffectStyle:style];

  return v3;
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  if (self->_backgroundView != viewCopy)
  {
    v7 = viewCopy;
    self->_usesBackgroundView |= viewCopy != 0;
    superview = [(UIView *)self->_backgroundView superview];

    if (superview == self)
    {
      [(UIView *)self->_backgroundView removeFromSuperview];
    }

    objc_storeStrong(&self->_backgroundView, view);
    [(PLPlatterView *)self _configureBackgroundView:self->_backgroundView];
    [(PLPlatterView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setMaterialRecipe:(int64_t)recipe
{
  if (self->_materialRecipe != recipe)
  {
    self->_materialRecipe = recipe;
    backgroundMaterialView = [(PLPlatterView *)self backgroundMaterialView];
    [backgroundMaterialView setRecipe:self->_materialRecipe];
  }
}

- (void)setShadowAttributes:(id *)attributes
{
  if (attributes->var0 != self->_shadowAttributes.opacity || (attributes->var1.width == self->_shadowAttributes.offset.width ? (v3 = attributes->var1.height == self->_shadowAttributes.offset.height) : (v3 = 0), v3 ? (v4 = attributes->var2 == self->_shadowAttributes.radius) : (v4 = 0), !v4))
  {
    v5 = *&attributes->var1.height;
    *&self->_shadowAttributes.opacity = *&attributes->var0;
    *&self->_shadowAttributes.offset.height = v5;
    [(PLPlatterView *)self _invalidateShadowView];
  }
}

- (UIEdgeInsets)shadowOutsets
{
  if ([(PLPlatterView *)self hasShadow])
  {
    [(PLPlatterView *)self _configureShadowViewIfNecessary];
    [(MTShadowView *)self->_shadowView shadowOutsets];
  }

  else
  {
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v5 = *(MEMORY[0x277D768C8] + 16);
    v6 = *(MEMORY[0x277D768C8] + 24);
  }

  if (self->_wantsAutomaticGlass)
  {
    v6 = 32.0;
    v5 = 32.0;
    v4 = 32.0;
    v3 = 32.0;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)startLightEffect
{
  v11[1] = *MEMORY[0x277D85DE8];
  contentLightView = self->_contentLightView;
  _contentLight = [(PLPlatterView *)self _contentLight];
  v11[0] = _contentLight;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(UIVisualEffectView *)contentLightView setBackgroundEffects:v5];

  edgeLightView = self->_edgeLightView;
  _innerEdgeLight = [(PLPlatterView *)self _innerEdgeLight];
  _outerEdgeLight = [(PLPlatterView *)self _outerEdgeLight];
  v10[1] = _outerEdgeLight;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(UIVisualEffectView *)edgeLightView setBackgroundEffects:v9];

  [(PLPlatterView *)self setAccessibilityIdentifier:@"platter-intelligence-light"];
}

- (void)stopLightEffect
{
  v3 = MEMORY[0x277CBEBF8];
  [(UIVisualEffectView *)self->_contentLightView setBackgroundEffects:MEMORY[0x277CBEBF8]];
  [(UIVisualEffectView *)self->_edgeLightView setBackgroundEffects:v3];

  [(PLPlatterView *)self setAccessibilityIdentifier:0];
}

- (PLPlatterView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(PLPlatterView *)self initWithRecipe:0];
  v8 = v7;
  if (v7)
  {
    [(PLPlatterView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PLPlatterView *)self contentSizeForSize:fits.width, fits.height];

  [(PLPlatterView *)self sizeThatFitsContentWithSize:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(UIView *)self->_backgroundView _setContinuousCornerRadius:?];
    [(PLPlatterView *)self _invalidateShadowView];

    [(PLPlatterView *)self setNeedsLayout];
  }
}

- (CGSize)contentSizeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  if (width > 0.0 && height > 0.0)
  {
    [(PLPlatterView *)self sizeThatFitsContentWithSize:width, 0.0];
    v6 = ((height - v7) & ~((height - v7) >> 31));
    v5 = width;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setHasShadow:(BOOL)shadow
{
  if (shadow)
  {
    if ([(PLPlatterView *)self hasShadow])
    {
      return;
    }

    *&v4[4] = *MEMORY[0x277CBF3A8];
    self->_shadowAttributes.opacity = 1.0;
    *(&self->_shadowAttributes.opacity + 1) = *v4;
    HIDWORD(self->_shadowAttributes.offset.height) = *&v4[16];
    self->_shadowAttributes.radius = 15.0;
  }

  else
  {
    self->_shadowAttributes.opacity = 0.0;
    [(PLPlatterView *)self _invalidateShadowView];
  }

  [(PLPlatterView *)self setNeedsLayout];
}

- (void)_invalidateShadowView
{
  [(MTShadowView *)self->_shadowView removeFromSuperview];
  shadowView = self->_shadowView;
  self->_shadowView = 0;

  [(PLPlatterView *)self setNeedsLayout];
}

- (void)_configureBackgroundView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    [viewCopy setUserInteractionEnabled:0];
    [(PLPlatterView *)self _continuousCornerRadius];
    if (v4 > 0.0)
    {
      [viewCopy _setContinuousCornerRadius:?];
    }

    [(PLPlatterView *)self bounds];
    [viewCopy setFrame:?];
    [viewCopy setAutoresizingMask:18];
    if (self->_shadowView)
    {
      [(PLPlatterView *)self insertSubview:viewCopy aboveSubview:?];
    }

    else
    {
      [(PLPlatterView *)self insertSubview:viewCopy atIndex:?];
    }
  }
}

- (id)_newDefaultBackgroundView
{
  if (![(PLPlatterView *)self _isMaterialViewSufficientlySpecified])
  {
    return 0;
  }

  v3 = !self->_backgroundBlurred;
  if ([(PLPlatterView *)self hasShadow])
  {
    v3 |= 8uLL;
  }

  materialRecipe = self->_materialRecipe;
  v5 = MEMORY[0x277D26718];
  if (materialRecipe)
  {
    traitCollection = [(PLPlatterView *)self traitCollection];
    [v5 materialViewWithRecipe:materialRecipe options:v3 compatibleWithTraitCollection:traitCollection];
  }

  else
  {
    recipeNamesByTraitCollection = self->_recipeNamesByTraitCollection;
    recipeBundle = self->_recipeBundle;
    traitCollection = [(PLPlatterView *)self traitCollection];
    [v5 materialViewWithRecipeNamesByTraitCollection:recipeNamesByTraitCollection inBundle:recipeBundle options:v3 initialWeighting:0 scaleAdjustment:traitCollection compatibleWithTraitCollection:1.0];
  }
  v7 = ;

  [v7 setRecipeDynamic:self->_recipeDynamic];
  materialGroupNameBase = [(PLPlatterView *)self materialGroupNameBase];
  [v7 setGroupNameBase:materialGroupNameBase];

  return v7;
}

- (void)_setBackground:(id)background
{
  self->_hasClientSpecifiedBackground = 1;
  v3.receiver = self;
  v3.super_class = PLPlatterView;
  [(PLPlatterView *)&v3 _setBackground:background];
}

- (BOOL)_shouldConfigureGlass
{
  if (self->_materialRecipe == 15)
  {
    return 1;
  }

  v4 = objc_opt_class();
  v5 = [v4 isSubclassOfClass:objc_opt_class()];
  v6 = _UISolariumEnabled();
  result = 0;
  if (v6 && (v5 & 1) == 0)
  {
    if (self->_hasClientSpecifiedBackground)
    {
      return 0;
    }

    if ([(PLPlatterView *)self hasShadow])
    {
      return 1;
    }

    return [(PLPlatterView *)self usesBackgroundView];
  }

  return result;
}

- (id)_innerEdgeLight
{
  v2 = objc_alloc(MEMORY[0x277D76030]);
  mEMORY[0x277D76040] = [MEMORY[0x277D76040] sharedShimmeringLight];
  v4 = [v2 initWithLightSource:mEMORY[0x277D76040] radius:0 region:3.0];

  [v4 setActivationTransitionDirection:2];

  return v4;
}

- (id)_outerEdgeLight
{
  v2 = objc_alloc(MEMORY[0x277D76030]);
  mEMORY[0x277D76040] = [MEMORY[0x277D76040] sharedShimmeringLight];
  v4 = [v2 initWithLightSource:mEMORY[0x277D76040] radius:1 region:10.0];

  [v4 setActivationTransitionDirection:2];

  return v4;
}

- (id)_contentLight
{
  v2 = objc_alloc(MEMORY[0x277D76028]);
  mEMORY[0x277D76040] = [MEMORY[0x277D76040] sharedLight];
  v4 = [v2 initWithLightSource:mEMORY[0x277D76040]];

  [v4 setActivationTransitionDirection:2];
  [v4 setDeactivationTransitionDirection:0];

  return v4;
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  categoriesToProviders = self->_categoriesToProviders;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)categoriesToProviders objectForKey:v6];

  if (!v7)
  {
    [(PLPlatterView *)self _configureBackgroundViewIfNecessary];
    backgroundMaterialView = [(PLPlatterView *)self backgroundMaterialView];
    v7 = [backgroundMaterialView visualStylingProviderForCategory:category];
  }

  return v7;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  if (!self->_categoriesToProviders)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    categoriesToProviders = self->_categoriesToProviders;
    self->_categoriesToProviders = v6;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  v9 = self->_categoriesToProviders;
  if (providerCopy)
  {
    [(NSMutableDictionary *)v9 setObject:providerCopy forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)v9 removeObjectForKey:v8];
  }
}

- (void)setMaterialGroupNameBase:(id)base
{
  baseCopy = base;
  if (([baseCopy isEqualToString:self->_materialGroupNameBase] & 1) == 0)
  {
    v4 = [baseCopy copy];
    materialGroupNameBase = self->_materialGroupNameBase;
    self->_materialGroupNameBase = v4;

    backgroundMaterialView = [(PLPlatterView *)self backgroundMaterialView];
    [backgroundMaterialView setGroupNameBase:self->_materialGroupNameBase];
  }
}

- ($2162B30EF87954972E631D01CBA5CFD1)shadowAttributes
{
  v3 = *&self[16].var1.height;
  *&retstr->var0 = *&self[16].var0;
  *&retstr->var1.height = v3;
  return self;
}

+ (id)platterViewWithStyle:(id)style inBundle:(id)bundle
{
  styleCopy = style;
  if ([styleCopy isEqualToString:@"navigationBanner"])
  {
    _initWithNavigationBannerStyle = [[PLPlatterView alloc] _initWithNavigationBannerStyle];
  }

  else if ([styleCopy isEqualToString:@"carPlayBanner"])
  {
    _initWithNavigationBannerStyle = [[PLPlatterView alloc] _initWithCarPlayBannerStyle];
  }

  else if ([styleCopy isEqualToString:@"notificationBanner"])
  {
    _initWithNavigationBannerStyle = [[PLPlatterView alloc] _initWithNotificationsBannerStyle];
  }

  else
  {
    _initWithNavigationBannerStyle = objc_alloc_init(PLPlatterView);
  }

  v6 = _initWithNavigationBannerStyle;

  return v6;
}

- (BOOL)isHighlighted
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  backgroundView = self->_backgroundView;

  return [(UIView *)backgroundView isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if (objc_opt_respondsToSelector())
  {
    backgroundView = self->_backgroundView;

    [(UIView *)backgroundView setHighlighted:highlightedCopy];
  }
}

- (void)setRecipeDynamic:(BOOL)dynamic
{
  if (self->_recipeDynamic != dynamic)
  {
    dynamicCopy = dynamic;
    self->_recipeDynamic = dynamic;
    backgroundMaterialView = [(PLPlatterView *)self backgroundMaterialView];
    [backgroundMaterialView setRecipeDynamic:dynamicCopy];
  }
}

- (id)_initWithRecipe:(int64_t)recipe orRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle
{
  collectionCopy = collection;
  bundleCopy = bundle;
  v15.receiver = self;
  v15.super_class = PLPlatterView;
  v11 = [(PLPlatterView *)&v15 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v12 = v11;
  if (v11)
  {
    v11->_materialRecipe = recipe;
    objc_storeStrong(&v11->_recipeNamesByTraitCollection, collection);
    if (*(v12 + 504))
    {
      if (*(v12 + 456))
      {
        v13 = PLLogGeneral;
        if (os_log_type_enabled(PLLogGeneral, OS_LOG_TYPE_ERROR))
        {
          [PLPlatterView(SubclassOverrides) _initWithRecipe:v12 orRecipeNamesByTraitCollection:v13 inBundle:?];
        }
      }
    }

    objc_storeStrong((v12 + 464), bundle);
    *(v12 + 483) = 1;
    [v12 _setContinuousCornerRadius:13.0];
    *(v12 + 482) = 1;
    *(v12 + 440) = 1;
    [v12 setPreservesSuperviewLayoutMargins:1];
  }

  return v12;
}

- (void)_configureCustomContentView
{
  v3 = [[PLPlatterCustomContentView alloc] initWithAncestorPlatterView:self];
  customContentView = self->_customContentView;
  self->_customContentView = &v3->super;

  [(UIView *)self->_customContentView setAutoresizingMask:18];
  [(PLPlatterView *)self addSubview:self->_customContentView];
  v5 = self->_customContentView;

  [(PLPlatterView *)self bringSubviewToFront:v5];
}

@end