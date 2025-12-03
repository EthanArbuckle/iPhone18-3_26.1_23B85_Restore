@interface UIKBInputBackdropView
- (CGSize)sizeForVisualState:(int64_t)state;
- (UIKBInputBackdropView)initWithFrame:(CGRect)frame;
- (double)preferredCornerRadiusForState:(int64_t)state;
- (void)_beginSplitTransitionIfNeeded:(double)needed gapWidth:(double)width;
- (void)_endSplitTransitionIfNeeded:(BOOL)needed;
- (void)_prepareWithLeftOffset:(double)offset gapWidth:(double)width;
- (void)_setRenderConfig:(id)config;
- (void)_updateForEmptyBackdrop:(BOOL)backdrop;
- (void)_updateForLeftOffset:(double)offset rightOffset:(double)rightOffset;
- (void)animatingTransitionFromState:(int64_t)state toState:(int64_t)toState animationType:(int64_t)type totalDuration:(double)duration;
- (void)createSplitBackdropIfNeeded;
- (void)dealloc;
- (void)finishedTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition;
- (void)layoutInputBackdropToFullWithRect:(CGRect)rect;
- (void)layoutInputBackdropToSplitWithHeight:(double)height innerCorners:(unint64_t)corners;
- (void)layoutInputBackdropToSplitWithLeftViewRect:(CGRect)rect andRightViewRect:(CGRect)viewRect innerCorners:(unint64_t)corners;
- (void)maskCornersIfNeededForStyle:(int64_t)style;
- (void)setGestureProgressForSplit:(double)split;
- (void)setIsAssistantBackground:(BOOL)background;
- (void)setProgress:(double)progress withFrame:(CGRect)frame innerCorners:(unint64_t)corners;
- (void)transitionToStyle:(int64_t)style;
- (void)transitionToStyle:(int64_t)style isSplit:(BOOL)split;
- (void)transitioningToState:(int64_t)state animationType:(int64_t)type completionPercentage:(double)percentage;
- (void)updateCornersWithRadius:(double)radius forVisualState:(int64_t)state;
- (void)updateCornersWithRadius:(double)radius usingCornerRadii:(BOOL)radii;
@end

@implementation UIKBInputBackdropView

- (UIKBInputBackdropView)initWithFrame:(CGRect)frame
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = UIKBInputBackdropView;
  v3 = [(UIView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v22.receiver = v3;
    v22.super_class = UIKBInputBackdropView;
    _inheritedRenderConfig = [(UIView *)&v22 _inheritedRenderConfig];
    v4->_style = [_inheritedRenderConfig backdropStyle];

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

- (void)setIsAssistantBackground:(BOOL)background
{
  backgroundCopy = background;
  self->_isAssistantBackground = background;
  inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
  [inputBackdropFullView setIsAssistantBackground:backgroundCopy];
}

- (void)_updateForEmptyBackdrop:(BOOL)backdrop
{
  if (backdrop)
  {
    self->_style = 3903;
    inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView transitionToStyle:self->_style];

    inputBackdropFullView2 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    v6 = MEMORY[0x1E695E0F0];
    [inputBackdropFullView2 setBackgroundEffects:MEMORY[0x1E695E0F0]];

    inputBackdropFullView3 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView3 setContentEffects:v6];

    inputBackdropFullView4 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView4 setBackgroundColor:0];
  }

  else
  {
    inputBackdropFullView4 = +[UIColor systemBackgroundColor];
    v8 = [inputBackdropFullView4 colorWithAlphaComponent:0.1];
    inputBackdropFullView5 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView5 setBackgroundColor:v8];
  }
}

- (void)_setRenderConfig:(id)config
{
  configCopy = config;
  if ([configCopy animatedBackground] && !-[UIKBInputBackdropView supportsLightEffects](self, "supportsLightEffects") || objc_msgSend(configCopy, "emptyBackground"))
  {
    [(UIKBInputBackdropView *)self _updateForEmptyBackdrop:1];
  }

  else
  {
    backdropStyle = [configCopy backdropStyle];
    if (backdropStyle == 3908)
    {
      v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v5 preferencesActions];
      if ([preferencesActions colorAdaptiveKeyboardBackdropEnabled] && !_AXSEnhanceBackgroundContrastEnabled())
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
      v7 = backdropStyle;
      backdropStyle2 = [(UIKBInputBackdropView *)self backdropStyle];
      if (v7 != 3904 && backdropStyle2 != v7)
      {
        [(UIKBInputBackdropView *)self _updateForEmptyBackdrop:0];
      }
    }

    self->_style = [configCopy backdropStyle];
    inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView _setRenderConfig:configCopy];
  }
}

