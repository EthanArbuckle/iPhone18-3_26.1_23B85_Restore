@interface _UIBannerContainerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_UIBannerContainerView)initWithFrame:(CGRect)frame;
- (id)_bannerAnimationToVisible:(BOOL)visible hiddenValue:(id)value visibleValue:(id)visibleValue withKeyPath:(id)path;
- (void)_dismissBanner:(id)banner alongsideAnimations:(id)animations completion:(id)completion;
- (void)_presentBanner:(id)banner completion:(id)completion;
- (void)_setBanner:(id)banner visible:(BOOL)visible alongsideAnimations:(id)animations completion:(id)completion;
- (void)updateConstraints;
@end

@implementation _UIBannerContainerView

- (_UIBannerContainerView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = _UIBannerContainerView;
  v3 = [(UIView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    banners = v3->_banners;
    v3->_banners = array;

    array2 = [MEMORY[0x1E695DF70] array];
    constraints = v3->_constraints;
    v3->_constraints = array2;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_statusBarFrameDidChange_ name:@"UIApplicationDidChangeStatusBarFrameNotification" object:UIApp];
  }

  return v3;
}

- (void)_presentBanner:(id)banner completion:(id)completion
{
  v44[1] = *MEMORY[0x1E69E9840];
  bannerCopy = banner;
  completionCopy = completion;
  view = [bannerCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NSMutableArray *)self->_banners addObject:bannerCopy];
  [(UIView *)self addSubview:view];
  array = [MEMORY[0x1E695DF70] array];
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v12 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:8.0];
  [array addObject:v12];

  centerXAnchor = [view centerXAnchor];
  centerXAnchor2 = [(UIView *)self centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v15];

  widthAnchor = [view widthAnchor];
  v17 = [widthAnchor constraintLessThanOrEqualToConstant:480.0];
  [array addObject:v17];

  widthAnchor2 = [view widthAnchor];
  v19 = [widthAnchor2 constraintEqualToConstant:480.0];
  LODWORD(v20) = 1147207680;
  v21 = [v19 _ui_constraintWithPriority:v20];
  [array addObject:v21];

  topAnchor = [view topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  LODWORD(v25) = 1147207680;
  v26 = [v24 _ui_constraintWithPriority:v25];
  [bannerCopy setVisibleConstraint:v26];

  bottomAnchor = [view bottomAnchor];
  topAnchor3 = [(UIView *)self topAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  [bannerCopy setHiddenConstraint:v29];

  hiddenConstraint = [bannerCopy hiddenConstraint];
  [array addObject:hiddenConstraint];

  [(UIView *)self setNeedsUpdateConstraints];
  [MEMORY[0x1E69977A0] activateConstraints:array];
  [(UIView *)self layoutIfNeeded];
  _screen = [view _screen];
  LODWORD(topAnchor3) = _UIScreenUsesMinimumSafeAreas([_screen _screenType]);

  if (topAnchor3)
  {
    layer = [view layer];
    filters = [layer filters];
    v34 = [filters count];

    if (!v34)
    {
      v35 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
      [v35 setValue:&unk_1EFE2EAC8 forKey:@"inputRadius"];
      [v35 setName:@"gaussianBlur"];
      v44[0] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
      layer2 = [view layer];
      [layer2 setFilters:v36];
    }

    CGAffineTransformMakeScale(&v43, 0.8, 0.8);
    location = v43;
    [view setTransform:&location];
  }

  objc_initWeak(&location, self);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __52___UIBannerContainerView__presentBanner_completion___block_invoke;
  v39[3] = &unk_1E70FDEC0;
  objc_copyWeak(&v41, &location);
  v38 = completionCopy;
  v40 = v38;
  [(_UIBannerContainerView *)self _setBanner:bannerCopy visible:1 alongsideAnimations:0 completion:v39];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

- (void)updateConstraints
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _UIBannerContainerView;
  [(UIView *)&v18 updateConstraints];
  window = [(UIView *)self window];
  v4 = __UIStatusBarManagerForWindow(window);
  [v4 statusBarHeight];
  v6 = v5;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_banners;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = v6 + 8.0;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v7);
        }

        visibleConstraint = [*(*(&v14 + 1) + 8 * v12) visibleConstraint];
        [visibleConstraint setConstant:v10];

        ++v12;
      }

      while (v9 != v12);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)_dismissBanner:(id)banner alongsideAnimations:(id)animations completion:(id)completion
{
  bannerCopy = banner;
  animationsCopy = animations;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72___UIBannerContainerView__dismissBanner_alongsideAnimations_completion___block_invoke;
  v13[3] = &unk_1E710B160;
  objc_copyWeak(&v16, &location);
  v11 = bannerCopy;
  v14 = v11;
  v12 = completionCopy;
  v15 = v12;
  [(_UIBannerContainerView *)self _setBanner:v11 visible:0 alongsideAnimations:animationsCopy completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (id)_bannerAnimationToVisible:(BOOL)visible hiddenValue:(id)value visibleValue:(id)visibleValue withKeyPath:(id)path
{
  visibleCopy = visible;
  valueCopy = value;
  visibleValueCopy = visibleValue;
  v11 = [MEMORY[0x1E6979318] animationWithKeyPath:path];
  [v11 setDuration:0.5];
  [v11 setFillMode:*MEMORY[0x1E69797E0]];
  if (visibleCopy)
  {
    v12 = valueCopy;
  }

  else
  {
    v12 = visibleValueCopy;
  }

  if (visibleCopy)
  {
    v13 = visibleValueCopy;
  }

  else
  {
    v13 = valueCopy;
  }

  [v11 setFromValue:v12];
  [v11 setToValue:v13];
  *&v14 = 1.0 / UIAnimationDragCoefficient();
  [v11 setSpeed:v14];

  return v11;
}

- (void)_setBanner:(id)banner visible:(BOOL)visible alongsideAnimations:(id)animations completion:(id)completion
{
  visibleCopy = visible;
  animationsCopy = animations;
  completionCopy = completion;
  bannerCopy = banner;
  visibleConstraint = [bannerCopy visibleConstraint];
  [visibleConstraint setActive:visibleCopy];

  hiddenConstraint = [bannerCopy hiddenConstraint];
  [hiddenConstraint setActive:visibleCopy ^ 1];

  view = [bannerCopy view];

  _screen = [view _screen];
  v17 = _UIScreenUsesMinimumSafeAreas([_screen _screenType]);

  if (v17)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76___UIBannerContainerView__setBanner_visible_alongsideAnimations_completion___block_invoke;
    aBlock[3] = &unk_1E70F5B18;
    v18 = &v28;
    v28 = animationsCopy;
    v19 = view;
    v31 = visibleCopy;
    v29 = v19;
    selfCopy = self;
    v20 = animationsCopy;
    v21 = _Block_copy(aBlock);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __76___UIBannerContainerView__setBanner_visible_alongsideAnimations_completion___block_invoke_155;
    v25[3] = &unk_1E7103030;
    v26 = completionCopy;
    [UIView _animateUsingSpringWithDampingRatio:1 response:v21 tracking:v25 dampingRatioSmoothing:1.0 responseSmoothing:0.5 targetSmoothing:0.08 projectionDeceleration:1.0 animations:0.0 completion:0.0];
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76___UIBannerContainerView__setBanner_visible_alongsideAnimations_completion___block_invoke_2;
    v23[3] = &unk_1E70F35B8;
    v18 = v24;
    v24[0] = animationsCopy;
    v24[1] = self;
    v22 = animationsCopy;
    [UIView animateWithDuration:v23 animations:completionCopy completion:0.5];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_banners;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        view = [*(*(&v13 + 1) + 8 * i) view];
        [view frame];
        v19.x = x;
        v19.y = y;
        v11 = CGRectContainsPoint(v20, v19);

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end