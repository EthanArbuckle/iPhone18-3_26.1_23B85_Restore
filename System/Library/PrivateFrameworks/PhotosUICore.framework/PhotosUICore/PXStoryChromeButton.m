@interface PXStoryChromeButton
+ (CGSize)_sizeForAttributedLabel:(id)a3;
+ (CGSize)sizeWithConfiguration:(id)a3;
+ (id)_createBadgeSystemImageView;
+ (id)_createSystemImageView;
+ (id)_createSystemImageVisualEffectView;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)clippingRect;
- (PXStoryChromeButton)initWithFrame:(CGRect)a3;
- (id)_badgeImageWithSystemName:(id)a3;
- (id)_createAssetImageView;
- (id)_createLabel;
- (id)_imageWithSystemName:(id)a3;
- (id)_imageWithSystemName:(id)a3 symbolConfiguration:(id)a4;
- (id)accessibilityLabel;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_configureActions;
- (void)_configureBackgroundView:(id)a3;
- (void)_configureVisualEffectView:(id)a3;
- (void)_handleImageResult:(id)a3 info:(id)a4 forDisplayAsset:(id)a5 requestID:(int64_t)a6 synchronous:(BOOL)a7;
- (void)_invalidateAppearance;
- (void)_invalidateAssetImage;
- (void)_px_invalidatePointerInteraction;
- (void)_setEffectViewFrame:(CGRect)a3;
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
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
- (void)setAssetImage:(id)a3;
- (void)setBackgroundView:(id)a3;
- (void)setCustomContextMenuInteraction:(id)a3;
- (void)setEffectView:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIsHovered:(BOOL)a3;
- (void)setIsMenuOpen:(BOOL)a3;
- (void)setUserData:(id)a3;
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
  v2 = [(PXStoryChromeButton *)self userData];
  v3 = [v2 axLabel];

  return v3;
}

- (void)setUserData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_userData != v4)
  {
    v9 = v4;
    v6 = [(PXStoryChromeButtonConfiguration *)v4 isEqual:?];
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

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PXStoryChromeButton;
  [(PXStoryChromeButton *)&v15 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  v8 = [v6 nextFocusedView];

  if (v8 == self)
  {
    v10 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v11 = __72__PXStoryChromeButton_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
    goto LABEL_5;
  }

  v9 = [v6 previouslyFocusedView];

  if (v9 == self)
  {
    v10 = &v12;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v11 = __72__PXStoryChromeButton_didUpdateFocusInContext_withAnimationCoordinator___block_invoke_2;
LABEL_5:
    v10[2] = v11;
    v10[3] = &unk_1E774C648;
    v10[4] = self;
    [v7 addCoordinatedAnimations:v12 completion:v13];
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v7.receiver = self;
  v7.super_class = PXStoryChromeButton;
  [(PXStoryChromeButton *)&v7 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:a5];
  v6 = [(PXStoryChromeButton *)self menu];
  [v6 didClose];

  [(PXStoryChromeButton *)self setIsMenuOpen:0];
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v7.receiver = self;
  v7.super_class = PXStoryChromeButton;
  [(PXStoryChromeButton *)&v7 contextMenuInteraction:a3 willDisplayMenuForConfiguration:a4 animator:a5];
  v6 = [(PXStoryChromeButton *)self menu];
  [v6 willOpen];

  [(PXStoryChromeButton *)self setIsMenuOpen:1];
}

- (void)setCustomContextMenuInteraction:(id)a3
{
  v5 = a3;
  customContextMenuInteraction = self->_customContextMenuInteraction;
  v7 = v5;
  if (customContextMenuInteraction != v5)
  {
    if (customContextMenuInteraction)
    {
      [(PXStoryChromeButton *)self removeInteraction:?];
    }

    objc_storeStrong(&self->_customContextMenuInteraction, a3);
    if (self->_customContextMenuInteraction)
    {
      [(PXStoryChromeButton *)self addInteraction:?];
    }
  }
}

- (void)_configureActions
{
  v14 = [(PXStoryChromeButton *)self userData];
  [(PXStoryChromeButton *)self removeTarget:0 action:0 forControlEvents:0x2000];
  v3 = [v14 target];
  if (v3)
  {
    v4 = v3;
    v5 = [v14 action];

    if (v5)
    {
      v6 = [v14 target];
      -[PXStoryChromeButton addTarget:action:forControlEvents:](self, "addTarget:action:forControlEvents:", v6, [v14 action], 0x2000);
    }
  }

  v7 = [v14 menu];
  [(PXStoryChromeButton *)self setMenu:v7];

  v8 = [(PXStoryChromeButton *)self menu];
  [(PXStoryChromeButton *)self setShowsMenuAsPrimaryAction:v8 != 0];

  v9 = [v14 customContextMenuInteractionDelegate];
  v10 = [v9 conformsToProtocol:&unk_1F193E078];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E69DC8E0]);
    v12 = [v14 customContextMenuInteractionDelegate];
    v13 = [v11 initWithDelegate:v12];
  }

  else
  {
    v13 = 0;
  }

  [(PXStoryChromeButton *)self setCustomContextMenuInteraction:v13];
}

