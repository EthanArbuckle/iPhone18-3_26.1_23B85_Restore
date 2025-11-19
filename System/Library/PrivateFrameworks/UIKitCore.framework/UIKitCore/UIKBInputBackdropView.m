@interface UIKBInputBackdropView
- (CGSize)sizeForVisualState:(int64_t)a3;
- (UIKBInputBackdropView)initWithFrame:(CGRect)a3;
- (double)preferredCornerRadiusForState:(int64_t)a3;
- (void)_beginSplitTransitionIfNeeded:(double)a3 gapWidth:(double)a4;
- (void)_endSplitTransitionIfNeeded:(BOOL)a3;
- (void)_prepareWithLeftOffset:(double)a3 gapWidth:(double)a4;
- (void)_setRenderConfig:(id)a3;
- (void)_updateForEmptyBackdrop:(BOOL)a3;
- (void)_updateForLeftOffset:(double)a3 rightOffset:(double)a4;
- (void)animatingTransitionFromState:(int64_t)a3 toState:(int64_t)a4 animationType:(int64_t)a5 totalDuration:(double)a6;
- (void)createSplitBackdropIfNeeded;
- (void)dealloc;
- (void)finishedTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5;
- (void)layoutInputBackdropToFullWithRect:(CGRect)a3;
- (void)layoutInputBackdropToSplitWithHeight:(double)a3 innerCorners:(unint64_t)a4;
- (void)layoutInputBackdropToSplitWithLeftViewRect:(CGRect)a3 andRightViewRect:(CGRect)a4 innerCorners:(unint64_t)a5;
- (void)maskCornersIfNeededForStyle:(int64_t)a3;
- (void)setGestureProgressForSplit:(double)a3;
- (void)setIsAssistantBackground:(BOOL)a3;
- (void)setProgress:(double)a3 withFrame:(CGRect)a4 innerCorners:(unint64_t)a5;
- (void)transitionToStyle:(int64_t)a3;
- (void)transitionToStyle:(int64_t)a3 isSplit:(BOOL)a4;
- (void)transitioningToState:(int64_t)a3 animationType:(int64_t)a4 completionPercentage:(double)a5;
- (void)updateCornersWithRadius:(double)a3 forVisualState:(int64_t)a4;
- (void)updateCornersWithRadius:(double)a3 usingCornerRadii:(BOOL)a4;
@end

@implementation UIKBInputBackdropView

