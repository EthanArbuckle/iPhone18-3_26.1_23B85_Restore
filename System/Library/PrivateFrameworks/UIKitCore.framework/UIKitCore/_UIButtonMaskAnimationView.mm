@interface _UIButtonMaskAnimationView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGRect)_frameForLine;
- (UIColor)borderColor;
- (_UIButtonMaskAnimationView)init;
- (double)borderWidth;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)layoutSubviews;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
@end

@implementation _UIButtonMaskAnimationView

- (double)borderWidth
{
  layer = [(UIView *)self layer];
  [layer borderWidth];
  v4 = v3;

  return v4;
}

- (CGRect)_frameForLine
{
  v4 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  hardEdge = [(_UIButtonMaskAnimationView *)self hardEdge];
  layer = [(UIView *)self layer];
  [layer cornerRadius];
  v10 = v9;

  if (hardEdge)
  {
    [(_UIButtonMaskAnimationView *)self borderWidth];
    v12 = v11;
    if (hardEdge <= 3)
    {
      if (hardEdge != 1)
      {
        if (hardEdge != 2)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      goto LABEL_9;
    }

    if (hardEdge == 8)
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

    if (hardEdge == 4)
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
  layer = [(UIView *)self layer];
  borderColor = [layer borderColor];

  if (borderColor)
  {
    layer2 = [(UIView *)self layer];
    v6 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [layer2 borderColor]);
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

- (void)setBorderWidth:(double)width
{
  layer = [(UIView *)self layer];
  [layer setBorderWidth:width];

  [(UIView *)self setNeedsLayout];
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  layer = [(UIView *)self layer];
  v5 = colorCopy;
  [layer setBorderColor:{objc_msgSend(colorCopy, "CGColor")}];

  [(UIView *)self->_hardEdgeLine setBackgroundColor:colorCopy];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _UIButtonMaskAnimationView;
  if ([(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"borderColor"];
  }

  return v5;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyPath = [stopCopy keyPath];
    v6 = [keyPath isEqualToString:@"opacity"];

    if (v6)
    {
      layer = [(UIView *)self layer];
      [layer removeAnimationForKey:@"borderWidth"];
    }
  }

  [(_UIButtonMaskAnimationViewDelegate *)self->_delegate _updateMaskState];
}

@end