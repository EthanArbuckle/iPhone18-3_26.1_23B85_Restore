@interface _UIStackedImageContainerView
- (BOOL)_applyKeyPathsAndRelativeValues:(id)a3 forMotionEffect:(id)a4;
- (CGPoint)focusDirection;
- (UIView)maskedOverlayView;
- (UIView)unmaskedOverlayView;
- (_UIStackedImageContainerView)initWithFrame:(CGRect)a3;
- (id)_focusedFrameGuideCreateIfNecessary:(BOOL)a3;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4;
- (id)_viewForBackgroundEffects;
- (unint64_t)controlState;
- (void)_installMotionEffects;
- (void)_setStackFocused:(BOOL)a3 animated:(BOOL)a4 focusAnimationCoordinator:(id)a5;
- (void)_uninstallMotionEffects;
- (void)_updateContainerLayerImages;
- (void)_updateFocusDirection:(CGPoint)a3 animated:(BOOL)a4;
- (void)_updateFocusedFrameGuideConstraintsIfApplicable;
- (void)dealloc;
- (void)setBounds:(CGRect)a3;
- (void)setConfig:(id)a3;
- (void)setConstructedStackImage:(id)a3;
- (void)setControlState:(unint64_t)a3 animated:(BOOL)a4 focusAnimationCoordinator:(id)a5;
- (void)setFocusDirection:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setInstallsMotionEffectsWhenFocused:(BOOL)a3;
- (void)setMaskedOverlayView:(id)a3;
- (void)setPressed:(BOOL)a3;
- (void)setStackImage:(id)a3;
- (void)setUnmaskedOverlayView:(id)a3;
@end

@implementation _UIStackedImageContainerView

- (_UIStackedImageContainerView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UIStackedImageContainerView;
  v3 = [(UIView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_UIStackedImageContainerView *)v3 _imageContainerLayer];
    [v5 _configureForContainedInStackedImageContainerView];

    v6 = +[_UIStackedImageConfiguration newStandardConfiguration];
    [(_UIStackedImageContainerView *)v4 setConfig:v6];
    v4->_installsMotionEffectsWhenFocused = 1;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(_UIStackedImageContainerView *)self _renderer];
  [v3 setLayerStack:0];

  v4.receiver = self;
  v4.super_class = _UIStackedImageContainerView;
  [(UIView *)&v4 dealloc];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UIStackedImageContainerView;
  [(UIView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UIStackedImageContainerView *)self _updateFocusedFrameGuideConstraintsIfApplicable];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UIStackedImageContainerView;
  [(UIView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UIStackedImageContainerView *)self _updateFocusedFrameGuideConstraintsIfApplicable];
}

- (void)_updateContainerLayerImages
{
  v3 = [(UIImage *)self->_stackImage _primitiveImageAsset];
  v4 = [v3 _layerStack];
  constructedStackImage = v4;
  if (!v4)
  {
    constructedStackImage = self->_constructedStackImage;
  }

  v10 = constructedStackImage;

  if (!v10)
  {
    if (self->_stackImage)
    {
      v6 = objc_alloc_init(_UIStackedImageSingleNamedLayerImage);
      [(_UIStackedImageSingleNamedLayerImage *)v6 setImageObj:self->_stackImage];
      v10 = objc_alloc_init(_UIStackedImageSingleNamedStack);
      [(_UIStackedImageSingleNamedStack *)v10 setLayerImage:v6];
    }

    else
    {
      v10 = 0;
    }
  }

  v7 = [(_UIStackedImageContainerView *)self _renderer];
  v8 = [(_UIStackedImageContainerView *)self config];
  [v7 setConfiguration:v8];

  v9 = [(_UIStackedImageContainerView *)self _renderer];
  [v9 setLayerStack:v10];
}

- (void)setConfig:(id)a3
{
  v5 = a3;
  if (![(_UIStackedImageConfiguration *)self->_config isEqual:?])
  {
    objc_storeStrong(&self->_config, a3);
    [(_UIStackedImageContainerView *)self _updateContainerLayerImages];
    [(_UIStackedImageContainerView *)self _updateFocusedFrameGuideConstraintsIfApplicable];
  }
}

