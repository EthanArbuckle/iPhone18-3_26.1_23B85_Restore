@interface TKVibrationRecorderProgressView
- (CGRect)_frameForDotAtTimeInterval:(double)a3 duration:(double)a4;
- (CGRect)accessibilityFrame;
- (CGSize)_dotSize;
- (CGSize)intrinsicContentSize;
- (TKVibrationRecorderProgressView)initWithMaximumTimeInterval:(double)a3 styleProvider:(id)a4;
- (UIOffset)_dotInsets;
- (double)_cappedValueForTimeInterval:(double)result;
- (id)accessibilityValue;
- (void)_updateHorizontalConstraintsOfDotForCurrentVibrationComponent:(id)a3 withFrame:(CGRect)a4;
- (void)_updateProgressViewBackgroundColor;
- (void)clearAllVibrationComponents;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)setCurrentTimeInterval:(double)a3;
- (void)vibrationComponentDidEnd;
- (void)vibrationComponentDidStart;
@end

@implementation TKVibrationRecorderProgressView

- (TKVibrationRecorderProgressView)initWithMaximumTimeInterval:(double)a3 styleProvider:(id)a4
{
  v7 = a4;
  v21.receiver = self;
  v21.super_class = TKVibrationRecorderProgressView;
  v8 = [(TKVibrationRecorderProgressView *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (a3 <= 0.0)
  {
    v10 = v8;
    v9 = 0;
    goto LABEL_5;
  }

  if (v8)
  {
    objc_storeStrong(&v8->_styleProvider, a4);
    v9->_currentTimeInterval = 0.0;
    v9->_maximumTimeInterval = a3;
    v9->_currentVibrationComponentDidBeginTimeInterval = -1.0;
    v9->_previousPauseDidBeginTimeInterval = -1.0;
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    v11 = [v7 vibrationRecorderProgressViewTrackColor];
    [(TKVibrationRecorderProgressView *)v10 setBackgroundColor:v11];

    [(TKVibrationRecorderProgressView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TKVibrationRecorderProgressView *)v9 addSubview:v10];
    [(UIView *)v10 tk_constrainLayoutAttribute:1 asEqualToValueOfItem:v9];
    [(UIView *)v10 tk_constrainLayoutAttribute:2 asEqualToValueOfItem:v9];
    [(UIView *)v10 tk_constrainLayoutAttribute:3 asEqualToValueOfItem:v9];
    [(UIView *)v10 tk_constrainLayoutAttribute:4 asEqualToValueOfItem:v9];
    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    progressView = v9->_progressView;
    v9->_progressView = v12;

    v14 = v9->_progressView;
    v15 = [(TKVibrationRecorderProgressView *)v9 tintColor];
    [(UIView *)v14 setBackgroundColor:v15];

    [(UIView *)v9->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TKVibrationRecorderProgressView *)v9 addSubview:v9->_progressView];
    [(UIView *)v9->_progressView tk_constrainLayoutAttribute:1 asEqualToValueOfItem:v9];
    [(UIView *)v9->_progressView tk_constrainLayoutAttribute:3 asEqualToValueOfItem:v9];
    [(UIView *)v9->_progressView tk_constrainLayoutAttribute:4 asEqualToValueOfItem:v9];
    v16 = [(UIView *)v9->_progressView tk_addedConstraintForLayoutAttribute:7 asEqualToValueOfItem:v9 withMultiplier:0.0];
    progressViewWidthConstraint = v9->_progressViewWidthConstraint;
    v9->_progressViewWidthConstraint = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dots = v9->_dots;
    v9->_dots = v18;

LABEL_5:
  }

  return v9;
}

- (void)setCurrentTimeInterval:(double)a3
{
  self->_currentTimeInterval = a3;
  [(TKVibrationRecorderProgressView *)self _cappedValueForTimeInterval:?];
  v5 = v4;
  v6 = v4 / self->_maximumTimeInterval;
  v7 = [(TKVibrationRecorderProgressView *)self roundedCornersCompensationDelayMode];
  if (v7 == 2)
  {
    [(TKVibrationRecorderProgressView *)self _dotInsets];
    v11 = v10;
    [(TKVibrationRecorderProgressView *)self _dotSize];
    v9 = v11 + v12 * 0.5;
  }

  else
  {
    if (v7 != 1)
    {
      goto LABEL_12;
    }

    [(TKVibrationRecorderProgressView *)self _dotInsets];
    v9 = v8;
  }

  if (v9 > 0.0 && v5 > 0.0)
  {
    [(TKVibrationRecorderProgressView *)self bounds];
    v13 = v9 / CGRectGetWidth(v21);
    v14 = v6 - (1.0 - (v13 + v13));
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    v15 = v6 - v13 * (1.0 - v14 / (v13 + v13));
    if (v15 >= 2.22044605e-16)
    {
      v6 = v15;
    }

    else
    {
      v6 = 2.22044605e-16;
    }
  }

LABEL_12:
  [(NSLayoutConstraint *)self->_progressViewWidthConstraint tk_removeFromContainer];
  v16 = [(UIView *)self->_progressView tk_addedConstraintForLayoutAttribute:7 asEqualToValueOfItem:self withMultiplier:v6];
  progressViewWidthConstraint = self->_progressViewWidthConstraint;
  self->_progressViewWidthConstraint = v16;

  if (self->_dotForCurrentVibrationComponent)
  {
    v18 = v5 - self->_currentVibrationComponentDidBeginTimeInterval;
    [TKVibrationRecorderProgressView _frameForDotAtTimeInterval:"_frameForDotAtTimeInterval:duration:" duration:?];
    [(TKVibrationRecorderProgressView *)self _updateHorizontalConstraintsOfDotForCurrentVibrationComponent:self->_dotForCurrentVibrationComponent withFrame:?];
    dotForCurrentVibrationComponent = self->_dotForCurrentVibrationComponent;

    [(TKVibrationRecorderProgressDotImageView *)dotForCurrentVibrationComponent setDuration:v18];
  }
}

- (void)_updateProgressViewBackgroundColor
{
  progressView = self->_progressView;
  v3 = [(TKVibrationRecorderProgressView *)self tintColor];
  [(UIView *)progressView setBackgroundColor:v3];
}

- (CGSize)_dotSize
{
  v2 = [(TKVibrationRecorderProgressView *)self _resizableDotImage];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIOffset)_dotInsets
{
  [(TKVibrationRecorderStyleProvider *)self->_styleProvider vibrationRecorderProgressViewDotHorizontalInset];
  v3 = 0.0;
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (void)vibrationComponentDidStart
{
  [(TKVibrationRecorderProgressView *)self _cappedValueForTimeInterval:self->_currentTimeInterval];
  v4 = v3;
  self->_currentVibrationComponentDidBeginTimeInterval = v3;
  v5 = [TKVibrationRecorderProgressDotImageView alloc];
  v6 = [(TKVibrationRecorderProgressView *)self _resizableDotImage];
  v7 = [(TKVibrationRecorderProgressDotImageView *)v5 initWithImage:v6];

  v8 = [(TKVibrationRecorderProgressView *)self _dotTintColor];
  [(TKVibrationRecorderProgressDotImageView *)v7 setTintColor:v8];

  [(TKVibrationRecorderProgressDotImageView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TKVibrationRecorderProgressView *)self addSubview:v7];
  [(TKVibrationRecorderProgressView *)self _frameForDotAtTimeInterval:v4 duration:0.0];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UIView *)v7 tk_constrainLayoutAttribute:10 asEqualToValueOfItem:self];
  [(TKVibrationRecorderProgressView *)self _updateHorizontalConstraintsOfDotForCurrentVibrationComponent:v7 withFrame:v10, v12, v14, v16];
  [(TKVibrationRecorderProgressDotImageView *)v7 setTimeInterval:v4];
  [(TKVibrationRecorderProgressDotImageView *)v7 setDuration:0.0];
  [(TKVibrationRecorderProgressDotImageView *)v7 setPreviousPauseTimeInterval:self->_previousPauseDidBeginTimeInterval];
  [(TKVibrationRecorderProgressDotImageView *)v7 setPreviousPauseDuration:v4 - self->_previousPauseDidBeginTimeInterval];
  [(TKVibrationRecorderStyleProvider *)self->_styleProvider vibrationRecorderProgressViewAccessibilityAdditionalHeight];
  [(TKVibrationRecorderProgressDotImageView *)v7 setAccessibilityFrameAdditionalHeight:?];
  [(NSMutableArray *)self->_dots addObject:v7];
  dotForCurrentVibrationComponent = self->_dotForCurrentVibrationComponent;
  self->_dotForCurrentVibrationComponent = v7;

  v18 = *MEMORY[0x277D76488];

  UIAccessibilityPostNotification(v18, 0);
}