- (id)_imageWithSystemName:(id)a3 symbolConfiguration:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E69DCAB8] px_systemImageNamed:v6 withConfiguration:a4];
  if (!v7)
  {
    v8 = [(PXStoryChromeButton *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_error_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Unable to find system image for name: %@", &v10, 0xCu);
    }
  }

  return v7;
}

- (id)_badgeImageWithSystemName:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryChromeButton *)self userData];
  v6 = [v5 spec];
  v7 = [MEMORY[0x1E69DCAD8] configurationWithWeight:{objc_msgSend(v6, "badgeSystemImageWeight")}];
  v8 = [v5 badgeSystemImageColors];

  if (v8)
  {
    v9 = MEMORY[0x1E69DCAD8];
    v10 = [v5 badgeSystemImageColors];
    v11 = [v9 configurationWithPaletteColors:v10];

    v12 = [v7 configurationByApplyingConfiguration:v11];

    v7 = v12;
  }

  v13 = [(PXStoryChromeButton *)self _imageWithSystemName:v4 symbolConfiguration:v7];

  return v13;
}

- (id)_imageWithSystemName:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryChromeButton *)self userData];
  v6 = [v5 spec];
  [v5 preferredSystemImagePointSize];
  v8 = v7;
  v9 = [v5 preferredSystemImageWeight];
  v10 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v9 weight:-1 scale:v8];
  if ([v5 applyTintColorAsHierarchicalColor])
  {
    v11 = MEMORY[0x1E69DCAD8];
    v12 = [(PXStoryChromeButton *)self tintColor];
    v13 = [v11 configurationWithHierarchicalColor:v12];
    v14 = [v10 configurationByApplyingConfiguration:v13];

    v10 = v14;
  }

  v15 = [(PXStoryChromeButton *)self _imageWithSystemName:v4 symbolConfiguration:v10];

  return v15;
}

- (void)_updateEffectViewCornerRadius
{
  v7 = [(PXStoryChromeButton *)self effectView];
  v3 = [(PXStoryChromeButton *)self userData];
  v4 = [v3 backgroundStyle];
  if ((v4 - 3) < 2 || v4 == 1)
  {
    [v7 bounds];
    [v7 _setCornerRadius:0 continuous:15 maskedCorners:CGRectGetHeight(v9) * 0.5];
  }

  else if (v4 == 2)
  {
    v6 = [v3 spec];
    [v6 roundedRectCornerRadius];
    [v7 _setCornerRadius:1 continuous:15 maskedCorners:?];
  }
}

