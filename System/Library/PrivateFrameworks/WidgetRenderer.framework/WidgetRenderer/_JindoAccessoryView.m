@interface _JindoAccessoryView
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC14WidgetRenderer19_JindoAccessoryView)initWithCoder:(id)a3;
- (_TtC14WidgetRenderer19_JindoAccessoryView)initWithFrame:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _JindoAccessoryView

- (_TtC14WidgetRenderer19_JindoAccessoryView)initWithCoder:(id)a3
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for _JindoAccessoryView();
  v7 = v10.receiver;
  [(_JindoAccessoryView *)&v10 setFrame:x, y, width, height];
  v8 = [*&v7[OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController] view];
  if (v8)
  {
    v9 = v8;
    [v7 bounds];
    [v9 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_1DAE5CEC8();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC14WidgetRenderer19_JindoAccessoryView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end