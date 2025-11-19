@interface PUReviewScreenControlBar
+ (CGRect)sendButtonAlignmentRectInHorizontalBounds:(CGRect)a3 relativeCenterAlignmentPoint:(CGPoint)a4;
+ (CGRect)sendButtonAlignmentRectInVerticalBounds:(CGRect)a3 relativeCenterAlignmentPoint:(CGPoint)a4 controlsCount:(unint64_t)a5;
+ (id)supportedButtons;
- (BOOL)_isButtonAvailable:(int64_t)a3;
- (BOOL)_isButtonEnabled:(int64_t)a3;
- (CGPoint)layoutCenterAlignmentPoint;
- (PUReviewScreenControlBar)initWithFrame:(CGRect)a3;
- (id)_buttonForButtonType:(int64_t)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updateBackgroundTransparency;
- (void)_updateButtonText;
- (void)_updateButtonVisibility;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAccessoryView:(id)a3;
- (void)setAvailableButtons:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setEnabledButtons:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setLayoutCenterAlignmentPoint:(CGPoint)a3;
- (void)setShouldLayoutVertically:(BOOL)a3;
- (void)setUseTransparentBackground:(BOOL)a3;
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
  v3 = [(PUReviewScreenControlBar *)self useTransparentBackground];
  v4 = 0.0;
  if (!v3)
  {
    v4 = 0.3;
  }

  v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v4];
  [(PUReviewScreenControlBar *)self setBackgroundColor:v5];
}

- (void)_updateButtonText
{
  v3 = [(PUReviewScreenControlBar *)self shouldLayoutVertically];
  editButton = self->_editButton;
  v5 = !v3;
  if (v3)
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
  v3 = [objc_opt_class() supportedButtons];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v15 + 1) + 8 * v9) integerValue];
        v11 = [(PUReviewScreenControlBar *)self _buttonForButtonType:v10];
        v12 = [(PUReviewScreenControlBar *)self _isButtonAvailable:v10];
        v13 = [(PUReviewScreenControlBar *)self _isButtonEnabled:v10];
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

