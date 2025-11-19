@interface _SUICRingLayer
- (UIColor)ringColor;
- (_SUICRingLayer)init;
- (void)setCustomLineWidth:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setRingColor:(id)a3;
@end

@implementation _SUICRingLayer

- (_SUICRingLayer)init
{
  v7.receiver = self;
  v7.super_class = _SUICRingLayer;
  v2 = [(_SUICRingLayer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(_SUICRingLayer *)v2 setCustomLineWidth:0.0];
    v4 = [MEMORY[0x1E69DC888] clearColor];
    -[_SUICRingLayer setFillColor:](v3, "setFillColor:", [v4 CGColor]);

    v5 = [MEMORY[0x1E69DC888] blackColor];
    [(_SUICRingLayer *)v3 setRingColor:v5];

    [(_SUICRingLayer *)v3 setStrokeEnd:1.0];
    [(_SUICRingLayer *)v3 setLineCap:*MEMORY[0x1E6979E98]];
  }

  return v3;
}

- (void)setRingColor:(id)a3
{
  v5 = [a3 copy];
  v4 = v5;
  -[_SUICRingLayer setStrokeColor:](self, "setStrokeColor:", [v5 CGColor]);
}

- (UIColor)ringColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithCGColor:{-[_SUICRingLayer strokeColor](self, "strokeColor")}];
  v3 = [v2 copy];

  return v3;
}

- (void)setCustomLineWidth:(double)a3
{
  if (self->_customLineWidth != a3)
  {
    self->_customLineWidth = a3;
    [(_SUICRingLayer *)self setNeedsLayout];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17.receiver = self;
  v17.super_class = _SUICRingLayer;
  [(_SUICRingLayer *)&v17 setFrame:?];
  [(_SUICRingLayer *)self customLineWidth];
  if (v8 <= 0.0)
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v10 = CGRectGetWidth(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v9 = round((v10 + CGRectGetHeight(v19)) * 0.5 * 0.05);
  }

  else
  {
    [(_SUICRingLayer *)self customLineWidth];
  }

  [(_SUICRingLayer *)self setLineWidth:v9];
  UIRectGetCenter();
  v12 = v11;
  v14 = v13;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v15 = CGRectGetHeight(v20) * 0.5;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v16 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:v12 startAngle:v14 endAngle:(v15 + CGRectGetWidth(v21) * 0.5) * 0.5 clockwise:{4.71238898, 10.9955743}];
  -[_SUICRingLayer setPath:](self, "setPath:", [v16 CGPath]);
}

@end