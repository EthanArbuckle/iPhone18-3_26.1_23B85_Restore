@interface _UIActionSlider
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)shouldHideTrackLabelForXPoint:(double)point;
- (BOOL)xPointIsWithinTrack:(double)track;
- (CGRect)_trackFrame;
- (CGRect)knobRect;
- (CGRect)trackTextRect;
- (CGSize)knobImageOffset;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)trackSize;
- (UIBezierPath)knobMaskPath;
- (UIEdgeInsets)knobInsets;
- (UILabel)trackLabel;
- (_UIActionSlider)initWithCoder:(id)coder;
- (_UIActionSlider)initWithFrame:(CGRect)frame vibrantSettings:(id)settings;
- (_UIActionSliderDelegate)delegate;
- (double)_knobAvailableX;
- (double)_knobHorizontalPosition;
- (double)_knobLeftMostX;
- (double)_knobMaxX;
- (double)_knobMinX;
- (double)_knobRightMostX;
- (id)trackMaskImage;
- (id)trackMaskPath;
- (void)_hideTrackLabel:(BOOL)label;
- (void)_knobPanGesture:(id)gesture;
- (void)_makeTrackLabel;
- (void)_showTrackLabel;
- (void)_slideCompleted:(BOOL)completed;
- (void)closeTrackAnimated:(BOOL)animated;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)openTrackAnimated:(BOOL)animated;
- (void)setKnobImage:(id)image;
- (void)setKnobImageOffset:(CGSize)offset;
- (void)setKnobInsets:(UIEdgeInsets)insets;
- (void)setKnobPosition:(double)position;
- (void)setKnobWidth:(double)width;
- (void)setMaskFromImage:(id)image onView:(id)view;
- (void)setMaskPath:(CGPath *)path onView:(id)view;
- (void)setStyle:(int64_t)style;
- (void)setTrackFont:(id)font;
- (void)setTrackSize:(CGSize)size;
- (void)setTrackText:(id)text;
- (void)updateAllTrackMasks;
@end

@implementation _UIActionSlider

- (_UIActionSlider)initWithFrame:(CGRect)frame vibrantSettings:(id)settings
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  settingsCopy = settings;
  v52.receiver = self;
  v52.super_class = _UIActionSlider;
  height = [(UIControl *)&v52 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    [(UIView *)height setOpaque:0];
    v13 = +[UIColor clearColor];
    [(_UIActionSlider *)v12 setBackgroundColor:v13];

    v12->_trackWidthProportion = 1.0;
    v12->_trackSize.width = 266.0;
    v12->_knobInsets.left = 3.5;
    v12->_knobInsets.right = 3.5;
    v14 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v14 userInterfaceIdiom];

    if (userInterfaceIdiom || ([objc_opt_self() mainScreen], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "_referenceBounds"), v17 = CGRectGetHeight(v53), v16, v17 > 480.0))
    {
      v18 = 5.0;
      v19 = 0x403F800000000000;
      v20 = 0x4052C00000000000;
      v21 = 0x4050400000000000;
    }

    else
    {
      v18 = 3.5;
      v19 = 0x403A800000000000;
      v20 = 0x4050400000000000;
      v21 = 0x404D000000000000;
    }

    *&v12->_knobWidth = v21;
    v12->_knobInsets.top = v18;
    v12->_knobInsets.bottom = v18;
    *&v12->_trackSize.height = v20;
    *&v12->_trackTextBaselineFromBottom = v19;
    objc_storeStrong(&v12->_vibrantSettings, settings);
    [(UIView *)v12 bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = [[UIView alloc] initWithFrame:v22, v24, v26, v28];
    contentView = v12->_contentView;
    v12->_contentView = v30;

    [(UIView *)v12 addSubview:v12->_contentView];
    v32 = [[UIView alloc] initWithFrame:v23, v25, v27, v29];
    trackBackgroundView = v12->_trackBackgroundView;
    v12->_trackBackgroundView = v32;

    layer = [(UIView *)v12->_trackBackgroundView layer];
    [layer setAllowsGroupBlending:0];

    [(UIView *)v12->_contentView addSubview:v12->_trackBackgroundView];
    v35 = objc_alloc_init(_UIActionSliderTrackComponentView);
    trackDodgeView = v12->_trackDodgeView;
    v12->_trackDodgeView = &v35->super;

    v37 = v12->_trackDodgeView;
    v38 = [UIColor colorWithWhite:0.65 alpha:1.0];
    [(UIView *)v37 setBackgroundColor:v38];

    layer2 = [(UIView *)v12->_trackDodgeView layer];
    [layer2 setCompositingFilter:*MEMORY[0x1E6979860]];

    [(UIView *)v12->_trackBackgroundView addSubview:v12->_trackDodgeView];
    v40 = [&stru_1EFB14550 copy];
    trackText = v12->_trackText;
    v12->_trackText = v40;

    v42 = [off_1E70ECC18 systemFontOfSize:20.0];
    trackFont = v12->_trackFont;
    v12->_trackFont = v42;

    v12->_showingTrackLabel = 1;
    v44 = objc_alloc_init(_UIActionSliderKnob);
    knobView = v12->_knobView;
    v12->_knobView = v44;

    [(UIView *)v12->_contentView addSubview:v12->_knobView];
    v46 = objc_alloc_init(UIImageView);
    knobImageView = v12->_knobImageView;
    v12->_knobImageView = v46;

    [(UIView *)v12->_knobView addSubview:v12->_knobImageView];
    v48 = [[UIPanGestureRecognizer alloc] initWithTarget:v12 action:sel__knobPanGesture_];
    slideGestureRecognizer = v12->_slideGestureRecognizer;
    v12->_slideGestureRecognizer = v48;

    [(UIPanGestureRecognizer *)v12->_slideGestureRecognizer setMaximumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)v12->_slideGestureRecognizer setMinimumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)v12->_slideGestureRecognizer _setCanPanHorizontally:1];
    [(UIPanGestureRecognizer *)v12->_slideGestureRecognizer _setCanPanVertically:0];
    [(UIPanGestureRecognizer *)v12->_slideGestureRecognizer _setHysteresis:2.0];
    [(UIPanGestureRecognizer *)v12->_slideGestureRecognizer setDelegate:v12];
    [(UIView *)v12 addGestureRecognizer:v12->_slideGestureRecognizer];
    layer3 = [(UIView *)v12 layer];
    [layer3 setHitTestsAsOpaque:1];
  }

  return v12;
}

