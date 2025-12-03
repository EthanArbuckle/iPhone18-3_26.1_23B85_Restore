@interface TouchPassThroughView
- (_TtC14WidgetRenderer20TouchPassThroughView)init;
- (_TtC14WidgetRenderer20TouchPassThroughView)initWithCoder:(id)coder;
- (_TtC14WidgetRenderer20TouchPassThroughView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation TouchPassThroughView

- (_TtC14WidgetRenderer20TouchPassThroughView)init
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TouchPassThroughView();
  v2 = [(TouchPassThroughView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v3 = objc_opt_self();
  v4 = v2;
  clearColor = [v3 clearColor];
  [(TouchPassThroughView *)v4 setBackgroundColor:clearColor];

  [(TouchPassThroughView *)v4 setOpaque:0];
  return v4;
}

- (_TtC14WidgetRenderer20TouchPassThroughView)initWithCoder:(id)coder
{
  result = sub_1DAED273C();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for TouchPassThroughView();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(TouchPassThroughView *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_1DAD674D4(0, &unk_1EE0054A0, 0x1E69DD250);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = sub_1DAED228C();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC14WidgetRenderer20TouchPassThroughView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end