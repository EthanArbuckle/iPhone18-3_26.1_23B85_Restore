@interface UIKeyboardPopoverContainer
+ (CGRect)frameAtOffset:(CGPoint)offset keyboardSize:(CGSize)size screenSize:(CGSize)screenSize;
+ (CGSize)pillSize;
+ (CGSize)shadowOffset;
+ (UIColor)borderColor;
+ (UIEdgeInsets)contentInsets;
+ (double)arrowHeight;
+ (double)borderWidth;
+ (double)cornerRadius;
+ (double)extraWidth;
+ (double)shadowRadius;
+ (id)propertiesForSpecificKeyboardFrame:(CGRect)frame onScreenSize:(CGSize)size;
+ (id)propertiesForTargetRect:(CGRect)rect withHeight:(double)height onScreenSize:(CGSize)size;
- (CGRect)frame;
- (UIKeyboardPopoverContainer)initWithView:(id)view usingBackdropStyle:(int64_t)style;
- (void)_updateKeyboardLayoutGuideForPopover:(CGRect)popover;
- (void)applyProperties:(id)properties;
- (void)invalidate;
- (void)updateBackdropStyle:(int64_t)style;
@end

@implementation UIKeyboardPopoverContainer

+ (double)borderWidth
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen nativeScale];
  v4 = 1.0 / v3;

  return v4;
}

+ (UIEdgeInsets)contentInsets
{
  v2 = +[UIKeyboardImpl activeInstance];
  if ([v2 shouldShowCandidateBar])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v3 inputDelegateManager];
    forwardingInputDelegate = [inputDelegateManager forwardingInputDelegate];

    if (!forwardingInputDelegate)
    {
      +[UIKeyboardPopoverContainer borderWidth];
      v7 = v6;
      goto LABEL_6;
    }
  }

  else
  {
  }

  +[UIKeyboardPopoverContainer borderWidth];
  v7 = v8 + 6.5;
LABEL_6:
  if (+[UIInputWindowController keyboardDotDotDotEnabled])
  {
    +[UIKeyboardPopoverContainer borderWidth];
    v7 = v9;
    +[UIKeyboardPopoverContainer borderWidth];
    v11 = v10 + 10.0;
  }

  else
  {
    +[UIKeyboardPopoverContainer dragAreaHeight];
    v11 = v12;
  }

  +[UIKeyboardPopoverContainer borderWidth];
  v14 = v13 + 6.5;
  +[UIKeyboardPopoverContainer borderWidth];
  v16 = v15 + 6.5;
  v17 = v7;
  v18 = v14;
  v19 = v11;
  result.right = v16;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

+ (double)extraWidth
{
  [self contentInsets];
  v4 = v3;
  [self contentInsets];
  return v4 + v5;
}

+ (UIColor)borderColor
{
  v2 = +[UIKeyboardImpl activeInstance];
  _inheritedRenderConfig = [v2 _inheritedRenderConfig];
  lightKeyboard = [_inheritedRenderConfig lightKeyboard];

  if (lightKeyboard)
  {
    v5 = +[UIColor blackColor];
    v6 = [v5 colorWithAlphaComponent:0.08];
  }

  else
  {
    v6 = [UIColor colorWithWhite:0.38 alpha:1.0];
  }

  return v6;
}

+ (double)cornerRadius
{
  v4 = _UISolariumEnabled();
  if (v4)
  {
    v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v2 preferencesActions];
    if ([preferencesActions colorAdaptiveKeyboardEnabled])
    {
      v5 = 42.0;
    }

    else
    {
      v5 = 20.0;
    }
  }

  else
  {
    v5 = 20.0;
  }

  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen nativeScale];
  v8 = v7;

  if (v4)
  {
  }

  return v5 / v8;
}

+ (double)arrowHeight
{
  v2 = +[_UIPopoverStandardChromeView standardChromeViewClass];

  [(objc_class *)v2 arrowHeight];
  return result;
}

