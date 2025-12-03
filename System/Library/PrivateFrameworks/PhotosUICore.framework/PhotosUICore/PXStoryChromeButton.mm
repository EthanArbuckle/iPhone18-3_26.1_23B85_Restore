@interface PXStoryChromeButton
+ (CGSize)_sizeForAttributedLabel:(id)label;
+ (CGSize)sizeWithConfiguration:(id)configuration;
+ (id)_createBadgeSystemImageView;
+ (id)_createSystemImageView;
+ (id)_createSystemImageVisualEffectView;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)clippingRect;
- (PXStoryChromeButton)initWithFrame:(CGRect)frame;
- (id)_badgeImageWithSystemName:(id)name;
- (id)_createAssetImageView;
- (id)_createLabel;
- (id)_imageWithSystemName:(id)name;
- (id)_imageWithSystemName:(id)name symbolConfiguration:(id)configuration;
- (id)accessibilityLabel;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_configureActions;
- (void)_configureBackgroundView:(id)view;
- (void)_configureVisualEffectView:(id)view;
- (void)_handleImageResult:(id)result info:(id)info forDisplayAsset:(id)asset requestID:(int64_t)d synchronous:(BOOL)synchronous;
- (void)_invalidateAppearance;
- (void)_invalidateAssetImage;
- (void)_px_invalidatePointerInteraction;
- (void)_setEffectViewFrame:(CGRect)frame;
- (void)_updateAppearance;
- (void)_updateAssetImage;
- (void)_updateAssetImageView;
- (void)_updateBackgroundView;
- (void)_updateBackgroundViewCornerRadius;
- (void)_updateBadgeSystemImageView;
- (void)_updateEffectViewCornerRadius;
- (void)_updateLabel;
- (void)_updateSystemImageView;
- (void)_updateSystemImageVisualEffectView;
- (void)_updateVisualEffectView;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
- (void)setAssetImage:(id)image;
- (void)setBackgroundView:(id)view;
- (void)setCustomContextMenuInteraction:(id)interaction;
- (void)setEffectView:(id)view;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsHovered:(BOOL)hovered;
- (void)setIsMenuOpen:(BOOL)open;
- (void)setUserData:(id)data;
@end

@implementation PXStoryChromeButton

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)accessibilityLabel
{
  userData = [(PXStoryChromeButton *)self userData];
  axLabel = [userData axLabel];

  return axLabel;
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (self->_userData != dataCopy)
  {
    v9 = dataCopy;
    v6 = [(PXStoryChromeButtonConfiguration *)dataCopy isEqual:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(PXStoryChromeButtonConfiguration *)v9 copy];
      userData = self->_userData;
      self->_userData = v7;

      [(PXStoryChromeButton *)self _invalidateAssetImage];
      [(PXStoryChromeButton *)self _invalidateAppearance];
      [(PXStoryChromeButton *)self _px_invalidatePointerInteraction];
      v5 = v9;
    }
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  v15.receiver = self;
  v15.super_class = PXStoryChromeButton;
  [(PXStoryChromeButton *)&v15 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  nextFocusedView = [contextCopy nextFocusedView];

  if (nextFocusedView == self)
  {
    v10 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v11 = __72__PXStoryChromeButton_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
    goto LABEL_5;
  }

  previouslyFocusedView = [contextCopy previouslyFocusedView];

  if (previouslyFocusedView == self)
  {
    v10 = &v12;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v11 = __72__PXStoryChromeButton_didUpdateFocusInContext_withAnimationCoordinator___block_invoke_2;
LABEL_5:
    v10[2] = v11;
    v10[3] = &unk_1E774C648;
    v10[4] = self;
    [coordinatorCopy addCoordinatedAnimations:v12 completion:v13];
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v7.receiver = self;
  v7.super_class = PXStoryChromeButton;
  [(PXStoryChromeButton *)&v7 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animator];
  menu = [(PXStoryChromeButton *)self menu];
  [menu didClose];

  [(PXStoryChromeButton *)self setIsMenuOpen:0];
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v7.receiver = self;
  v7.super_class = PXStoryChromeButton;
  [(PXStoryChromeButton *)&v7 contextMenuInteraction:interaction willDisplayMenuForConfiguration:configuration animator:animator];
  menu = [(PXStoryChromeButton *)self menu];
  [menu willOpen];

  [(PXStoryChromeButton *)self setIsMenuOpen:1];
}

- (void)setCustomContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  customContextMenuInteraction = self->_customContextMenuInteraction;
  v7 = interactionCopy;
  if (customContextMenuInteraction != interactionCopy)
  {
    if (customContextMenuInteraction)
    {
      [(PXStoryChromeButton *)self removeInteraction:?];
    }

    objc_storeStrong(&self->_customContextMenuInteraction, interaction);
    if (self->_customContextMenuInteraction)
    {
      [(PXStoryChromeButton *)self addInteraction:?];
    }
  }
}

- (void)_configureActions
{
  userData = [(PXStoryChromeButton *)self userData];
  [(PXStoryChromeButton *)self removeTarget:0 action:0 forControlEvents:0x2000];
  target = [userData target];
  if (target)
  {
    v4 = target;
    action = [userData action];

    if (action)
    {
      target2 = [userData target];
      -[PXStoryChromeButton addTarget:action:forControlEvents:](self, "addTarget:action:forControlEvents:", target2, [userData action], 0x2000);
    }
  }

  menu = [userData menu];
  [(PXStoryChromeButton *)self setMenu:menu];

  menu2 = [(PXStoryChromeButton *)self menu];
  [(PXStoryChromeButton *)self setShowsMenuAsPrimaryAction:menu2 != 0];

  customContextMenuInteractionDelegate = [userData customContextMenuInteractionDelegate];
  v10 = [customContextMenuInteractionDelegate conformsToProtocol:&unk_1F193E078];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E69DC8E0]);
    customContextMenuInteractionDelegate2 = [userData customContextMenuInteractionDelegate];
    v13 = [v11 initWithDelegate:customContextMenuInteractionDelegate2];
  }

  else
  {
    v13 = 0;
  }

  [(PXStoryChromeButton *)self setCustomContextMenuInteraction:v13];
}