- (void)setStackImage:(id)a3
{
  v5 = a3;
  if (![(UIImage *)self->_stackImage isEqual:?])
  {
    objc_storeStrong(&self->_stackImage, a3);
    [(_UIStackedImageContainerView *)self _updateContainerLayerImages];
  }
}

- (void)setConstructedStackImage:(id)a3
{
  v5 = a3;
  if (self->_constructedStackImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_constructedStackImage, a3);
    [(_UIStackedImageContainerView *)self _updateContainerLayerImages];
    v5 = v6;
  }
}

- (unint64_t)controlState
{
  v2 = [(_UIStackedImageContainerView *)self _renderer];
  v3 = [v2 rendererControlState];

  return v3;
}

- (void)setControlState:(unint64_t)a3 animated:(BOOL)a4 focusAnimationCoordinator:(id)a5
{
  v5 = a4;
  v14 = a5;
  if (v14)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if ((a3 & 8) != 0)
  {
    [(_UIStackedImageContainerView *)self _installMotionEffects];
    v9 = v14;
    if (!v8)
    {
      goto LABEL_10;
    }

    v10 = [(_UIStackedImageContainerView *)self config];
    v11 = [v10 focusAnimationConfiguration];
    v12 = [UIFocusAnimationCoordinator _focusingAnimationCoordinatorWithConfiguration:v11 inContext:0];
  }

  else
  {
    [(_UIStackedImageContainerView *)self _uninstallMotionEffects];
    v9 = v14;
    if (!v8)
    {
      goto LABEL_10;
    }

    v10 = [(_UIStackedImageContainerView *)self config];
    v11 = [v10 focusAnimationConfiguration];
    v12 = [UIFocusAnimationCoordinator _unfocusingAnimationCoordinatorWithConfiguration:v11 inContext:0];
  }

  v9 = v12;

LABEL_10:
  [(_UIStackedImageContainerView *)self focusDirection];
  [(_UIStackedImageContainerView *)self _updateGlassMaterialsWithControlState:a3 focusDirection:v5 animated:v9 focusAnimationCoordinator:?];
  v13 = [(_UIStackedImageContainerView *)self _renderer];
  [v13 setRendererControlState:a3 animated:v5 focusAnimationCoordinator:v9];

  if (v9 != v14)
  {
    [v9 _animate];
  }
}

- (void)_setStackFocused:(BOOL)a3 animated:(BOOL)a4 focusAnimationCoordinator:(id)a5
{
  v5 = a4;
  v6 = a3;
  v10 = a5;
  v8 = [(_UIStackedImageContainerView *)self controlState]& 0xFFFFFFFFFFFFFFF7;
  v9 = 8;
  if (!v6)
  {
    v9 = 0;
  }

  [(_UIStackedImageContainerView *)self setControlState:v8 | v9 animated:v5 focusAnimationCoordinator:v10];
}

- (void)setPressed:(BOOL)a3
{
  v4 = [(_UIStackedImageContainerView *)self controlState]& 0xFFFFFFFFFFFFFFFELL | a3;

  [(_UIStackedImageContainerView *)self setControlState:v4 animated:1];
}

- (CGPoint)focusDirection
{
  v2 = [(_UIStackedImageContainerView *)self _renderer];
  [v2 focusDirection];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setFocusDirection:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(_UIStackedImageContainerView *)self installsMotionEffectsWhenFocused]&& setFocusDirection__once != -1)
  {
    dispatch_once(&setFocusDirection__once, &__block_literal_global_721);
  }

  [(_UIStackedImageContainerView *)self _updateFocusDirection:1 animated:x, y];
}

- (void)_updateFocusDirection:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(_UIStackedImageContainerView *)self _renderer];
  [v8 setFocusDirection:v4 animated:{x, y}];

  v9 = [(_UIStackedImageContainerView *)self controlState];

  [(_UIStackedImageContainerView *)self _updateGlassMaterialsWithControlState:v9 focusDirection:v4 animated:0 focusAnimationCoordinator:x, y];
}

