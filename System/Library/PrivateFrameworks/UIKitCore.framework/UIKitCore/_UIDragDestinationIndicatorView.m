@interface _UIDragDestinationIndicatorView
- (_UIDragDestinationIndicatorView)initWithSourceListStyle:(BOOL)a3;
- (void)drawRect:(CGRect)a3;
- (void)positionHorizontallyCenteredInFrame:(CGRect)a3;
- (void)positionOnCellFrame:(CGRect)a3 above:(BOOL)a4;
- (void)positionVerticallyCenteredInFrame:(CGRect)a3;
@end

@implementation _UIDragDestinationIndicatorView

- (_UIDragDestinationIndicatorView)initWithSourceListStyle:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = _UIDragDestinationIndicatorView;
  v4 = [(UIView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_isSourceList = a3;
    v4->_scaleFactor = 1.0;
    v6 = +[UIColor clearColor];
    [(UIView *)v5 setBackgroundColor:v6];

    [(UIView *)v5 setContentMode:3];
  }

  return v5;
}

- (void)positionVerticallyCenteredInFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_UIDragDestinationIndicatorView *)self scaleFactor];
  v9 = 2.0;
  if (self->_isSourceList)
  {
    v9 = 10.0;
  }

  v10 = v8 * v9;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v11 = CGRectGetMidY(v13) + v10 * -0.5;

  [(UIView *)self setFrame:x, v11, width, v10];
}

- (void)positionOnCellFrame:(CGRect)a3 above:(BOOL)a4
{
  width = a3.size.width;
  x = a3.origin.x;
  if (a4)
  {
    MinY = CGRectGetMinY(a3);
  }

  else
  {
    MinY = CGRectGetMaxY(a3);
  }

  [(_UIDragDestinationIndicatorView *)self positionVerticallyCenteredInFrame:x, MinY, width, 0.0];
}

- (void)positionHorizontallyCenteredInFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_UIDragDestinationIndicatorView *)self scaleFactor];
  v9 = v8 + v8;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v10 = CGRectGetMidX(v12) + v9 * -0.5;

  [(UIView *)self setFrame:v10, y, v9, height];
}

- (void)drawRect:(CGRect)a3
{
  [(_UIDragDestinationIndicatorView *)self scaleFactor:a3.origin.x];
  v5 = v4;
  [(UIView *)self bounds];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v10 = CGRectGetHeight(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  if (v10 <= CGRectGetWidth(v25))
  {
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    MinX = CGRectGetMinX(v30);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    MidY = CGRectGetMidY(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    MaxX = CGRectGetMaxX(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    MaxY = CGRectGetMidY(v33);
  }

  else
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MinX = CGRectGetMidX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MidY = CGRectGetMinY(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    MaxX = CGRectGetMidX(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    MaxY = CGRectGetMaxY(v29);
  }

  v15 = MaxY;
  if (self->_isSourceList)
  {
    v16 = MaxX + v5 * -8.0;
    v17 = v5 + v5;
    if ((*(&self->super._viewFlags + 2) & 0x400000) == 0)
    {
      v16 = v5 + v5 + MinX;
    }

    v18 = MidY + v5 * -3.0;
    v19 = v5 * 6.0;
    v20 = [UIBezierPath bezierPathWithOvalInRect:v16, v18, v19, v19];
    if ((*(&self->super._viewFlags + 2) & 0x400000) != 0)
    {
      MaxX = MaxX - (v19 + v17);
    }

    else
    {
      MinX = v19 + v17 + MinX;
    }
  }

  else
  {
    v20 = +[UIBezierPath bezierPath];
    v17 = v5 + v5;
  }

  v22 = v20;
  [v20 moveToPoint:{MinX, MidY}];
  [v22 addLineToPoint:{MaxX, v15}];
  v21 = [(UIView *)self tintColor];
  [v21 set];

  [v22 setLineWidth:v17];
  [v22 stroke];
}

@end