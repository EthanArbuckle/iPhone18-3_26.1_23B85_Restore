@interface _UIButtonMaskAnimationView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGRect)_frameForLine;
- (UIColor)borderColor;
- (_UIButtonMaskAnimationView)init;
- (double)borderWidth;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)layoutSubviews;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
@end

@implementation _UIButtonMaskAnimationView

- (double)borderWidth
{
  v2 = [(UIView *)self layer];
  [v2 borderWidth];
  v4 = v3;

  return v4;
}

- (CGRect)_frameForLine
{
  v4 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  v7 = [(_UIButtonMaskAnimationView *)self hardEdge];
  v8 = [(UIView *)self layer];
  [v8 cornerRadius];
  v10 = v9;

  if (v7)
  {
    [(_UIButtonMaskAnimationView *)self borderWidth];
    v12 = v11;
    if (v7 <= 3)
    {
      if (v7 != 1)
      {
        if (v7 != 2)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      goto LABEL_9;
    }

    if (v7 == 8)
    {
      [(UIView *)self bounds];
      v10 = v15 - v12 - v10;
LABEL_11:
      [(UIView *)self bounds];
      v5 = v16 - (v12 + v12);
      v6 = v12;
      v3 = v12;
      v4 = v10;
      goto LABEL_12;
    }

    if (v7 == 4)
    {
      [(UIView *)self bounds];
      v10 = v13 - v12 - v10;
LABEL_9:
      [(UIView *)self bounds];
      v6 = v14 - (v12 + v12);
      v5 = v12;
      v3 = v10;
      v4 = v12;
    }
  }

LABEL_12:
  v17 = v4;
  v18 = v3;
  v19 = v6;
  v20 = v5;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (UIColor)borderColor
{
  v3 = [(UIView *)self layer];
  v4 = [v3 borderColor];

  if (v4)
  {
    v5 = [(UIView *)self layer];
    v6 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v5 borderColor]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _UIButtonMaskAnimationView;
  [(UIView *)&v4 layoutSubviews];
  hardEdgeLine = self->_hardEdgeLine;
  [(_UIButtonMaskAnimationView *)self _frameForLine];
  [(UIView *)hardEdgeLine setFrame:?];
}

- (_UIButtonMaskAnimationView)init
{
  v7.receiver = self;
  v7.super_class = _UIButtonMaskAnimationView;
  v2 = [(UIView *)&v7 init];
  if (v2)
  {
    v3 = [UIView alloc];
    v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    hardEdgeLine = v2->_hardEdgeLine;
    v2->_hardEdgeLine = v4;

    [(UIView *)v2 addSubview:v2->_hardEdgeLine];
  }

  return v2;
}

- (void)setBorderWidth:(double)a3
{
  v5 = [(UIView *)self layer];
  [v5 setBorderWidth:a3];

  [(UIView *)self setNeedsLayout];
}

- (void)setBorderColor:(id)a3
{
  v6 = a3;
  v4 = [(UIView *)self layer];
  v5 = v6;
  [v4 setBorderColor:{objc_msgSend(v6, "CGColor")}];

  [(UIView *)self->_hardEdgeLine setBackgroundColor:v6];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIButtonMaskAnimationView;
  if ([(UIView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"borderColor"];
  }

  return v5;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v8 keyPath];
    v6 = [v5 isEqualToString:@"opacity"];

    if (v6)
    {
      v7 = [(UIView *)self layer];
      [v7 removeAnimationForKey:@"borderWidth"];
    }
  }

  [(_UIButtonMaskAnimationViewDelegate *)self->_delegate _updateMaskState];
}

@end