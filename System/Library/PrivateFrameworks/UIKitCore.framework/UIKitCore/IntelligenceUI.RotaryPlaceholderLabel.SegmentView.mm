@interface IntelligenceUI.RotaryPlaceholderLabel.SegmentView
- (_TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F11SegmentView)initWithCoder:(id)coder;
- (_TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F11SegmentView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)rect;
@end

@implementation IntelligenceUI.RotaryPlaceholderLabel.SegmentView

- (_TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F11SegmentView)initWithCoder:(id)coder
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
  layer = [v2 layer];
  traitCollection = [v2 traitCollection];
  [traitCollection displayScale];
  v6 = v5;

  [layer setContentsScale_];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v7 = UIGraphicsGetCurrentContext();
  if (v7)
  {
    v8 = v7;
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    CGContextClearRect(v7, v12);
    v9 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F11SegmentView_fragment);
    [v9 drawAtPoint:v8 inContext:{x, y}];
  }
}

- (_TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F11SegmentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end