- (id)_buttonForButtonType:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      v3 = [(PUReviewScreenControlBar *)self editButton];
      break;
    case 4:
      v3 = [(PUReviewScreenControlBar *)self sendButton];
      break;
    case 3:
      v3 = [(PUReviewScreenControlBar *)self markupButton];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (BOOL)_isButtonEnabled:(int64_t)a3
{
  v4 = [(PUReviewScreenControlBar *)self enabledButtons];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (BOOL)_isButtonAvailable:(int64_t)a3
{
  v4 = [(PUReviewScreenControlBar *)self availableButtons];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setAccessoryView:(id)a3
{
  v5 = a3;
  accessoryView = self->_accessoryView;
  if (accessoryView != v5)
  {
    v8 = v5;
    v7 = [(UIView *)accessoryView superview];

    if (v7 == self)
    {
      [(UIView *)self->_accessoryView removeFromSuperview];
    }

    objc_storeStrong(&self->_accessoryView, a3);
    accessoryView = [(PUReviewScreenControlBar *)self addSubview:self->_accessoryView];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](accessoryView, v5);
}

- (void)setEnabledButtons:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_enabledButtons != v4)
  {
    v8 = v4;
    v4 = [v4 isEqual:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      enabledButtons = self->_enabledButtons;
      self->_enabledButtons = v6;

      v4 = [(PUReviewScreenControlBar *)self _updateButtonVisibility];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setAvailableButtons:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_availableButtons != v4)
  {
    v8 = v4;
    v4 = [v4 isEqual:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      availableButtons = self->_availableButtons;
      self->_availableButtons = v6;

      [(PUReviewScreenControlBar *)self _updateButtonVisibility];
      v4 = [(PUReviewScreenControlBar *)self setNeedsLayout];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setUseTransparentBackground:(BOOL)a3
{
  if (self->_useTransparentBackground != a3)
  {
    self->_useTransparentBackground = a3;
    [(PUReviewScreenControlBar *)self _updateBackgroundTransparency];
  }
}

- (void)setLayoutCenterAlignmentPoint:(CGPoint)a3
{
  if (a3.x != self->_layoutCenterAlignmentPoint.x || a3.y != self->_layoutCenterAlignmentPoint.y)
  {
    self->_layoutCenterAlignmentPoint = a3;
    [(PUReviewScreenControlBar *)self setNeedsLayout];
  }
}

- (void)setShouldLayoutVertically:(BOOL)a3
{
  if (self->_shouldLayoutVertically != a3)
  {
    self->_shouldLayoutVertically = a3;
    [(PUReviewScreenControlBar *)self _updateButtonText];

    [(PUReviewScreenControlBar *)self setNeedsLayout];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = PUReviewScreenControlBar;
  v5 = [(PUReviewScreenControlBar *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
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
  v3 = [(PUReviewScreenControlBar *)self window];

  if (v3)
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
  v9 = [(PUReviewScreenControlBar *)self sendButton];
  [(PUReviewScreenControlBar *)self layoutCenterAlignmentPoint];
  v11 = v10;
  v13 = v12;
  v14 = [(PUReviewScreenControlBar *)self window];
  [(PUReviewScreenControlBar *)self convertPoint:v14 fromView:v11, v13];
  v16 = v15;
  v18 = v17;

  v19 = [(PUReviewScreenControlBar *)self window];
  [v19 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [PUReviewScreenUtilities useCompactControlBarButtonsForReferenceBounds:v21, v23, v25, v27];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v29 = [(PUReviewScreenControlBar *)self editButton];
  v102[0] = v29;
  v30 = [(PUReviewScreenControlBar *)self markupButton];
  v102[1] = v30;
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
    v36 = [(PUReviewScreenControlBar *)self _buttonsForLayout];
    v37 = [v36 reverseObjectEnumerator];

    v38 = [(PUReviewScreenControlBar *)self _buttonsForLayout];
    if ([v38 count])
    {
      v39 = [(PUReviewScreenControlBar *)self _buttonsForLayout];
      v40 = [v39 count] - 1;
    }

    else
    {
      v40 = 0;
    }

    v59 = v6;
    [objc_opt_class() sendButtonAlignmentRectInVerticalBounds:v40 relativeCenterAlignmentPoint:v85 controlsCount:{v86, v6, v8, v16, v18}];
    [v9 setFrame:?];
    [v37 nextObject];

    [v9 frame];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v68 = v37;
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
    v42 = [(PUReviewScreenControlBar *)self _buttonsForLayout];
    v43 = [v42 countByEnumeratingWithState:&v87 objects:v100 count:16];
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
            objc_enumerationMutation(v42);
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

        v44 = [v42 countByEnumeratingWithState:&v87 objects:v100 count:16];
      }

      while (v44);
    }

    [objc_opt_class() sendButtonAlignmentRectInHorizontalBounds:v85 relativeCenterAlignmentPoint:{v86, v6, v84, v16, v18}];
    [v9 setFrame:?];
  }

  v79 = +[PUScrubberSettings sharedInstance];
  [v79 topOutset];
  v81 = -v80;
  v82 = v80 + 44.0;
  v83 = [(PUReviewScreenControlBar *)self accessoryView];
  [v83 setFrame:{0.0, v81, v41, v82}];
}

- (PUReviewScreenControlBar)initWithFrame:(CGRect)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = PUReviewScreenControlBar;
  v3 = [(PUReviewScreenControlBar *)&v49 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v17 = [MEMORY[0x1E69DC740] prominentGlassButtonConfiguration];
    [v17 setCornerStyle:4];
    v18 = [MEMORY[0x1E69DC888] whiteColor];
    [v17 setBaseForegroundColor:v18];

    v19 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v17 setBaseBackgroundColor:v19];

    v39 = v17;
    [(UIButton *)v44->_sendButton setConfiguration:v17];
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

          v28 = [MEMORY[0x1E69DC888] whiteColor];
          [v26 setTitleColor:v28 forState:4];

          v29 = [MEMORY[0x1E69DC888] whiteColor];
          [v26 setTitleColor:v29 forState:5];

          v30 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v23];
          v31 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v24 compatibleWithTraitCollection:v30];
          v32 = [v26 titleLabel];
          [v32 setFont:v31];

          v4 = v44;
        }

        v21 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v21);
    }

    v33 = [MEMORY[0x1E69DC888] whiteColor];
    [(PUReviewScreenControlBar *)v4 setTintColor:v33];

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

+ (CGRect)sendButtonAlignmentRectInVerticalBounds:(CGRect)a3 relativeCenterAlignmentPoint:(CGPoint)a4 controlsCount:(unint64_t)a5
{
  height = a3.size.height;
  UIRectCenteredAboutPointScale();
  v10 = (height - (a5 * 72.0 + 42.0)) * 0.5;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v10;
  result.origin.x = v7;
  return result;
}

+ (CGRect)sendButtonAlignmentRectInHorizontalBounds:(CGRect)a3 relativeCenterAlignmentPoint:(CGPoint)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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