- (void)_configureVisualEffectView:(id)a3
{
  v4 = a3;
  v13 = [(PXStoryChromeButton *)self userData];
  v5 = [v13 spec];
  if ([v13 hasPrimaryImageContent])
  {
    if ([(PXStoryChromeButton *)self isHighlighted])
    {
      v6 = [v5 highlightedBlurEffectStyle];
    }

    else
    {
      v6 = [v5 blurEffectStyle];
    }

    v7 = v6;
    v9 = [(PXStoryChromeButton *)self isHighlighted];
    v10 = @"PXStoryChromeButton";
    if (v9)
    {
      v10 = @"PXStoryChromeButton-highlighted";
    }

    v8 = v10;
  }

  else
  {
    v7 = [v5 textOnlyBlurEffectStyle];
    v8 = @"PXStoryChromeButton-textOnly";
  }

  v11 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v11];

  v12 = [MEMORY[0x1E69DC730] effectWithStyle:v7];
  [v4 setEffect:v12];

  [v4 _setGroupName:v8];
  [v4 setUserInteractionEnabled:0];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [(PXStoryChromeButton *)self userData:a3];
  [v5 spec];
  objc_claimAutoreleasedReturnValue();
  [(PXStoryChromeButton *)self frame];
  [v5 pointerShapeInsets];
  PXEdgeInsetsInsetRect();
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a5;
  v7 = [(PXStoryChromeButton *)self userData];
  [v6 rect];

  [v7 hitTestEdgeOutsets];
  sub_1A524D1F4();
}

- (void)_handleImageResult:(id)a3 info:(id)a4 forDisplayAsset:(id)a5 requestID:(int64_t)a6 synchronous:(BOOL)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  if (a7 || [(PXStoryChromeButton *)self imageRequestID]== a6)
  {
    v14 = [(PXStoryChromeButton *)self userData];
    v15 = [v14 displayAsset];
    v16 = v15;
    if (v15 == v13)
    {
    }

    else
    {
      v17 = [v13 isEqual:v15];

      if ((v17 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    [(PXStoryChromeButton *)self setAssetImage:v18];
  }

LABEL_8:
}

- (void)_updateBackgroundViewCornerRadius
{
  v8 = [(PXStoryChromeButton *)self backgroundView];
  v3 = [v8 layer];
  v4 = [(PXStoryChromeButton *)self userData];
  v5 = [v4 backgroundStyle];
  if (v5 > 2)
  {
    if ((v5 - 3) >= 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v5)
    {
      v7 = 0;
      goto LABEL_9;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        goto LABEL_10;
      }

      [v3 setCornerCurve:*MEMORY[0x1E69796E8]];
      v6 = [v4 spec];
      [v6 roundedRectCornerRadius];
      [v3 setCornerRadius:?];

      goto LABEL_8;
    }
  }

  [v3 setCornerCurve:*MEMORY[0x1E69796E8]];
  [v8 bounds];
  [v3 setCornerRadius:CGRectGetHeight(v10) * 0.5];
LABEL_8:
  v7 = 1;
LABEL_9:
  [v3 setShadowPathIsBounds:v7];
LABEL_10:
}

- (void)_configureBackgroundView:(id)a3
{
  v12 = a3;
  v4 = [(PXStoryChromeButton *)self userData];
  v5 = [v4 backgroundStyle];
  v6 = [v4 spec];
  v7 = [(PXStoryChromeButton *)self isFocused];
  if (v5 == 4)
  {
    if (v7)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v10 = ;
    [v12 setBackgroundColor:v10];

    v11 = [(PXStoryChromeButton *)self isHighlighted];
    v9 = 0.7;
    if (!v11)
    {
      v9 = 1.0;
    }
  }

  else
  {
    v8 = [v4 solidBackgroundColor];
    [v12 setBackgroundColor:v8];

    v9 = 1.0;
  }

  [v12 setAlpha:v9];
  [v12 setUserInteractionEnabled:0];
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  backgroundView = self->_backgroundView;
  v7 = v5;
  if (backgroundView != v5)
  {
    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, a3);
    if (self->_backgroundView)
    {
      [(PXStoryChromeButton *)self addSubview:?];
    }
  }
}