- (UIKBInputBackdropView)initWithFrame:(CGRect)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = UIKBInputBackdropView;
  v3 = [(UIView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v22.receiver = v3;
    v22.super_class = UIKBInputBackdropView;
    v5 = [(UIView *)&v22 _inheritedRenderConfig];
    v4->_style = [v5 backdropStyle];

    v6 = [UIKBBackdropView alloc];
    [(UIView *)v4 bounds];
    v7 = [(UIKBBackdropView *)v6 initWithFrame:v4->_style style:?];
    inputBackdropFullView = v4->_inputBackdropFullView;
    v4->_inputBackdropFullView = v7;

    [(UIView *)v4->_inputBackdropFullView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = 0;
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v9 = UIKeyboardDeviceSupportsSplit();
    }

    if (+[UIKeyboardImpl isSplit])
    {
      v10 = 4;
    }

    else if (+[UIKeyboardImpl isFloating])
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    [(UIKBInputBackdropView *)v4 setKeyboardVisualState:v10];
    if (v9)
    {
      v11 = [_UIVisualEffectBackdropView alloc];
      [(UIView *)v4 bounds];
      v12 = [(_UIVisualEffectSubview *)v11 initWithFrame:?];
      captureView = v4->_captureView;
      v4->_captureView = v12;

      [(UIView *)v4->_captureView setAutoresizingMask:20];
      [(UIView *)v4 insertSubview:v4->_captureView atIndex:0];
      [(UIVisualEffectView *)v4->_inputBackdropFullView _setCaptureView:v4->_captureView];
      v14 = [UIKBBackdropView alloc];
      [(UIView *)v4 bounds];
      v15 = [(UIKBBackdropView *)v14 initWithFrame:v4->_style style:?];
      inputBackdropLeftView = v4->_inputBackdropLeftView;
      v4->_inputBackdropLeftView = v15;

      v17 = [UIKBBackdropView alloc];
      [(UIView *)v4 bounds];
      v18 = [(UIKBBackdropView *)v17 initWithFrame:v4->_style style:?];
      inputBackdropRightView = v4->_inputBackdropRightView;
      v4->_inputBackdropRightView = v18;

      v24[0] = v4->_inputBackdropLeftView;
      v24[1] = v4->_inputBackdropRightView;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      [(UIVisualEffectView *)v4->_inputBackdropFullView _setCaptureDependents:v20];
    }

    [(UIView *)v4 bounds];
    [(UIKBInputBackdropView *)v4 layoutInputBackdropToFullWithRect:?];
    [(UIView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)dealloc
{
  [(UIKBInputBackdropView *)self setFullWidthConstraints:0];
  [(UIKBInputBackdropView *)self setSplitConstraints:0];
  [(UIKBInputBackdropView *)self setLeftWidthConstraint:0];
  [(UIKBInputBackdropView *)self setRightWidthConstraint:0];
  [(UIKBInputBackdropView *)self setHeightConstraint:0];
  v3.receiver = self;
  v3.super_class = UIKBInputBackdropView;
  [(UIView *)&v3 dealloc];
}

- (void)setIsAssistantBackground:(BOOL)a3
{
  v3 = a3;
  self->_isAssistantBackground = a3;
  v4 = [(UIKBInputBackdropView *)self inputBackdropFullView];
  [v4 setIsAssistantBackground:v3];
}

- (void)_updateForEmptyBackdrop:(BOOL)a3
{
  if (a3)
  {
    self->_style = 3903;
    v4 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v4 transitionToStyle:self->_style];

    v5 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    v6 = MEMORY[0x1E695E0F0];
    [v5 setBackgroundEffects:MEMORY[0x1E695E0F0]];

    v7 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v7 setContentEffects:v6];

    v10 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v10 setBackgroundColor:0];
  }

  else
  {
    v10 = +[UIColor systemBackgroundColor];
    v8 = [v10 colorWithAlphaComponent:0.1];
    v9 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v9 setBackgroundColor:v8];
  }
}

- (void)_setRenderConfig:(id)a3
{
  v11 = a3;
  if ([v11 animatedBackground] && !-[UIKBInputBackdropView supportsLightEffects](self, "supportsLightEffects") || objc_msgSend(v11, "emptyBackground"))
  {
    [(UIKBInputBackdropView *)self _updateForEmptyBackdrop:1];
  }

  else
  {
    v4 = [v11 backdropStyle];
    if (v4 == 3908)
    {
      v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v6 = [v5 preferencesActions];
      if ([v6 colorAdaptiveKeyboardBackdropEnabled] && !_AXSEnhanceBackgroundContrastEnabled())
      {
        v10 = _AXDarkenSystemColors();

        if (!v10)
        {
          [(UIKBInputBackdropView *)self _updateForEmptyBackdrop:0];
        }
      }

      else
      {
      }

      [(UIKBInputBackdropView *)self maskCornersIfNeededForStyle:3908];
    }

    else
    {
      v7 = v4;
      v8 = [(UIKBInputBackdropView *)self backdropStyle];
      if (v7 != 3904 && v8 != v7)
      {
        [(UIKBInputBackdropView *)self _updateForEmptyBackdrop:0];
      }
    }

    self->_style = [v11 backdropStyle];
    v9 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v9 _setRenderConfig:v11];
  }
}

- (void)transitionToStyle:(int64_t)a3
{
  self->_style = a3;
  v4 = [(UIKBInputBackdropView *)self inputBackdropFullView];
  [v4 transitionToStyle:self->_style];
}

