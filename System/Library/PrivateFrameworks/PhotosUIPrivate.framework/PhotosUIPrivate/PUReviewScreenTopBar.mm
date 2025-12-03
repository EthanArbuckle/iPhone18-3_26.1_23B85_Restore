@interface PUReviewScreenTopBar
+ (id)supportedButtons;
- (BOOL)_isButtonAvailable:(int64_t)available;
- (BOOL)_isButtonEnabled:(int64_t)enabled;
- (CGPoint)doneButtonCenterAlignmentPoint;
- (PUReviewScreenTopBar)initWithFrame:(CGRect)frame;
- (id)_buttonForButtonType:(int64_t)type;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateBackgroundColor;
- (void)_updateButtonVisibility;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAvailableButtons:(id)buttons;
- (void)setBackgroundStyle:(unint64_t)style;
- (void)setDoneButtonCenterAlignmentPoint:(CGPoint)point;
- (void)setEnabledButtons:(id)buttons;
@end

@implementation PUReviewScreenTopBar

- (CGPoint)doneButtonCenterAlignmentPoint
{
  x = self->_doneButtonCenterAlignmentPoint.x;
  y = self->_doneButtonCenterAlignmentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_updateBackgroundColor
{
  backgroundStyle = [(PUReviewScreenTopBar *)self backgroundStyle];
  if (backgroundStyle)
  {
    if (backgroundStyle != 1)
    {
      return;
    }

    v4 = 0.3;
  }

  else
  {
    v4 = 0.1;
  }

  v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v4];
  [(PUReviewScreenTopBar *)self setBackgroundColor:v5];
}

- (void)_updateButtonVisibility
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  supportedButtons = [objc_opt_class() supportedButtons];
  v4 = [supportedButtons countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(supportedButtons);
        }

        integerValue = [*(*(&v12 + 1) + 8 * v7) integerValue];
        v9 = [(PUReviewScreenTopBar *)self _buttonForButtonType:integerValue];
        v10 = [(PUReviewScreenTopBar *)self _isButtonAvailable:integerValue];
        v11 = [(PUReviewScreenTopBar *)self _isButtonEnabled:integerValue];
        [v9 setHidden:!v10];
        [v9 setEnabled:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [supportedButtons countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)_buttonForButtonType:(int64_t)type
{
  if (type == 1)
  {
    retakeButton = [(PUReviewScreenTopBar *)self retakeButton];
  }

  else if (type)
  {
    retakeButton = 0;
  }

  else
  {
    retakeButton = [(PUReviewScreenTopBar *)self doneButton];
  }

  return retakeButton;
}

- (BOOL)_isButtonEnabled:(int64_t)enabled
{
  enabledButtons = [(PUReviewScreenTopBar *)self enabledButtons];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:enabled];
  v6 = [enabledButtons containsObject:v5];

  return v6;
}

- (BOOL)_isButtonAvailable:(int64_t)available
{
  availableButtons = [(PUReviewScreenTopBar *)self availableButtons];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:available];
  v6 = [availableButtons containsObject:v5];

  return v6;
}

- (void)setBackgroundStyle:(unint64_t)style
{
  if (self->_backgroundStyle != style)
  {
    self->_backgroundStyle = style;
    [(PUReviewScreenTopBar *)self _updateBackgroundColor];
  }
}

