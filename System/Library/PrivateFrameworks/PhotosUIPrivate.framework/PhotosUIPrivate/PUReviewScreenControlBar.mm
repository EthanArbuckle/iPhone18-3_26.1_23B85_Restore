@interface PUReviewScreenControlBar
+ (CGRect)sendButtonAlignmentRectInHorizontalBounds:(CGRect)bounds relativeCenterAlignmentPoint:(CGPoint)point;
+ (CGRect)sendButtonAlignmentRectInVerticalBounds:(CGRect)bounds relativeCenterAlignmentPoint:(CGPoint)point controlsCount:(unint64_t)count;
+ (id)supportedButtons;
- (BOOL)_isButtonAvailable:(int64_t)available;
- (BOOL)_isButtonEnabled:(int64_t)enabled;
- (CGPoint)layoutCenterAlignmentPoint;
- (PUReviewScreenControlBar)initWithFrame:(CGRect)frame;
- (id)_buttonForButtonType:(int64_t)type;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateBackgroundTransparency;
- (void)_updateButtonText;
- (void)_updateButtonVisibility;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAccessoryView:(id)view;
- (void)setAvailableButtons:(id)buttons;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setEnabledButtons:(id)buttons;
- (void)setFrame:(CGRect)frame;
- (void)setLayoutCenterAlignmentPoint:(CGPoint)point;
- (void)setShouldLayoutVertically:(BOOL)vertically;
- (void)setUseTransparentBackground:(BOOL)background;
@end

@implementation PUReviewScreenControlBar

- (CGPoint)layoutCenterAlignmentPoint
{
  x = self->_layoutCenterAlignmentPoint.x;
  y = self->_layoutCenterAlignmentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_updateBackgroundTransparency
{
  useTransparentBackground = [(PUReviewScreenControlBar *)self useTransparentBackground];
  v4 = 0.0;
  if (!useTransparentBackground)
  {
    v4 = 0.3;
  }

  v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v4];
  [(PUReviewScreenControlBar *)self setBackgroundColor:v5];
}

- (void)_updateButtonText
{
  shouldLayoutVertically = [(PUReviewScreenControlBar *)self shouldLayoutVertically];
  editButton = self->_editButton;
  v5 = !shouldLayoutVertically;
  if (shouldLayoutVertically)
  {
    v6 = &stru_1F2AC6818;
  }

  else
  {
    v6 = @"EDIT";
  }

  if (v5)
  {
    v7 = @"PUPHOTOBROWSER_BUTTON_ASSET_EXPLORER_REVIEW_SCREEN_MARKUP";
  }

  else
  {
    v7 = &stru_1F2AC6818;
  }

  v8 = PULocalizedString(v6);
  [(UIButton *)editButton setTitle:v8 forState:0];

  markupButton = self->_markupButton;
  v10 = PULocalizedString(v7);
  [(UIButton *)markupButton setTitle:v10 forState:0];
}

