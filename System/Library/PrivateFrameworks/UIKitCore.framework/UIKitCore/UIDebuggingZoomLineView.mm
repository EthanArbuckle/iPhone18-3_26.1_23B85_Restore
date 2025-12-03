@interface UIDebuggingZoomLineView
- (CGPoint)end;
- (CGPoint)start;
- (CGRect)rect;
- (UIDebuggingZoomLineView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)updateLabelFrame;
@end

@implementation UIDebuggingZoomLineView

- (void)updateLabelFrame
{
  direction = [(UIDebuggingZoomLineView *)self direction];
  if (direction == 1)
  {
    [(UIDebuggingZoomLineView *)self start];
    v21 = v20;
    [(UIDebuggingZoomLineView *)self end];
    v23 = v22;
    [(UIDebuggingZoomLineView *)self start];
    v25 = v21 + (v23 - v24) * 0.5 + -25.0;
    [(UIDebuggingZoomLineView *)self start];
    v27 = v26 + 2.0;
    if (v25 < 0.0)
    {
      v25 = 2.0;
    }

    if (v27 >= 0.0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 2.0;
    }

    lineLabel = [(UIDebuggingZoomLineView *)self lineLabel];
    [lineLabel setFrame:{v25, v28, 50.0, 20.0}];

    v15 = MEMORY[0x1E696AEC0];
    [(UIDebuggingZoomLineView *)self end];
    v31 = v30;
    [(UIDebuggingZoomLineView *)self start];
    v19 = v31 - v32;
  }

  else
  {
    if (direction)
    {
      return;
    }

    [(UIDebuggingZoomLineView *)self start];
    v5 = v4 + 2.0;
    [(UIDebuggingZoomLineView *)self start];
    v7 = v6;
    [(UIDebuggingZoomLineView *)self end];
    v9 = v8;
    [(UIDebuggingZoomLineView *)self start];
    v11 = v7 + (v9 - v10) * 0.5 + -10.0;
    if (v5 >= 0.0)
    {
      v12 = v5;
    }

    else
    {
      v12 = 2.0;
    }

    if (v11 >= 0.0)
    {
      v13 = v11;
    }

    else
    {
      v13 = 2.0;
    }

    lineLabel2 = [(UIDebuggingZoomLineView *)self lineLabel];
    [lineLabel2 setFrame:{v12, v13, 50.0, 20.0}];

    v15 = MEMORY[0x1E696AEC0];
    [(UIDebuggingZoomLineView *)self end];
    v17 = v16;
    [(UIDebuggingZoomLineView *)self start];
    v19 = v17 - v18;
  }

  v34 = [v15 stringWithFormat:@"%.1f", *&v19];
  lineLabel3 = [(UIDebuggingZoomLineView *)self lineLabel];
  [lineLabel3 setText:v34];
}

- (UIDebuggingZoomLineView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = UIDebuggingZoomLineView;
  v3 = [(UIView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];

    [(UIView *)v3 setOpaque:0];
    v5 = objc_alloc_init(UILabel);
    [(UIDebuggingZoomLineView *)v3 setLineLabel:v5];

    v6 = +[UIColor redColor];
    [(UILabel *)v3->_lineLabel setTextColor:v6];

    [(UILabel *)v3->_lineLabel setTextAlignment:0];
    lineLabel = v3->_lineLabel;
    v8 = [off_1E70ECC18 systemFontOfSize:9.0];
    [(UILabel *)lineLabel setFont:v8];

    [(UIView *)v3 addSubview:v3->_lineLabel];
    [(UIDebuggingZoomLineView *)v3 setRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(UIDebuggingZoomLineView *)self updateLabelFrame];
  v8 = +[UIColor redColor];
  [v8 set];

  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGContextClearRect(v10, v22);
  CGContextSetLineWidth(v10, 0.5);
  [(UIDebuggingZoomLineView *)self start];
  v12 = v11;
  [(UIDebuggingZoomLineView *)self start];
  CGContextMoveToPoint(v10, v12, v13);
  [(UIDebuggingZoomLineView *)self end];
  v15 = v14;
  [(UIDebuggingZoomLineView *)self end];
  CGContextAddLineToPoint(v10, v15, v16);
  CGContextStrokePath(v10);
  [(UIDebuggingZoomLineView *)self rect];

  CGContextStrokeRect(v10, *&v17);
}

- (CGPoint)start
{
  x = self->_start.x;
  y = self->_start.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)end
{
  x = self->_end.x;
  y = self->_end.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end