+ (CGSize)pillSize
{
  v2 = 36.0;
  v3 = 5.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (double)shadowRadius
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen nativeScale];
  v4 = 30.0 / v3;

  return v4;
}

+ (CGSize)shadowOffset
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen nativeScale];
  v4 = 17.0 / v3;

  v5 = 0.0;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGRect)frame
{
  [(UIView *)self->_popoverContainerView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIKeyboardPopoverContainer)initWithView:(id)view usingBackdropStyle:(int64_t)style
{
  viewCopy = view;
  v62.receiver = self;
  v62.super_class = UIKeyboardPopoverContainer;
  v7 = [(UIKeyboardPopoverContainer *)&v62 init];
  if (v7)
  {
    v8 = [_UIPopoverView alloc];
    v9 = +[_UIPopoverStandardChromeView standardChromeViewClass];
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    v14 = [(_UIPopoverView *)v8 initWithFrame:v9 backgroundViewClass:*MEMORY[0x1E695F058], v11, v12, v13];
    popover = v7->_popover;
    v7->_popover = v14;

    [(_UIPopoverView *)v7->_popover setBackgroundStyle:6];
    [(_UIPopoverView *)v7->_popover setArrowDirection:2];
    v16 = [[_UIKeyboardPopover alloc] initWithPopoverView:v7->_popover];
    popoverContainerView = v7->_popoverContainerView;
    v7->_popoverContainerView = v16;

    v18 = +[UIKeyboardPopoverContainer shadowColor];
    cGColor = [v18 CGColor];
    layer = [(UIView *)v7->_popoverContainerView layer];
    [layer setShadowColor:cGColor];

    +[UIKeyboardPopoverContainer shadowOpacity];
    v22 = v21;
    layer2 = [(UIView *)v7->_popoverContainerView layer];
    *&v24 = v22;
    [layer2 setShadowOpacity:v24];

    +[UIKeyboardPopoverContainer shadowRadius];
    v26 = v25;
    layer3 = [(UIView *)v7->_popoverContainerView layer];
    [layer3 setShadowRadius:v26];

    +[UIKeyboardPopoverContainer shadowOffset];
    v29 = v28;
    v31 = v30;
    layer4 = [(UIView *)v7->_popoverContainerView layer];
    [layer4 setShadowOffset:{v29, v31}];

    [viewCopy insertSubview:v7->_popoverContainerView atIndex:0];
    if (style != 3908)
    {
      contentView = [(_UIPopoverView *)v7->_popover contentView];
      layer5 = [contentView layer];

      borderColor = [objc_opt_class() borderColor];
      [layer5 setBorderColor:{objc_msgSend(borderColor, "CGColor")}];

      [objc_opt_class() borderWidth];
      [layer5 setBorderWidth:?];
      [(UIKeyboardPopoverContainer *)v7 updateBackdropStyle:style];
    }

    if (!+[UIInputWindowController keyboardDotDotDotEnabled])
    {
      v36 = [[UIView alloc] initWithFrame:v10, v11, v12, v13];
      contentView2 = [(_UIPopoverView *)v7->_popover contentView];
      [contentView2 addSubview:v36];

      v38 = objc_opt_new();
      [(UIView *)v36 addLayoutGuide:v38];
      leftAnchor = [v38 leftAnchor];
      leftAnchor2 = [(UIView *)v36 leftAnchor];
      v41 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      [v41 setActive:1];

      rightAnchor = [v38 rightAnchor];
      rightAnchor2 = [(UIView *)v36 rightAnchor];
      v44 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      [v44 setActive:1];

      topAnchor = [v38 topAnchor];
      bottomAnchor = [(UIView *)v36 bottomAnchor];
      v47 = [topAnchor constraintEqualToAnchor:bottomAnchor];
      keyboardAreaHeight = v7->_keyboardAreaHeight;
      v7->_keyboardAreaHeight = v47;

      [(NSLayoutConstraint *)v7->_keyboardAreaHeight setActive:1];
      bottomAnchor2 = [v38 bottomAnchor];
      bottomAnchor3 = [(UIView *)v36 bottomAnchor];
      v51 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      [v51 setActive:1];

      v52 = [[_UIKeyboardPopoverAffordance alloc] initWithFrame:v10, v11, v12, v13];
      affordance = v7->_affordance;
      v7->_affordance = v52;

      [(UIView *)v7->_affordance setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v36 addSubview:v7->_affordance];
      v54 = MEMORY[0x1E69977A0];
      v55 = v7->_affordance;
      +[UIKeyboardPopoverContainer dragAreaHeight];
      v57 = [v54 constraintWithItem:v55 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v56];
      [(UIView *)v36 addConstraint:v57];

      v58 = [MEMORY[0x1E69977A0] constraintWithItem:v7->_affordance attribute:1 relatedBy:0 toItem:v36 attribute:1 multiplier:1.0 constant:0.0];
      [(UIView *)v36 addConstraint:v58];

      v59 = [MEMORY[0x1E69977A0] constraintWithItem:v7->_affordance attribute:2 relatedBy:0 toItem:v36 attribute:2 multiplier:1.0 constant:0.0];
      [(UIView *)v36 addConstraint:v59];

      v60 = [MEMORY[0x1E69977A0] constraintWithItem:v7->_affordance attribute:4 relatedBy:0 toItem:v36 attribute:4 multiplier:1.0 constant:0.0];
      [(UIView *)v36 addConstraint:v60];
    }
  }

  return v7;
}

- (void)updateBackdropStyle:(int64_t)style
{
  backdrop = self->_backdrop;
  if (style == 3908)
  {
    [(UIView *)backdrop removeFromSuperview];
    v6 = self->_backdrop;
    self->_backdrop = 0;
  }

  else if (style == 3904)
  {
    if (backdrop)
    {
      [(UIView *)backdrop setAlpha:0.0];
    }
  }

  else
  {
    if (!backdrop)
    {
      v7 = [UIKBVisualEffectView alloc];
      v8 = [(UIKBBackdropView *)v7 initWithFrame:style style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v9 = self->_backdrop;
      self->_backdrop = v8;

      [(UIView *)self->_backdrop setAutoresizingMask:18];
      [(UIView *)self->_backdrop setUserInteractionEnabled:1];
      backdropParent = [(UIKeyboardPopoverContainer *)self backdropParent];
      [backdropParent insertSubview:self->_backdrop atIndex:0];

      backdrop = self->_backdrop;
    }

    [(UIView *)backdrop setAlpha:1.0];
    [(UIKBBackdropView *)self->_backdrop transitionToStyle:style];
  }

  affordance = self->_affordance;

  [(_UIKeyboardPopoverAffordance *)affordance updateForBackdropStyle:style];
}

+ (id)propertiesForTargetRect:(CGRect)rect withHeight:(double)height onScreenSize:(CGSize)size
{
  height = size.height;
  x = rect.origin.x;
  width = size.width;
  v7 = rect.size.height;
  v61 = rect.size.width;
  y = rect.origin.y;
  v64[6] = *MEMORY[0x1E69E9840];
  [objc_opt_class() arrowHeight];
  v11 = v10;
  +[UIKeyboardImpl floatingWidth];
  v13 = v12;
  [self contentInsets];
  v15 = v14 + height;
  [self contentInsets];
  v17 = v15 + v16;
  [self contentInsets];
  v19 = v18;
  [self contentInsets];
  v21 = y;
  v22 = v7;
  v23 = v13 + v19 + v20;
  v24 = y + v7;
  v25 = height - (y + v7);
  v26 = v11 + v15;
  if (v25 > v11 + v15)
  {
    v27 = 0;
    if (x + v61 * 0.5 <= width * 0.5)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = width - v13;
    }

    v29 = v24 + v11;
    v30 = v11 + v17;
    v31 = 1;
    v32 = v28;
    v33 = v61;
    v34 = x;
    v35 = v17;
    v36 = v13 + v19 + v20;
    v37 = width;
    goto LABEL_14;
  }

  v34 = x;
  v33 = v61;
  if (y > v26)
  {
    v37 = width;
    if (x + v61 * 0.5 <= width * 0.5)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = width - v13;
    }

    v29 = y - v15 - v11;
    v27 = 1;
    v35 = v17;
    v30 = v11 + v17;
    v31 = 2;
    v36 = v13 + v19 + v20;
    v24 = v29;
    goto LABEL_13;
  }

  v37 = width;
  if (x > v11 + v13)
  {
    v27 = 0;
    v28 = 0.0 - v11;
    v31 = 8;
    v29 = y;
    v35 = v17;
    v36 = v11 + v23;
    v30 = v35;
    v24 = y;
LABEL_13:
    v32 = v28;
    goto LABEL_14;
  }

  v35 = v17;
  v27 = 0;
  if (width - (x + v61) <= v11 + v13)
  {
    v31 = 0;
    v24 = height - v26;
    v28 = 0.0;
    v36 = v13 + v19 + v20;
    v30 = v35;
    v29 = height - v26;
    v38 = 0.0;
    goto LABEL_17;
  }

  v28 = width - v13;
  v32 = v11 + width - v13;
  v36 = v11 + v23;
  v31 = 4;
  v29 = y;
  v30 = v35;
  v24 = y;
LABEL_14:
  if (v28 < 0.0)
  {
    v38 = v32 - v28;
    v28 = 0.0;
    goto LABEL_19;
  }

  v38 = v32;
LABEL_17:
  if (v28 > v37 - v36)
  {
    v38 = v38 - (v28 - (v37 - v30));
    v28 = v37 - v13;
  }

LABEL_19:
  if (v24 >= 0.0)
  {
    v39 = height - v30;
    if (v24 >= height - v30)
    {
      v29 = v29 - (v24 - v39);
    }

    else
    {
      v39 = v24;
    }
  }

  else
  {
    v29 = v29 - v24;
    v39 = 0.0;
  }

  v62 = v30;
  v40 = v27 ^ 1;
  if (v25 > v26)
  {
    v40 = 0;
  }

  v41 = v35;
  v42 = v35;
  v43 = v29;
  if ((v40 & 1) == 0)
  {
    v22 = v33;
    v21 = v34;
    v42 = v23;
    v43 = v38;
  }

  v44 = v21 + v22 * 0.5 - (v42 * 0.5 + v43);
  v45 = v23;
  [self contentInsets];
  v47 = v29 - v46;
  [self contentInsets];
  v49 = v47 - v48;
  [self contentInsets];
  v51 = v38 + v50;
  v63[0] = @"ArrowDirection";
  v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v31];
  v64[0] = v52;
  v63[1] = @"ArrowOffset";
  v53 = [MEMORY[0x1E696AD98] numberWithDouble:v44];
  v64[1] = v53;
  v63[2] = _UIKeyboardPopoverKeyboardRect;
  v54 = [MEMORY[0x1E696B098] valueWithRect:{v51, v49, v45, v41}];
  v64[2] = v54;
  v63[3] = @"PopoverRect";
  v55 = [MEMORY[0x1E696B098] valueWithRect:{v28, v39, v36, v62}];
  v64[3] = v55;
  v64[4] = &unk_1EFE2E7F8;
  v63[4] = @"Alpha";
  v63[5] = @"KeyboardSize";
  v56 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
  v64[5] = v56;
  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:6];

  return v57;
}

