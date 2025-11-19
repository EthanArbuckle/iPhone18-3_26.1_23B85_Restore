@interface _UIBannerContainerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_UIBannerContainerView)initWithFrame:(CGRect)a3;
- (id)_bannerAnimationToVisible:(BOOL)a3 hiddenValue:(id)a4 visibleValue:(id)a5 withKeyPath:(id)a6;
- (void)_dismissBanner:(id)a3 alongsideAnimations:(id)a4 completion:(id)a5;
- (void)_presentBanner:(id)a3 completion:(id)a4;
- (void)_setBanner:(id)a3 visible:(BOOL)a4 alongsideAnimations:(id)a5 completion:(id)a6;
- (void)updateConstraints;
@end

@implementation _UIBannerContainerView

- (_UIBannerContainerView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = _UIBannerContainerView;
  v3 = [(UIView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    banners = v3->_banners;
    v3->_banners = v4;

    v6 = [MEMORY[0x1E695DF70] array];
    constraints = v3->_constraints;
    v3->_constraints = v6;

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v3 selector:sel_statusBarFrameDidChange_ name:@"UIApplicationDidChangeStatusBarFrameNotification" object:UIApp];
  }

  return v3;
}

- (void)_presentBanner:(id)a3 completion:(id)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NSMutableArray *)self->_banners addObject:v6];
  [(UIView *)self addSubview:v8];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [v8 leadingAnchor];
  v11 = [(UIView *)self leadingAnchor];
  v12 = [v10 constraintGreaterThanOrEqualToAnchor:v11 constant:8.0];
  [v9 addObject:v12];

  v13 = [v8 centerXAnchor];
  v14 = [(UIView *)self centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v9 addObject:v15];

  v16 = [v8 widthAnchor];
  v17 = [v16 constraintLessThanOrEqualToConstant:480.0];
  [v9 addObject:v17];

  v18 = [v8 widthAnchor];
  v19 = [v18 constraintEqualToConstant:480.0];
  LODWORD(v20) = 1147207680;
  v21 = [v19 _ui_constraintWithPriority:v20];
  [v9 addObject:v21];

  v22 = [v8 topAnchor];
  v23 = [(UIView *)self topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:0.0];
  LODWORD(v25) = 1147207680;
  v26 = [v24 _ui_constraintWithPriority:v25];
  [v6 setVisibleConstraint:v26];

  v27 = [v8 bottomAnchor];
  v28 = [(UIView *)self topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v6 setHiddenConstraint:v29];

  v30 = [v6 hiddenConstraint];
  [v9 addObject:v30];

  [(UIView *)self setNeedsUpdateConstraints];
  [MEMORY[0x1E69977A0] activateConstraints:v9];
  [(UIView *)self layoutIfNeeded];
  v31 = [v8 _screen];
  LODWORD(v28) = _UIScreenUsesMinimumSafeAreas([v31 _screenType]);

  if (v28)
  {
    v32 = [v8 layer];
    v33 = [v32 filters];
    v34 = [v33 count];

    if (!v34)
    {
      v35 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
      [v35 setValue:&unk_1EFE2EAC8 forKey:@"inputRadius"];
      [v35 setName:@"gaussianBlur"];
      v44[0] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
      v37 = [v8 layer];
      [v37 setFilters:v36];
    }

    CGAffineTransformMakeScale(&v43, 0.8, 0.8);
    location = v43;
    [v8 setTransform:&location];
  }

  objc_initWeak(&location, self);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __52___UIBannerContainerView__presentBanner_completion___block_invoke;
  v39[3] = &unk_1E70FDEC0;
  objc_copyWeak(&v41, &location);
  v38 = v7;
  v40 = v38;
  [(_UIBannerContainerView *)self _setBanner:v6 visible:1 alongsideAnimations:0 completion:v39];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

- (void)updateConstraints
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _UIBannerContainerView;
  [(UIView *)&v18 updateConstraints];
  v3 = [(UIView *)self window];
  v4 = __UIStatusBarManagerForWindow(v3);
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

        v13 = [*(*(&v14 + 1) + 8 * v12) visibleConstraint];
        [v13 setConstant:v10];

        ++v12;
      }

      while (v9 != v12);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)_dismissBanner:(id)a3 alongsideAnimations:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72___UIBannerContainerView__dismissBanner_alongsideAnimations_completion___block_invoke;
  v13[3] = &unk_1E710B160;
  objc_copyWeak(&v16, &location);
  v11 = v8;
  v14 = v11;
  v12 = v10;
  v15 = v12;
  [(_UIBannerContainerView *)self _setBanner:v11 visible:0 alongsideAnimations:v9 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (id)_bannerAnimationToVisible:(BOOL)a3 hiddenValue:(id)a4 visibleValue:(id)a5 withKeyPath:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E6979318] animationWithKeyPath:a6];
  [v11 setDuration:0.5];
  [v11 setFillMode:*MEMORY[0x1E69797E0]];
  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  [v11 setFromValue:v12];
  [v11 setToValue:v13];
  *&v14 = 1.0 / UIAnimationDragCoefficient();
  [v11 setSpeed:v14];

  return v11;
}

- (void)_setBanner:(id)a3 visible:(BOOL)a4 alongsideAnimations:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [v12 visibleConstraint];
  [v13 setActive:v7];

  v14 = [v12 hiddenConstraint];
  [v14 setActive:v7 ^ 1];

  v15 = [v12 view];

  v16 = [v15 _screen];
  v17 = _UIScreenUsesMinimumSafeAreas([v16 _screenType]);

  if (v17)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76___UIBannerContainerView__setBanner_visible_alongsideAnimations_completion___block_invoke;
    aBlock[3] = &unk_1E70F5B18;
    v18 = &v28;
    v28 = v10;
    v19 = v15;
    v31 = v7;
    v29 = v19;
    v30 = self;
    v20 = v10;
    v21 = _Block_copy(aBlock);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __76___UIBannerContainerView__setBanner_visible_alongsideAnimations_completion___block_invoke_155;
    v25[3] = &unk_1E7103030;
    v26 = v11;
    [UIView _animateUsingSpringWithDampingRatio:1 response:v21 tracking:v25 dampingRatioSmoothing:1.0 responseSmoothing:0.5 targetSmoothing:0.08 projectionDeceleration:1.0 animations:0.0 completion:0.0];
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76___UIBannerContainerView__setBanner_visible_alongsideAnimations_completion___block_invoke_2;
    v23[3] = &unk_1E70F35B8;
    v18 = v24;
    v24[0] = v10;
    v24[1] = self;
    v22 = v10;
    [UIView animateWithDuration:v23 animations:v11 completion:0.5];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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

        v10 = [*(*(&v13 + 1) + 8 * i) view];
        [v10 frame];
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