- (id)_imageWithSystemName:(id)name symbolConfiguration:(id)configuration
{
  v12 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = [MEMORY[0x1E69DCAB8] px_systemImageNamed:nameCopy withConfiguration:configuration];
  if (!v7)
  {
    v8 = [(PXStoryChromeButton *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = nameCopy;
      _os_log_error_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Unable to find system image for name: %@", &v10, 0xCu);
    }
  }

  return v7;
}

- (id)_badgeImageWithSystemName:(id)name
{
  nameCopy = name;
  userData = [(PXStoryChromeButton *)self userData];
  spec = [userData spec];
  v7 = [MEMORY[0x1E69DCAD8] configurationWithWeight:{objc_msgSend(spec, "badgeSystemImageWeight")}];
  badgeSystemImageColors = [userData badgeSystemImageColors];

  if (badgeSystemImageColors)
  {
    v9 = MEMORY[0x1E69DCAD8];
    badgeSystemImageColors2 = [userData badgeSystemImageColors];
    v11 = [v9 configurationWithPaletteColors:badgeSystemImageColors2];

    v12 = [v7 configurationByApplyingConfiguration:v11];

    v7 = v12;
  }

  v13 = [(PXStoryChromeButton *)self _imageWithSystemName:nameCopy symbolConfiguration:v7];

  return v13;
}

- (id)_imageWithSystemName:(id)name
{
  nameCopy = name;
  userData = [(PXStoryChromeButton *)self userData];
  spec = [userData spec];
  [userData preferredSystemImagePointSize];
  v8 = v7;
  preferredSystemImageWeight = [userData preferredSystemImageWeight];
  v10 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:preferredSystemImageWeight weight:-1 scale:v8];
  if ([userData applyTintColorAsHierarchicalColor])
  {
    v11 = MEMORY[0x1E69DCAD8];
    tintColor = [(PXStoryChromeButton *)self tintColor];
    v13 = [v11 configurationWithHierarchicalColor:tintColor];
    v14 = [v10 configurationByApplyingConfiguration:v13];

    v10 = v14;
  }

  v15 = [(PXStoryChromeButton *)self _imageWithSystemName:nameCopy symbolConfiguration:v10];

  return v15;
}

- (void)_updateEffectViewCornerRadius
{
  effectView = [(PXStoryChromeButton *)self effectView];
  userData = [(PXStoryChromeButton *)self userData];
  backgroundStyle = [userData backgroundStyle];
  if ((backgroundStyle - 3) < 2 || backgroundStyle == 1)
  {
    [effectView bounds];
    [effectView _setCornerRadius:0 continuous:15 maskedCorners:CGRectGetHeight(v9) * 0.5];
  }

  else if (backgroundStyle == 2)
  {
    spec = [userData spec];
    [spec roundedRectCornerRadius];
    [effectView _setCornerRadius:1 continuous:15 maskedCorners:?];
  }
}