- (void)transitionToStyle:(int64_t)a3 isSplit:(BOOL)a4
{
  v4 = a4;
  if (a3 == 3904)
  {
    if ([(UIKBInputBackdropView *)self supportsLightEffects])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a3 == 3903)
  {
LABEL_5:
    [(UIKBInputBackdropView *)self _updateForEmptyBackdrop:1];
LABEL_6:
    if (a3 == 3904 && v4)
    {
      v7 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
      [v7 transitionToStyle:3904];

      v8 = [(UIKBInputBackdropView *)self inputBackdropRightView];
      [v8 transitionToStyle:3904];
LABEL_14:

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (self->_style != a3)
  {
    [(UIKBInputBackdropView *)self _updateForEmptyBackdrop:0];
  }

  if (a3 == 3908 && v4)
  {
    v9 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    [v9 transitionToStyle:3908 isSplit:1];

    v8 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    [v8 transitionToStyle:3908 isSplit:1];
    goto LABEL_14;
  }

LABEL_15:
  self->_style = a3;
  [(UIKBInputBackdropView *)self maskCornersIfNeededForStyle:[(UIKBInputBackdropView *)self backdropStyle]];
  style = self->_style;
  v13 = [(UIView *)self _inheritedRenderConfig];
  v11 = _UIKBEffectsForStyle(style, v13);
  v12 = [(UIKBInputBackdropView *)self inputBackdropFullView];
  [v12 setBackgroundEffects:v11];
}

- (void)maskCornersIfNeededForStyle:(int64_t)a3
{
  if (a3 == 3908)
  {
    [(UIKBInputBackdropView *)self preferredCornerRadiusForState:[(UIKBInputBackdropView *)self keyboardVisualState]];
    v6 = v5;
    v7 = ![(UIKBInputBackdropView *)self isAssistantBackground]&& [(UIKBInputBackdropView *)self keyboardVisualState]!= 3 && ([(UIKBInputBackdropView *)self keyboardVisualState]|| !+[UIKeyboardImpl isFloating]);
    v8 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v8 _updateCornerRadiiIfNecessaryWithTopRadius:v7 useDeviceCorners:v6];
  }
}

- (void)createSplitBackdropIfNeeded
{
  v59[5] = *MEMORY[0x1E69E9840];
  v3 = [(UIKBInputBackdropView *)self inputBackdropFullView];
  v4 = [v3 superview];

  if (v4)
  {
    v5 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v5 removeFromSuperview];
  }

  v6 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(UIKBInputBackdropView *)self inputBackdropRightView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  captureView = self->_captureView;
  v9 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  v10 = [v9 superview];

  if (!v10)
  {
    v11 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    [(UIView *)self insertSubview:v11 atIndex:captureView != 0];
  }

  v12 = [(UIKBInputBackdropView *)self inputBackdropRightView];
  v13 = [v12 superview];

  if (!v13)
  {
    v14 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    [(UIView *)self insertSubview:v14 atIndex:captureView != 0];
  }

  [(UIKBInputBackdropView *)self transitionToStyle:self->_style isSplit:1];
  v15 = [(UIKBInputBackdropView *)self splitConstraints];

  if (!v15)
  {
    v58 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    v57 = [v58 leftAnchor];
    v56 = [(UIView *)self leftAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v59[0] = v55;
    v53 = [(UIView *)self rightAnchor];
    v54 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    v52 = [v54 rightAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v59[1] = v51;
    v50 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    v49 = [v50 topAnchor];
    v48 = [(UIView *)self topAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v59[2] = v47;
    v46 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    v45 = [v46 topAnchor];
    v16 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    v17 = [v16 topAnchor];
    v18 = [v45 constraintEqualToAnchor:v17];
    v59[3] = v18;
    v19 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    v20 = [v19 bottomAnchor];
    v21 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    v22 = [v21 bottomAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v59[4] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:5];
    [(UIKBInputBackdropView *)self setSplitConstraints:v24];
  }

  v25 = [(UIKBInputBackdropView *)self splitConstraints];
  v26 = [v25 firstObject];
  v27 = [v26 isActive];

  if ((v27 & 1) == 0)
  {
    v28 = MEMORY[0x1E69977A0];
    v29 = [(UIKBInputBackdropView *)self splitConstraints];
    [v28 activateConstraints:v29];
  }

  v30 = [(UIKBInputBackdropView *)self leftWidthConstraint];

  if (!v30)
  {
    v31 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    v32 = [v31 widthAnchor];
    [(UIView *)self bounds];
    v34 = [v32 constraintEqualToConstant:v33 * 0.6];
    [(UIKBInputBackdropView *)self setLeftWidthConstraint:v34];
  }

  v35 = [(UIKBInputBackdropView *)self rightWidthConstraint];

  if (!v35)
  {
    v36 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    v37 = [v36 widthAnchor];
    [(UIView *)self bounds];
    v39 = [v37 constraintEqualToConstant:v38 * 0.6];
    [(UIKBInputBackdropView *)self setRightWidthConstraint:v39];
  }

  v40 = [(UIKBInputBackdropView *)self heightConstraint];

  if (!v40)
  {
    v41 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    v42 = [v41 heightAnchor];
    v43 = [v42 constraintEqualToConstant:self->_tallHeight];
    [(UIKBInputBackdropView *)self setHeightConstraint:v43];

    v44 = [(UIKBInputBackdropView *)self heightConstraint];
    [v44 setActive:1];
  }
}

- (void)layoutInputBackdropToSplitWithLeftViewRect:(CGRect)a3 andRightViewRect:(CGRect)a4 innerCorners:(unint64_t)a5
{
  width = a4.size.width;
  height = a3.size.height;
  v8 = a3.size.width;
  [(UIKBInputBackdropView *)self createSplitBackdropIfNeeded:a3.origin.x];
  v10 = [(UIKBInputBackdropView *)self heightConstraint];
  [v10 setConstant:height];

  [(UIKBInputBackdropView *)self _updateForLeftOffset:v8 rightOffset:width];
  v11 = [(UIKBInputBackdropView *)self leftWidthConstraint];
  v12 = [v11 isActive];

  if ((v12 & 1) == 0)
  {
    v13 = [(UIKBInputBackdropView *)self leftWidthConstraint];
    [v13 setActive:1];
  }

  v14 = [(UIKBInputBackdropView *)self leftWidthConstraint];
  [v14 setConstant:v8];

  v15 = [(UIKBInputBackdropView *)self rightWidthConstraint];
  v16 = [v15 isActive];

  if ((v16 & 1) == 0)
  {
    v17 = [(UIKBInputBackdropView *)self rightWidthConstraint];
    [v17 setActive:1];
  }

  v18 = [(UIKBInputBackdropView *)self rightWidthConstraint];
  [v18 setConstant:width];

  self->_innerCorners = a5;
  v19 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  [v19 updateCorners:a5 & 0xA];

  v20 = [(UIKBInputBackdropView *)self inputBackdropRightView];
  [v20 updateCorners:a5 & 5];
}

- (void)layoutInputBackdropToSplitWithHeight:(double)a3 innerCorners:(unint64_t)a4
{
  [(UIKBInputBackdropView *)self createSplitBackdropIfNeeded];
  v7 = [(UIKBInputBackdropView *)self heightConstraint];
  [v7 setConstant:a3];

  self->_innerCorners = a4;
  v8 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  [v8 updateCorners:a4 & 0xA];

  v9 = [(UIKBInputBackdropView *)self inputBackdropRightView];
  [v9 updateCorners:a4 & 5];
}

- (void)layoutInputBackdropToFullWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v50[4] = *MEMORY[0x1E69E9840];
  v8 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  v9 = [v8 superview];
  if (v9)
  {
  }

  else
  {
    v10 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    v11 = [v10 superview];

    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v12 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  [v12 removeFromSuperview];

  v13 = [(UIKBInputBackdropView *)self inputBackdropRightView];
  [v13 removeFromSuperview];

LABEL_5:
  v14 = [(UIKBInputBackdropView *)self inputBackdropFullView];
  [(UIView *)self insertSubview:v14 atIndex:self->_captureView != 0];

  v15 = [(UIKBInputBackdropView *)self fullWidthConstraints];

  if (!v15)
  {
    v49 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    v48 = [v49 leftAnchor];
    v47 = [(UIView *)self leftAnchor];
    v46 = [v48 constraintEqualToAnchor:v47 constant:0.0];
    v50[0] = v46;
    v45 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    v44 = [v45 topAnchor];
    v43 = [(UIView *)self topAnchor];
    v42 = [v44 constraintEqualToAnchor:v43 constant:0.0];
    v50[1] = v42;
    v16 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    v17 = [v16 widthAnchor];
    v18 = [(UIView *)self widthAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:0.0];
    v50[2] = v19;
    v20 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    v21 = [v20 heightAnchor];
    v22 = [(UIView *)self heightAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:0.0];
    v50[3] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
    [(UIKBInputBackdropView *)self setFullWidthConstraints:v24];
  }

  v25 = [(UIKBInputBackdropView *)self fullWidthConstraints];
  v26 = [v25 firstObject];
  v27 = [v26 isActive];

  if ((v27 & 1) == 0)
  {
    v28 = MEMORY[0x1E69977A0];
    v29 = [(UIKBInputBackdropView *)self fullWidthConstraints];
    [v28 activateConstraints:v29];
  }

  [(UIView *)self bounds];
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  if (!CGRectEqualToRect(v51, v52))
  {
    [(UIView *)self bounds];
    v31 = width - v30;
    [(UIView *)self bounds];
    v33 = height - v32;
    v34 = [(UIKBInputBackdropView *)self fullWidthConstraints];
    v35 = [v34 objectAtIndex:0];
    [v35 setConstant:x];

    v36 = [(UIKBInputBackdropView *)self fullWidthConstraints];
    v37 = [v36 objectAtIndex:1];
    [v37 setConstant:y];

    v38 = [(UIKBInputBackdropView *)self fullWidthConstraints];
    v39 = [v38 objectAtIndex:2];
    [v39 setConstant:{fmax(v31, 0.0)}];

    v40 = [(UIKBInputBackdropView *)self fullWidthConstraints];
    v41 = [v40 objectAtIndex:3];
    [v41 setConstant:{fmax(v33, 0.0)}];

    [(UIView *)self layoutIfNeeded];
  }
}

- (void)updateCornersWithRadius:(double)a3 usingCornerRadii:(BOOL)a4
{
  v4 = a4;
  v6 = [(UIKBInputBackdropView *)self inputBackdropFullView];
  v7 = v6;
  if (v4)
  {
    [v6 _updateCornerRadiiIfNecessaryWithTopRadius:0 useDeviceCorners:a3];
  }

  else
  {
    [v6 _setCornerRadius:1 continuous:15 maskedCorners:a3];
  }
}

- (void)updateCornersWithRadius:(double)a3 forVisualState:(int64_t)a4
{
  if ([(UIKBInputBackdropView *)self backdropStyle]== 3908)
  {
    v7 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v7 _updateCornerRadiiIfNecessaryWithTopRadius:a4 != 3 useDeviceCorners:a3];
  }

  else
  {
    v7 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v7 _setCornerRadius:1 continuous:15 maskedCorners:a3];
  }
}

- (void)setProgress:(double)a3 withFrame:(CGRect)a4 innerCorners:(unint64_t)a5
{
  if (a3 >= 0.0)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    if (!CGRectIsEmpty(a4))
    {
      if (a3 == 0.0 && (v12 = &OBJC_IVAR___UIKBInputBackdropView__savedStartRect, p_hasStartRect = &self->_hasStartRect, !self->_hasStartRect) || a3 == 1.0 && (v12 = &OBJC_IVAR___UIKBInputBackdropView__savedEndRect, p_hasStartRect = &self->_hasEndRect, !self->_hasEndRect))
      {
        *p_hasStartRect = 1;
        v14 = (self + *v12);
        *v14 = x;
        v14[1] = y;
        v14[2] = width;
        v14[3] = height;
      }

      p_height = &self->_savedEndRect.size.height;
      v16 = self->_savedEndRect.size.height;
      v17 = self->_savedStartRect.size.height;
      v18 = v16 <= v17;
      if (v16 <= v17)
      {
        v16 = self->_savedStartRect.size.height;
      }

      self->_tallHeight = v16;
      if (!v18)
      {
        p_height = &self->_savedStartRect.size.height;
      }

      self->_heightDiff = v16 - *p_height;
      if (a3 == 0.0)
      {
        if (!self->_isTransitioning)
        {
          v19 = *MEMORY[0x1E695EFF8];
          v20 = *(MEMORY[0x1E695EFF8] + 8);

          [(UIKBInputBackdropView *)self layoutInputBackdropToFullWithRect:v19, v20, width, height];
        }
      }

      else
      {
        [(UIKBInputBackdropView *)self _prepareWithLeftOffset:round(self->_transitionLeftOffset + (1.0 - a3) * (ceil(width * 0.5) - self->_transitionLeftOffset)) gapWidth:round(self->_transitionGap * a3)];
        [(UIKBInputBackdropView *)self layoutInputBackdropToSplitWithHeight:a5 innerCorners:height];

        [(UIKBInputBackdropView *)self setGestureProgressForSplit:a3];
      }
    }
  }
}

