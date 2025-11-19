@interface PUPhotoEditApertureToolbar
- (BOOL)enabled;
- (BOOL)setNextApertureValue:(BOOL)a3 coarse:(BOOL)a4;
- (PUPhotoEditApertureToolbar)init;
- (PUPhotoEditApertureToolbarDelegate)delegate;
- (UIEdgeInsets)preferredPreviewViewInsets;
- (double)apertureValue;
- (double)maximumApertureValue;
- (double)minimumApertureValue;
- (double)originalApertureValue;
- (id)_nextApertureValueFromValue:(id)a3 reverse:(BOOL)a4;
- (void)_handleApertureUpdateCoalescerWithContext:(id)a3;
- (void)_updateBackgroundAnimated:(BOOL)a3;
- (void)loadView;
- (void)setApertureValueClosestTo:(double)a3;
- (void)setBackdropViewGroupName:(id)a3;
- (void)setDepthIsOn:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4;
- (void)setMaximumApertureValue:(double)a3;
- (void)setMinimumApertureValue:(double)a3;
- (void)setOriginalApertureValueClosestTo:(double)a3;
- (void)setSliderWidth:(double)a3;
- (void)setUseTranslucentBackground:(BOOL)a3 animated:(BOOL)a4;
- (void)sliderDidEndScrolling:(id)a3;
- (void)sliderWillBeginScrolling:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
@end

@implementation PUPhotoEditApertureToolbar

- (PUPhotoEditApertureToolbarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sliderDidEndScrolling:(id)a3
{
  v4 = [(PUPhotoEditApertureToolbar *)self delegate];
  [v4 apertureToolbarDidStopSliding:self];
}

- (void)sliderWillBeginScrolling:(id)a3
{
  v4 = [(PUPhotoEditApertureToolbar *)self delegate];
  [v4 apertureToolbarDidStartSliding:self];
}

- (void)setDepthIsOn:(BOOL)a3
{
  if (self->_sliderImplementsOffState)
  {
    v4 = a3;
    v5 = [(PUPhotoEditApertureToolbar *)self slider];
    [v5 setSliderOn:v4];
  }
}

- (void)setApertureValueClosestTo:(double)a3
{
  v4 = [(PUPhotoEditApertureToolbar *)self slider];
  [v4 setApertureValueClosestTo:a3];
}

- (BOOL)setNextApertureValue:(BOOL)a3 coarse:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PUPhotoEditApertureToolbar *)self slider];
  v8 = MEMORY[0x1E696AD98];
  [v7 apertureValue];
  v9 = [v8 numberWithDouble:?];
  if (![v7 includesOffState])
  {
    goto LABEL_11;
  }

  v10 = MEMORY[0x1E696AD98];
  [(PUPhotoEditApertureToolbar *)self maximumApertureValue];
  v11 = [v10 numberWithDouble:?];
  if (v11)
  {
    if (([v7 isSliderOn] & 1) == 0)
    {
      if (!v5)
      {
        goto LABEL_9;
      }

      v13 = [(PUPhotoEditApertureToolbar *)self delegate];
      [v13 apertureToolbar:self didUpdateDepthActive:1];
LABEL_18:

LABEL_20:
      [v11 floatValue];
      [v7 setApertureValueClosestTo:v20];
      v14 = 1;
      goto LABEL_21;
    }

    if ([v9 isEqualToNumber:v11] && !v5)
    {
      v12 = [(PUPhotoEditApertureToolbar *)self delegate];
      [v12 apertureToolbar:self didUpdateDepthActive:0];

      goto LABEL_9;
    }

LABEL_11:
    v15 = [(PUPhotoEditApertureToolbar *)self _nextApertureValueFromValue:v9 reverse:v5];
    v11 = v15;
    if (v4)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = 1;
      while (1)
      {
        v18 = v17;
        v19 = [(PUPhotoEditApertureToolbar *)self _nextApertureValueFromValue:v11 reverse:v5];

        if (!v19)
        {
          break;
        }

        v13 = v19;

        v17 = 0;
        v11 = v13;
        if ((v18 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    if (!v11)
    {
      v14 = 0;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_9:
  v14 = 0;
LABEL_21:

LABEL_22:
  return v14;
}

- (id)_nextApertureValueFromValue:(id)a3 reverse:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [MEMORY[0x1E6993828] validApertureValues];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (v8)
        {
          v7 = v12;
          goto LABEL_14;
        }

        v8 = [v5 isEqualToNumber:*(*(&v17 + 1) + 8 * i)];
        if ((v8 & 1) == 0)
        {
          v13 = v12;

          v9 = v13;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

  if (v4)
  {
    v14 = v9;
  }

  else
  {
    v14 = v7;
  }

  v15 = v14;

  return v14;
}

- (double)apertureValue
{
  v2 = [(PUPhotoEditApertureToolbar *)self slider];
  [v2 apertureValue];
  v4 = v3;

  return v4;
}

- (void)setOriginalApertureValueClosestTo:(double)a3
{
  v4 = [(PUPhotoEditApertureToolbar *)self slider];
  [v4 setMarkedApertureValueClosestTo:a3];
}

- (double)originalApertureValue
{
  v2 = [(PUPhotoEditApertureToolbar *)self slider];
  [v2 markedApertureValue];
  v4 = v3;

  return v4;
}

- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4
{
  if (self->_layoutOrientation != a3)
  {
    v11[9] = v4;
    v11[10] = v5;
    self->_layoutOrientation = a3;
    self->_isResizing = a4 != 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__PUPhotoEditApertureToolbar_setLayoutOrientation_withTransitionCoordinator___block_invoke;
    v11[3] = &unk_1E7B7DC38;
    v11[4] = self;
    v7 = a4;
    [v7 animateAlongsideTransition:0 completion:v11];
    v8 = [(PUPhotoEditApertureToolbar *)self view];
    [v8 setNeedsUpdateConstraints];

    v9 = [(PUPhotoEditApertureToolbar *)self delegate];
    if ([v9 apertureToolbarShouldRotateLabelsWithOrientation:self])
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    [(CEKApertureSlider *)self->_slider setTextOrientation:v10 animated:1];
  }
}

- (void)setMaximumApertureValue:(double)a3
{
  v4 = [(PUPhotoEditApertureToolbar *)self slider];
  [(PUPhotoEditApertureToolbar *)self minimumApertureValue];
  [v4 setMinimumApertureValueClosestTo:? maximumApertureValueClosestTo:?];
}

- (double)maximumApertureValue
{
  v2 = [(PUPhotoEditApertureToolbar *)self slider];
  [v2 maximumApertureValue];
  v4 = v3;

  return v4;
}

- (void)setMinimumApertureValue:(double)a3
{
  v6 = [(PUPhotoEditApertureToolbar *)self slider];
  [(PUPhotoEditApertureToolbar *)self maximumApertureValue];
  [v6 setMinimumApertureValueClosestTo:a3 maximumApertureValueClosestTo:v5];
}

- (double)minimumApertureValue
{
  v2 = [(PUPhotoEditApertureToolbar *)self slider];
  [v2 minimumApertureValue];
  v4 = v3;

  return v4;
}

- (void)setSliderWidth:(double)a3
{
  if (self->_sliderWidth != a3)
  {
    self->_sliderWidth = a3;
    v4 = [(PUPhotoEditApertureToolbar *)self view];
    [v4 setNeedsUpdateConstraints];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUPhotoEditApertureToolbar *)self slider];
  [v4 setEnabled:v3];
}

- (BOOL)enabled
{
  v2 = [(PUPhotoEditApertureToolbar *)self slider];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)_updateBackgroundAnimated:(BOOL)a3
{
  v3 = a3;
  useTranslucentBackground = self->_useTranslucentBackground;
  if (useTranslucentBackground == [(_UIBackdropView *)self->_backdropBackgroundView isHidden])
  {
    v6 = 1.0;
    if (useTranslucentBackground)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (v3)
    {
      if (!useTranslucentBackground)
      {
        v6 = 0.0;
      }

      [(UIView *)self->_solidBackgroundView setAlpha:v6];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__PUPhotoEditApertureToolbar__updateBackgroundAnimated___block_invoke;
      v11[3] = &unk_1E7B7FF70;
      v11[4] = self;
      *&v11[5] = v7;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__PUPhotoEditApertureToolbar__updateBackgroundAnimated___block_invoke_2;
      v9[3] = &unk_1E7B7AAB0;
      v9[4] = self;
      v10 = useTranslucentBackground;
      *&v9[5] = v7;
      [MEMORY[0x1E69DD250] animateWithDuration:v11 animations:v9 completion:0.2];
    }

    else
    {
      [(_UIBackdropView *)self->_backdropBackgroundView setHidden:useTranslucentBackground ^ 1u];
      solidBackgroundView = self->_solidBackgroundView;

      [(UIView *)solidBackgroundView setAlpha:v7];
    }
  }
}

uint64_t __56__PUPhotoEditApertureToolbar__updateBackgroundAnimated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) setHidden:(*(a1 + 48) & 1) == 0];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 992);

  return [v3 setAlpha:v2];
}

