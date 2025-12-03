@interface _UIStackedImageContainerView
- (BOOL)_applyKeyPathsAndRelativeValues:(id)values forMotionEffect:(id)effect;
- (CGPoint)focusDirection;
- (UIView)maskedOverlayView;
- (UIView)unmaskedOverlayView;
- (_UIStackedImageContainerView)initWithFrame:(CGRect)frame;
- (id)_focusedFrameGuideCreateIfNecessary:(BOOL)necessary;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (id)_viewForBackgroundEffects;
- (unint64_t)controlState;
- (void)_installMotionEffects;
- (void)_setStackFocused:(BOOL)focused animated:(BOOL)animated focusAnimationCoordinator:(id)coordinator;
- (void)_uninstallMotionEffects;
- (void)_updateContainerLayerImages;
- (void)_updateFocusDirection:(CGPoint)direction animated:(BOOL)animated;
- (void)_updateFocusedFrameGuideConstraintsIfApplicable;
- (void)dealloc;
- (void)setBounds:(CGRect)bounds;
- (void)setConfig:(id)config;
- (void)setConstructedStackImage:(id)image;
- (void)setControlState:(unint64_t)state animated:(BOOL)animated focusAnimationCoordinator:(id)coordinator;
- (void)setFocusDirection:(CGPoint)direction;
- (void)setFrame:(CGRect)frame;
- (void)setInstallsMotionEffectsWhenFocused:(BOOL)focused;
- (void)setMaskedOverlayView:(id)view;
- (void)setPressed:(BOOL)pressed;
- (void)setStackImage:(id)image;
- (void)setUnmaskedOverlayView:(id)view;
@end

@implementation _UIStackedImageContainerView

- (_UIStackedImageContainerView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UIStackedImageContainerView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _imageContainerLayer = [(_UIStackedImageContainerView *)v3 _imageContainerLayer];
    [_imageContainerLayer _configureForContainedInStackedImageContainerView];

    v6 = +[_UIStackedImageConfiguration newStandardConfiguration];
    [(_UIStackedImageContainerView *)v4 setConfig:v6];
    v4->_installsMotionEffectsWhenFocused = 1;
  }

  return v4;
}

- (void)dealloc
{
  _renderer = [(_UIStackedImageContainerView *)self _renderer];
  [_renderer setLayerStack:0];

  v4.receiver = self;
  v4.super_class = _UIStackedImageContainerView;
  [(UIView *)&v4 dealloc];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UIStackedImageContainerView;
  [(UIView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_UIStackedImageContainerView *)self _updateFocusedFrameGuideConstraintsIfApplicable];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _UIStackedImageContainerView;
  [(UIView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(_UIStackedImageContainerView *)self _updateFocusedFrameGuideConstraintsIfApplicable];
}

- (void)_updateContainerLayerImages
{
  _primitiveImageAsset = [(UIImage *)self->_stackImage _primitiveImageAsset];
  _layerStack = [_primitiveImageAsset _layerStack];
  constructedStackImage = _layerStack;
  if (!_layerStack)
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

  _renderer = [(_UIStackedImageContainerView *)self _renderer];
  config = [(_UIStackedImageContainerView *)self config];
  [_renderer setConfiguration:config];

  _renderer2 = [(_UIStackedImageContainerView *)self _renderer];
  [_renderer2 setLayerStack:v10];
}

- (void)setConfig:(id)config
{
  configCopy = config;
  if (![(_UIStackedImageConfiguration *)self->_config isEqual:?])
  {
    objc_storeStrong(&self->_config, config);
    [(_UIStackedImageContainerView *)self _updateContainerLayerImages];
    [(_UIStackedImageContainerView *)self _updateFocusedFrameGuideConstraintsIfApplicable];
  }
}

- (void)setStackImage:(id)image
{
  imageCopy = image;
  if (![(UIImage *)self->_stackImage isEqual:?])
  {
    objc_storeStrong(&self->_stackImage, image);
    [(_UIStackedImageContainerView *)self _updateContainerLayerImages];
  }
}

- (void)setConstructedStackImage:(id)image
{
  imageCopy = image;
  if (self->_constructedStackImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_constructedStackImage, image);
    [(_UIStackedImageContainerView *)self _updateContainerLayerImages];
    imageCopy = v6;
  }
}