- (void)_configureVisualEffectView:(id)view
{
  viewCopy = view;
  userData = [(PXStoryChromeButton *)self userData];
  spec = [userData spec];
  if ([userData hasPrimaryImageContent])
  {
    if ([(PXStoryChromeButton *)self isHighlighted])
    {
      highlightedBlurEffectStyle = [spec highlightedBlurEffectStyle];
    }

    else
    {
      highlightedBlurEffectStyle = [spec blurEffectStyle];
    }

    textOnlyBlurEffectStyle = highlightedBlurEffectStyle;
    isHighlighted = [(PXStoryChromeButton *)self isHighlighted];
    v10 = @"PXStoryChromeButton";
    if (isHighlighted)
    {
      v10 = @"PXStoryChromeButton-highlighted";
    }

    v8 = v10;
  }

  else
  {
    textOnlyBlurEffectStyle = [spec textOnlyBlurEffectStyle];
    v8 = @"PXStoryChromeButton-textOnly";
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [viewCopy setBackgroundColor:clearColor];

  v12 = [MEMORY[0x1E69DC730] effectWithStyle:textOnlyBlurEffectStyle];
  [viewCopy setEffect:v12];

  [viewCopy _setGroupName:v8];
  [viewCopy setUserInteractionEnabled:0];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [(PXStoryChromeButton *)self userData:interaction];
  [v5 spec];
  objc_claimAutoreleasedReturnValue();
  [(PXStoryChromeButton *)self frame];
  [v5 pointerShapeInsets];
  PXEdgeInsetsInsetRect();
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  userData = [(PXStoryChromeButton *)self userData];
  [regionCopy rect];

  [userData hitTestEdgeOutsets];
  sub_1A524D1F4();
}

- (void)_handleImageResult:(id)result info:(id)info forDisplayAsset:(id)asset requestID:(int64_t)d synchronous:(BOOL)synchronous
{
  resultCopy = result;
  infoCopy = info;
  assetCopy = asset;
  if (synchronous || [(PXStoryChromeButton *)self imageRequestID]== d)
  {
    userData = [(PXStoryChromeButton *)self userData];
    displayAsset = [userData displayAsset];
    v16 = displayAsset;
    if (displayAsset == assetCopy)
    {
    }

    else
    {
      v17 = [assetCopy isEqual:displayAsset];

      if ((v17 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    [(PXStoryChromeButton *)self setAssetImage:resultCopy];
  }

LABEL_8:
}

- (void)_updateBackgroundViewCornerRadius
{
  backgroundView = [(PXStoryChromeButton *)self backgroundView];
  layer = [backgroundView layer];
  userData = [(PXStoryChromeButton *)self userData];
  backgroundStyle = [userData backgroundStyle];
  if (backgroundStyle > 2)
  {
    if ((backgroundStyle - 3) >= 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!backgroundStyle)
    {
      v7 = 0;
      goto LABEL_9;
    }

    if (backgroundStyle != 1)
    {
      if (backgroundStyle != 2)
      {
        goto LABEL_10;
      }

      [layer setCornerCurve:*MEMORY[0x1E69796E8]];
      spec = [userData spec];
      [spec roundedRectCornerRadius];
      [layer setCornerRadius:?];

      goto LABEL_8;
    }
  }

  [layer setCornerCurve:*MEMORY[0x1E69796E8]];
  [backgroundView bounds];
  [layer setCornerRadius:CGRectGetHeight(v10) * 0.5];
LABEL_8:
  v7 = 1;
LABEL_9:
  [layer setShadowPathIsBounds:v7];
LABEL_10:
}

- (void)_configureBackgroundView:(id)view
{
  viewCopy = view;
  userData = [(PXStoryChromeButton *)self userData];
  backgroundStyle = [userData backgroundStyle];
  spec = [userData spec];
  isFocused = [(PXStoryChromeButton *)self isFocused];
  if (backgroundStyle == 4)
  {
    if (isFocused)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v10 = ;
    [viewCopy setBackgroundColor:v10];

    isHighlighted = [(PXStoryChromeButton *)self isHighlighted];
    v9 = 0.7;
    if (!isHighlighted)
    {
      v9 = 1.0;
    }
  }

  else
  {
    solidBackgroundColor = [userData solidBackgroundColor];
    [viewCopy setBackgroundColor:solidBackgroundColor];

    v9 = 1.0;
  }

  [viewCopy setAlpha:v9];
  [viewCopy setUserInteractionEnabled:0];
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  backgroundView = self->_backgroundView;
  v7 = viewCopy;
  if (backgroundView != viewCopy)
  {
    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, view);
    if (self->_backgroundView)
    {
      [(PXStoryChromeButton *)self addSubview:?];
    }
  }
}

- (void)_updateBackgroundView
{
  userData = [(PXStoryChromeButton *)self userData];
  backgroundStyle = [userData backgroundStyle];

  if ((backgroundStyle - 3) > 1)
  {
    v6 = 0;
  }

  else
  {
    backgroundView = [(PXStoryChromeButton *)self backgroundView];
    if (!backgroundView)
    {
      backgroundView = objc_alloc_init(MEMORY[0x1E69DD250]);
    }

    v7 = backgroundView;
    [(PXStoryChromeButton *)self _configureBackgroundView:backgroundView];
    v6 = v7;
  }

  v8 = v6;
  [(PXStoryChromeButton *)self setBackgroundView:v6];
}

- (void)_setEffectViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  effectView = [(PXStoryChromeButton *)self effectView];
  [effectView frame];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  if (!CGRectEqualToRect(v11, v12))
  {
    effectView2 = [(PXStoryChromeButton *)self effectView];
    [effectView2 setFrame:{x, y, width, height}];

    [(PXStoryChromeButton *)self _updateEffectViewCornerRadius];
  }
}

- (void)setEffectView:(id)view
{
  v35 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  effectView = self->_effectView;
  if (effectView != viewCopy)
  {
    if (effectView)
    {
      contentView = [(UIVisualEffectView *)effectView contentView];
      subviews = [contentView subviews];
      v9 = [subviews copy];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
        do
        {
          v14 = 0;
          do
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [(PXStoryChromeButton *)self addSubview:*(*(&v28 + 1) + 8 * v14++)];
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
        }

        while (v12);
      }

      [(UIVisualEffectView *)self->_effectView removeFromSuperview];
    }

    objc_storeStrong(&self->_effectView, view);
    if (self->_effectView)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      assetImageView = [(PXStoryChromeButton *)self assetImageView];
      v32[0] = assetImageView;
      systemImageView = [(PXStoryChromeButton *)self systemImageView];
      v32[1] = systemImageView;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];

      v18 = [v17 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        do
        {
          v21 = 0;
          do
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v24 + 1) + 8 * v21);
            contentView2 = [(UIVisualEffectView *)viewCopy contentView];
            [contentView2 addSubview:v22];

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v19);
      }

      [(PXStoryChromeButton *)self insertSubview:viewCopy atIndex:0];
    }

    [(PXStoryChromeButton *)self setNeedsLayout];
  }
}

