@interface _UIActionSliderKnob
- (_UIActionSliderKnob)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation _UIActionSliderKnob

- (_UIActionSliderKnob)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UIActionSliderKnob;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor whiteColor];
    knobColor = v3->_knobColor;
    v3->_knobColor = v4;
  }

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  UIGraphicsPushContext(v5);
  v6 = [(_UIActionSliderKnob *)self knobColor];
  v8 = v6;
  if (v6)
  {
    CGContextSetFillColorWithColor(v5, [v6 CGColor]);
  }

  else
  {
    CGContextSetRGBFillColor(v5, 1.0, 1.0, 1.0, 1.0);
  }

  [(UIView *)self bounds];
  CGContextFillEllipseInRect(v5, v10);
  v7 = GetContextStack(0);
  PopContextFromStack(v7);
}

@end