- (void)setInstallsMotionEffectsWhenFocused:(BOOL)a3
{
  if (self->_installsMotionEffectsWhenFocused != a3)
  {
    self->_installsMotionEffectsWhenFocused = a3;
    if (a3)
    {
      if ([(_UIStackedImageContainerView *)self isStackFocused])
      {

        [(_UIStackedImageContainerView *)self _installMotionEffects];
      }
    }

    else
    {

      [(_UIStackedImageContainerView *)self _uninstallMotionEffects];
    }
  }
}

- (void)_installMotionEffects
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (!self->_stackMotionEffects)
  {
    if ([(_UIStackedImageContainerView *)self installsMotionEffectsWhenFocused])
    {
      v3 = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"focusDirectionX" type:0];
      [(UIInterpolatingMotionEffect *)v3 setMinimumRelativeValue:&unk_1EFE2F0E8];
      [(UIInterpolatingMotionEffect *)v3 setMaximumRelativeValue:&unk_1EFE2F0F8];
      v4 = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"focusDirectionY" type:1];
      [(UIInterpolatingMotionEffect *)v4 setMinimumRelativeValue:&unk_1EFE2F0E8];
      [(UIInterpolatingMotionEffect *)v4 setMaximumRelativeValue:&unk_1EFE2F0F8];
      v5 = objc_alloc_init(UIMotionEffectGroup);
      stackMotionEffects = self->_stackMotionEffects;
      self->_stackMotionEffects = v5;

      v7 = self->_stackMotionEffects;
      v9[0] = v3;
      v9[1] = v4;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
      [(UIMotionEffectGroup *)v7 setMotionEffects:v8];

      [(UIView *)self addMotionEffect:self->_stackMotionEffects];
    }
  }
}

- (void)_uninstallMotionEffects
{
  if (self->_stackMotionEffects)
  {
    [(UIView *)self removeMotionEffect:?];
    stackMotionEffects = self->_stackMotionEffects;
    self->_stackMotionEffects = 0;
  }
}

- (BOOL)_applyKeyPathsAndRelativeValues:(id)a3 forMotionEffect:(id)a4
{
  v5 = a3;
  v6 = [v5 objectForKey:@"focusDirectionX"];
  [v6 doubleValue];
  v8 = v7;
  v9 = [v5 objectForKey:@"focusDirectionY"];

  [v9 doubleValue];
  v11 = v10;

  [(_UIStackedImageContainerView *)self _updateFocusDirection:1 animated:v8, v11];
  return 1;
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4
{
  v4 = [(_UIStackedImageContainerView *)self config:a3];
  v5 = [v4 focusAnimationConfiguration];

  return v5;
}

- (void)setUnmaskedOverlayView:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(_UIStackedImageContainerView *)self maskedOverlayView];

    if (v4 == v6)
    {
      [(_UIStackedImageContainerView *)self setMaskedOverlayView:0];
    }
  }

  v5 = [(_UIStackedImageContainerView *)self _renderer];
  [v5 setUnmaskedOverlayView:v6];
}

- (UIView)unmaskedOverlayView
{
  v2 = [(_UIStackedImageContainerView *)self _renderer];
  v3 = [v2 unmaskedOverlayView];

  return v3;
}

- (void)setMaskedOverlayView:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(_UIStackedImageContainerView *)self unmaskedOverlayView];

    if (v4 == v6)
    {
      [(_UIStackedImageContainerView *)self setUnmaskedOverlayView:0];
    }
  }

  v5 = [(_UIStackedImageContainerView *)self _renderer];
  [v5 setMaskedOverlayView:v6];
}

- (UIView)maskedOverlayView
{
  v2 = [(_UIStackedImageContainerView *)self _renderer];
  v3 = [v2 maskedOverlayView];

  return v3;
}