- (void)_updateVisualEffectView
{
  userData = [(PXStoryChromeButton *)self userData];
  if ([userData backgroundStyle] == 1)
  {
  }

  else
  {
    userData2 = [(PXStoryChromeButton *)self userData];
    backgroundStyle = [userData2 backgroundStyle];

    if (backgroundStyle != 2)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  effectView = [(PXStoryChromeButton *)self effectView];
  if (!effectView)
  {
    effectView = objc_alloc_init(MEMORY[0x1E69DD298]);
  }

  v8 = effectView;
  [(PXStoryChromeButton *)self _configureVisualEffectView:effectView];
  v7 = v8;
LABEL_8:
  v9 = v7;
  [(PXStoryChromeButton *)self setEffectView:v7];
}

- (void)_updateAssetImageView
{
  assetImage = [(PXStoryChromeButton *)self assetImage];
  assetImageView = [(PXStoryChromeButton *)self assetImageView];
  [assetImageView setImage:assetImage];

  assetImageView2 = [(PXStoryChromeButton *)self assetImageView];
  [assetImageView2 setHidden:assetImage == 0];
}

- (void)_updateBadgeSystemImageView
{
  userData = [(PXStoryChromeButton *)self userData];
  badgeSystemImageName = [userData badgeSystemImageName];

  if (badgeSystemImageName)
  {
    v4 = [(PXStoryChromeButton *)self _badgeImageWithSystemName:badgeSystemImageName];
  }

  else
  {
    v4 = 0;
  }

  badgeSystemImageView = [(PXStoryChromeButton *)self badgeSystemImageView];
  [badgeSystemImageView setImage:v4];

  badgeSystemImageView2 = [(PXStoryChromeButton *)self badgeSystemImageView];
  [badgeSystemImageView2 setHidden:v4 == 0];
}

- (void)_updateSystemImageVisualEffectView
{
  userData = [(PXStoryChromeButton *)self userData];
  spec = [userData spec];
  systemImageStyle = [spec systemImageStyle];

  systemImageVisualEffectView = [(PXStoryChromeButton *)self systemImageVisualEffectView];
  effect = [systemImageVisualEffectView effect];

  if (systemImageStyle == 1)
  {
    if (!effect)
    {
      v8 = [MEMORY[0x1E69DC730] effectWithStyle:10];
      systemImageVisualEffectView2 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
      [systemImageVisualEffectView2 setEffect:v8];
    }

    systemImageVisualEffectView3 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
    maskView = [systemImageVisualEffectView3 maskView];

    if (!maskView)
    {
      systemImageView = [(PXStoryChromeButton *)self systemImageView];
      [systemImageView removeFromSuperview];

      systemImageVisualEffectView4 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
      contentView = [systemImageVisualEffectView4 contentView];
      systemImageView2 = [(PXStoryChromeButton *)self systemImageView];
      [contentView addSubview:systemImageView2];

      systemImageView3 = [(PXStoryChromeButton *)self systemImageView];
      systemImageVisualEffectView5 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
      [systemImageVisualEffectView5 setMaskView:systemImageView3];
LABEL_10:
    }
  }

  else
  {
    if (effect)
    {
      systemImageVisualEffectView6 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
      [systemImageVisualEffectView6 setEffect:0];
    }

    systemImageVisualEffectView7 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
    maskView2 = [systemImageVisualEffectView7 maskView];

    if (maskView2)
    {
      systemImageVisualEffectView8 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
      [systemImageVisualEffectView8 setMaskView:0];

      systemImageView4 = [(PXStoryChromeButton *)self systemImageView];
      [systemImageView4 removeFromSuperview];

      systemImageView3 = [(PXStoryChromeButton *)self systemImageView];
      systemImageVisualEffectView5 = [(PXStoryChromeButton *)self assetImageView];
      [(PXStoryChromeButton *)self insertSubview:systemImageView3 aboveSubview:systemImageVisualEffectView5];
      goto LABEL_10;
    }
  }
}

- (void)_updateSystemImageView
{
  userData = [(PXStoryChromeButton *)self userData];
  spec = [userData spec];
  userData2 = [(PXStoryChromeButton *)self userData];
  systemImageName = [userData2 systemImageName];

  if (systemImageName)
  {
    v6 = [(PXStoryChromeButton *)self _imageWithSystemName:systemImageName];
  }

  else
  {
    v6 = 0;
  }

  systemImageView = [(PXStoryChromeButton *)self systemImageView];
  symbolTransition = [userData symbolTransition];

  if (symbolTransition)
  {
    symbolTransition2 = [userData symbolTransition];
    [systemImageView setSymbolImage:v6 withContentTransition:symbolTransition2];
  }

  else
  {
    [systemImageView setImage:v6];
  }

  [systemImageView setHidden:v6 == 0];
  extendedTraitCollection = [spec extendedTraitCollection];
  userInterfaceIdiom = [extendedTraitCollection userInterfaceIdiom];

  if (-[PXStoryChromeButton isMenuOpen](self, "isMenuOpen") && userInterfaceIdiom != 5 || (v12 = 1.0, -[PXStoryChromeButton isHighlighted](self, "isHighlighted")) && [spec shouldDimWhenHighlighted])
  {
    v12 = 0.5;
  }

  [systemImageView setAlpha:v12];
}

- (void)_updateLabel
{
  userData = [(PXStoryChromeButton *)self userData];
  label = [userData label];
  if (label)
  {
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    spec = [userData spec];
    labelAttributes = [spec labelAttributes];
    v7 = [v6 initWithString:label attributes:labelAttributes];
  }

  else
  {
    v7 = 0;
  }

  label2 = [(PXStoryChromeButton *)self label];
  [label2 setAttributedText:v7];

  if (label)
  {
  }

  label3 = [(PXStoryChromeButton *)self label];
  [label3 setHidden:label == 0];
}

- (id)_createLabel
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);

  return v2;
}

