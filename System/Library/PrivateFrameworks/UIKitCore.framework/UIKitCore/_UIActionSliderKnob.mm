@interface _UIActionSliderKnob
- (_UIActionSliderKnob)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation _UIActionSliderKnob

- (_UIActionSliderKnob)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UIActionSliderKnob;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor whiteColor];
    knobColor = v3->_knobColor;
    v3->_knobColor = v4;
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
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
  knobColor = [(_UIActionSliderKnob *)self knobColor];
  v8 = knobColor;
  if (knobColor)
  {
    CGContextSetFillColorWithColor(v5, [knobColor CGColor]);
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