- (void)_prepareWithLeftOffset:(double)a3 gapWidth:(double)a4
{
  self->_transitionGap = a4;
  [(UIView *)self bounds];
  [(UIKBInputBackdropView *)self _updateForLeftOffset:a3 rightOffset:v7 - (a3 + a4)];

  [(UIKBInputBackdropView *)self createSplitBackdropIfNeeded];
}

- (void)_updateForLeftOffset:(double)a3 rightOffset:(double)a4
{
  self->_transitionLeftOffset = a3;
  self->_transitionRightOffset = a4;
  [(UIView *)self bounds];
  v7 = (v6 + self->_transitionLeftOffset - self->_transitionRightOffset) * 0.5;
  self->_leftWidthDiff = v7 - a3;
  [(UIView *)self bounds];
  self->_rightWidthDiff = v8 - v7 - (self->_transitionLeftOffset - self->_transitionRightOffset) - self->_transitionRightOffset;
}

- (void)setGestureProgressForSplit:(double)a3
{
  if (a3 > 0.0)
  {
    v5 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    v6 = [v5 superview];
    if (v6)
    {
      v7 = v6;
      v8 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
      v9 = [v8 superview];

      if (v9)
      {
LABEL_10:
        v14 = [(UIKBInputBackdropView *)self leftWidthConstraint];
        v15 = [v14 isActive];

        if ((v15 & 1) == 0)
        {
          v16 = [(UIKBInputBackdropView *)self leftWidthConstraint];
          [v16 setActive:1];
        }

        v17 = [(UIKBInputBackdropView *)self rightWidthConstraint];
        v18 = [v17 isActive];

        if ((v18 & 1) == 0)
        {
          v19 = [(UIKBInputBackdropView *)self rightWidthConstraint];
          [v19 setActive:1];
        }

        v20 = self->_tallHeight - self->_heightDiff * a3;
        v21 = [(UIKBInputBackdropView *)self heightConstraint];
        [v21 setConstant:v20];

        if (self->_transitionGap <= 0.0)
        {
          [(UIView *)self bounds];
          v27 = v26 * 0.6;
          v28 = [(UIKBInputBackdropView *)self leftWidthConstraint];
          [v28 setConstant:v27];

          [(UIView *)self bounds];
          v25 = v29 * 0.6;
        }

        else
        {
          if (a3 >= 0.055)
          {
            v22 = 1.0 - (a3 * 1.05820106 + -1.05820106 + 1.0);
          }

          else
          {
            v22 = 1.0;
          }

          v23 = self->_transitionLeftOffset + round(v22 * self->_leftWidthDiff);
          v24 = [(UIKBInputBackdropView *)self leftWidthConstraint];
          [v24 setConstant:v23];

          v25 = self->_transitionRightOffset + round(v22 * self->_rightWidthDiff);
        }

        v30 = [(UIKBInputBackdropView *)self rightWidthConstraint];
        [v30 setConstant:v25];

        return;
      }
    }

    else
    {
    }

    [(UIKBInputBackdropView *)self createSplitBackdropIfNeeded];
    goto LABEL_10;
  }

  x = self->_savedStartRect.origin.x;
  y = self->_savedStartRect.origin.y;
  width = self->_savedStartRect.size.width;
  height = self->_savedStartRect.size.height;

  [(UIKBInputBackdropView *)self layoutInputBackdropToFullWithRect:x, y, width, height];
}