- (unint64_t)controlState
{
  _renderer = [(_UIStackedImageContainerView *)self _renderer];
  rendererControlState = [_renderer rendererControlState];

  return rendererControlState;
}

- (void)setControlState:(unint64_t)state animated:(BOOL)animated focusAnimationCoordinator:(id)coordinator
{
  animatedCopy = animated;
  coordinatorCopy = coordinator;
  if (coordinatorCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = animatedCopy;
  }

  if ((state & 8) != 0)
  {
    [(_UIStackedImageContainerView *)self _installMotionEffects];
    v9 = coordinatorCopy;
    if (!v8)
    {
      goto LABEL_10;
    }

    config = [(_UIStackedImageContainerView *)self config];
    focusAnimationConfiguration = [config focusAnimationConfiguration];
    v12 = [UIFocusAnimationCoordinator _focusingAnimationCoordinatorWithConfiguration:focusAnimationConfiguration inContext:0];
  }

  else
  {
    [(_UIStackedImageContainerView *)self _uninstallMotionEffects];
    v9 = coordinatorCopy;
    if (!v8)
    {
      goto LABEL_10;
    }

    config = [(_UIStackedImageContainerView *)self config];
    focusAnimationConfiguration = [config focusAnimationConfiguration];
    v12 = [UIFocusAnimationCoordinator _unfocusingAnimationCoordinatorWithConfiguration:focusAnimationConfiguration inContext:0];
  }

  v9 = v12;

LABEL_10:
  [(_UIStackedImageContainerView *)self focusDirection];
  [(_UIStackedImageContainerView *)self _updateGlassMaterialsWithControlState:state focusDirection:animatedCopy animated:v9 focusAnimationCoordinator:?];
  _renderer = [(_UIStackedImageContainerView *)self _renderer];
  [_renderer setRendererControlState:state animated:animatedCopy focusAnimationCoordinator:v9];

  if (v9 != coordinatorCopy)
  {
    [v9 _animate];
  }
}

- (void)_setStackFocused:(BOOL)focused animated:(BOOL)animated focusAnimationCoordinator:(id)coordinator
{
  animatedCopy = animated;
  focusedCopy = focused;
  coordinatorCopy = coordinator;
  v8 = [(_UIStackedImageContainerView *)self controlState]& 0xFFFFFFFFFFFFFFF7;
  v9 = 8;
  if (!focusedCopy)
  {
    v9 = 0;
  }

  [(_UIStackedImageContainerView *)self setControlState:v8 | v9 animated:animatedCopy focusAnimationCoordinator:coordinatorCopy];
}

- (void)setPressed:(BOOL)pressed
{
  v4 = [(_UIStackedImageContainerView *)self controlState]& 0xFFFFFFFFFFFFFFFELL | pressed;

  [(_UIStackedImageContainerView *)self setControlState:v4 animated:1];
}