- (id)_createAssetImageView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v2 setContentMode:2];
  [v2 setUserInteractionEnabled:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:clearColor];

  return v2;
}

- (void)setAssetImage:(id)image
{
  imageCopy = image;
  v6 = imageCopy;
  if (self->_assetImage != imageCopy)
  {
    v8 = imageCopy;
    v7 = [(UIImage *)imageCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_assetImage, image);
      [(PXStoryChromeButton *)self _invalidateAppearance];
      v6 = v8;
    }
  }
}

- (void)_px_invalidatePointerInteraction
{
  pointerInteraction = [(PXStoryChromeButton *)self pointerInteraction];
  [pointerInteraction invalidate];
}

- (void)_updateAppearance
{
  userData = [(PXStoryChromeButton *)self userData];
  spec = [userData spec];
  if (spec)
  {
    -[PXStoryChromeButton setEnabled:](self, "setEnabled:", [userData enabled]);
    isFocused = [(PXStoryChromeButton *)self isFocused];
    if ([objc_opt_class() usesButtonSystem])
    {
      plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      label = [userData label];
      [plainButtonConfiguration setTitle:label];

      systemImageName = [userData systemImageName];
      if (systemImageName)
      {
        layer = [(PXStoryChromeButton *)self _imageWithSystemName:systemImageName];
      }

      else
      {
        layer = 0;
      }

      [plainButtonConfiguration setImage:layer];
      [(PXStoryChromeButton *)self setConfiguration:plainButtonConfiguration];
      if (userData)
      {
        [userData transform];
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
      }

      v28 = v31;
      v29 = v32;
      v30 = v33;
      [(PXStoryChromeButton *)self setTransform:&v28];
      [(PXStoryChromeButton *)self _updateAssetImageView];
    }

    else
    {
      tintColor = [userData tintColor];
      v11 = tintColor;
      if (tintColor)
      {
        defaultTintColor = tintColor;
      }

      else
      {
        defaultTintColor = [spec defaultTintColor];
      }

      plainButtonConfiguration = defaultTintColor;

      if (isFocused)
      {
        focusedTintColor = [userData focusedTintColor];
        v14 = focusedTintColor;
        if (focusedTintColor)
        {
          defaultFocusedTintColor = focusedTintColor;
        }

        else
        {
          defaultFocusedTintColor = [spec defaultFocusedTintColor];
        }

        v16 = defaultFocusedTintColor;

        plainButtonConfiguration = v16;
      }

      if (([userData enabled] & 1) == 0)
      {
        v17 = [plainButtonConfiguration colorWithAlphaComponent:0.5];

        plainButtonConfiguration = v17;
      }

      if ([(PXStoryChromeButton *)self isMenuOpen])
      {
        focusedTintColor2 = [userData focusedTintColor];
        v19 = focusedTintColor2;
        if (focusedTintColor2)
        {
          defaultFocusedTintColor2 = focusedTintColor2;
        }

        else
        {
          defaultFocusedTintColor2 = [spec defaultFocusedTintColor];
        }

        v21 = defaultFocusedTintColor2;

        plainButtonConfiguration = v21;
      }

      [(PXStoryChromeButton *)self setTintColor:plainButtonConfiguration];
      layer = [(PXStoryChromeButton *)self layer];
      [spec shadowRadius];
      [layer setShadowRadius:?];
      if (isFocused)
      {
        [spec focusedShadowOpacity];
        *&v22 = v22;
        [layer setShadowOpacity:v22];
        [spec focusedShadowOffset];
      }

      else
      {
        [layer setShadowOpacity:0.0];
        v23 = *MEMORY[0x1E695F060];
        v24 = *(MEMORY[0x1E695F060] + 8);
      }

      [layer setShadowOffset:{v23, v24}];
      if (userData)
      {
        [userData transform];
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
      }

      v28 = v25;
      v29 = v26;
      v30 = v27;
      [(PXStoryChromeButton *)self setTransform:&v28, v25, v26, v27];
      [(PXStoryChromeButton *)self _updateLabel];
      [(PXStoryChromeButton *)self _updateAssetImageView];
      [(PXStoryChromeButton *)self _updateSystemImageView];
      [(PXStoryChromeButton *)self _updateSystemImageVisualEffectView];
      [(PXStoryChromeButton *)self _updateBadgeSystemImageView];
      [(PXStoryChromeButton *)self _updateVisualEffectView];
      [(PXStoryChromeButton *)self _updateBackgroundView];
      [(PXStoryChromeButton *)self _updateEffectViewCornerRadius];
      [(PXStoryChromeButton *)self _updateBackgroundViewCornerRadius];
    }

    [(PXStoryChromeButton *)self _configureActions];
  }
}