- (void)transitionToStyle:(int64_t)style
{
  self->_style = style;
  inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
  [inputBackdropFullView transitionToStyle:self->_style];
}

- (void)transitionToStyle:(int64_t)style isSplit:(BOOL)split
{
  splitCopy = split;
  if (style == 3904)
  {
    if ([(UIKBInputBackdropView *)self supportsLightEffects])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (style == 3903)
  {
LABEL_5:
    [(UIKBInputBackdropView *)self _updateForEmptyBackdrop:1];
LABEL_6:
    if (style == 3904 && splitCopy)
    {
      inputBackdropLeftView = [(UIKBInputBackdropView *)self inputBackdropLeftView];
      [inputBackdropLeftView transitionToStyle:3904];

      inputBackdropRightView = [(UIKBInputBackdropView *)self inputBackdropRightView];
      [inputBackdropRightView transitionToStyle:3904];
LABEL_14:

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (self->_style != style)
  {
    [(UIKBInputBackdropView *)self _updateForEmptyBackdrop:0];
  }

  if (style == 3908 && splitCopy)
  {
    inputBackdropLeftView2 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    [inputBackdropLeftView2 transitionToStyle:3908 isSplit:1];

    inputBackdropRightView = [(UIKBInputBackdropView *)self inputBackdropRightView];
    [inputBackdropRightView transitionToStyle:3908 isSplit:1];
    goto LABEL_14;
  }

LABEL_15:
  self->_style = style;
  [(UIKBInputBackdropView *)self maskCornersIfNeededForStyle:[(UIKBInputBackdropView *)self backdropStyle]];
  style = self->_style;
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  v11 = _UIKBEffectsForStyle(style, _inheritedRenderConfig);
  inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
  [inputBackdropFullView setBackgroundEffects:v11];
}

- (void)maskCornersIfNeededForStyle:(int64_t)style
{
  if (style == 3908)
  {
    [(UIKBInputBackdropView *)self preferredCornerRadiusForState:[(UIKBInputBackdropView *)self keyboardVisualState]];
    v6 = v5;
    v7 = ![(UIKBInputBackdropView *)self isAssistantBackground]&& [(UIKBInputBackdropView *)self keyboardVisualState]!= 3 && ([(UIKBInputBackdropView *)self keyboardVisualState]|| !+[UIKeyboardImpl isFloating]);
    inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView _updateCornerRadiiIfNecessaryWithTopRadius:v7 useDeviceCorners:v6];
  }
}

- (void)createSplitBackdropIfNeeded
{
  v59[5] = *MEMORY[0x1E69E9840];
  inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
  superview = [inputBackdropFullView superview];

  if (superview)
  {
    inputBackdropFullView2 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView2 removeFromSuperview];
  }

  inputBackdropLeftView = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  [inputBackdropLeftView setTranslatesAutoresizingMaskIntoConstraints:0];

  inputBackdropRightView = [(UIKBInputBackdropView *)self inputBackdropRightView];
  [inputBackdropRightView setTranslatesAutoresizingMaskIntoConstraints:0];

  captureView = self->_captureView;
  inputBackdropLeftView2 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  superview2 = [inputBackdropLeftView2 superview];

  if (!superview2)
  {
    inputBackdropLeftView3 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    [(UIView *)self insertSubview:inputBackdropLeftView3 atIndex:captureView != 0];
  }

  inputBackdropRightView2 = [(UIKBInputBackdropView *)self inputBackdropRightView];
  superview3 = [inputBackdropRightView2 superview];

  if (!superview3)
  {
    inputBackdropRightView3 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    [(UIView *)self insertSubview:inputBackdropRightView3 atIndex:captureView != 0];
  }

  [(UIKBInputBackdropView *)self transitionToStyle:self->_style isSplit:1];
  splitConstraints = [(UIKBInputBackdropView *)self splitConstraints];

  if (!splitConstraints)
  {
    inputBackdropLeftView4 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    leftAnchor = [inputBackdropLeftView4 leftAnchor];
    leftAnchor2 = [(UIView *)self leftAnchor];
    v55 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v59[0] = v55;
    rightAnchor = [(UIView *)self rightAnchor];
    inputBackdropRightView4 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    rightAnchor2 = [inputBackdropRightView4 rightAnchor];
    v51 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v59[1] = v51;
    inputBackdropLeftView5 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    topAnchor = [inputBackdropLeftView5 topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v59[2] = v47;
    inputBackdropRightView5 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    topAnchor3 = [inputBackdropRightView5 topAnchor];
    inputBackdropLeftView6 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    topAnchor4 = [inputBackdropLeftView6 topAnchor];
    v18 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v59[3] = v18;
    inputBackdropRightView6 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    bottomAnchor = [inputBackdropRightView6 bottomAnchor];
    inputBackdropLeftView7 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    bottomAnchor2 = [inputBackdropLeftView7 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v59[4] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:5];
    [(UIKBInputBackdropView *)self setSplitConstraints:v24];
  }

  splitConstraints2 = [(UIKBInputBackdropView *)self splitConstraints];
  firstObject = [splitConstraints2 firstObject];
  isActive = [firstObject isActive];

  if ((isActive & 1) == 0)
  {
    v28 = MEMORY[0x1E69977A0];
    splitConstraints3 = [(UIKBInputBackdropView *)self splitConstraints];
    [v28 activateConstraints:splitConstraints3];
  }

  leftWidthConstraint = [(UIKBInputBackdropView *)self leftWidthConstraint];

  if (!leftWidthConstraint)
  {
    inputBackdropLeftView8 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    widthAnchor = [inputBackdropLeftView8 widthAnchor];
    [(UIView *)self bounds];
    v34 = [widthAnchor constraintEqualToConstant:v33 * 0.6];
    [(UIKBInputBackdropView *)self setLeftWidthConstraint:v34];
  }

  rightWidthConstraint = [(UIKBInputBackdropView *)self rightWidthConstraint];

  if (!rightWidthConstraint)
  {
    inputBackdropRightView7 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    widthAnchor2 = [inputBackdropRightView7 widthAnchor];
    [(UIView *)self bounds];
    v39 = [widthAnchor2 constraintEqualToConstant:v38 * 0.6];
    [(UIKBInputBackdropView *)self setRightWidthConstraint:v39];
  }

  heightConstraint = [(UIKBInputBackdropView *)self heightConstraint];

  if (!heightConstraint)
  {
    inputBackdropLeftView9 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
    heightAnchor = [inputBackdropLeftView9 heightAnchor];
    v43 = [heightAnchor constraintEqualToConstant:self->_tallHeight];
    [(UIKBInputBackdropView *)self setHeightConstraint:v43];

    heightConstraint2 = [(UIKBInputBackdropView *)self heightConstraint];
    [heightConstraint2 setActive:1];
  }
}

- (void)layoutInputBackdropToSplitWithLeftViewRect:(CGRect)rect andRightViewRect:(CGRect)viewRect innerCorners:(unint64_t)corners
{
  width = viewRect.size.width;
  height = rect.size.height;
  v8 = rect.size.width;
  [(UIKBInputBackdropView *)self createSplitBackdropIfNeeded:rect.origin.x];
  heightConstraint = [(UIKBInputBackdropView *)self heightConstraint];
  [heightConstraint setConstant:height];

  [(UIKBInputBackdropView *)self _updateForLeftOffset:v8 rightOffset:width];
  leftWidthConstraint = [(UIKBInputBackdropView *)self leftWidthConstraint];
  isActive = [leftWidthConstraint isActive];

  if ((isActive & 1) == 0)
  {
    leftWidthConstraint2 = [(UIKBInputBackdropView *)self leftWidthConstraint];
    [leftWidthConstraint2 setActive:1];
  }

  leftWidthConstraint3 = [(UIKBInputBackdropView *)self leftWidthConstraint];
  [leftWidthConstraint3 setConstant:v8];

  rightWidthConstraint = [(UIKBInputBackdropView *)self rightWidthConstraint];
  isActive2 = [rightWidthConstraint isActive];

  if ((isActive2 & 1) == 0)
  {
    rightWidthConstraint2 = [(UIKBInputBackdropView *)self rightWidthConstraint];
    [rightWidthConstraint2 setActive:1];
  }

  rightWidthConstraint3 = [(UIKBInputBackdropView *)self rightWidthConstraint];
  [rightWidthConstraint3 setConstant:width];

  self->_innerCorners = corners;
  inputBackdropLeftView = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  [inputBackdropLeftView updateCorners:corners & 0xA];

  inputBackdropRightView = [(UIKBInputBackdropView *)self inputBackdropRightView];
  [inputBackdropRightView updateCorners:corners & 5];
}

- (void)layoutInputBackdropToSplitWithHeight:(double)height innerCorners:(unint64_t)corners
{
  [(UIKBInputBackdropView *)self createSplitBackdropIfNeeded];
  heightConstraint = [(UIKBInputBackdropView *)self heightConstraint];
  [heightConstraint setConstant:height];

  self->_innerCorners = corners;
  inputBackdropLeftView = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  [inputBackdropLeftView updateCorners:corners & 0xA];

  inputBackdropRightView = [(UIKBInputBackdropView *)self inputBackdropRightView];
  [inputBackdropRightView updateCorners:corners & 5];
}

- (void)layoutInputBackdropToFullWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v50[4] = *MEMORY[0x1E69E9840];
  inputBackdropLeftView = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  superview = [inputBackdropLeftView superview];
  if (superview)
  {
  }

  else
  {
    inputBackdropRightView = [(UIKBInputBackdropView *)self inputBackdropRightView];
    superview2 = [inputBackdropRightView superview];

    if (!superview2)
    {
      goto LABEL_5;
    }
  }

  inputBackdropLeftView2 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  [inputBackdropLeftView2 removeFromSuperview];

  inputBackdropRightView2 = [(UIKBInputBackdropView *)self inputBackdropRightView];
  [inputBackdropRightView2 removeFromSuperview];

LABEL_5:
  inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
  [(UIView *)self insertSubview:inputBackdropFullView atIndex:self->_captureView != 0];

  fullWidthConstraints = [(UIKBInputBackdropView *)self fullWidthConstraints];

  if (!fullWidthConstraints)
  {
    inputBackdropFullView2 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    leftAnchor = [inputBackdropFullView2 leftAnchor];
    leftAnchor2 = [(UIView *)self leftAnchor];
    v46 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
    v50[0] = v46;
    inputBackdropFullView3 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    topAnchor = [inputBackdropFullView3 topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v42 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v50[1] = v42;
    inputBackdropFullView4 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    widthAnchor = [inputBackdropFullView4 widthAnchor];
    widthAnchor2 = [(UIView *)self widthAnchor];
    v19 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:0.0];
    v50[2] = v19;
    inputBackdropFullView5 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    heightAnchor = [inputBackdropFullView5 heightAnchor];
    heightAnchor2 = [(UIView *)self heightAnchor];
    v23 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:0.0];
    v50[3] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
    [(UIKBInputBackdropView *)self setFullWidthConstraints:v24];
  }

  fullWidthConstraints2 = [(UIKBInputBackdropView *)self fullWidthConstraints];
  firstObject = [fullWidthConstraints2 firstObject];
  isActive = [firstObject isActive];

  if ((isActive & 1) == 0)
  {
    v28 = MEMORY[0x1E69977A0];
    fullWidthConstraints3 = [(UIKBInputBackdropView *)self fullWidthConstraints];
    [v28 activateConstraints:fullWidthConstraints3];
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
    fullWidthConstraints4 = [(UIKBInputBackdropView *)self fullWidthConstraints];
    v35 = [fullWidthConstraints4 objectAtIndex:0];
    [v35 setConstant:x];

    fullWidthConstraints5 = [(UIKBInputBackdropView *)self fullWidthConstraints];
    v37 = [fullWidthConstraints5 objectAtIndex:1];
    [v37 setConstant:y];

    fullWidthConstraints6 = [(UIKBInputBackdropView *)self fullWidthConstraints];
    v39 = [fullWidthConstraints6 objectAtIndex:2];
    [v39 setConstant:{fmax(v31, 0.0)}];

    fullWidthConstraints7 = [(UIKBInputBackdropView *)self fullWidthConstraints];
    v41 = [fullWidthConstraints7 objectAtIndex:3];
    [v41 setConstant:{fmax(v33, 0.0)}];

    [(UIView *)self layoutIfNeeded];
  }
}

