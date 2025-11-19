@interface ScrollEdgeEffectView.TouchBlocker
- (_TtCC5UIKit20ScrollEdgeEffectViewP33_A8A62288E15893CDC14B9FB558CFED1E12TouchBlocker)initWithCoder:(id)a3;
- (_TtCC5UIKit20ScrollEdgeEffectViewP33_A8A62288E15893CDC14B9FB558CFED1E12TouchBlocker)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation ScrollEdgeEffectView.TouchBlocker

- (_TtCC5UIKit20ScrollEdgeEffectViewP33_A8A62288E15893CDC14B9FB558CFED1E12TouchBlocker)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v7 = [(UIView *)&v10 initWithFrame:x, y, width, height];
  v8 = [(UIView *)v7 layer];
  [(CALayer *)v8 setHitTestsAsOpaque:1];

  return v7;
}

- (_TtCC5UIKit20ScrollEdgeEffectViewP33_A8A62288E15893CDC14B9FB558CFED1E12TouchBlocker)initWithCoder:(id)a3
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = self;
  if (![(UIView *)v7 pointInside:a4 withEvent:x, y])
  {

    v7 = 0;
  }

  return v7;
}

@end