- (void)_invalidateAppearance
{
  updater = [(PXStoryChromeButton *)self updater];
  [updater setNeedsUpdateOf:sel__updateAppearance];
}

- (void)_updateAssetImage
{
  userData = [(PXStoryChromeButton *)self userData];
  displayAsset = [userData displayAsset];
  spec = [userData spec];
  if (displayAsset)
  {
    objc_initWeak(&location, self);
    [spec defaultImageSize];
    [spec extendedTraitCollection];
    [objc_claimAutoreleasedReturnValue() displayScale];
    PXSizeScale();
  }

  [(PXStoryChromeButton *)self setAssetImage:0];
}

void __40__PXStoryChromeButton__updateAssetImage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleImageResult:v6 info:v5 forDisplayAsset:*(a1 + 32) requestID:*(*(*(a1 + 40) + 8) + 24) synchronous:*(*(*(a1 + 48) + 8) + 24)];
}

- (void)_invalidateAssetImage
{
  updater = [(PXStoryChromeButton *)self updater];
  [updater setNeedsUpdateOf:sel__updateAssetImage];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = PXStoryChromeButton;
  v5 = [(PXStoryChromeButton *)&v12 pointInside:event withEvent:?];
  [(PXStoryChromeButton *)self bounds];
  if (v5)
  {
    return 1;
  }

  if (!CGRectIsEmpty(*&v6))
  {
    [(PXStoryChromeButton *)self userData];
    [objc_claimAutoreleasedReturnValue() hitTestEdgeOutsets];
    sub_1A524D1F4();
  }

  return 0;
}

