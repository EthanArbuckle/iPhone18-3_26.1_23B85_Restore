@interface _JindoAccessoryView
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC14WidgetRenderer19_JindoAccessoryView)initWithCoder:(id)coder;
- (_TtC14WidgetRenderer19_JindoAccessoryView)initWithFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
@end

@implementation _JindoAccessoryView

- (_TtC14WidgetRenderer19_JindoAccessoryView)initWithCoder:(id)coder
{
  result = sub_1DAED273C();
  __break(1u);
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for _JindoAccessoryView();
  [(_JindoAccessoryView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for _JindoAccessoryView();
  v7 = v10.receiver;
  [(_JindoAccessoryView *)&v10 setFrame:x, y, width, height];
  view = [*&v7[OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController] view];
  if (view)
  {
    v9 = view;
    [v7 bounds];
    [v9 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_1DAE5CEC8();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC14WidgetRenderer19_JindoAccessoryView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end