- (void)setDoneButtonCenterAlignmentPoint:(CGPoint)point
{
  if (point.x != self->_doneButtonCenterAlignmentPoint.x || point.y != self->_doneButtonCenterAlignmentPoint.y)
  {
    self->_doneButtonCenterAlignmentPoint = point;
    [(PUReviewScreenTopBar *)self setNeedsLayout];
  }
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

      buttonsCopy = [(PUReviewScreenTopBar *)self _updateButtonVisibility];
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

      buttonsCopy = [(PUReviewScreenTopBar *)self _updateButtonVisibility];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](buttonsCopy, v5);
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PUReviewScreenTopBar;
  [(PUReviewScreenTopBar *)&v4 didMoveToWindow];
  window = [(PUReviewScreenTopBar *)self window];

  if (window)
  {
    [(PUReviewScreenTopBar *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v45.receiver = self;
  v45.super_class = PUReviewScreenTopBar;
  [(PUReviewScreenTopBar *)&v45 layoutSubviews];
  [(PUReviewScreenTopBar *)self bounds];
  v43 = v4;
  v44 = v3;
  v6 = v5;
  v8 = v7;
  doneButton = [(PUReviewScreenTopBar *)self doneButton];
  window = [(PUReviewScreenTopBar *)self window];
  [window frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [doneButton setPreferredStyle:{+[PUReviewScreenUtilities doneButtonStyleForReferenceBounds:](PUReviewScreenUtilities, "doneButtonStyleForReferenceBounds:", v12, v14, v16, v18)}];
  retakeButton = [(PUReviewScreenTopBar *)self retakeButton];
  [doneButton intrinsicContentSize];
  v21 = v20;
  v23 = v22;
  [retakeButton intrinsicContentSize];
  v42 = v24;
  v26 = v25;
  [doneButton setTappableEdgeInsets:{10.0, 10.0, 10.0, 10.0}];
  [(PUReviewScreenTopBar *)self doneButtonCenterAlignmentPoint];
  v29 = v28;
  v30 = v27;
  if (v28 == *MEMORY[0x1E695EFF8] && v27 == *(MEMORY[0x1E695EFF8] + 8))
  {
    v35 = 15.0;
    v37 = v43;
    v36 = v44;
  }

  else
  {
    window2 = [(PUReviewScreenTopBar *)self window];
    [(PUReviewScreenTopBar *)self convertPoint:window2 fromView:v29, v30];
    v34 = v33;

    v46.origin.x = v44;
    v46.origin.y = v6;
    v46.size.width = v43;
    v46.size.height = v8;
    v35 = CGRectGetMaxX(v46) - (v21 * 0.5 + v34);
    v36 = v44;
    v37 = v43;
  }

  v38 = v6;
  v39 = v8;
  v40 = v8 * 0.5;
  [doneButton frameForAlignmentRect:{CGRectGetMaxX(*&v36) - v21 - v35, v8 * 0.5 - v23 * 0.5, v21, v23}];
  v41 = fmax(v26, 40.0);
  [doneButton setFrame:?];
  [retakeButton setFrame:{v35, v40 - v41 * 0.5, fmax(v42, 60.0), v41}];
}

- (PUReviewScreenTopBar)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = PUReviewScreenTopBar;
  v3 = [(PUReviewScreenTopBar *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[PUReviewScreenDoneButton doneButton];
    doneButton = v3->_doneButton;
    v3->_doneButton = v4;

    [(PUReviewScreenTopBar *)v3 addSubview:v3->_doneButton];
    v6 = [MEMORY[0x1E69DC738] buttonWithType:1];
    retakeButton = v3->_retakeButton;
    v3->_retakeButton = v6;

    v8 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
    titleLabel = [(UIButton *)v3->_retakeButton titleLabel];
    [titleLabel setFont:v8];

    v10 = v3->_retakeButton;
    v11 = PULocalizedString(@"PUPHOTOBROWSER_BUTTON_ASSET_EXPLORER_REVIEW_SCREEN_RETAKE");
    [(UIButton *)v10 setTitle:v11 forState:0];

    v12 = v3->_retakeButton;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIButton *)v12 setTitleColor:whiteColor forState:0];

    [(PUReviewScreenTopBar *)v3 addSubview:v3->_retakeButton];
    v14 = [MEMORY[0x1E695DFD8] set];
    availableButtons = v3->_availableButtons;
    v3->_availableButtons = v14;

    [(PUReviewScreenTopBar *)v3 _updateButtonVisibility];
    [(PUReviewScreenTopBar *)v3 _updateBackgroundColor];
  }

  return v3;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = PUReviewScreenTopBar;
  v5 = [(PUReviewScreenTopBar *)&v7 hitTest:event withEvent:test.x, test.y];
  if ([(PUReviewScreenTopBar *)self backgroundStyle]<= 1 && v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

+ (id)supportedButtons
{
  if (supportedButtons_onceToken_74671 != -1)
  {
    dispatch_once(&supportedButtons_onceToken_74671, &__block_literal_global_74672);
  }

  v3 = supportedButtons_supportedButtons_74673;

  return v3;
}

void __40__PUReviewScreenTopBar_supportedButtons__block_invoke()
{
  v0 = supportedButtons_supportedButtons_74673;
  supportedButtons_supportedButtons_74673 = &unk_1F2B7D5F8;
}

@end