- (void)setIsHovered:(BOOL)hovered
{
  if (self->_isHovered != hovered)
  {
    self->_isHovered = hovered;
    [(PXStoryChromeButton *)self _invalidateAppearance];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(PXStoryChromeButton *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = PXStoryChromeButton;
    [(PXStoryChromeButton *)&v5 setHighlighted:highlightedCopy];
    [(PXStoryChromeButton *)self _invalidateAppearance];
  }
}

- (void)layoutSubviews
{
  updater = [(PXStoryChromeButton *)self updater];
  [updater updateIfNeeded];

  v14.receiver = self;
  v14.super_class = PXStoryChromeButton;
  [(PXStoryChromeButton *)&v14 layoutSubviews];
  if (([objc_opt_class() usesButtonSystem] & 1) == 0)
  {
    v4 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PXStoryChromeButton semanticContentAttribute](self, "semanticContentAttribute")}] == 1;
    [(PXStoryChromeButton *)self bounds];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __37__PXStoryChromeButton_layoutSubviews__block_invoke;
    aBlock[3] = &__block_descriptor_65_e70__CGRect__CGPoint_dd__CGSize_dd__40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    v13 = v4;
    aBlock[4] = v5;
    aBlock[5] = v6;
    aBlock[6] = v7;
    aBlock[7] = v8;
    v9 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__PXStoryChromeButton_layoutSubviews__block_invoke_2;
    v11[3] = &unk_1E774A570;
    v11[4] = self;
    v11[5] = v9;
    _Block_copy(v11);
    userData = [(PXStoryChromeButton *)self userData];
    [userData spec];
    objc_claimAutoreleasedReturnValue();
    [userData contentEdgeInsets];
    PXEdgeInsetsInsetRect();
  }
}

uint64_t __37__PXStoryChromeButton_layoutSubviews__block_invoke(uint64_t result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (*(result + 64) == 1)
  {
    return MEMORY[0x1A590CE60](a2, a3, a4, a5, *(result + 32), *(result + 40), *(result + 48), *(result + 56), v5, v6);
  }

  return result;
}

void __37__PXStoryChromeButton_layoutSubviews__block_invoke_2(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = [v11 superview];
  (*(*(a1 + 40) + 16))(a3, a4, a5, a6);
  [v12 convertRect:*(a1 + 32) fromView:?];
  [v11 setFrame:?];
}

- (void)setIsMenuOpen:(BOOL)open
{
  if (self->_isMenuOpen != open)
  {
    self->_isMenuOpen = open;
    [(PXStoryChromeButton *)self _invalidateAppearance];
  }
}

- (void)setAlpha:(double)alpha
{
  v5.receiver = self;
  v5.super_class = PXStoryChromeButton;
  [(PXStoryChromeButton *)&v5 setAlpha:?];
  [(PXStoryChromeButton *)self setUserInteractionEnabled:alpha > 0.0];
}