- (void)updateCornersWithRadius:(double)radius usingCornerRadii:(BOOL)radii
{
  radiiCopy = radii;
  inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
  v7 = inputBackdropFullView;
  if (radiiCopy)
  {
    [inputBackdropFullView _updateCornerRadiiIfNecessaryWithTopRadius:0 useDeviceCorners:radius];
  }

  else
  {
    [inputBackdropFullView _setCornerRadius:1 continuous:15 maskedCorners:radius];
  }
}

- (void)updateCornersWithRadius:(double)radius forVisualState:(int64_t)state
{
  if ([(UIKBInputBackdropView *)self backdropStyle]== 3908)
  {
    inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView _updateCornerRadiiIfNecessaryWithTopRadius:state != 3 useDeviceCorners:radius];
  }

  else
  {
    inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView _setCornerRadius:1 continuous:15 maskedCorners:radius];
  }
}

- (void)setProgress:(double)progress withFrame:(CGRect)frame innerCorners:(unint64_t)corners
{
  if (progress >= 0.0)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    if (!CGRectIsEmpty(frame))
    {
      if (progress == 0.0 && (v12 = &OBJC_IVAR___UIKBInputBackdropView__savedStartRect, p_hasStartRect = &self->_hasStartRect, !self->_hasStartRect) || progress == 1.0 && (v12 = &OBJC_IVAR___UIKBInputBackdropView__savedEndRect, p_hasStartRect = &self->_hasEndRect, !self->_hasEndRect))
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
      if (progress == 0.0)
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
        [(UIKBInputBackdropView *)self _prepareWithLeftOffset:round(self->_transitionLeftOffset + (1.0 - progress) * (ceil(width * 0.5) - self->_transitionLeftOffset)) gapWidth:round(self->_transitionGap * progress)];
        [(UIKBInputBackdropView *)self layoutInputBackdropToSplitWithHeight:corners innerCorners:height];

        [(UIKBInputBackdropView *)self setGestureProgressForSplit:progress];
      }
    }
  }
}