- (void)vibrationComponentDidEnd
{
  dotForCurrentVibrationComponent = self->_dotForCurrentVibrationComponent;
  self->_dotForCurrentVibrationComponent = 0;

  dotForCurrentVibrationComponentLeftConstraint = self->_dotForCurrentVibrationComponentLeftConstraint;
  self->_dotForCurrentVibrationComponentLeftConstraint = 0;

  dotForCurrentVibrationComponentRightConstraint = self->_dotForCurrentVibrationComponentRightConstraint;
  self->_dotForCurrentVibrationComponentRightConstraint = 0;

  self->_currentVibrationComponentDidBeginTimeInterval = -1.0;
  [(TKVibrationRecorderProgressView *)self _cappedValueForTimeInterval:self->_currentTimeInterval];
  self->_previousPauseDidBeginTimeInterval = v6;
}

- (void)clearAllVibrationComponents
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_dots;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_dots removeAllObjects];
  [(TKVibrationRecorderProgressView *)self vibrationComponentDidEnd];
  self->_previousPauseDidBeginTimeInterval = -1.0;
  v8 = *MEMORY[0x277D85DE8];
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  [(TKVibrationRecorderStyleProvider *)self->_styleProvider vibrationRecorderProgressViewHeight];
  v4 = v3;
  v5 = v2;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)_updateHorizontalConstraintsOfDotForCurrentVibrationComponent:(id)a3 withFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [(TKVibrationRecorderProgressView *)self bounds];
  v10 = CGRectGetWidth(v23);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __107__TKVibrationRecorderProgressView__updateHorizontalConstraintsOfDotForCurrentVibrationComponent_withFrame___block_invoke;
  v19[3] = &unk_2783169A0;
  v20 = v9;
  v21 = self;
  v22 = v10;
  v11 = v9;
  v12 = MEMORY[0x21CF0DA20](v19);
  [(NSLayoutConstraint *)self->_dotForCurrentVibrationComponentLeftConstraint tk_removeFromContainer];
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MinX = CGRectGetMinX(v24);
  v14 = v12[2](v12, 1, MinX);
  dotForCurrentVibrationComponentLeftConstraint = self->_dotForCurrentVibrationComponentLeftConstraint;
  self->_dotForCurrentVibrationComponentLeftConstraint = v14;

  [(NSLayoutConstraint *)self->_dotForCurrentVibrationComponentRightConstraint tk_removeFromContainer];
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MaxX = CGRectGetMaxX(v25);
  v17 = v12[2](v12, 2, MaxX);
  dotForCurrentVibrationComponentRightConstraint = self->_dotForCurrentVibrationComponentRightConstraint;
  self->_dotForCurrentVibrationComponentRightConstraint = v17;
}