+ (CGRect)frameAtOffset:(CGPoint)offset keyboardSize:(CGSize)size screenSize:(CGSize)screenSize
{
  height = size.height;
  width = size.width;
  x = offset.x;
  v9 = screenSize.height - (offset.y + size.height);
  [self contentInsets];
  v11 = v9 - v10;
  [self contentInsets];
  v13 = height + v12;
  [self contentInsets];
  v15 = v13 + v14;
  [self contentInsets];
  v17 = v16;
  [self contentInsets];
  v19 = width + v17 + v18;
  [self contentInsets];
  v21 = x - v20;
  v22 = v11;
  v23 = v19;
  v24 = v15;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

+ (id)propertiesForSpecificKeyboardFrame:(CGRect)frame onScreenSize:(CGSize)size
{
  height = frame.size.height;
  width = frame.size.width;
  x = frame.origin.x;
  v26[6] = *MEMORY[0x1E69E9840];
  v8 = size.height - (frame.origin.y + frame.size.height);
  [self contentInsets];
  v10 = v8 - v9;
  [self contentInsets];
  v12 = height + v11;
  [self contentInsets];
  v14 = v12 + v13;
  [self contentInsets];
  v16 = v15;
  [self contentInsets];
  v18 = width + v16 + v17;
  [self contentInsets];
  v25[0] = @"ArrowDirection";
  v25[1] = @"ArrowOffset";
  v26[0] = &unk_1EFE31CF0;
  v26[1] = &unk_1EFE31CF0;
  v25[2] = @"PopoverRect";
  v20 = [MEMORY[0x1E696B098] valueWithCGRect:{x - v19, v10, v18, v14}];
  v26[2] = v20;
  v26[3] = &unk_1EFE2E7F8;
  v25[3] = @"Alpha";
  v25[4] = @"KeyboardSize";
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  v26[4] = v21;
  v25[5] = @"TouchInsets";
  v22 = [MEMORY[0x1E696B098] valueWithUIEdgeInsets:{-20.0, -20.0, -20.0, -20.0}];
  v26[5] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:6];

  return v23;
}

