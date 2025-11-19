@interface _UIPrototypingMenuSlider
- (CGPoint)knobCenter;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (UIEdgeInsets)_thumbHitEdgeInsets;
- (_UIPrototypingMenuSlider)initWithFrame:(CGRect)a3;
- (float)value;
- (void)_setKnobViewProminent:(BOOL)a3 animated:(BOOL)a4;
- (void)decrement;
- (void)increment;
- (void)layoutSubviews;
- (void)setValue:(float)a3 animated:(BOOL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _UIPrototypingMenuSlider

- (_UIPrototypingMenuSlider)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = _UIPrototypingMenuSlider;
  v3 = [(UISlider *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    knobView = v3->_knobView;
    v3->_knobView = v9;

    [(UIView *)v3->_knobView setAutoresizesSubviews:1];
    [(UIView *)v3->_knobView setUserInteractionEnabled:0];
    [(UIView *)v3 addSubview:v3->_knobView];
    v11 = [[UIImageView alloc] initWithFrame:v5, v6, v7, v8];
    knobBGView = v3->_knobBGView;
    v3->_knobBGView = v11;

    v13 = _UIImageWithName(@"UISwitchKnob");
    [(UIImageView *)v3->_knobBGView setImage:v13];

    [(UIView *)v3->_knobBGView setAutoresizingMask:18];
    [(UIView *)v3->_knobView addSubview:v3->_knobBGView];
    v14 = [[UILabel alloc] initWithFrame:v5, v6, v7, v8];
    currentValueLabel = v3->_currentValueLabel;
    v3->_currentValueLabel = v14;

    v16 = [off_1E70ECC18 monospacedDigitSystemFontOfSize:14.0 weight:*off_1E70ECD28];
    [(UILabel *)v3->_currentValueLabel setFont:v16];

    [(UILabel *)v3->_currentValueLabel setTextAlignment:1];
    v17 = +[UIColor blackColor];
    [(UILabel *)v3->_currentValueLabel setTextColor:v17];

    [(UIView *)v3->_knobView addSubview:v3->_currentValueLabel];
    v18 = [UIImageSymbolConfiguration configurationWithPointSize:8.0];
    v19 = [UIImage systemImageNamed:@"circle.fill" withConfiguration:v18];

    [(UISlider *)v3 setThumbImage:v19 forState:0];
    [(UISlider *)v3 _setSliderStyle:100];
    v20 = [(UIView *)v3 layer];
    [v20 setCreatesCompositingGroup:1];
  }

  return v3;
}

- (CGPoint)knobCenter
{
  v2 = [(_UIPrototypingMenuSlider *)self knobView];
  [v2 center];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)increment
{
  [(_UIPrototypingMenuSlider *)self value];
  v4 = v3;
  [(_UIPrototypingMenuSlider *)self stepSize];
  v6 = v5 + v4;
  *&v6 = v6;

  [(_UIPrototypingMenuSlider *)self setValue:1 animated:v6];
}

- (void)decrement
{
  [(_UIPrototypingMenuSlider *)self value];
  v4 = v3;
  [(_UIPrototypingMenuSlider *)self stepSize];
  v6 = v4 - v5;
  *&v6 = v6;

  [(_UIPrototypingMenuSlider *)self setValue:1 animated:v6];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _UIPrototypingMenuSlider;
  [(UISlider *)&v4 layoutSubviews];
  if (!self->_didBringKnobToFront)
  {
    self->_didBringKnobToFront = 1;
    v3 = [(_UIPrototypingMenuSlider *)self knobView];
    [(UIView *)self bringSubviewToFront:v3];
  }
}

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(_UIPrototypingMenuSlider *)self stepSize];
  v9 = v7;
  if (v9 > 0.0)
  {
    v12 = 0.0;
    v10 = a3 / v9;
    modff(v10, &v12);
    *&v7 = v12;
    *&v8 = v10 - v12;
    if ((v10 - v12) >= 0.5)
    {
      *&v7 = v12 + 1.0;
    }

    a3 = *&v7 * v9;
  }

  v11.receiver = self;
  v11.super_class = _UIPrototypingMenuSlider;
  *&v7 = a3;
  [(UISlider *)&v11 setValue:v4 animated:v7, v8];
}