- (void)_updateBackgroundView
{
  v3 = [(PXStoryChromeButton *)self userData];
  v4 = [v3 backgroundStyle];

  if ((v4 - 3) > 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(PXStoryChromeButton *)self backgroundView];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    }

    v7 = v5;
    [(PXStoryChromeButton *)self _configureBackgroundView:v5];
    v6 = v7;
  }

  v8 = v6;
  [(PXStoryChromeButton *)self setBackgroundView:v6];
}

- (void)_setEffectViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(PXStoryChromeButton *)self effectView];
  [v9 frame];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  if (!CGRectEqualToRect(v11, v12))
  {
    v8 = [(PXStoryChromeButton *)self effectView];
    [v8 setFrame:{x, y, width, height}];

    [(PXStoryChromeButton *)self _updateEffectViewCornerRadius];
  }
}

- (void)setEffectView:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  effectView = self->_effectView;
  if (effectView != v5)
  {
    if (effectView)
    {
      v7 = [(UIVisualEffectView *)effectView contentView];
      v8 = [v7 subviews];
      v9 = [v8 copy];

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

    objc_storeStrong(&self->_effectView, a3);
    if (self->_effectView)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = [(PXStoryChromeButton *)self assetImageView];
      v32[0] = v15;
      v16 = [(PXStoryChromeButton *)self systemImageView];
      v32[1] = v16;
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
            v23 = [(UIVisualEffectView *)v5 contentView];
            [v23 addSubview:v22];

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v19);
      }

      [(PXStoryChromeButton *)self insertSubview:v5 atIndex:0];
    }

    [(PXStoryChromeButton *)self setNeedsLayout];
  }
}

- (void)_updateVisualEffectView
{
  v3 = [(PXStoryChromeButton *)self userData];
  if ([v3 backgroundStyle] == 1)
  {
  }

  else
  {
    v4 = [(PXStoryChromeButton *)self userData];
    v5 = [v4 backgroundStyle];

    if (v5 != 2)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  v6 = [(PXStoryChromeButton *)self effectView];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD298]);
  }

  v8 = v6;
  [(PXStoryChromeButton *)self _configureVisualEffectView:v6];
  v7 = v8;
LABEL_8:
  v9 = v7;
  [(PXStoryChromeButton *)self setEffectView:v7];
}

- (void)_updateAssetImageView
{
  v5 = [(PXStoryChromeButton *)self assetImage];
  v3 = [(PXStoryChromeButton *)self assetImageView];
  [v3 setImage:v5];

  v4 = [(PXStoryChromeButton *)self assetImageView];
  [v4 setHidden:v5 == 0];
}

- (void)_updateBadgeSystemImageView
{
  v3 = [(PXStoryChromeButton *)self userData];
  v7 = [v3 badgeSystemImageName];

  if (v7)
  {
    v4 = [(PXStoryChromeButton *)self _badgeImageWithSystemName:v7];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PXStoryChromeButton *)self badgeSystemImageView];
  [v5 setImage:v4];

  v6 = [(PXStoryChromeButton *)self badgeSystemImageView];
  [v6 setHidden:v4 == 0];
}

- (void)_updateSystemImageVisualEffectView
{
  v3 = [(PXStoryChromeButton *)self userData];
  v4 = [v3 spec];
  v5 = [v4 systemImageStyle];

  v6 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
  v7 = [v6 effect];

  if (v5 == 1)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E69DC730] effectWithStyle:10];
      v9 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
      [v9 setEffect:v8];
    }

    v10 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
    v11 = [v10 maskView];

    if (!v11)
    {
      v12 = [(PXStoryChromeButton *)self systemImageView];
      [v12 removeFromSuperview];

      v13 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
      v14 = [v13 contentView];
      v15 = [(PXStoryChromeButton *)self systemImageView];
      [v14 addSubview:v15];

      v22 = [(PXStoryChromeButton *)self systemImageView];
      v16 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
      [v16 setMaskView:v22];
LABEL_10:
    }
  }

  else
  {
    if (v7)
    {
      v17 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
      [v17 setEffect:0];
    }

    v18 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
    v19 = [v18 maskView];

    if (v19)
    {
      v20 = [(PXStoryChromeButton *)self systemImageVisualEffectView];
      [v20 setMaskView:0];

      v21 = [(PXStoryChromeButton *)self systemImageView];
      [v21 removeFromSuperview];

      v22 = [(PXStoryChromeButton *)self systemImageView];
      v16 = [(PXStoryChromeButton *)self assetImageView];
      [(PXStoryChromeButton *)self insertSubview:v22 aboveSubview:v16];
      goto LABEL_10;
    }
  }
}