- (_UIActionSlider)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _UIActionSlider;
  return [(UIControl *)&v4 initWithCoder:coder];
}

- (void)setStyle:(int64_t)style
{
  if (self->_style == style)
  {
    return;
  }

  v16 = v6;
  v17 = v5;
  v18 = v4;
  v19 = v3;
  self->_style = style;
  switch(style)
  {
    case 2:
      [(UIView *)self->_trackDodgeView removeFromSuperview];
      [(UIView *)self->_trackBlurView removeFromSuperview];
      trackSolidView = self->_trackSolidView;
      if (!trackSolidView)
      {
        v14 = objc_alloc_init(_UIActionSliderTrackComponentView);
        v15 = self->_trackSolidView;
        self->_trackSolidView = &v14->super;

        [(_UIActionSlider *)self setCachedTrackMaskWidth:0.0];
        trackSolidView = self->_trackSolidView;
      }

      trackBackgroundView = self->_trackBackgroundView;
      goto LABEL_12;
    case 1:
      if (!self->_trackBlurView)
      {
        v12 = [[_UIBackdropView alloc] initWithPrivateStyle:2020];
        trackBlurView = self->_trackBlurView;
        self->_trackBlurView = v12;

        [(_UIActionSlider *)self setCachedTrackMaskWidth:0.0];
      }

      [(UIView *)self->_trackDodgeView removeFromSuperview:v6];
      [(UIView *)self->_trackSolidView removeFromSuperview];
      trackBackgroundView = self->_trackBackgroundView;
      trackSolidView = self->_trackBlurView;
      goto LABEL_12;
    case 0:
      [(UIView *)self->_trackBlurView removeFromSuperview];
      [(UIView *)self->_trackSolidView removeFromSuperview];
      trackBackgroundView = self->_trackBackgroundView;
      trackSolidView = self->_trackDodgeView;
LABEL_12:
      [(UIView *)trackBackgroundView insertSubview:trackSolidView atIndex:0, v16, v17, v18, v19];
      break;
  }

  [(UIView *)self setNeedsLayout];
}

- (UIBezierPath)knobMaskPath
{
  [(_UIActionSlider *)self knobRect];

  return [UIBezierPath bezierPathWithOvalInRect:?];
}

- (void)setKnobImage:(id)image
{
  [(UIImageView *)self->_knobImageView setImage:image];

  [(UIView *)self setNeedsLayout];
}

- (void)setKnobImageOffset:(CGSize)offset
{
  if (self->_knobImageOffset.width != offset.width || self->_knobImageOffset.height != offset.height)
  {
    self->_knobImageOffset = offset;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setTrackText:(id)text
{
  if (self->_trackText != text)
  {
    v4 = [text copy];
    trackText = self->_trackText;
    self->_trackText = v4;

    [(_UIActionSliderLabel *)self->_trackLabel setText:self->_trackText];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setTrackFont:(id)font
{
  fontCopy = font;
  if (self->_trackFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_trackFont, font);
    [(_UIActionSliderLabel *)self->_trackLabel setFont:v6];
    [(UIView *)self setNeedsLayout];
    fontCopy = v6;
  }
}

- (void)setTrackSize:(CGSize)size
{
  if (size.width != self->_trackSize.width || size.height != self->_trackSize.height)
  {
    self->_trackSize = size;
    [(UIView *)self setNeedsLayout];
  }
}

- (UILabel)trackLabel
{
  if ([(_UIActionSlider *)self textStyle]!= 1)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't call -trackLabel when -textStyle is not _UIActionSliderTextStyleSolid" userInfo:0];
    objc_exception_throw(v5);
  }

  trackLabel = self->_trackLabel;
  if (!trackLabel)
  {
    [(_UIActionSlider *)self _makeTrackLabel];
    trackLabel = self->_trackLabel;
  }

  return trackLabel;
}

- (void)setKnobPosition:(double)position
{
  if (self->_knobPosition != position)
  {
    self->_knobPosition = position;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setKnobWidth:(double)width
{
  if (self->_knobWidth != width)
  {
    self->_knobWidth = width;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setKnobInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_knobInsets.top), vceqq_f64(v4, *&self->_knobInsets.bottom)))) & 1) == 0)
  {
    self->_knobInsets = insets;
    [(UIView *)self setNeedsLayout];
  }
}

