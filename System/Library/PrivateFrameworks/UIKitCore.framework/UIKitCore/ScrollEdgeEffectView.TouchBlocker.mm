@interface ScrollEdgeEffectView.TouchBlocker
- (_TtCC5UIKit20ScrollEdgeEffectViewP33_A8A62288E15893CDC14B9FB558CFED1E12TouchBlocker)initWithCoder:(id)coder;
- (_TtCC5UIKit20ScrollEdgeEffectViewP33_A8A62288E15893CDC14B9FB558CFED1E12TouchBlocker)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation ScrollEdgeEffectView.TouchBlocker

- (_TtCC5UIKit20ScrollEdgeEffectViewP33_A8A62288E15893CDC14B9FB558CFED1E12TouchBlocker)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  height = [(UIView *)&v10 initWithFrame:x, y, width, height];
  layer = [(UIView *)height layer];
  [(CALayer *)layer setHitTestsAsOpaque:1];

  return height;
}

- (_TtCC5UIKit20ScrollEdgeEffectViewP33_A8A62288E15893CDC14B9FB558CFED1E12TouchBlocker)initWithCoder:(id)coder
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  selfCopy = self;
  if (![(UIView *)selfCopy pointInside:event withEvent:x, y])
  {

    selfCopy = 0;
  }

  return selfCopy;
}

@end