- (float)value
{
  v10.receiver = self;
  v10.super_class = _UIPrototypingMenuSlider;
  [(UISlider *)&v10 value];
  v4 = v3;
  [(_UIPrototypingMenuSlider *)self stepSize];
  v6 = v5;
  if (v6 > 0.0)
  {
    v11 = 0.0;
    v7 = v4 / v6;
    modff(v7, &v11);
    v8 = v11;
    if ((v7 - v11) >= 0.5)
    {
      v8 = v11 + 1.0;
    }

    return v8 * v6;
  }

  return v4;
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  v57.receiver = self;
  v57.super_class = _UIPrototypingMenuSlider;
  x = a4.origin.x;
  y = a4.origin.y;
  width = a4.size.width;
  height = a4.size.height;
  [(UISlider *)&v57 thumbRectForBounds:a3.origin.x trackRect:a3.origin.y value:a3.size.width, a3.size.height, LODWORD(a5)];
  v9 = v8;
  v47 = v10;
  v12 = v11;
  v14 = v13;
  v15 = [(_UIPrototypingMenuSlider *)self knobView];
  v16 = [(_UIPrototypingMenuSlider *)self knobBGView];
  v17 = [v16 image];

  v18 = [v17 leftCapWidth];
  v19 = [(_UIPrototypingMenuSlider *)self currentValueLabel];
  v20 = [v19 text];
  [(_UIPrototypingMenuSlider *)self stepSize];
  *v22.i32 = *v22.i64;
  if (*v22.i32 <= 0.0)
  {
    goto LABEL_6;
  }

  *v22.i64 = *v22.i32;
  *v21.i64 = *v22.i64 - trunc(*v22.i64);
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  if (*vbslq_s8(vnegq_f64(v23), v21, v22).i64 == 0.0)
  {
    v24 = 0;
    goto LABEL_7;
  }

  if (fmod(*v22.i64, 0.1) == 0.0)
  {
    v24 = 1;
  }

  else
  {
LABEL_6:
    v24 = 2;
  }

LABEL_7:
  v25 = v18;
  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.*f", v24, a5];
  [v19 setText:v26];

  v27 = [v20 length];
  v28 = [v19 text];
  v29 = [v28 length];

  if (v27 != v29)
  {
    [v19 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v31 = v30;
    v33 = v32;
    [v17 size];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __63___UIPrototypingMenuSlider_thumbRectForBounds_trackRect_value___block_invoke;
    v48[3] = &unk_1E7121D60;
    v51 = v31;
    v52 = v33;
    if (v25 + v25 + v31 + -8.0 >= v34)
    {
      v34 = v25 + v25 + v31 + -8.0;
    }

    v53 = 0;
    v54 = 0;
    v55 = v34;
    v56 = v35;
    v49 = v19;
    v50 = v15;
    [UIView animateWithDuration:v48 animations:0 completion:0.15];
  }

  [v15 bounds];
  v36 = (CGRectGetWidth(v58) - v25) * 0.5;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  v37 = CGRectGetMinX(v59) + v36;
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v38 = fmax(v37, fmin(v9 + v12 * 0.5, CGRectGetMaxX(v60) - v36));
  v39 = [v15 superview];
  [v39 convertPoint:self fromView:{v38, v47 + v14 * 0.5 + 3.0}];
  [v15 setCenter:?];

  v40 = v9;
  v41 = v12;
  v42 = v47;
  v43 = v14;
  result.size.height = v43;
  result.size.width = v41;
  result.origin.y = v42;
  result.origin.x = v40;
  return result;
}

- (void)_setKnobViewProminent:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(_UIPrototypingMenuSlider *)self knobView];
  if (v5)
  {
    v8 = [(_UIPrototypingMenuSlider *)self knobPortal];

    if (!v8)
    {
      v9 = [[_UIPortalView alloc] initWithSourceView:v7];
      [(_UIPrototypingMenuSlider *)self setKnobPortal:v9];

      v10 = [(_UIPrototypingMenuSlider *)self knobPortal];
      [v10 setMatchesAlpha:1];

      v11 = [(_UIPrototypingMenuSlider *)self knobPortal];
      [v11 setMatchesPosition:1];

      v12 = [(_UIPrototypingMenuSlider *)self knobPortal];
      [v12 setMatchesTransform:1];

      v13 = [(_UIPrototypingMenuSlider *)self knobPortal];
      [v13 setHidesSourceView:1];
    }

    v14 = [(UIView *)self window];
    v15 = [(_UIPrototypingMenuSlider *)self knobPortal];
    [v14 addSubview:v15];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59___UIPrototypingMenuSlider__setKnobViewProminent_animated___block_invoke;
  aBlock[3] = &unk_1E70F35E0;
  v26 = v5;
  v16 = v7;
  v25 = v16;
  v17 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59___UIPrototypingMenuSlider__setKnobViewProminent_animated___block_invoke_2;
  v22[3] = &unk_1E7120C28;
  v23 = v5;
  v22[4] = self;
  v18 = _Block_copy(v22);
  if (v4)
  {
    v19 = 0.3;
    if (!v5)
    {
      v19 = 0.2;
    }

    v20 = 0.7;
    if (!v5)
    {
      v20 = 1.0;
    }

    v21 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:v20 response:v19];
    [UIView _animateUsingSpringBehavior:v21 tracking:0 animations:v17 completion:v18];
  }

  else
  {
    v17[2](v17);
    v18[2](v18, 1, 0);
  }
}

- (UIEdgeInsets)_thumbHitEdgeInsets
{
  v3 = [(_UIPrototypingMenuSlider *)self knobView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(UISlider *)self currentThumbImage];
  [v12 size];
  v14 = v13;
  v16 = v15;

  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  v17 = (CGRectGetWidth(v22) - v14) * -0.5;
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  v18 = (CGRectGetHeight(v23) - v16) * -0.5;
  v19 = v17;
  v20 = v18;
  v21 = v17;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIPrototypingMenuSlider;
  [(UIControl *)&v5 touchesBegan:a3 withEvent:a4];
  [(_UIPrototypingMenuSlider *)self _setKnobViewProminent:1 animated:1];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIPrototypingMenuSlider;
  [(UIControl *)&v5 touchesEnded:a3 withEvent:a4];
  [(_UIPrototypingMenuSlider *)self _setKnobViewProminent:0 animated:1];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIPrototypingMenuSlider;
  [(UIControl *)&v5 touchesCancelled:a3 withEvent:a4];
  [(_UIPrototypingMenuSlider *)self _setKnobViewProminent:0 animated:1];
}

@end