- (CGRect)knobRect
{
  [(_UIActionSlider *)self _knobWidth];
  v4 = v3;
  [(_UIActionSlider *)self _knobHorizontalPosition];
  v6 = v5;
  [(_UIActionSlider *)self _knobVerticalInset];
  v8 = v7;
  v9 = v6;
  v10 = v4;
  v11 = v4;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

- (CGRect)trackTextRect
{
  v3 = *(&self->super.super._viewFlags + 2);
  [(_UIActionSlider *)self _trackFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(_UIActionSlider *)self _knobWidth];
  v13 = v12;
  [(_UIActionSlider *)self _knobMinXInset];
  memset(&remainder, 0, sizeof(remainder));
  memset(&slice, 0, sizeof(slice));
  v15 = v13 + v14;
  v80.origin.x = v5;
  v80.origin.y = v7;
  v80.size.width = v9;
  v80.size.height = v11;
  rect = v11;
  CGRectDivide(v80, &slice, &remainder, v15, ((v3 & 0x400000uLL) >> 21));
  CGRectDivide(remainder, &slice, &remainder, 13.0, (((v3 & 0x400000uLL) >> 21) ^ 2));
  [(_UIActionSliderLabel *)self->_trackLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v17 = v16;
  v19 = v18;
  [(UIView *)self _currentScreenScale];
  UIRectCenteredXInRectScale(0.0, 0.0, v17, v19, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height, v20);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v81.origin.x = v5;
  v81.origin.y = v7;
  v81.size.width = v9;
  v81.size.height = v11;
  v29 = CGRectGetWidth(v81) + -252.0;
  v71 = v29;
  if ((v3 & 0x400000) != 0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 86.0;
  }

  v72 = v26;
  v82.origin.x = v22;
  v75 = v24;
  v82.origin.y = v24;
  v82.size.width = v26;
  v77 = v28;
  v82.size.height = v28;
  MinX = CGRectGetMinX(v82);
  v83.origin.x = v5;
  v76 = v7;
  v83.origin.y = v7;
  v83.size.width = v9;
  v83.size.height = rect;
  if (MinX - CGRectGetMinX(v83) < v30)
  {
    v84.origin.x = v5;
    v84.origin.y = v7;
    v84.size.width = v9;
    v84.size.height = rect;
    v22 = v30 + CGRectGetMinX(v84);
  }

  v32 = rect;
  if ((v3 & 0x400000) != 0)
  {
    v33 = 86.0;
  }

  else
  {
    v33 = v71;
  }

  v34 = v5;
  v35 = v76;
  v36 = v9;
  MaxX = CGRectGetMaxX(*(&v32 - 3));
  v85.origin.x = v22;
  v85.origin.y = v24;
  v38 = v72;
  v85.size.width = v72;
  v39 = v9;
  v85.size.height = v77;
  if (MaxX - CGRectGetMaxX(v85) < v33)
  {
    v86.origin.x = v5;
    v86.origin.y = v76;
    v86.size.width = v9;
    v86.size.height = rect;
    v40 = CGRectGetMaxX(v86) - v33;
    v87.origin.x = v22;
    v87.origin.y = v75;
    v87.size.width = v72;
    v87.size.height = v77;
    v22 = v40 - CGRectGetWidth(v87);
    v38 = v72;
  }

  v88.origin.x = v22;
  v88.origin.y = v75;
  v88.size.width = v38;
  v88.size.height = v77;
  v41 = CGRectGetMinX(v88);
  v89.origin.x = v5;
  v89.origin.y = v76;
  v89.size.width = v9;
  v89.size.height = rect;
  v42 = v22;
  if (v41 - CGRectGetMinX(v89) < v30)
  {
    v43 = v38;
    v90.size.height = rect;
    v90.origin.x = v5;
    v90.origin.y = v76;
    v90.size.width = v39;
    v44 = CGRectGetMaxX(v90) - (v33 + -4.0);
    v91.origin.x = v22;
    v91.origin.y = v75;
    v91.size.width = v43;
    v91.size.height = v77;
    v42 = v44 - CGRectGetWidth(v91);
    v38 = v43;
  }

  trackText = [(_UIActionSlider *)self trackText];
  textStyle = [(_UIActionSlider *)self textStyle];
  [(UIView *)self->_trackBackgroundView bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  if (textStyle == 1 && (-[_UIActionSliderLabel numberOfLines](self->_trackLabel, "numberOfLines") > 1 || !-[_UIActionSliderLabel numberOfLines](self->_trackLabel, "numberOfLines")) && [trackText containsString:@"\n"])
  {
    v92.origin.x = v48;
    v92.origin.y = v50;
    v92.size.width = v52;
    v92.size.height = v54;
    Height = CGRectGetHeight(v92);
    v93.origin.x = v42;
    v93.origin.y = v75;
    v93.size.width = v38;
    v56 = v77;
    v93.size.height = v77;
    v57 = (Height - CGRectGetHeight(v93)) * 0.5;
  }

  else
  {
    v73 = v42;
    v58 = objc_opt_respondsToSelector();
    trackLabel = self->_trackLabel;
    v56 = v77;
    v60 = v48;
    if (v58)
    {
      [(_UIActionSliderLabel *)trackLabel baselineOffsetFromBottomWithSize:v38, v77];
    }

    else
    {
      [(_UIActionSliderLabel *)trackLabel _baselineOffsetFromBottom];
    }

    v62 = v61;
    [(_UIActionSlider *)self trackTextBaselineFromBottom];
    v64 = v63;
    v94.origin.x = v60;
    v94.origin.y = v50;
    v94.size.width = v52;
    v94.size.height = v54;
    v65 = CGRectGetHeight(v94);
    v42 = v73;
    v95.origin.x = v73;
    v95.origin.y = v75;
    v95.size.width = v38;
    v95.size.height = v77;
    v57 = v65 - (CGRectGetHeight(v95) - v62) - v64;
  }

  v66 = v57 + 0.0;

  v67 = v42;
  v68 = v66;
  v69 = v38;
  v70 = v56;
  result.size.height = v70;
  result.size.width = v69;
  result.origin.y = v68;
  result.origin.x = v67;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(UIView *)self superview:fits.width];
  v6 = v5;
  if (v5)
  {
    [v5 bounds];
    v7 = CGRectGetWidth(v15);
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    v7 = CGRectGetWidth(v16);
  }

  if (width >= v7 || width <= 0.0)
  {
    width = v7;
  }

  [(_UIActionSlider *)self trackSize];
  v11 = v10 + 0.0;

  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)openTrackAnimated:(BOOL)animated
{
  if (animated)
  {
    [(_UIActionSlider *)self _hideTrackLabel:1];
    [(_UIActionSlider *)self setAnimating:1];
    layer = [(UIView *)self->_trackBackgroundView layer];
    [layer removeAllAnimations];

    layer2 = [(UIView *)self->_trackDodgeView layer];
    [layer2 removeAllAnimations];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37___UIActionSlider_openTrackAnimated___block_invoke;
    v10[3] = &unk_1E70F32F0;
    v10[4] = self;
    v10[5] = 0x3FD3333333333333;
    [UIView performWithoutAnimation:v10];
    v8[4] = self;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37___UIActionSlider_openTrackAnimated___block_invoke_2;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37___UIActionSlider_openTrackAnimated___block_invoke_3;
    v8[3] = &unk_1E70F5AC0;
    [UIView _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v9 options:v8 animations:0.05 completion:0.0];
    v6 = dispatch_time(0, 150000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37___UIActionSlider_openTrackAnimated___block_invoke_4;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_after(v6, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [(_UIActionSlider *)self setTrackWidthProportion:1.0];
    [(_UIActionSlider *)self _showTrackLabel];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)closeTrackAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(_UIActionSlider *)self _hideTrackLabel:?];
  if (animatedCopy)
  {
    layer = [(UIView *)self->_trackBackgroundView layer];
    [layer removeAllAnimations];

    layer2 = [(UIView *)self->_trackDodgeView layer];
    [layer2 removeAllAnimations];

    [(_UIActionSlider *)self setAnimating:1];
    [(_UIActionSlider *)self updateAllTrackMasks];
    v7[4] = self;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38___UIActionSlider_closeTrackAnimated___block_invoke;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38___UIActionSlider_closeTrackAnimated___block_invoke_2;
    v7[3] = &unk_1E70F5AC0;
    [UIView _animateUsingDefaultTimingWithOptions:0 animations:v8 completion:v7];
  }

  else
  {
    [(_UIActionSlider *)self setTrackWidthProportion:0.0];

    [(UIView *)self setNeedsLayout];
  }
}

- (CGRect)_trackFrame
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIActionSlider *)self trackSize];
  v12 = v11;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  if (CGRectGetWidth(v17) > v12)
  {
    v18.origin.x = v4;
    v18.origin.y = v6;
    v18.size.width = v8;
    v18.size.height = v10;
    v4 = v4 + (CGRectGetWidth(v18) - v12) * 0.5;
    v8 = v12;
  }

  v13 = v6 + 0.0;
  v14 = v4;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (double)_knobHorizontalPosition
{
  [(_UIActionSlider *)self _knobAvailableX];
  if ((*(&self->super.super._viewFlags + 2) & 0x400000) != 0)
  {
    v4 = -(v3 * self->_knobPosition);
  }

  else
  {
    v4 = v3 * self->_knobPosition;
  }

  [(_UIActionSlider *)self _knobMinX];
  return v5 + v4;
}

- (double)_knobMinX
{
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    [(_UIActionSlider *)self _knobRightMostX];
  }

  else
  {
    [(_UIActionSlider *)self _knobLeftMostX];
  }

  return result;
}