- (void)_updateSystemImageView
{
  v13 = [(PXStoryChromeButton *)self userData];
  v3 = [v13 spec];
  v4 = [(PXStoryChromeButton *)self userData];
  v5 = [v4 systemImageName];

  if (v5)
  {
    v6 = [(PXStoryChromeButton *)self _imageWithSystemName:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PXStoryChromeButton *)self systemImageView];
  v8 = [v13 symbolTransition];

  if (v8)
  {
    v9 = [v13 symbolTransition];
    [v7 setSymbolImage:v6 withContentTransition:v9];
  }

  else
  {
    [v7 setImage:v6];
  }

  [v7 setHidden:v6 == 0];
  v10 = [v3 extendedTraitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (-[PXStoryChromeButton isMenuOpen](self, "isMenuOpen") && v11 != 5 || (v12 = 1.0, -[PXStoryChromeButton isHighlighted](self, "isHighlighted")) && [v3 shouldDimWhenHighlighted])
  {
    v12 = 0.5;
  }

  [v7 setAlpha:v12];
}

- (void)_updateLabel
{
  v10 = [(PXStoryChromeButton *)self userData];
  v5 = [v10 label];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v2 = [v10 spec];
    v3 = [v2 labelAttributes];
    v7 = [v6 initWithString:v5 attributes:v3];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PXStoryChromeButton *)self label];
  [v8 setAttributedText:v7];

  if (v5)
  {
  }

  v9 = [(PXStoryChromeButton *)self label];
  [v9 setHidden:v5 == 0];
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
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v3];

  return v2;
}

- (void)setAssetImage:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_assetImage != v5)
  {
    v8 = v5;
    v7 = [(UIImage *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_assetImage, a3);
      [(PXStoryChromeButton *)self _invalidateAppearance];
      v6 = v8;
    }
  }
}

- (void)_px_invalidatePointerInteraction
{
  v2 = [(PXStoryChromeButton *)self pointerInteraction];
  [v2 invalidate];
}