- (void)_beginSplitTransitionIfNeeded:(double)a3 gapWidth:(double)a4
{
  if (!self->_isTransitioning)
  {
    [(UIKBInputBackdropView *)self _prepareWithLeftOffset:a3 gapWidth:a4];
    self->_isTransitioning = 1;
    self->_hasStartRect = 0;
    self->_hasEndRect = 0;
  }
}

- (void)_endSplitTransitionIfNeeded:(BOOL)a3
{
  if (self->_isTransitioning)
  {
    v16 = v7;
    v17 = v3;
    self->_isTransitioning = 0;
    if (a3)
    {
      [(UIKBInputBackdropView *)self setGestureProgressForSplit:1.0];
      if (self->_hasEndRect)
      {
        height = self->_savedEndRect.size.height;
      }

      else
      {
        [(UIView *)self frame];
        height = v15;
      }

      [(UIKBInputBackdropView *)self layoutInputBackdropToSplitWithHeight:[(UIView *)self _clipCornersOfView:self innerCorners:v8, v16, v4, v17, v5], height];
    }

    else
    {
      if (self->_hasStartRect)
      {
        x = self->_savedStartRect.origin.x;
        y = self->_savedStartRect.origin.y;
        width = self->_savedStartRect.size.width;
        v14 = self->_savedStartRect.size.height;
      }

      else
      {
        [(UIView *)self frame];
      }

      if (self->_transitionGap == 0.0)
      {
        v14 = self->_savedEndRect.size.height;
      }

      [(UIKBInputBackdropView *)self layoutInputBackdropToFullWithRect:x, y, width, v14, v8, v7, v4, v17, v5];
    }

    [(UIView *)self _removeAllAnimations:1];
  }
}