- (void)applyProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [propertiesCopy objectForKey:@"PopoverRect"];
  v6 = v5;
  v7 = MEMORY[0x1E695EFD0];
  if (v5)
  {
    [v5 rectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    popover = self->_popover;
    if (popover)
    {
      [(UIView *)popover transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v17 = v7[1];
    v44 = *v7;
    *&t2.a = *v7;
    v42 = v7[2];
    v43 = v17;
    *&t2.c = v17;
    *&t2.tx = v42;
    if (CGAffineTransformEqualToTransform(&t1, &t2))
    {
      [(UIView *)self->_popoverContainerView setFrame:v9, v11, v13, v15];
    }

    else
    {
      v18 = self->_popover;
      if (v18)
      {
        [(UIView *)v18 transform];
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
      }

      *&t2.a = v44;
      *&t2.c = v43;
      *&t2.tx = v42;
      if (!CGAffineTransformEqualToTransform(&t1, &t2))
      {
        [(UIView *)self->_popoverContainerView anchorPoint];
        v20 = v9 + v13 * v19;
        [(UIView *)self->_popoverContainerView anchorPoint];
        [(UIView *)self->_popoverContainerView setCenter:v20, v11 + v15 * v21];
        [(UIView *)self->_popoverContainerView setBounds:0.0, 0.0, v13, v15];
      }
    }

    [(UIKeyboardPopoverContainer *)self _updateKeyboardLayoutGuideForPopover:v9, v11, v13, v15, v42, v43, v44];
  }

  v22 = [propertiesCopy objectForKey:@"ArrowOffset"];
  v23 = v22;
  if (v22)
  {
    [v22 doubleValue];
    [(_UIPopoverView *)self->_popover setArrowOffset:?];
  }

  v24 = [propertiesCopy objectForKey:@"ArrowDirection"];

  if (v24)
  {
    integerValue = [v24 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  [(_UIPopoverView *)self->_popover setArrowDirection:integerValue];
  v26 = [propertiesCopy objectForKey:@"Alpha"];

  if (v26)
  {
    [v26 doubleValue];
    [(UIView *)self->_popoverContainerView setAlpha:?];
  }

  v27 = [propertiesCopy objectForKey:@"TouchInsets"];

  if (v27)
  {
    [v27 UIEdgeInsetsValue];
  }

  else
  {
    v30 = 0.0;
    v29 = 0.0;
    v28 = 0.0;
    v31 = 0.0;
  }

  [(UIView *)self->_popover _setTouchInsets:v28, v29, v30, v31];
  v32 = self->_popover;
  if ([(_UIPopoverView *)v32 arrowDirection])
  {
    [(UIPopoverBackgroundView *)_UIPopoverStandardChromeView _contentViewCornerRadiusForArrowDirection:[(_UIPopoverView *)self->_popover arrowDirection]];
  }

  else
  {
    [objc_opt_class() cornerRadius];
  }

  [(_UIPopoverView *)v32 _setCornerRadius:?];
  contentView = [(_UIPopoverView *)self->_popover contentView];
  layer = [contentView layer];

  v35 = [propertiesCopy objectForKey:@"KeyboardSize"];

  if (v35)
  {
    [v35 doubleValue];
  }

  else
  {
    [(UIView *)self->_popoverContainerView frame];
    v36 = v37;
  }

  [(NSLayoutConstraint *)self->_keyboardAreaHeight setConstant:-v36];
  v38 = [propertiesCopy objectForKey:@"Transform"];

  if (v38)
  {
    memset(&t1, 0, sizeof(t1));
    [v38 CGAffineTransformValue];
    t2 = t1;
    v39 = self->_popover;
    p_t2 = &t2;
  }

  else
  {
    v39 = self->_popover;
    v41 = v7[1];
    *&t1.a = *v7;
    *&t1.c = v41;
    *&t1.tx = v7[2];
    p_t2 = &t1;
  }

  [(UIView *)v39 setTransform:p_t2];
}

- (void)_updateKeyboardLayoutGuideForPopover:(CGRect)popover
{
  height = popover.size.height;
  width = popover.size.width;
  y = popover.origin.y;
  x = popover.origin.x;
  if (!+[UIInputWindowController useMetronomeTracking](UIInputWindowController, "useMetronomeTracking") && !+[UIAssistantBarButtonItemProvider _isScribbleButtonsVisible])
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      v25 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      _rootInputWindowController = [(UIView *)self->_popover _rootInputWindowController];
      isTranslating = [_rootInputWindowController isTranslating];

      [v25 keyboardVisibilityDidChangeWithFrame:1 visible:isTranslating tracking:{x, y, width, height}];
    }

    else
    {
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      if (!CGRectEqualToRect(*MEMORY[0x1E695F058], v37))
      {
        window = [(UIView *)self->_popover window];
        screen = [window screen];
        fixedCoordinateSpace = [screen fixedCoordinateSpace];

        window2 = [(UIView *)self->_popover window];
        windowScene = [window2 windowScene];
        _coordinateSpace = [windowScene _coordinateSpace];

        window3 = [(UIView *)self->_popover window];
        windowScene2 = [window3 windowScene];
        v18 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:windowScene2];
        [v18 hostedViewReference];
        v20 = v19;
        v22 = v21;

        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __67__UIKeyboardPopoverContainer__updateKeyboardLayoutGuideForPopover___block_invoke;
        v26[3] = &unk_1E7117C08;
        v29 = x;
        v30 = y;
        v31 = width;
        v32 = height;
        v35 = _coordinateSpace == 0;
        v26[4] = self;
        v27 = fixedCoordinateSpace;
        v28 = _coordinateSpace;
        v33 = v20;
        v34 = v22;
        v23 = _coordinateSpace;
        v24 = fixedCoordinateSpace;
        [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v26];
      }
    }
  }
}

void __67__UIKeyboardPopoverContainer__updateKeyboardLayoutGuideForPopover___block_invoke(uint64_t a1, void *a2)
{
  v66 = a2;
  if ([v66 isTrackingKeyboard])
  {
    [v66 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [*(*(a1 + 32) + 24) window];
    [v11 bounds];
    v78.origin.x = v12;
    v78.origin.y = v13;
    v78.size.width = v14;
    v78.size.height = v15;
    v68.origin.x = v4;
    v68.origin.y = v6;
    v68.size.width = v8;
    v68.size.height = v10;
    if (CGRectEqualToRect(v68, v78) && ![v66 _isHostedInAnotherProcess])
    {
    }

    else
    {
      v16 = *(a1 + 104);

      if ((v16 & 1) == 0)
      {
        v17 = [v66 coordinateSpace];
        [v66 frame];
        [v17 convertRect:*(a1 + 40) toCoordinateSpace:?];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        [*(a1 + 48) convertRect:*(a1 + 40) fromCoordinateSpace:{v19, v21, v23, v25}];
        x = v69.origin.x;
        y = v69.origin.y;
        width = v69.size.width;
        height = v69.size.height;
        v79.size.width = *(a1 + 72);
        v79.size.height = *(a1 + 80);
        v79.origin.x = *(a1 + 56) - *(a1 + 88);
        v79.origin.y = *(a1 + 64) - *(a1 + 96);
        v70 = CGRectIntersection(v69, v79);
        MinX = v70.origin.x;
        MaxY = v70.origin.y;
        v32 = v70.size.width;
        v33 = v70.size.height;
        if (CGRectIsEmpty(v70))
        {
          v71.origin.x = x;
          v71.origin.y = y;
          v71.size.width = width;
          v71.size.height = height;
          MinX = CGRectGetMinX(v71);
          v72.origin.x = x;
          v72.origin.y = y;
          v72.size.width = width;
          v72.size.height = height;
          MaxY = CGRectGetMaxY(v72);
          [v66 frame];
          v32 = v34;
          [v66 insetForDismissedKeyboardGuide];
          v33 = v35;
        }

        [*(a1 + 48) convertRect:*(a1 + 40) toCoordinateSpace:{MinX, MaxY, v32, v33}];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v44 = [v66 coordinateSpace];
        [v44 convertRect:*(a1 + 40) fromCoordinateSpace:{v37, v39, v41, v43}];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;

        goto LABEL_10;
      }
    }

    v53 = [*(*(a1 + 32) + 24) window];
    [v66 convertRect:v53 fromWindow:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;

    [v66 frame];
    v80.origin.x = v55;
    v80.origin.y = v57;
    v80.size.width = v59;
    v80.size.height = v61;
    v74 = CGRectIntersection(v73, v80);
    v46 = v74.origin.x;
    v48 = v74.origin.y;
    v50 = v74.size.width;
    v52 = v74.size.height;
LABEL_10:
    v62 = [v66 _primaryKeyboardTrackingGuide];
    [v62 changeSizingConstants:{v50, v52}];

    v63 = [v66 _primaryKeyboardTrackingGuide];
    v75.origin.x = v46;
    v75.origin.y = v48;
    v75.size.width = v50;
    v75.size.height = v52;
    v64 = CGRectGetMinX(v75);
    [v66 frame];
    v65 = CGRectGetMaxY(v76);
    v77.origin.x = v46;
    v77.origin.y = v48;
    v77.size.width = v50;
    v77.size.height = v52;
    [v63 changeOffsetConstants:{v64, v65 - CGRectGetMaxY(v77)}];
  }
}

- (void)invalidate
{
  [(UIView *)self->_popover removeFromSuperview];
  popover = self->_popover;
  self->_popover = 0;

  [(UIView *)self->_popoverContainerView removeFromSuperview];
  popoverContainerView = self->_popoverContainerView;
  self->_popoverContainerView = 0;
}

@end