- (double)_knobMaxX
{
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    [(_UIActionSlider *)self _knobLeftMostX];
  }

  else
  {
    [(_UIActionSlider *)self _knobRightMostX];
  }

  return result;
}

- (double)_knobLeftMostX
{
  [(_UIActionSlider *)self _trackFrame];
  MinX = CGRectGetMinX(v6);
  [(_UIActionSlider *)self _knobMinXInset];
  return MinX + v4;
}

- (double)_knobRightMostX
{
  [(_UIActionSlider *)self _trackFrame];
  MaxX = CGRectGetMaxX(v8);
  [(_UIActionSlider *)self _knobMaxXInset];
  v5 = MaxX - v4;
  [(_UIActionSlider *)self _knobWidth];
  return v5 - v6;
}

- (double)_knobAvailableX
{
  [(_UIActionSlider *)self _knobMaxX];
  v4 = v3;
  [(_UIActionSlider *)self _knobMinX];
  return vabdd_f64(v4, v5);
}

- (BOOL)xPointIsWithinTrack:(double)track
{
  v4 = *(&self->super.super._viewFlags + 2);
  [(_UIActionSlider *)self _knobMinX];
  if ((v4 & 0x400000) != 0)
  {
    return v5 >= track;
  }

  else
  {
    return v5 <= track;
  }
}