- (CGPoint)focusDirection
{
  _renderer = [(_UIStackedImageContainerView *)self _renderer];
  [_renderer focusDirection];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setFocusDirection:(CGPoint)direction
{
  y = direction.y;
  x = direction.x;
  if ([(_UIStackedImageContainerView *)self installsMotionEffectsWhenFocused]&& setFocusDirection__once != -1)
  {
    dispatch_once(&setFocusDirection__once, &__block_literal_global_721);
  }

  [(_UIStackedImageContainerView *)self _updateFocusDirection:1 animated:x, y];
}

- (void)_updateFocusDirection:(CGPoint)direction animated:(BOOL)animated
{
  animatedCopy = animated;
  y = direction.y;
  x = direction.x;
  _renderer = [(_UIStackedImageContainerView *)self _renderer];
  [_renderer setFocusDirection:animatedCopy animated:{x, y}];

  controlState = [(_UIStackedImageContainerView *)self controlState];

  [(_UIStackedImageContainerView *)self _updateGlassMaterialsWithControlState:controlState focusDirection:animatedCopy animated:0 focusAnimationCoordinator:x, y];
}

- (void)setInstallsMotionEffectsWhenFocused:(BOOL)focused
{
  if (self->_installsMotionEffectsWhenFocused != focused)
  {
    self->_installsMotionEffectsWhenFocused = focused;
    if (focused)
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

- (BOOL)_applyKeyPathsAndRelativeValues:(id)values forMotionEffect:(id)effect
{
  valuesCopy = values;
  v6 = [valuesCopy objectForKey:@"focusDirectionX"];
  [v6 doubleValue];
  v8 = v7;
  v9 = [valuesCopy objectForKey:@"focusDirectionY"];

  [v9 doubleValue];
  v11 = v10;

  [(_UIStackedImageContainerView *)self _updateFocusDirection:1 animated:v8, v11];
  return 1;
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context
{
  v4 = [(_UIStackedImageContainerView *)self config:animation];
  focusAnimationConfiguration = [v4 focusAnimationConfiguration];

  return focusAnimationConfiguration;
}

- (void)setUnmaskedOverlayView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    maskedOverlayView = [(_UIStackedImageContainerView *)self maskedOverlayView];

    if (maskedOverlayView == viewCopy)
    {
      [(_UIStackedImageContainerView *)self setMaskedOverlayView:0];
    }
  }

  _renderer = [(_UIStackedImageContainerView *)self _renderer];
  [_renderer setUnmaskedOverlayView:viewCopy];
}

- (UIView)unmaskedOverlayView
{
  _renderer = [(_UIStackedImageContainerView *)self _renderer];
  unmaskedOverlayView = [_renderer unmaskedOverlayView];

  return unmaskedOverlayView;
}

- (void)setMaskedOverlayView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    unmaskedOverlayView = [(_UIStackedImageContainerView *)self unmaskedOverlayView];

    if (unmaskedOverlayView == viewCopy)
    {
      [(_UIStackedImageContainerView *)self setUnmaskedOverlayView:0];
    }
  }

  _renderer = [(_UIStackedImageContainerView *)self _renderer];
  [_renderer setMaskedOverlayView:viewCopy];
}

- (UIView)maskedOverlayView
{
  _renderer = [(_UIStackedImageContainerView *)self _renderer];
  maskedOverlayView = [_renderer maskedOverlayView];

  return maskedOverlayView;
}

- (id)_focusedFrameGuideCreateIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v15[4] = *MEMORY[0x1E69E9840];
  v5 = objc_getAssociatedObject(self, &_focusedFrameGuideCreateIfNecessary__focusedFrameGuideKey_0);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !necessaryCopy;
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
    _systemConstraints = [(UILayoutGuide *)v5 _systemConstraints];
    [v12 activateConstraints:_systemConstraints];
  }

  return v5;
}

- (void)_updateFocusedFrameGuideConstraintsIfApplicable
{
  v3 = [(_UIStackedImageContainerView *)self _focusedFrameGuideCreateIfNecessary:0];
  if (v3)
  {
    v32 = v3;
    config = [(_UIStackedImageContainerView *)self config];
    [config scaleSizeIncrease];
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

    _systemConstraints = [v11 _systemConstraints];
    v16 = [_systemConstraints objectAtIndexedSubscript:0];
    [v16 constant];
    v18 = v17;

    if (v18 != v10)
    {
      v19 = [_systemConstraints objectAtIndexedSubscript:0];
      [v19 setConstant:v10];
    }

    v20 = [_systemConstraints objectAtIndexedSubscript:1];
    [v20 constant];
    v22 = v21;

    if (v22 != v9)
    {
      v23 = [_systemConstraints objectAtIndexedSubscript:1];
      [v23 setConstant:v9];
    }

    v24 = [_systemConstraints objectAtIndexedSubscript:2];
    [v24 constant];
    v26 = v25;

    if (v26 != v10)
    {
      v27 = [_systemConstraints objectAtIndexedSubscript:2];
      [v27 setConstant:v10];
    }

    v28 = [_systemConstraints objectAtIndexedSubscript:3];
    [v28 constant];
    v30 = v29;

    if (v30 != v9)
    {
      v31 = [_systemConstraints objectAtIndexedSubscript:3];
      [v31 setConstant:v9];
    }

    v3 = v32;
  }
}

- (id)_viewForBackgroundEffects
{
  _renderer = [(_UIStackedImageContainerView *)self _renderer];
  viewForBackgroundEffects = [_renderer viewForBackgroundEffects];

  return viewForBackgroundEffects;
}

@end