- (UIEdgeInsets)preferredPreviewViewInsets
{
  v3 = MEMORY[0x1E69DDCE0];
  v4 = *MEMORY[0x1E69DDCE0];
  v5 = *(MEMORY[0x1E69DDCE0] + 8);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  width = self->_cachedSize.width;
  height = self->_cachedSize.height;
  if (width >= height)
  {
    v9 = self->_cachedSize.height;
  }

  else
  {
    v9 = self->_cachedSize.width;
  }

  if (width < height)
  {
    width = self->_cachedSize.height;
  }

  v10 = (width + v9 * -1.33333333) * 0.5;
  v11 = [(PUPhotoEditApertureToolbar *)self slider];
  [v11 intrinsicContentSize];
  v13 = v12;
  v15 = v14;

  if (v13 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (v10 >= v16)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  if ([(PUPhotoEditApertureToolbar *)self layoutOrientation]== 1)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(v3 + 16);
    if ([(PUPhotoEditApertureToolbar *)self layoutOrientation]== 3 || [(PUPhotoEditApertureToolbar *)self layoutOrientation]== 2)
    {
      v6 = v17;
    }
  }

  v19 = v4;
  v20 = v5;
  v21 = v18;
  v22 = v6;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (void)updateViewConstraints
{
  v32[4] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  v3 = [(PUPhotoEditApertureToolbar *)self view];
  v4 = [(PUPhotoEditApertureToolbar *)self slider];
  constraints = self->_constraints;
  v28 = [v4 centerXAnchor];
  v27 = [v3 centerXAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v32[0] = v26;
  v25 = [v4 centerYAnchor];
  v5 = [v3 centerYAnchor];
  v6 = [v25 constraintEqualToAnchor:v5];
  v32[1] = v6;
  v7 = [v4 heightAnchor];
  v8 = [v7 constraintEqualToConstant:110.0];
  v32[2] = v8;
  v29 = v3;
  v9 = [v3 heightAnchor];
  v10 = [v4 heightAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v32[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  [(NSMutableArray *)constraints addObjectsFromArray:v12];

  v13 = *(MEMORY[0x1E695EFD0] + 16);
  v31[0] = *MEMORY[0x1E695EFD0];
  v31[1] = v13;
  v31[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v4 setTransform:v31];
  [(PUPhotoEditApertureToolbar *)self sliderWidth];
  if (v14 <= 0.0)
  {
    v19 = v29;
    v23 = self->_constraints;
    v16 = [v29 widthAnchor];
    v20 = [v4 widthAnchor];
    v21 = [v16 constraintEqualToAnchor:v20];
    [(NSMutableArray *)v23 addObject:v21];
  }

  else
  {
    v15 = [v4 widthAnchor];
    [(PUPhotoEditApertureToolbar *)self sliderWidth];
    v16 = [v15 constraintEqualToConstant:?];

    LODWORD(v17) = 1144750080;
    [v16 setPriority:v17];
    [(NSMutableArray *)self->_constraints addObject:v16];
    v18 = self->_constraints;
    v19 = v29;
    v20 = [v29 widthAnchor];
    v21 = [v4 widthAnchor];
    v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21];
    [(NSMutableArray *)v18 addObject:v22];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  v30.receiver = self;
  v30.super_class = PUPhotoEditApertureToolbar;
  [(PUPhotoEditApertureToolbar *)&v30 updateViewConstraints];
}

- (void)setBackdropViewGroupName:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_backdropViewGroupName isEqualToString:?])
  {
    v4 = [v7 copy];
    backdropViewGroupName = self->_backdropViewGroupName;
    self->_backdropViewGroupName = v4;

    v6 = [(PUPhotoEditApertureToolbar *)self backdropViewGroupName];
    [(_UIBackdropView *)self->_backdropBackgroundView setGroupName:v6];
  }
}

- (void)setUseTranslucentBackground:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_useTranslucentBackground != a3)
  {
    self->_useTranslucentBackground = a3;
    [(PUPhotoEditApertureToolbar *)self _updateBackgroundAnimated:a4];
  }
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = PUPhotoEditApertureToolbar;
  [(PUPhotoEditApertureToolbar *)&v9 viewDidLayoutSubviews];
  p_cachedSize = &self->_cachedSize;
  v4 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] == self->_cachedSize.width && v4 == self->_cachedSize.height && !self->_isResizing)
  {
    v6 = [(PUPhotoEditApertureToolbar *)self view:*MEMORY[0x1E695F060]];
    [v6 bounds];
    p_cachedSize->width = v7;
    p_cachedSize->height = v8;
  }
}