- (CGRect)_frameForDotAtTimeInterval:(double)a3 duration:(double)a4
{
  [(TKVibrationRecorderProgressView *)self _dotSize];
  v8 = v7;
  v10 = v9;
  v11 = v7 * 0.5;
  [(TKVibrationRecorderProgressView *)self _dotInsets];
  v13 = v12;
  v15 = v14;
  v16 = v12 + v11;
  [(TKVibrationRecorderProgressView *)self bounds];
  v17 = CGRectGetWidth(v35) - v13 - v11 - v16;
  maximumTimeInterval = self->_maximumTimeInterval;
  v19 = a3 / maximumTimeInterval * v17;
  v20 = a4 / maximumTimeInterval * v17;
  v21 = v19 + v20 - (v17 - (v11 + v11));
  v22 = 0.0;
  if (v21 < 0.0)
  {
    v21 = 0.0;
  }

  v23 = v20 + v11 * (v21 / (v11 + v11));
  v24 = v11 - v19;
  if (v11 - v19 < 0.0)
  {
    v24 = 0.0;
  }

  v25 = v24 / v11;
  v26 = v19 - v11 * (v24 / v11);
  v27 = v23 + v11 * v25;
  v28 = v8 * 1.2 - v27;
  if (v28 < 0.0)
  {
    v28 = 0.0;
  }

  v29 = v27 - v8 * (1.0 - v28 / (v8 * 1.2));
  if (v29 < 0.0)
  {
    v29 = 0.0;
  }

  v30 = v17 - v11 - (v26 + v29);
  if (v30 < 0.0)
  {
    if (v29 + v30 >= 0.0)
    {
      v22 = v29 + v30;
    }

    v26 = v26 - (v22 - v29 - v30);
    v29 = v22;
  }

  v31 = v16 + v26;
  v32 = v8 + v29;
  v33 = v15;
  v34 = v10;
  result.size.height = v34;
  result.size.width = v32;
  result.origin.y = v33;
  result.origin.x = v31;
  return result;
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = TKVibrationRecorderProgressView;
  [(TKVibrationRecorderProgressView *)&v3 didMoveToSuperview];
  [(TKVibrationRecorderProgressView *)self _updateProgressViewBackgroundColor];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TKVibrationRecorderProgressView;
  [(TKVibrationRecorderProgressView *)&v3 didMoveToWindow];
  [(TKVibrationRecorderProgressView *)self _updateProgressViewBackgroundColor];
}

- (double)_cappedValueForTimeInterval:(double)result
{
  if (result < 0.0)
  {
    result = 0.0;
  }

  if (result >= self->_maximumTimeInterval)
  {
    return self->_maximumTimeInterval;
  }

  return result;
}

- (id)accessibilityValue
{
  v3 = TLLocalizedString();
  if ([@"VIBRATION_RECORDER_PROGRESS_VALUE_FORMAT" isEqualToString:v3])
  {
    v8.receiver = self;
    v8.super_class = TKVibrationRecorderProgressView;
    v4 = [(TKVibrationRecorderProgressView *)&v8 accessibilityValue];
  }

  else
  {
    v5 = [TKVibrationInterfaceUtilities descriptionForDuration:self->_currentTimeInterval];
    v6 = [TKVibrationInterfaceUtilities descriptionForDuration:self->_maximumTimeInterval];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:v3, v5, v6];
  }

  return v4;
}

- (CGRect)accessibilityFrame
{
  [(TKVibrationRecorderStyleProvider *)self->_styleProvider vibrationRecorderProgressViewAccessibilityAdditionalHeight];
  v4 = v3;
  v5.receiver = self;
  v5.super_class = TKVibrationRecorderProgressView;
  [(TKVibrationRecorderProgressView *)&v5 accessibilityFrame];
  return CGRectInset(v6, 0.0, v4 * -0.5);
}

@end