- (id)_focusedFrameGuideCreateIfNecessary:(BOOL)a3
{
  v3 = a3;
  v15[4] = *MEMORY[0x1E69E9840];
  v5 = objc_getAssociatedObject(self, &_focusedFrameGuideCreateIfNecessary__focusedFrameGuideKey_0);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
  }

  if (!v6)
  {
    v5 = objc_alloc_init(UILayoutGuide);
    objc_setAssociatedObject(self, &_focusedFrameGuideCreateIfNecessary__focusedFrameGuideKey_0, v5, 1);
    [(UIView *)self addLayoutGuide:v5];
    [(UILayoutGuide *)v5 _setLockedToOwningView:1];
    [(UILayoutGuide *)v5 setIdentifier:@"_UIStackedImageContainerViewFocusedFrameGuide"];
    v7 = [MEMORY[0x1E69977A0] constraintWithItem:v5 attribute:3 relatedBy:0 toItem:self attribute:3];
    v8 = [MEMORY[0x1E69977A0] constraintWithItem:v5 attribute:1 relatedBy:0 toItem:self attribute:1];
    v9 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:4 relatedBy:0 toItem:v5 attribute:4];
    v10 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:2 relatedBy:0 toItem:v5 attribute:2];
    [v7 setIdentifier:@"focusedFrameGuide-topConstraint"];
    [v8 setIdentifier:@"focusedFrameGuide-leftConstraint"];
    [v9 setIdentifier:@"focusedFrameGuide-bottomConstraint"];
    [v10 setIdentifier:@"focusedFrameGuide-rightConstraint"];
    v15[0] = v7;
    v15[1] = v8;
    v15[2] = v9;
    v15[3] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
    [(UILayoutGuide *)v5 _setSystemConstraints:v11];

    [(_UIStackedImageContainerView *)self _updateFocusedFrameGuideConstraintsIfApplicable];
    v12 = MEMORY[0x1E69977A0];
    v13 = [(UILayoutGuide *)v5 _systemConstraints];
    [v12 activateConstraints:v13];
  }

  return v5;
}

- (void)_updateFocusedFrameGuideConstraintsIfApplicable
{
  v3 = [(_UIStackedImageContainerView *)self _focusedFrameGuideCreateIfNecessary:0];
  if (v3)
  {
    v32 = v3;
    v4 = [(_UIStackedImageContainerView *)self config];
    [v4 scaleSizeIncrease];
    v6 = v5;

    [(UIView *)self bounds];
    v9 = 0.0;
    if (v7 <= 0.0)
    {
      v10 = 0.0;
      v11 = v32;
    }

    else
    {
      v10 = 0.0;
      v11 = v32;
      if (v8 > 0.0)
      {
        v12 = v7 <= v8;
        v13 = v6 * -0.5 * (v7 / v8);
        v14 = v6 * -0.5 * (v8 / v7);
        if (v12)
        {
          v9 = v13;
        }

        else
        {
          v9 = v6 * -0.5;
        }

        if (v12)
        {
          v10 = v6 * -0.5;
        }

        else
        {
          v10 = v14;
        }
      }
    }

    v15 = [v11 _systemConstraints];
    v16 = [v15 objectAtIndexedSubscript:0];
    [v16 constant];
    v18 = v17;

    if (v18 != v10)
    {
      v19 = [v15 objectAtIndexedSubscript:0];
      [v19 setConstant:v10];
    }

    v20 = [v15 objectAtIndexedSubscript:1];
    [v20 constant];
    v22 = v21;

    if (v22 != v9)
    {
      v23 = [v15 objectAtIndexedSubscript:1];
      [v23 setConstant:v9];
    }

    v24 = [v15 objectAtIndexedSubscript:2];
    [v24 constant];
    v26 = v25;

    if (v26 != v10)
    {
      v27 = [v15 objectAtIndexedSubscript:2];
      [v27 setConstant:v10];
    }

    v28 = [v15 objectAtIndexedSubscript:3];
    [v28 constant];
    v30 = v29;

    if (v30 != v9)
    {
      v31 = [v15 objectAtIndexedSubscript:3];
      [v31 setConstant:v9];
    }

    v3 = v32;
  }
}

- (id)_viewForBackgroundEffects
{
  v2 = [(_UIStackedImageContainerView *)self _renderer];
  v3 = [v2 viewForBackgroundEffects];

  return v3;
}

@end