- (void)_handleApertureUpdateCoalescerWithContext:(id)a3
{
  [a3 delayNextInvocationByTimeInterval:0.05];
  v9 = [(PUPhotoEditApertureToolbar *)self delegate];
  v4 = [(PUPhotoEditApertureToolbar *)self slider];
  [v4 apertureValue];
  v6 = v5;

  if (!self->_sliderImplementsOffState)
  {
LABEL_6:
    [v9 apertureToolbar:self didChangeValue:v6];
    goto LABEL_8;
  }

  if (v6 != 0.0)
  {
    v7 = [(PUPhotoEditApertureToolbar *)self slider];
    v8 = [v7 isSliderOn];

    if (v8)
    {
      if (([v9 apertureToolbarIsDepthActive] & 1) == 0)
      {
        [v9 apertureToolbar:self didUpdateDepthActive:1];
      }

      goto LABEL_6;
    }
  }

  [v9 apertureToolbar:self didUpdateDepthActive:0];
LABEL_8:
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  [(PUPhotoEditApertureToolbar *)self setView:v3];
  [(CEKApertureSlider *)self->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
  slider = self->_slider;
  [(PUPhotoEditApertureToolbar *)self apertureValue];
  [(CEKApertureSlider *)slider setApertureValueClosestTo:?];
  v6 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:2030];
  backdropBackgroundView = self->_backdropBackgroundView;
  self->_backdropBackgroundView = v6;

  [(_UIBackdropView *)self->_backdropBackgroundView setHidden:1];
  v8 = [(_UIBackdropView *)self->_backdropBackgroundView layer];
  [v8 setAllowsGroupOpacity:0];

  [(_UIBackdropView *)self->_backdropBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(_UIBackdropView *)self->_backdropBackgroundView groupName];
  [(PUPhotoEditApertureToolbar *)self setBackdropViewGroupName:v9];

  v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
  solidBackgroundView = self->_solidBackgroundView;
  self->_solidBackgroundView = v10;

  v12 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)self->_solidBackgroundView setBackgroundColor:v12];

  [(UIView *)self->_solidBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_backdropBackgroundView];
  [v3 addSubview:self->_solidBackgroundView];
  v13 = [(_UIBackdropView *)self->_backdropBackgroundView leadingAnchor];
  v14 = [v3 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(_UIBackdropView *)self->_backdropBackgroundView trailingAnchor];
  v17 = [v3 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(_UIBackdropView *)self->_backdropBackgroundView topAnchor];
  v20 = [v3 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [(_UIBackdropView *)self->_backdropBackgroundView bottomAnchor];
  v23 = [v3 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  v25 = [(UIView *)self->_solidBackgroundView leadingAnchor];
  v26 = [v3 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v27 setActive:1];

  v28 = [(UIView *)self->_solidBackgroundView trailingAnchor];
  v29 = [v3 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  [v30 setActive:1];

  v31 = [(UIView *)self->_solidBackgroundView topAnchor];
  v32 = [v3 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  [v33 setActive:1];

  v34 = [(UIView *)self->_solidBackgroundView bottomAnchor];
  v35 = [v3 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  [v36 setActive:1];

  [v3 addSubview:self->_slider];
  objc_initWeak(&location, self);
  v37 = MEMORY[0x1E69BDD68];
  v38 = MEMORY[0x1E69E96A0];
  v39 = MEMORY[0x1E69E96A0];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __38__PUPhotoEditApertureToolbar_loadView__block_invoke;
  v42[3] = &unk_1E7B7AA88;
  objc_copyWeak(&v43, &location);
  v40 = [v37 setCoalescerWithLabel:@"PUPhotoEditApertureToolbar._apertureUpdateCoalescer" target:self queue:v38 action:v42];
  apertureUpdateCoalescer = self->_apertureUpdateCoalescer;
  self->_apertureUpdateCoalescer = v40;

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

void __38__PUPhotoEditApertureToolbar_loadView__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleApertureUpdateCoalescerWithContext:v5];
}

- (PUPhotoEditApertureToolbar)init
{
  v18.receiver = self;
  v18.super_class = PUPhotoEditApertureToolbar;
  v2 = [(PUPhotoEditApertureToolbar *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    constraints = v2->_constraints;
    v2->_constraints = v3;

    v5 = MEMORY[0x1B8C6D660]();
    v6 = objc_alloc(MEMORY[0x1E6993820]);
    if (v5)
    {
      v7 = [v6 initWithTickMarkStyle:1];
      slider = v2->_slider;
      v2->_slider = v7;

      v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v10 = [v9 colorWithAlphaComponent:0.3];
      v11 = [(CEKApertureSlider *)v2->_slider tickMarksConfiguration];
      [v11 setSecondaryTickMarkColor:v10];

      v12 = [(CEKApertureSlider *)v2->_slider subviews];
      v13 = [v12 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v13 _setHiddenPocketEdges:15];
      }
    }

    else
    {
      v14 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v13 = v2->_slider;
      v2->_slider = v14;
    }

    [(CEKApertureSlider *)v2->_slider setDelegate:v2];
    [(CEKApertureSlider *)v2->_slider addTarget:v2 action:sel__apertureSliderDidChangeValue_ forControlEvents:4096];
    [(CEKApertureSlider *)v2->_slider setSliderVerticalOffset:24.0];
    [(CEKApertureSlider *)v2->_slider setSliderVerticalAlignment:1];
    [(CEKApertureSlider *)v2->_slider setUseTickMarkLegibilityShadows:1];
    if (objc_opt_respondsToSelector())
    {
      v15 = +[PUPhotoEditProtoSettings sharedInstance];
      v16 = [v15 apertureSliderHasOffPosition];

      if (v16)
      {
        v2->_sliderImplementsOffState = 1;
        [(CEKApertureSlider *)v2->_slider setIncludesOffState:1];
      }
    }
  }

  return v2;
}

@end