- (BOOL)shouldHideTrackLabelForXPoint:(double)point
{
  v4 = *(&self->super.super._viewFlags + 2);
  [(_UIActionSlider *)self _knobMinX];
  if ((v4 & 0x400000) != 0)
  {
    return v5 > point;
  }

  else
  {
    return v5 < point;
  }
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = _UIActionSlider;
  [(UIView *)&v5 didMoveToSuperview];
  if (![(_UIActionSlider *)self textStyle])
  {
    [(_UIActionSlider *)self trackWidthProportion];
    if (v3 >= 1.0)
    {
      trackLabel = self->_trackLabel;
      if (!trackLabel)
      {
        [(_UIActionSlider *)self _makeTrackLabel];
        trackLabel = self->_trackLabel;
      }

      [(_UIActionSliderLabel *)trackLabel startAnimating];
    }
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = _UIActionSlider;
  [(UIView *)&v3 didMoveToWindow];
  [(_UIActionSlider *)self setCachedTrackMaskWidth:0.0];
  [(UIView *)self setNeedsLayout];
}

- (void)_makeTrackLabel
{
  trackText = [(_UIActionSlider *)self trackText];
  trackFont = [(_UIActionSlider *)self trackFont];
  textStyle = [(_UIActionSlider *)self textStyle];
  if (textStyle == 1)
  {
    v6 = objc_alloc_init(UILabel);
    v8 = [UIColor colorWithWhite:1.0 alpha:0.9];
    [(UILabel *)v6 setTextColor:v8];

    [(UILabel *)v6 setText:trackText];
    [(UILabel *)v6 setFont:trackFont];
  }

  else if (textStyle)
  {
    v6 = 0;
  }

  else
  {
    vibrantSettings = [(_UIActionSlider *)self vibrantSettings];
    v6 = [[_UIGlintyStringView alloc] initWithText:trackText andFont:trackFont];
    [(UILabel *)v6 setAllowsLuminanceAdjustments:0];
    [(UILabel *)v6 setUsesBackgroundDimming:1];
    [(UILabel *)v6 setVibrantSettings:vibrantSettings];
    legibilitySettings = [vibrantSettings legibilitySettings];
    [(UILabel *)v6 setLegibilitySettings:legibilitySettings];

    [(UILabel *)v6 setChevronStyle:0];
    [(UILabel *)v6 setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v6 updateText];
  }

  [(_UIActionSliderLabel *)self->_trackLabel removeFromSuperview];
  trackLabel = self->_trackLabel;
  self->_trackLabel = v6;
  v10 = v6;

  [(UIView *)self addSubview:v10];
}

- (void)layoutSubviews
{
  v63.receiver = self;
  v63.super_class = _UIActionSlider;
  [(UIView *)&v63 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self _currentScreenScale];
  if (v11 <= 0.0)
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    v12 = v14;

    if (v12 <= 0.0)
    {
      v12 = 1.0;
    }
  }

  else
  {
    v12 = v11;
  }

  [(UIView *)self->_contentView setFrame:v4, v6, v8, v10];
  [(_UIActionSlider *)self _knobWidth];
  UIRoundToViewScale(self);
  v16 = v15;
  [(_UIActionSlider *)self _knobMinXInset];
  UIRoundToViewScale(self);
  v18 = v17;
  [(_UIActionSlider *)self _knobMaxXInset];
  UIRoundToViewScale(self);
  v20 = v19;
  [(_UIActionSlider *)self _trackFrame];
  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  if (self->_trackWidthProportion >= 1.0)
  {
    if (self->_knobPosition > 0.0)
    {
      [(_UIActionSlider *)self _knobAvailableX];
      v32 = v31 * self->_knobPosition;
      v65.origin.x = v25;
      v65.origin.y = v26;
      v65.size.width = v27;
      v65.size.height = v28;
      v33 = CGRectGetWidth(v65) - v32;
      v66.origin.x = v25;
      v66.origin.y = v26;
      v66.size.width = v27;
      v66.size.height = v28;
      v34 = CGRectGetHeight(v66) - v33;
      if (v34 > 0.0)
      {
        v28 = v28 - v34;
        v26 = v26 + v34 * 0.5;
      }

      if ((*(&self->super.super._viewFlags + 18) & 0x40) == 0)
      {
        v25 = v25 + v32;
      }

      v27 = v27 - v32;
    }
  }

  else
  {
    v29 = v16 + v18 + v20;
    v30 = v21;
    if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
    {
      v30 = (CGRectGetMaxX(*&v21) - v29) * (1.0 - self->_trackWidthProportion);
    }

    v64.origin.x = v25;
    v64.origin.y = v26;
    v64.size.width = v27;
    v64.size.height = v28;
    v27 = v29 + (CGRectGetWidth(v64) - v29) * self->_trackWidthProportion;
    v25 = v30;
  }

  [(UIView *)self->_trackBackgroundView setFrame:v25, v26, v27, v28];
  [(UIView *)self->_trackBackgroundView bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  [(UIView *)self->_trackDodgeView setFrame:?];
  [(UIView *)self->_trackBlurView setFrame:v36, v38, v40, v42];
  [(UIView *)self->_trackSolidView setFrame:v36, v38, v40, v42];
  [(_UIActionSlider *)self cachedTrackMaskWidth];
  v44 = v43;
  v67.origin.x = v36;
  v67.origin.y = v38;
  v67.size.width = v40;
  v67.size.height = v42;
  if (v44 != CGRectGetWidth(v67))
  {
    v68.origin.x = v36;
    v68.origin.y = v38;
    v68.size.width = v40;
    v68.size.height = v42;
    if (CGRectGetWidth(v68) > 0.0)
    {
      [(_UIActionSlider *)self updateAllTrackMasks];
    }
  }

  [(_UIActionSlider *)self knobRect];
  v49 = UIRectIntegralWithScale(v45, v46, v47, v48, v12);
  v51 = v50;
  v53 = v52;
  [(UIView *)self->_knobView setFrame:v49];
  knobImageView = self->_knobImageView;
  if (knobImageView)
  {
    [(UIImageView *)knobImageView sizeThatFits:v51, v53];
    v57 = UIRectCenteredIntegralRectScale(0.0, 0.0, v55, v56, 0.0, 0.0, v51, v53, v12);
    [(UIImageView *)self->_knobImageView setFrame:floor(v12 * (v57 + self->_knobImageOffset.width)) / v12, floor(v12 * (v58 + self->_knobImageOffset.height)) / v12];
  }

  if (self->_trackLabel || ([(_UIActionSlider *)self _makeTrackLabel], self->_trackLabel))
  {
    [(_UIActionSlider *)self trackTextRect];
    [(_UIActionSliderLabel *)self->_trackLabel setFrame:UIRectIntegralWithScale(v59, v60, v61, v62, v12)];
  }
}

- (id)trackMaskImage
{
  v24 = *MEMORY[0x1E69E9840];
  _screen = [(UIView *)self _screen];
  [(UIView *)self->_trackBackgroundView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [_screen scale];
  v13 = v12;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v15 = vcvtpd_u64_f64(v13 * CGRectGetWidth(v26));
  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  Height = CGRectGetHeight(v27);
  v17 = CGBitmapContextCreate(0, v15, vcvtpd_u64_f64(v13 * Height), 8uLL, 4 * v15, DeviceRGB, 2u);
  CGContextScaleCTM(v17, v13, v13);
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = v9;
  v28.size.height = v11;
  CGContextClearRect(v17, v28);
  v23[0] = xmmword_18A679BF8;
  v23[1] = unk_18A679C08;
  v18 = CGColorCreate(DeviceRGB, v23);
  CGContextSetFillColorWithColor(v17, v18);
  CGColorRelease(v18);
  v19 = _UIActionSliderTrackMaskPath(v5, v7, v9, v11);
  CGContextAddPath(v17, [v19 CGPath]);
  CGContextFillPath(v17);
  Image = CGBitmapContextCreateImage(v17);
  CGContextRelease(v17);
  CGColorSpaceRelease(DeviceRGB);
  v21 = [UIImage imageWithCGImage:Image scale:0 orientation:v13];
  CGImageRelease(Image);

  return v21;
}

- (id)trackMaskPath
{
  [(UIView *)self->_trackBackgroundView bounds];

  return _UIActionSliderTrackMaskPath(v2, v3, v4, v5);
}

- (void)updateAllTrackMasks
{
  if ([(_UIActionSlider *)self isAnimating])
  {
    trackMaskPath = [(_UIActionSlider *)self trackMaskPath];
    MutableCopy = CGPathCreateMutableCopy([trackMaskPath CGPath]);
    [(_UIActionSlider *)self setMaskPath:MutableCopy onView:self->_trackDodgeView];
    if (self->_trackSolidView)
    {
      [(_UIActionSlider *)self setMaskPath:MutableCopy onView:?];
    }

    CGPathRelease(MutableCopy);

    p_trackBlurView = &self->_trackBlurView;
    if (!self->_trackBlurView)
    {
      trackMaskImage = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  trackMaskImage = [(_UIActionSlider *)self trackMaskImage];
  [_UIActionSlider setMaskFromImage:"setMaskFromImage:onView:" onView:?];
  if (self->_trackSolidView)
  {
    [(_UIActionSlider *)self setMaskFromImage:trackMaskImage onView:?];
  }

  trackMaskImage2 = trackMaskImage;
  p_trackBlurView = &self->_trackBlurView;
  trackBlurView = self->_trackBlurView;
  if (trackBlurView)
  {
    if (trackMaskImage)
    {
LABEL_11:
      trackMaskImage = trackMaskImage2;
      inputSettings = [(_UIBackdropView *)trackBlurView inputSettings];
      [inputSettings setFilterMaskImage:trackMaskImage];
      [inputSettings setGrayscaleTintMaskImage:trackMaskImage];
      [inputSettings setColorTintMaskImage:trackMaskImage];

      goto LABEL_12;
    }

LABEL_10:
    trackMaskImage2 = [(_UIActionSlider *)self trackMaskImage];
    trackBlurView = *p_trackBlurView;
    goto LABEL_11;
  }

LABEL_12:
  [(UIView *)self->_trackBackgroundView bounds];
  [(_UIActionSlider *)self setCachedTrackMaskWidth:CGRectGetWidth(v11)];
}

- (void)setMaskPath:(CGPath *)path onView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  mask = [layer mask];
  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    layer2 = [MEMORY[0x1E69794A0] layer];

    [layer2 setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    [layer2 setDelegate:viewCopy];
    [layer setMask:layer2];
    mask = layer2;
  }

  [viewCopy bounds];
  [mask setBounds:?];
  [mask setPath:path];
}

- (void)setMaskFromImage:(id)image onView:(id)view
{
  imageCopy = image;
  viewCopy = view;
  imageCopy2 = image;
  cGImage = [imageCopy2 CGImage];
  layer = [MEMORY[0x1E6979398] layer];
  [viewCopy bounds];
  [layer setBounds:?];
  [layer setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  [imageCopy2 scale];
  [layer setContentsScale:?];
  [layer setDelegate:viewCopy];
  [imageCopy2 size];
  v11 = v10;
  v13 = v12;
  [imageCopy2 capInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [layer setContentsCenter:{v17 / v11, v15 / v13, (v11 - v21 - v17) / v11, (v13 - v15 - v19) / v13}];
  [layer setContents:cGImage];
  layer2 = [viewCopy layer];

  [layer2 setMask:layer];
}

- (void)_showTrackLabel
{
  if (![(_UIActionSlider *)self isShowingTrackLabel])
  {
    if (!self->_trackLabel)
    {
      [(_UIActionSlider *)self _makeTrackLabel];
    }

    if ([(_UIActionSlider *)self textStyle])
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __34___UIActionSlider__showTrackLabel__block_invoke;
      v3[3] = &unk_1E70F3590;
      v3[4] = self;
      [UIView animateWithDuration:v3 animations:0.15];
    }

    else
    {
      [(_UIActionSliderLabel *)self->_trackLabel fadeInWithDuration:0.15];
    }

    [(_UIActionSlider *)self setShowingTrackLabel:1];
  }
}

- (void)_hideTrackLabel:(BOOL)label
{
  labelCopy = label;
  if ([(_UIActionSlider *)self isShowingTrackLabel])
  {
    if (!self->_trackLabel)
    {
      [(_UIActionSlider *)self _makeTrackLabel];
    }

    if ([(_UIActionSlider *)self textStyle])
    {
      v5 = 0.15;
      if (!labelCopy)
      {
        v5 = 0.0;
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __35___UIActionSlider__hideTrackLabel___block_invoke;
      v7[3] = &unk_1E70F3590;
      v7[4] = self;
      [UIView animateWithDuration:v7 animations:v5];
    }

    else
    {
      trackLabel = self->_trackLabel;
      if (labelCopy)
      {
        [(_UIActionSliderLabel *)trackLabel fadeOutWithDuration:0.15];
      }

      else
      {
        [(_UIActionSliderLabel *)trackLabel hide];
      }
    }

    [(_UIActionSlider *)self setShowingTrackLabel:0];
  }
}

- (void)_slideCompleted:(BOOL)completed
{
  completedCopy = completed;
  [(_UIActionSlider *)self setAnimating:1];
  [(_UIActionSlider *)self updateAllTrackMasks];
  self->_slideGestureInitialPoint = *MEMORY[0x1E695EFF8];
  v8[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35___UIActionSlider__slideCompleted___block_invoke;
  v9[3] = &unk_1E70F35E0;
  v10 = completedCopy;
  v9[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35___UIActionSlider__slideCompleted___block_invoke_2;
  v8[3] = &unk_1E70F5AC0;
  [UIView _animateUsingDefaultTimingWithOptions:0 animations:v9 completion:v8];
  if (completedCopy)
  {
    delegate = [(_UIActionSlider *)self delegate];
    [(UIControl *)self _incrementStatisticsForUserActionForEvents:64];
    if (objc_opt_respondsToSelector())
    {
      [delegate actionSliderDidCompleteSlide:self];
    }
  }

  else
  {
    v6 = dispatch_time(0, 150000000);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35___UIActionSlider__slideCompleted___block_invoke_3;
    v7[3] = &unk_1E70F3590;
    v7[4] = self;
    dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
    delegate = [(_UIActionSlider *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate actionSliderDidCancelSlide:self];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  slideGestureRecognizer = self->_slideGestureRecognizer;
  v10 = 1;
  if (slideGestureRecognizer == beginCopy)
  {
    [(UIPanGestureRecognizer *)slideGestureRecognizer locationInView:self->_knobView];
    v7 = v6;
    v9 = v8;
    [(UIView *)self->_knobView bounds];
    v12.x = v7;
    v12.y = v9;
    if (!CGRectContainsPoint(v13, v12))
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)_knobPanGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = *(&self->super.super._viewFlags + 2);
  [(_UIActionSlider *)self _knobMinX];
  v6 = v5;
  [(_UIActionSlider *)self _knobAvailableX];
  v8 = v7;
  [gestureCopy locationInView:self];
  v10 = v9;
  v12 = v11;
  p_slideGestureInitialPoint = &self->_slideGestureInitialPoint;
  x = self->_slideGestureInitialPoint.x;
  [gestureCopy velocityInView:self];
  v16 = v15;
  v17 = self->_slideGestureInitialPoint.x;
  if ((v4 & 0x400000) != 0)
  {
    v18 = x - v10;
    if (v17 < 0.0)
    {
      [(_UIActionSlider *)self _knobMinX];
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v10 - x;
    if (v17 < 0.0)
    {
      [(_UIActionSlider *)self _knobMaxX];
LABEL_6:
      v20 = v19;
      goto LABEL_8;
    }
  }

  v20 = v8;
LABEL_8:
  delegate = [(_UIActionSlider *)self delegate];
  state = [gestureCopy state];
  if (state > 3)
  {
    if ((state - 4) >= 2)
    {
      goto LABEL_21;
    }

    selfCopy2 = self;
    v25 = 0;
    goto LABEL_20;
  }

  if (state != 1)
  {
    v23 = v18 / v20;
    if (state != 2)
    {
      if (state != 3)
      {
        goto LABEL_21;
      }

      v24 = v23 >= 0.4;
      if (v16 < 150.0)
      {
        v24 = 0;
      }

      v25 = v18 / (v20 * 0.6) >= 0.999000013 || v24;
      selfCopy2 = self;
LABEL_20:
      [(_UIActionSlider *)selfCopy2 _slideCompleted:v25];
      goto LABEL_21;
    }

    if ([(_UIActionSlider *)self xPointIsWithinTrack:v10])
    {
      if (![(_UIActionSlider *)self xPointIsWithinTrack:p_slideGestureInitialPoint->x])
      {
        if ([(_UIActionSlider *)self xPointIsWithinTrack:p_slideGestureInitialPoint->x])
        {
          v6 = p_slideGestureInitialPoint->x;
        }

        v23 = vabdd_f64(v10, v6) / v8;
      }

      p_knobPosition = &self->_knobPosition;
      self->_knobPosition = v23;
      if (v23 > 0.0)
      {
        if (v23 > 1.0)
        {
          *p_knobPosition = 1.0;
        }

        [(_UIActionSlider *)self _hideTrackLabel:1];
        goto LABEL_39;
      }
    }

    else
    {
      p_knobPosition = &self->_knobPosition;
      self->_knobPosition = 0.0;
    }

    *p_knobPosition = 0.0;
    [(_UIActionSlider *)self _showTrackLabel];
LABEL_39:
    [(UIView *)self setNeedsLayout];
    [(UIView *)self setNeedsDisplay];
    if (objc_opt_respondsToSelector())
    {
      [delegate actionSlider:self didUpdateSlideWithValue:*p_knobPosition];
    }

    goto LABEL_21;
  }

  p_slideGestureInitialPoint->x = v10;
  self->_slideGestureInitialPoint.y = v12;
  if ([(_UIActionSlider *)self shouldHideTrackLabelForXPoint:v10])
  {
    [(_UIActionSlider *)self _hideTrackLabel:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate actionSliderDidBeginSlide:self];
  }

LABEL_21:
}

- (CGSize)knobImageOffset
{
  width = self->_knobImageOffset.width;
  height = self->_knobImageOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)trackSize
{
  width = self->_trackSize.width;
  height = self->_trackSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_UIActionSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)knobInsets
{
  top = self->_knobInsets.top;
  left = self->_knobInsets.left;
  bottom = self->_knobInsets.bottom;
  right = self->_knobInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end