- (void)_updateAppearance
{
  v3 = [(PXStoryChromeButton *)self userData];
  v4 = [v3 spec];
  if (v4)
  {
    -[PXStoryChromeButton setEnabled:](self, "setEnabled:", [v3 enabled]);
    v5 = [(PXStoryChromeButton *)self isFocused];
    if ([objc_opt_class() usesButtonSystem])
    {
      v6 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      v7 = [v3 label];
      [v6 setTitle:v7];

      v8 = [v3 systemImageName];
      if (v8)
      {
        v9 = [(PXStoryChromeButton *)self _imageWithSystemName:v8];
      }

      else
      {
        v9 = 0;
      }

      [v6 setImage:v9];
      [(PXStoryChromeButton *)self setConfiguration:v6];
      if (v3)
      {
        [v3 transform];
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
      v10 = [v3 tintColor];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [v4 defaultTintColor];
      }

      v6 = v12;

      if (v5)
      {
        v13 = [v3 focusedTintColor];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [v4 defaultFocusedTintColor];
        }

        v16 = v15;

        v6 = v16;
      }

      if (([v3 enabled] & 1) == 0)
      {
        v17 = [v6 colorWithAlphaComponent:0.5];

        v6 = v17;
      }

      if ([(PXStoryChromeButton *)self isMenuOpen])
      {
        v18 = [v3 focusedTintColor];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = [v4 defaultFocusedTintColor];
        }

        v21 = v20;

        v6 = v21;
      }

      [(PXStoryChromeButton *)self setTintColor:v6];
      v9 = [(PXStoryChromeButton *)self layer];
      [v4 shadowRadius];
      [v9 setShadowRadius:?];
      if (v5)
      {
        [v4 focusedShadowOpacity];
        *&v22 = v22;
        [v9 setShadowOpacity:v22];
        [v4 focusedShadowOffset];
      }

      else
      {
        [v9 setShadowOpacity:0.0];
        v23 = *MEMORY[0x1E695F060];
        v24 = *(MEMORY[0x1E695F060] + 8);
      }

      [v9 setShadowOffset:{v23, v24}];
      if (v3)
      {
        [v3 transform];
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
  v2 = [(PXStoryChromeButton *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAppearance];
}

- (void)_updateAssetImage
{
  v3 = [(PXStoryChromeButton *)self userData];
  v4 = [v3 displayAsset];
  v5 = [v3 spec];
  if (v4)
  {
    objc_initWeak(&location, self);
    [v5 defaultImageSize];
    [v5 extendedTraitCollection];
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
  v2 = [(PXStoryChromeButton *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAssetImage];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v12.receiver = self;
  v12.super_class = PXStoryChromeButton;
  v5 = [(PXStoryChromeButton *)&v12 pointInside:a4 withEvent:?];
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

- (void)setIsHovered:(BOOL)a3
{
  if (self->_isHovered != a3)
  {
    self->_isHovered = a3;
    [(PXStoryChromeButton *)self _invalidateAppearance];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(PXStoryChromeButton *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PXStoryChromeButton;
    [(PXStoryChromeButton *)&v5 setHighlighted:v3];
    [(PXStoryChromeButton *)self _invalidateAppearance];
  }
}

- (void)layoutSubviews
{
  v3 = [(PXStoryChromeButton *)self updater];
  [v3 updateIfNeeded];

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
    v10 = [(PXStoryChromeButton *)self userData];
    [v10 spec];
    objc_claimAutoreleasedReturnValue();
    [v10 contentEdgeInsets];
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

- (void)setIsMenuOpen:(BOOL)a3
{
  if (self->_isMenuOpen != a3)
  {
    self->_isMenuOpen = a3;
    [(PXStoryChromeButton *)self _invalidateAppearance];
  }
}

- (void)setAlpha:(double)a3
{
  v5.receiver = self;
  v5.super_class = PXStoryChromeButton;
  [(PXStoryChromeButton *)&v5 setAlpha:?];
  [(PXStoryChromeButton *)self setUserInteractionEnabled:a3 > 0.0];
}

- (PXStoryChromeButton)initWithFrame:(CGRect)a3
{
  v40[4] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = PXStoryChromeButton;
  v3 = [(PXStoryChromeButton *)&v39 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v5 UTF8String];

    v7 = os_log_create(*MEMORY[0x1E69BFF60], v6);
    log = v3->_log;
    v3->_log = v7;

    v9 = [[off_1E7721940 alloc] initWithTarget:v3 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v3->_updater;
    v3->_updater = v9;

    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateAssetImage];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateAppearance];
    v11 = [(PXStoryChromeButton *)v3 _createAssetImageView];
    assetImageView = v3->_assetImageView;
    v3->_assetImageView = v11;

    [(PXStoryChromeButton *)v3 addSubview:v3->_assetImageView];
    if ([objc_opt_class() usesButtonSystem])
    {
      v13 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      [(PXStoryChromeButton *)v3 setConfiguration:v13];

      [(UIImageView *)v3->_assetImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      v35 = MEMORY[0x1E696ACD8];
      v14 = [(UIImageView *)v3->_assetImageView leadingAnchor];
      v15 = [(PXStoryChromeButton *)v3 leadingAnchor];
      v38 = [v14 constraintEqualToAnchor:v15];
      v40[0] = v38;
      v37 = [(UIImageView *)v3->_assetImageView trailingAnchor];
      v36 = [(PXStoryChromeButton *)v3 trailingAnchor];
      v34 = [v37 constraintEqualToAnchor:v36];
      v40[1] = v34;
      v16 = [(UIImageView *)v3->_assetImageView topAnchor];
      v17 = [(PXStoryChromeButton *)v3 topAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      v40[2] = v18;
      v19 = [(UIImageView *)v3->_assetImageView bottomAnchor];
      v20 = [(PXStoryChromeButton *)v3 bottomAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      v40[3] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
      [v35 activateConstraints:v22];
    }

    else
    {
      v23 = [objc_opt_class() _createSystemImageView];
      systemImageView = v3->_systemImageView;
      v3->_systemImageView = v23;

      v25 = [objc_opt_class() _createBadgeSystemImageView];
      badgeSystemImageView = v3->_badgeSystemImageView;
      v3->_badgeSystemImageView = v25;

      [(PXStoryChromeButton *)v3 addSubview:v3->_systemImageView];
      v27 = [objc_opt_class() _createSystemImageVisualEffectView];
      systemImageVisualEffectView = v3->_systemImageVisualEffectView;
      v3->_systemImageVisualEffectView = v27;

      [(PXStoryChromeButton *)v3 addSubview:v3->_systemImageVisualEffectView];
      [(PXStoryChromeButton *)v3 addSubview:v3->_badgeSystemImageView];
      v29 = [(PXStoryChromeButton *)v3 _createLabel];
      label = v3->_label;
      v3->_label = v29;

      [(PXStoryChromeButton *)v3 addSubview:v3->_label];
      v14 = [(PXStoryChromeButton *)v3 layer];
      [v14 setAllowsGroupOpacity:0];
      v15 = [MEMORY[0x1E69DC888] blackColor];
      [v14 setShadowColor:{objc_msgSend(v15, "CGColor")}];
    }

    v31 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v3];
    [(PXStoryChromeButton *)v3 setPointerInteraction:v31];

    v32 = [(PXStoryChromeButton *)v3 pointerInteraction];
    [(PXStoryChromeButton *)v3 addInteraction:v32];
  }

  return v3;
}

+ (id)_createBadgeSystemImageView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v2 setContentMode:1];
  [v2 setUserInteractionEnabled:0];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v3];

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
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v3];

  return v2;
}

+ (CGSize)_sizeForAttributedLabel:(id)a3
{
  v3 = a3;
  if (_sizeForAttributedLabel__onceToken != -1)
  {
    dispatch_once(&_sizeForAttributedLabel__onceToken, &__block_literal_global_245835);
  }

  v4 = [_sizeForAttributedLabel__cachedSizes objectForKey:v3];
  v5 = v4;
  if (!v4)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v10 setAttributedText:v3];
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

+ (CGSize)sizeWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 spec];
  v7 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if ([objc_opt_class() usesButtonSystem])
  {
    v8 = objc_alloc_init(PXStoryChromeButton);
    [(PXStoryChromeButton *)v8 setUserData:v4];
    [(PXStoryChromeButton *)v8 sizeThatFits:v7, v6];
    v7 = v9;
    v6 = v10;
  }

  else
  {
    if ([v4 hasPrimaryImageContent])
    {
      [v5 defaultImageSize];
      v7 = v11;
      v6 = v12;
    }

    v8 = [v4 label];
    if (v8)
    {
      v13 = objc_alloc(MEMORY[0x1E696AAB0]);
      v14 = [v5 labelAttributes];
      v15 = [v13 initWithString:v8 attributes:v14];

      [a1 _sizeForAttributedLabel:v15];
      v17 = v16;
      v19 = v18;
      [v5 labelPadding];
      v7 = v7 + v21 + v17 + v20;
      v24 = v23 + v19 + v22;
      if (v6 < v24)
      {
        v6 = v24;
      }
    }
  }

  [v4 contentEdgeInsets];
  v27 = v7 + v25 + v26;
  v30 = v6 + v28 + v29;

  v31 = v27;
  v32 = v30;
  result.height = v32;
  result.width = v31;
  return result;
}

@end