- (PXStoryChromeButton)initWithFrame:(CGRect)frame
{
  v40[4] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = PXStoryChromeButton;
  v3 = [(PXStoryChromeButton *)&v39 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    uTF8String = [v5 UTF8String];

    v7 = os_log_create(*MEMORY[0x1E69BFF60], uTF8String);
    log = v3->_log;
    v3->_log = v7;

    v9 = [[off_1E7721940 alloc] initWithTarget:v3 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v3->_updater;
    v3->_updater = v9;

    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateAssetImage];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateAppearance];
    _createAssetImageView = [(PXStoryChromeButton *)v3 _createAssetImageView];
    assetImageView = v3->_assetImageView;
    v3->_assetImageView = _createAssetImageView;

    [(PXStoryChromeButton *)v3 addSubview:v3->_assetImageView];
    if ([objc_opt_class() usesButtonSystem])
    {
      plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      [(PXStoryChromeButton *)v3 setConfiguration:plainButtonConfiguration];

      [(UIImageView *)v3->_assetImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      v35 = MEMORY[0x1E696ACD8];
      leadingAnchor = [(UIImageView *)v3->_assetImageView leadingAnchor];
      leadingAnchor2 = [(PXStoryChromeButton *)v3 leadingAnchor];
      v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v40[0] = v38;
      trailingAnchor = [(UIImageView *)v3->_assetImageView trailingAnchor];
      trailingAnchor2 = [(PXStoryChromeButton *)v3 trailingAnchor];
      v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v40[1] = v34;
      topAnchor = [(UIImageView *)v3->_assetImageView topAnchor];
      topAnchor2 = [(PXStoryChromeButton *)v3 topAnchor];
      v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v40[2] = v18;
      bottomAnchor = [(UIImageView *)v3->_assetImageView bottomAnchor];
      bottomAnchor2 = [(PXStoryChromeButton *)v3 bottomAnchor];
      v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v40[3] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
      [v35 activateConstraints:v22];
    }

    else
    {
      _createSystemImageView = [objc_opt_class() _createSystemImageView];
      systemImageView = v3->_systemImageView;
      v3->_systemImageView = _createSystemImageView;

      _createBadgeSystemImageView = [objc_opt_class() _createBadgeSystemImageView];
      badgeSystemImageView = v3->_badgeSystemImageView;
      v3->_badgeSystemImageView = _createBadgeSystemImageView;

      [(PXStoryChromeButton *)v3 addSubview:v3->_systemImageView];
      _createSystemImageVisualEffectView = [objc_opt_class() _createSystemImageVisualEffectView];
      systemImageVisualEffectView = v3->_systemImageVisualEffectView;
      v3->_systemImageVisualEffectView = _createSystemImageVisualEffectView;

      [(PXStoryChromeButton *)v3 addSubview:v3->_systemImageVisualEffectView];
      [(PXStoryChromeButton *)v3 addSubview:v3->_badgeSystemImageView];
      _createLabel = [(PXStoryChromeButton *)v3 _createLabel];
      label = v3->_label;
      v3->_label = _createLabel;

      [(PXStoryChromeButton *)v3 addSubview:v3->_label];
      leadingAnchor = [(PXStoryChromeButton *)v3 layer];
      [leadingAnchor setAllowsGroupOpacity:0];
      leadingAnchor2 = [MEMORY[0x1E69DC888] blackColor];
      [leadingAnchor setShadowColor:{objc_msgSend(leadingAnchor2, "CGColor")}];
    }

    v31 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v3];
    [(PXStoryChromeButton *)v3 setPointerInteraction:v31];

    pointerInteraction = [(PXStoryChromeButton *)v3 pointerInteraction];
    [(PXStoryChromeButton *)v3 addInteraction:pointerInteraction];
  }

  return v3;
}

+ (id)_createBadgeSystemImageView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v2 setContentMode:1];
  [v2 setUserInteractionEnabled:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:clearColor];

  return v2;
}

+ (id)_createSystemImageVisualEffectView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD298]);
  [v2 setUserInteractionEnabled:0];

  return v2;
}

+ (id)_createSystemImageView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v2 setContentMode:4];
  [v2 setUserInteractionEnabled:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:clearColor];

  return v2;
}

+ (CGSize)_sizeForAttributedLabel:(id)label
{
  labelCopy = label;
  if (_sizeForAttributedLabel__onceToken != -1)
  {
    dispatch_once(&_sizeForAttributedLabel__onceToken, &__block_literal_global_245835);
  }

  v4 = [_sizeForAttributedLabel__cachedSizes objectForKey:labelCopy];
  v5 = v4;
  if (!v4)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v10 setAttributedText:labelCopy];
    [v10 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    PXSizeCeilingToPixel();
  }

  [v4 CGSizeValue];
  v7 = v6;
  v9 = v8;

  v11 = v7;
  v12 = v9;
  result.height = v12;
  result.width = v11;
  return result;
}

void __47__PXStoryChromeButton__sizeForAttributedLabel___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _sizeForAttributedLabel__cachedSizes;
  _sizeForAttributedLabel__cachedSizes = v0;
}

+ (CGSize)sizeWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  spec = [configurationCopy spec];
  v7 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if ([objc_opt_class() usesButtonSystem])
  {
    label = objc_alloc_init(PXStoryChromeButton);
    [(PXStoryChromeButton *)label setUserData:configurationCopy];
    [(PXStoryChromeButton *)label sizeThatFits:v7, v6];
    v7 = v9;
    v6 = v10;
  }

  else
  {
    if ([configurationCopy hasPrimaryImageContent])
    {
      [spec defaultImageSize];
      v7 = v11;
      v6 = v12;
    }

    label = [configurationCopy label];
    if (label)
    {
      v13 = objc_alloc(MEMORY[0x1E696AAB0]);
      labelAttributes = [spec labelAttributes];
      v15 = [v13 initWithString:label attributes:labelAttributes];

      [self _sizeForAttributedLabel:v15];
      v17 = v16;
      v19 = v18;
      [spec labelPadding];
      v7 = v7 + v21 + v17 + v20;
      v24 = v23 + v19 + v22;
      if (v6 < v24)
      {
        v6 = v24;
      }
    }
  }

  [configurationCopy contentEdgeInsets];
  v27 = v7 + v25 + v26;
  v30 = v6 + v28 + v29;

  v31 = v27;
  v32 = v30;
  result.height = v32;
  result.width = v31;
  return result;
}

@end