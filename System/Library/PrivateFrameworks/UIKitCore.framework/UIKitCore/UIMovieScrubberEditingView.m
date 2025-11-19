@interface UIMovieScrubberEditingView
- (BOOL)pointInsideLeftHandle:(CGPoint)a3;
- (BOOL)pointInsideRightHandle:(CGPoint)a3;
- (CGRect)_leftHandleRect;
- (CGRect)_rightHandleRect;
- (UIMovieScrubberEditingView)initWithFrame:(CGRect)a3;
- (double)_bounceValueForFraction:(double)a3;
- (id)_handleImages;
- (int)handleForPoint:(CGPoint)a3 hitOffset:(double *)a4;
- (void)_updateHandleImages;
- (void)bounce;
- (void)layoutSubviews;
- (void)setEditing:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation UIMovieScrubberEditingView

- (UIMovieScrubberEditingView)initWithFrame:(CGRect)a3
{
  v35.receiver = self;
  v35.super_class = UIMovieScrubberEditingView;
  v3 = [(UIView *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695DEC8]);
    v5 = _UIImageWithName(@"UIMovieScrubberEditingGlassLeft.png");
    v6 = _UIImageWithName(@"UIMovieScrubberEditingGlassFill.png");
    v7 = _UIImageWithName(@"UIMovieScrubberEditingGlassRight.png");
    v8 = [v4 initWithObjects:{v5, v6, v7, 0}];
    inactiveImages = v3->_inactiveImages;
    v3->_inactiveImages = v8;

    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    v11 = _UIImageWithName(@"UIMovieScrubberNoEditGlassLeft.png");
    v12 = _UIImageWithName(@"UIMovieScrubberNoEditGlassFill.png");
    v13 = _UIImageWithName(@"UIMovieScrubberNoEditGlassRight.png");
    v14 = [v10 initWithObjects:{v11, v12, v13, 0}];
    activeNoEditImages = v3->_activeNoEditImages;
    v3->_activeNoEditImages = v14;

    v16 = objc_alloc(MEMORY[0x1E695DEC8]);
    v17 = _UIImageWithName(@"UIMovieScrubberEditingLeft.png");
    v18 = _UIImageWithName(@"UIMovieScrubberEditingFill.png");
    v19 = _UIImageWithName(@"UIMovieScrubberEditingRight.png");
    v20 = [v16 initWithObjects:{v17, v18, v19, 0}];
    activeImages = v3->_activeImages;
    v3->_activeImages = v20;

    v22 = [UIImageView alloc];
    v23 = [(NSArray *)v3->_inactiveImages objectAtIndex:0];
    v24 = [(UIImageView *)v22 initWithImage:v23];
    leftImageView = v3->_leftImageView;
    v3->_leftImageView = v24;

    [(UIView *)v3 addSubview:v3->_leftImageView];
    v26 = [UIImageView alloc];
    v27 = [(NSArray *)v3->_inactiveImages objectAtIndex:1];
    v28 = [(UIImageView *)v26 initWithImage:v27];
    middleImageView = v3->_middleImageView;
    v3->_middleImageView = v28;

    [(UIImageView *)v3->_middleImageView setContentMode:0];
    [(UIView *)v3 addSubview:v3->_middleImageView];
    v30 = [UIImageView alloc];
    v31 = [(NSArray *)v3->_inactiveImages objectAtIndex:2];
    v32 = [(UIImageView *)v30 initWithImage:v31];
    rightImageView = v3->_rightImageView;
    v3->_rightImageView = v32;

    [(UIView *)v3 addSubview:v3->_rightImageView];
    v3->_enabled = 1;
    v3->_editing = 0;
    [(UIMovieScrubberEditingView *)v3 _updateHandleImages];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  edgeInset = self->_edgeInset;
  v9 = v8 + edgeInset;
  remainder.origin.x = v8 + edgeInset;
  remainder.origin.y = v4;
  v11 = v10 - (edgeInset + edgeInset);
  remainder.size.width = v11;
  remainder.size.height = v5;
  v12 = [(UIMovieScrubberEditingView *)self _handleImages];
  v13 = *(MEMORY[0x1E695F058] + 16);
  v19.origin = *MEMORY[0x1E695F058];
  v19.size = v13;
  v14 = [v12 objectAtIndexedSubscript:0];
  [v14 size];
  v16 = v15;
  v21.origin.x = v9;
  v21.origin.y = v4;
  v21.size.width = v11;
  v21.size.height = v6;
  CGRectDivide(v21, &v19, &remainder, v16, CGRectMinXEdge);
  [(UIImageView *)self->_leftImageView setFrame:*&v19.origin, *&v19.size];
  v17 = [v12 objectAtIndexedSubscript:2];

  [v17 size];
  CGRectDivide(remainder, &v19, &remainder, v18, CGRectMaxXEdge);
  [(UIImageView *)self->_rightImageView setFrame:*&v19.origin, *&v19.size];
  [(UIImageView *)self->_middleImageView setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
}

- (CGRect)_leftHandleRect
{
  [(UIView *)self bounds];
  v6 = self->_edgeInset + 48.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)pointInsideLeftHandle:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIMovieScrubberEditingView *)self _leftHandleRect];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (CGRect)_rightHandleRect
{
  [(UIView *)self bounds];
  v6 = v5 + -48.0;
  edgeInset = self->_edgeInset;
  v8 = v6 - edgeInset;
  v9 = edgeInset + 48.0;
  result.size.height = v4;
  result.size.width = v9;
  result.origin.y = v3;
  result.origin.x = v8;
  return result;
}