- (void)_prepareWithLeftOffset:(double)offset gapWidth:(double)width
{
  self->_transitionGap = width;
  [(UIView *)self bounds];
  [(UIKBInputBackdropView *)self _updateForLeftOffset:offset rightOffset:v7 - (offset + width)];

  [(UIKBInputBackdropView *)self createSplitBackdropIfNeeded];
}

- (void)_updateForLeftOffset:(double)offset rightOffset:(double)rightOffset
{
  self->_transitionLeftOffset = offset;
  self->_transitionRightOffset = rightOffset;
  [(UIView *)self bounds];
  v7 = (v6 + self->_transitionLeftOffset - self->_transitionRightOffset) * 0.5;
  self->_leftWidthDiff = v7 - offset;
  [(UIView *)self bounds];
  self->_rightWidthDiff = v8 - v7 - (self->_transitionLeftOffset - self->_transitionRightOffset) - self->_transitionRightOffset;
}

- (void)setGestureProgressForSplit:(double)split
{
  if (split > 0.0)
  {
    inputBackdropRightView = [(UIKBInputBackdropView *)self inputBackdropRightView];
    superview = [inputBackdropRightView superview];
    if (superview)
    {
      v7 = superview;
      inputBackdropLeftView = [(UIKBInputBackdropView *)self inputBackdropLeftView];
      superview2 = [inputBackdropLeftView superview];

      if (superview2)
      {
LABEL_10:
        leftWidthConstraint = [(UIKBInputBackdropView *)self leftWidthConstraint];
        isActive = [leftWidthConstraint isActive];

        if ((isActive & 1) == 0)
        {
          leftWidthConstraint2 = [(UIKBInputBackdropView *)self leftWidthConstraint];
          [leftWidthConstraint2 setActive:1];
        }

        rightWidthConstraint = [(UIKBInputBackdropView *)self rightWidthConstraint];
        isActive2 = [rightWidthConstraint isActive];

        if ((isActive2 & 1) == 0)
        {
          rightWidthConstraint2 = [(UIKBInputBackdropView *)self rightWidthConstraint];
          [rightWidthConstraint2 setActive:1];
        }

        v20 = self->_tallHeight - self->_heightDiff * split;
        heightConstraint = [(UIKBInputBackdropView *)self heightConstraint];
        [heightConstraint setConstant:v20];

        if (self->_transitionGap <= 0.0)
        {
          [(UIView *)self bounds];
          v27 = v26 * 0.6;
          leftWidthConstraint3 = [(UIKBInputBackdropView *)self leftWidthConstraint];
          [leftWidthConstraint3 setConstant:v27];

          [(UIView *)self bounds];
          v25 = v29 * 0.6;
        }

        else
        {
          if (split >= 0.055)
          {
            v22 = 1.0 - (split * 1.05820106 + -1.05820106 + 1.0);
          }

          else
          {
            v22 = 1.0;
          }

          v23 = self->_transitionLeftOffset + round(v22 * self->_leftWidthDiff);
          leftWidthConstraint4 = [(UIKBInputBackdropView *)self leftWidthConstraint];
          [leftWidthConstraint4 setConstant:v23];

          v25 = self->_transitionRightOffset + round(v22 * self->_rightWidthDiff);
        }

        rightWidthConstraint3 = [(UIKBInputBackdropView *)self rightWidthConstraint];
        [rightWidthConstraint3 setConstant:v25];

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

- (void)_beginSplitTransitionIfNeeded:(double)needed gapWidth:(double)width
{
  if (!self->_isTransitioning)
  {
    [(UIKBInputBackdropView *)self _prepareWithLeftOffset:needed gapWidth:width];
    self->_isTransitioning = 1;
    self->_hasStartRect = 0;
    self->_hasEndRect = 0;
  }
}

- (void)_endSplitTransitionIfNeeded:(BOOL)needed
{
  if (self->_isTransitioning)
  {
    v16 = v7;
    v17 = v3;
    self->_isTransitioning = 0;
    if (needed)
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

- (double)preferredCornerRadiusForState:(int64_t)state
{
  isAssistantBackground = [(UIKBInputBackdropView *)self isAssistantBackground];
  result = 22.0;
  if (!isAssistantBackground)
  {
    result = 27.0;
    if (state == 3)
    {
      v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v7 preferencesActions];
      traitCollection = [(UIView *)self traitCollection];
      [traitCollection displayScale];
      [preferencesActions rivenSizeFactor:42.0 / v10];
      v12 = round(v11);

      return v12;
    }
  }

  return result;
}

- (CGSize)sizeForVisualState:(int64_t)state
{
  v3 = -1.0;
  v4 = -1.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)animatingTransitionFromState:(int64_t)state toState:(int64_t)toState animationType:(int64_t)type totalDuration:(double)duration
{
  [(UIKBInputBackdropView *)self preferredCornerRadiusForState:toState, duration];
  v9 = v8;
  if ((toState - 3) > 1)
  {
    inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView _updateCornerRadiiIfNecessaryWithTopRadius:1 useDeviceCorners:v9];
  }

  else
  {

    [(UIKBInputBackdropView *)self updateCornersWithRadius:toState forVisualState:?];
  }
}

- (void)transitioningToState:(int64_t)state animationType:(int64_t)type completionPercentage:(double)percentage
{
  [(UIKBInputBackdropView *)self preferredCornerRadiusForState:2, type];
  v9 = v8;
  if (state == 3 || [(UIKBInputBackdropView *)self keyboardVisualState]== 3)
  {
    [(UIKBInputBackdropView *)self preferredCornerRadiusForState:3];
    v11 = v10 + (v9 - v10) * percentage;

    [(UIKBInputBackdropView *)self updateCornersWithRadius:3 forVisualState:v11];
  }
}

- (void)finishedTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition
{
  [(UIKBInputBackdropView *)self setKeyboardVisualState:state, type, transition];
  backdropStyle = [(UIKBInputBackdropView *)self backdropStyle];

  [(UIKBInputBackdropView *)self maskCornersIfNeededForStyle:backdropStyle];
}

@end