- (double)preferredCornerRadiusForState:(int64_t)a3
{
  v5 = [(UIKBInputBackdropView *)self isAssistantBackground];
  result = 22.0;
  if (!v5)
  {
    result = 27.0;
    if (a3 == 3)
    {
      v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v8 = [v7 preferencesActions];
      v9 = [(UIView *)self traitCollection];
      [v9 displayScale];
      [v8 rivenSizeFactor:42.0 / v10];
      v12 = round(v11);

      return v12;
    }
  }

  return result;
}

- (CGSize)sizeForVisualState:(int64_t)a3
{
  v3 = -1.0;
  v4 = -1.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)animatingTransitionFromState:(int64_t)a3 toState:(int64_t)a4 animationType:(int64_t)a5 totalDuration:(double)a6
{
  [(UIKBInputBackdropView *)self preferredCornerRadiusForState:a4, a6];
  v9 = v8;
  if ((a4 - 3) > 1)
  {
    v10 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v10 _updateCornerRadiiIfNecessaryWithTopRadius:1 useDeviceCorners:v9];
  }

  else
  {

    [(UIKBInputBackdropView *)self updateCornersWithRadius:a4 forVisualState:?];
  }
}

- (void)transitioningToState:(int64_t)a3 animationType:(int64_t)a4 completionPercentage:(double)a5
{
  [(UIKBInputBackdropView *)self preferredCornerRadiusForState:2, a4];
  v9 = v8;
  if (a3 == 3 || [(UIKBInputBackdropView *)self keyboardVisualState]== 3)
  {
    [(UIKBInputBackdropView *)self preferredCornerRadiusForState:3];
    v11 = v10 + (v9 - v10) * a5;

    [(UIKBInputBackdropView *)self updateCornersWithRadius:3 forVisualState:v11];
  }
}

- (void)finishedTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5
{
  [(UIKBInputBackdropView *)self setKeyboardVisualState:a3, a4, a5];
  v6 = [(UIKBInputBackdropView *)self backdropStyle];

  [(UIKBInputBackdropView *)self maskCornersIfNeededForStyle:v6];
}

@end