- (BOOL)pointInsideRightHandle:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIMovieScrubberEditingView *)self _rightHandleRect];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (int)handleForPoint:(CGPoint)a3 hitOffset:(double *)a4
{
  y = a3.y;
  x = a3.x;
  [(UIMovieScrubberEditingView *)self _leftHandleRect];
  v8 = v7;
  v28 = v9;
  v29 = v7;
  v10 = v9;
  v12 = v11;
  v27 = v13;
  [(UIMovieScrubberEditingView *)self _rightHandleRect];
  v15 = v14;
  v17 = v16;
  rect = v16;
  v19 = v18;
  v21 = v20;
  v34.origin.x = v8;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v27;
  v32.x = x;
  v32.y = y;
  v22 = CGRectContainsPoint(v34, v32);
  v35.origin.x = v15;
  v35.origin.y = v17;
  v35.size.width = v19;
  v35.size.height = v21;
  v33.x = x;
  v33.y = y;
  v23 = CGRectContainsPoint(v35, v33);
  v36.origin.y = v28;
  v36.origin.x = v29;
  v36.size.width = v12;
  v36.size.height = v27;
  v24 = CGRectGetMaxX(v36) + -36.0 - x;
  v37.origin.x = v15;
  v37.origin.y = rect;
  v37.size.width = v19;
  v37.size.height = v21;
  v25 = CGRectGetMinX(v37) + 36.0 - x;
  if (v22 && v23)
  {
    if (fabs(v24) > fabs(v25))
    {
      result = 2;
    }

    else
    {
      v25 = v24;
      result = 1;
    }
  }

  else
  {
    if (v22)
    {
      v25 = v24;
      result = 1;
    }

    else
    {
      result = 2;
    }

    if (!v22 && !v23)
    {
      [(UIView *)self bounds];
      v25 = CGRectGetMidX(v38) - x;
      result = 3;
    }
  }

  *a4 = v25;
  return result;
}

- (id)_handleImages
{
  v2 = &OBJC_IVAR___UIMovieScrubberEditingView__activeNoEditImages;
  if (self->_enabled)
  {
    v2 = &OBJC_IVAR___UIMovieScrubberEditingView__inactiveImages;
    if (self->_editing)
    {
      v2 = &OBJC_IVAR___UIMovieScrubberEditingView__activeImages;
    }
  }

  return *(&self->super.super.super.isa + *v2);
}

- (void)_updateHandleImages
{
  v9 = [(UIMovieScrubberEditingView *)self _handleImages];
  leftImageView = self->_leftImageView;
  v4 = [v9 objectAtIndexedSubscript:0];
  [(UIImageView *)leftImageView setImage:v4];

  middleImageView = self->_middleImageView;
  v6 = [v9 objectAtIndexedSubscript:1];
  [(UIImageView *)middleImageView setImage:v6];

  rightImageView = self->_rightImageView;
  v8 = [v9 objectAtIndexedSubscript:2];
  [(UIImageView *)rightImageView setImage:v8];
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(UIMovieScrubberEditingView *)self _updateHandleImages];
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_enabled && self->_editing != a3)
  {
    self->_editing = a3;
    [(UIMovieScrubberEditingView *)self _updateHandleImages];
  }
}

- (void)bounce
{
  v36 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.x"];
  v3 = *MEMORY[0x1E6979ED8];
  v4 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [v36 setTimingFunction:v4];

  [v36 setDuration:0.75];
  v5 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.x"];
  v6 = [MEMORY[0x1E69793D0] functionWithName:v3];
  [v5 setTimingFunction:v6];

  [v5 setDuration:0.75];
  v7 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds.size.width"];
  v8 = [MEMORY[0x1E69793D0] functionWithName:v3];
  [v7 setTimingFunction:v8];

  [v7 setDuration:0.75];
  v9 = [(UIView *)self->_leftImageView layer];
  [v9 position];
  v11 = v10;

  v12 = [(UIView *)self->_rightImageView layer];
  [v12 position];
  v14 = v13;

  v15 = [(UIView *)self->_middleImageView layer];
  [v15 bounds];
  v17 = v16;

  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:24];
  v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:24];
  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:24];
  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:24];
  for (i = 0; i != 25; ++i)
  {
    v23 = i;
    *&v23 = i / 24.0;
    v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
    [v18 addObject:v24];

    [(UIMovieScrubberEditingView *)self _bounceValueForFraction:i / 24.0];
    v26 = v25;
    v27 = v11 - v25;
    *&v27 = v27;
    v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
    [v19 addObject:v28];

    v29 = v14 + v26;
    *&v29 = v14 + v26;
    v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
    [v20 addObject:v30];

    v31 = ceil(v17 + v26 + v26);
    *&v31 = v31;
    v32 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
    [v21 addObject:v32];
  }

  [v36 setKeyTimes:v18];
  [v36 setValues:v19];
  v33 = [(UIView *)self->_leftImageView layer];
  [v33 addAnimation:v36 forKey:0];

  [v5 setKeyTimes:v18];
  [v5 setValues:v20];
  v34 = [(UIView *)self->_rightImageView layer];
  [v34 addAnimation:v5 forKey:0];

  [v7 setKeyTimes:v18];
  [v7 setValues:v21];
  v35 = [(UIView *)self->_middleImageView layer];
  [v35 addAnimation:v7 forKey:0];
}

- (double)_bounceValueForFraction:(double)a3
{
  result = 0.0;
  if (a3 > 0.0 && a3 < 1.0)
  {
    v6 = a3 + a3;
    v7 = cos((a3 + a3 + -0.145) * 11.0);
    return v7 * exp((v6 + 0.4) * -3.0) * 120.0;
  }

  return result;
}

@end