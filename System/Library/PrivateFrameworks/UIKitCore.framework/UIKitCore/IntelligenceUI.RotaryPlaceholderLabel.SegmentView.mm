@interface IntelligenceUI.RotaryPlaceholderLabel.SegmentView
- (_TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F11SegmentView)initWithCoder:(id)a3;
- (_TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F11SegmentView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)a3;
@end

@implementation IntelligenceUI.RotaryPlaceholderLabel.SegmentView

- (_TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F11SegmentView)initWithCoder:(id)a3
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = _s22RotaryPlaceholderLabelC11SegmentViewCMa(0);
  v2 = v7.receiver;
  [(UIView *)&v7 didMoveToWindow];
  v3 = [v2 layer];
  v4 = [v2 traitCollection];
  [v4 displayScale];
  v6 = v5;

  [v3 setContentsScale_];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = self;
  v7 = UIGraphicsGetCurrentContext();
  if (v7)
  {
    v8 = v7;
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    CGContextClearRect(v7, v12);
    v9 = *(&v10->super.super.super.isa + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F11SegmentView_fragment);
    [v9 drawAtPoint:v8 inContext:{x, y}];
  }
}

- (_TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F11SegmentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end