- (void)_updateButtonVisibility
{
  v20 = *MEMORY[0x1E69E9840];
  supportedButtons = [objc_opt_class() supportedButtons];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(supportedButtons, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = supportedButtons;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        integerValue = [*(*(&v15 + 1) + 8 * v9) integerValue];
        v11 = [(PUReviewScreenControlBar *)self _buttonForButtonType:integerValue];
        v12 = [(PUReviewScreenControlBar *)self _isButtonAvailable:integerValue];
        v13 = [(PUReviewScreenControlBar *)self _isButtonEnabled:integerValue];
        [v11 setHidden:!v12];
        [v11 setEnabled:v13];
        if (v12 || ([(PUReviewScreenControlBar *)self sendButton], v14 = objc_claimAutoreleasedReturnValue(), v14, v11 == v14))
        {
          [v4 addObject:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(PUReviewScreenControlBar *)self _setButtonsForLayout:v4];
}

- (id)_buttonForButtonType:(int64_t)type
{
  switch(type)
  {
    case 2:
      editButton = [(PUReviewScreenControlBar *)self editButton];
      break;
    case 4:
      editButton = [(PUReviewScreenControlBar *)self sendButton];
      break;
    case 3:
      editButton = [(PUReviewScreenControlBar *)self markupButton];
      break;
    default:
      editButton = 0;
      break;
  }

  return editButton;
}

- (BOOL)_isButtonEnabled:(int64_t)enabled
{
  enabledButtons = [(PUReviewScreenControlBar *)self enabledButtons];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:enabled];
  v6 = [enabledButtons containsObject:v5];

  return v6;
}

- (BOOL)_isButtonAvailable:(int64_t)available
{
  availableButtons = [(PUReviewScreenControlBar *)self availableButtons];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:available];
  v6 = [availableButtons containsObject:v5];

  return v6;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PUReviewScreenControlBar *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = PUReviewScreenControlBar;
  [(PUReviewScreenControlBar *)&v16 setBounds:x, y, width, height];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  if (!CGRectEqualToRect(v17, v18))
  {
    [(PUReviewScreenControlBar *)self setNeedsLayout];
  }
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  [(PUReviewScreenControlBar *)self center];
  v7 = v6;
  v9 = v8;
  v11.receiver = self;
  v11.super_class = PUReviewScreenControlBar;
  [(PUReviewScreenControlBar *)&v11 setCenter:x, y];
  if (x != v7 || y != v9)
  {
    [(PUReviewScreenControlBar *)self setNeedsLayout];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PUReviewScreenControlBar *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = PUReviewScreenControlBar;
  [(PUReviewScreenControlBar *)&v16 setFrame:x, y, width, height];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  if (!CGRectEqualToRect(v17, v18))
  {
    [(PUReviewScreenControlBar *)self setNeedsLayout];
  }
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  accessoryView = self->_accessoryView;
  if (accessoryView != viewCopy)
  {
    v8 = viewCopy;
    superview = [(UIView *)accessoryView superview];

    if (superview == self)
    {
      [(UIView *)self->_accessoryView removeFromSuperview];
    }

    objc_storeStrong(&self->_accessoryView, view);
    accessoryView = [(PUReviewScreenControlBar *)self addSubview:self->_accessoryView];
    viewCopy = v8;
  }

  MEMORY[0x1EEE66BB8](accessoryView, viewCopy);
}

- (void)setEnabledButtons:(id)buttons
{
  buttonsCopy = buttons;
  v5 = buttonsCopy;
  if (self->_enabledButtons != buttonsCopy)
  {
    v8 = buttonsCopy;
    buttonsCopy = [buttonsCopy isEqual:?];
    v5 = v8;
    if ((buttonsCopy & 1) == 0)
    {
      v6 = [v8 copy];
      enabledButtons = self->_enabledButtons;
      self->_enabledButtons = v6;

      buttonsCopy = [(PUReviewScreenControlBar *)self _updateButtonVisibility];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](buttonsCopy, v5);
}

- (void)setAvailableButtons:(id)buttons
{
  buttonsCopy = buttons;
  v5 = buttonsCopy;
  if (self->_availableButtons != buttonsCopy)
  {
    v8 = buttonsCopy;
    buttonsCopy = [buttonsCopy isEqual:?];
    v5 = v8;
    if ((buttonsCopy & 1) == 0)
    {
      v6 = [v8 copy];
      availableButtons = self->_availableButtons;
      self->_availableButtons = v6;

      [(PUReviewScreenControlBar *)self _updateButtonVisibility];
      buttonsCopy = [(PUReviewScreenControlBar *)self setNeedsLayout];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](buttonsCopy, v5);
}

- (void)setUseTransparentBackground:(BOOL)background
{
  if (self->_useTransparentBackground != background)
  {
    self->_useTransparentBackground = background;
    [(PUReviewScreenControlBar *)self _updateBackgroundTransparency];
  }
}

- (void)setLayoutCenterAlignmentPoint:(CGPoint)point
{
  if (point.x != self->_layoutCenterAlignmentPoint.x || point.y != self->_layoutCenterAlignmentPoint.y)
  {
    self->_layoutCenterAlignmentPoint = point;
    [(PUReviewScreenControlBar *)self setNeedsLayout];
  }
}

- (void)setShouldLayoutVertically:(BOOL)vertically
{
  if (self->_shouldLayoutVertically != vertically)
  {
    self->_shouldLayoutVertically = vertically;
    [(PUReviewScreenControlBar *)self _updateButtonText];

    [(PUReviewScreenControlBar *)self setNeedsLayout];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = PUReviewScreenControlBar;
  v5 = [(PUReviewScreenControlBar *)&v7 hitTest:event withEvent:test.x, test.y];
  if ([(PUReviewScreenControlBar *)self useTransparentTouches]&& v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PUReviewScreenControlBar;
  [(PUReviewScreenControlBar *)&v4 didMoveToWindow];
  window = [(PUReviewScreenControlBar *)self window];

  if (window)
  {
    [(PUReviewScreenControlBar *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v104 = *MEMORY[0x1E69E9840];
  v99.receiver = self;
  v99.super_class = PUReviewScreenControlBar;
  [(PUReviewScreenControlBar *)&v99 layoutSubviews];
  [(PUReviewScreenControlBar *)self bounds];
  v85 = v3;
  v86 = v4;
  v6 = v5;
  v8 = v7;
  sendButton = [(PUReviewScreenControlBar *)self sendButton];
  [(PUReviewScreenControlBar *)self layoutCenterAlignmentPoint];
  v11 = v10;
  v13 = v12;
  window = [(PUReviewScreenControlBar *)self window];
  [(PUReviewScreenControlBar *)self convertPoint:window fromView:v11, v13];
  v16 = v15;
  v18 = v17;

  window2 = [(PUReviewScreenControlBar *)self window];
  [window2 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [PUReviewScreenUtilities useCompactControlBarButtonsForReferenceBounds:v21, v23, v25, v27];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  editButton = [(PUReviewScreenControlBar *)self editButton];
  v102[0] = editButton;
  markupButton = [(PUReviewScreenControlBar *)self markupButton];
  v102[1] = markupButton;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];

  v32 = [v31 countByEnumeratingWithState:&v95 objects:v103 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v96;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v96 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(*(&v95 + 1) + 8 * i) setUseCompactSize:v28];
      }

      v33 = [v31 countByEnumeratingWithState:&v95 objects:v103 count:16];
    }

    while (v33);
  }

  if ([(PUReviewScreenControlBar *)self shouldLayoutVertically])
  {
    _buttonsForLayout = [(PUReviewScreenControlBar *)self _buttonsForLayout];
    reverseObjectEnumerator = [_buttonsForLayout reverseObjectEnumerator];

    _buttonsForLayout2 = [(PUReviewScreenControlBar *)self _buttonsForLayout];
    if ([_buttonsForLayout2 count])
    {
      _buttonsForLayout3 = [(PUReviewScreenControlBar *)self _buttonsForLayout];
      v40 = [_buttonsForLayout3 count] - 1;
    }

    else
    {
      v40 = 0;
    }

    v59 = v6;
    [objc_opt_class() sendButtonAlignmentRectInVerticalBounds:v40 relativeCenterAlignmentPoint:v85 controlsCount:{v86, v6, v8, v16, v18}];
    [sendButton setFrame:?];
    [reverseObjectEnumerator nextObject];

    [sendButton frame];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v68 = reverseObjectEnumerator;
    v69 = [v68 countByEnumeratingWithState:&v91 objects:v101 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v92;
      do
      {
        for (j = 0; j != v70; ++j)
        {
          if (*v92 != v71)
          {
            objc_enumerationMutation(v68);
          }

          v73 = *(*(&v91 + 1) + 8 * j);
          v106.origin.x = v61;
          v106.origin.y = v63;
          v106.size.width = v65;
          v106.size.height = v67;
          v63 = CGRectGetMaxY(v106) + 30.0;
          v67 = 42.0;
          UIRectCenteredAboutPointScale();
          v61 = v74;
          [v73 frameForAlignmentRect:?];
          [v73 setFrame:{PURoundRectToPixel(v75, v76, v77, v78)}];
          v65 = 42.0;
        }

        v70 = [v68 countByEnumeratingWithState:&v91 objects:v101 count:16];
        v67 = 42.0;
        v65 = 42.0;
      }

      while (v70);
    }

    v41 = v59;
  }

  else
  {
    v84 = v8;
    v41 = v6;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    _buttonsForLayout4 = [(PUReviewScreenControlBar *)self _buttonsForLayout];
    v43 = [_buttonsForLayout4 countByEnumeratingWithState:&v87 objects:v100 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v88;
      v46 = 20.0;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v88 != v45)
          {
            objc_enumerationMutation(_buttonsForLayout4);
          }

          v48 = *(*(&v87 + 1) + 8 * k);
          [v48 intrinsicContentSize];
          v50 = v49;
          v52 = v51;
          UIRectCenteredAboutPointScale();
          v54 = v53;
          [v48 frameForAlignmentRect:v46];
          [v48 setFrame:{PURoundRectToPixel(v55, v56, v57, v58)}];
          v105.origin.x = v46;
          v105.origin.y = v54;
          v105.size.width = v50;
          v105.size.height = v52;
          v46 = CGRectGetMaxX(v105) + 30.0;
        }

        v44 = [_buttonsForLayout4 countByEnumeratingWithState:&v87 objects:v100 count:16];
      }

      while (v44);
    }

    [objc_opt_class() sendButtonAlignmentRectInHorizontalBounds:v85 relativeCenterAlignmentPoint:{v86, v6, v84, v16, v18}];
    [sendButton setFrame:?];
  }

  v79 = +[PUScrubberSettings sharedInstance];
  [v79 topOutset];
  v81 = -v80;
  v82 = v80 + 44.0;
  accessoryView = [(PUReviewScreenControlBar *)self accessoryView];
  [accessoryView setFrame:{0.0, v81, v41, v82}];
}

- (PUReviewScreenControlBar)initWithFrame:(CGRect)frame
{
  v52 = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = PUReviewScreenControlBar;
  v3 = [(PUReviewScreenControlBar *)&v49 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUReviewScreenControlBar *)v3 _updateBackgroundTransparency];
    v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:18.0];
    v6 = [PUReviewScreenControlBarButton buttonWithType:1];
    editButton = v4->_editButton;
    v4->_editButton = v6;

    v44 = v4;
    v8 = v4->_editButton;
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"slider.horizontal.3" withConfiguration:v5];
    [(UIButton *)v8 setImage:v9 forState:0];

    v10 = [PUReviewScreenControlBarButton buttonWithType:1];
    markupButton = v44->_markupButton;
    v44->_markupButton = v10;

    v12 = v44->_markupButton;
    v42 = v5;
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil.tip" withConfiguration:v5];
    v14 = v12;
    v4 = v44;
    [(UIButton *)v14 setImage:v13 forState:0];

    v15 = [MEMORY[0x1E69DC738] buttonWithType:1];
    sendButton = v44->_sendButton;
    v44->_sendButton = v15;

    v41 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:18.0];
    v40 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up" withConfiguration:?];
    [UIButton setImage:"setImage:forState:" forState:?];
    prominentGlassButtonConfiguration = [MEMORY[0x1E69DC740] prominentGlassButtonConfiguration];
    [prominentGlassButtonConfiguration setCornerStyle:4];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [prominentGlassButtonConfiguration setBaseForegroundColor:whiteColor];

    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [prominentGlassButtonConfiguration setBaseBackgroundColor:systemBlueColor];

    v39 = prominentGlassButtonConfiguration;
    [(UIButton *)v44->_sendButton setConfiguration:prominentGlassButtonConfiguration];
    [(PUReviewScreenControlBar *)v44 _updateButtonText];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v50[0] = v44->_editButton;
    v50[1] = v44->_markupButton;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v20 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v46;
      v23 = *MEMORY[0x1E69DDC70];
      v24 = *MEMORY[0x1E69DDD10];
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v46 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v45 + 1) + 8 * i);
          [(PUReviewScreenControlBar *)v4 addSubview:v26];
          v27 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.560784314];
          [v26 setTitleColor:v27 forState:0];

          whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
          [v26 setTitleColor:whiteColor2 forState:4];

          whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
          [v26 setTitleColor:whiteColor3 forState:5];

          v30 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v23];
          v31 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v24 compatibleWithTraitCollection:v30];
          titleLabel = [v26 titleLabel];
          [titleLabel setFont:v31];

          v4 = v44;
        }

        v21 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v21);
    }

    whiteColor4 = [MEMORY[0x1E69DC888] whiteColor];
    [(PUReviewScreenControlBar *)v4 setTintColor:whiteColor4];

    [(PUReviewScreenControlBar *)v4 addSubview:v4->_sendButton];
    v34 = [MEMORY[0x1E695DFD8] set];
    availableButtons = v4->_availableButtons;
    v4->_availableButtons = v34;

    v36 = [MEMORY[0x1E695DFD8] set];
    enabledButtons = v4->_enabledButtons;
    v4->_enabledButtons = v36;

    [(PUReviewScreenControlBar *)v4 _updateButtonVisibility];
  }

  return v4;
}

+ (CGRect)sendButtonAlignmentRectInVerticalBounds:(CGRect)bounds relativeCenterAlignmentPoint:(CGPoint)point controlsCount:(unint64_t)count
{
  height = bounds.size.height;
  UIRectCenteredAboutPointScale();
  v10 = (height - (count * 72.0 + 42.0)) * 0.5;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v10;
  result.origin.x = v7;
  return result;
}

+ (CGRect)sendButtonAlignmentRectInHorizontalBounds:(CGRect)bounds relativeCenterAlignmentPoint:(CGPoint)point
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  UIRectCenteredAboutPointScale();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v14 = CGRectGetMaxX(v18) + -20.0 + -42.0;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ (id)supportedButtons
{
  if (supportedButtons_onceToken != -1)
  {
    dispatch_once(&supportedButtons_onceToken, &__block_literal_global_74110);
  }

  v3 = supportedButtons_supportedButtons;

  return v3;
}

void __44__PUReviewScreenControlBar_supportedButtons__block_invoke()
{
  v0 = supportedButtons_supportedButtons;
  supportedButtons_supportedButtons = &unk_1F2B7D5E0;
}

@end