@interface TVButton
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI8TVButton)initWithFrame:(CGRect)a3;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TVButton

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = TVButton.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  TVButton.layoutSubviews()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  TVButton.traitCollectionDidChange(_:)(v9);
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  sub_20B51C88C(0, &qword_27C768D70);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_20B9DE930(0, 0, 0, sub_20B9E1078, v4);

  return v5;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu);
  if (v5)
  {
    v6 = self;
    v7 = sub_20B584050(v5);
    v5(v7);

    sub_20B583ECC(v5);
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_20B51C88C(0, &qword_27C764588);
  sub_20B9E0F28();
  v7 = sub_20C13CF74();
  v8 = a4;
  v11 = self;
  if ((sub_20B9E0E84(v7) & 1) != 0 && (v9 = *(&v11->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI8TVButton_controlState), (v9 & 8) != 0))
  {

    sub_20B9DEC5C(v9 | 1, 1);
  }

  else
  {
    v10 = sub_20C13CF64();

    v12.receiver = v11;
    v12.super_class = ObjectType;
    [(TVButton *)&v12 pressesBegan:v10 withEvent:v8];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_20B51C88C(0, &qword_27C764588);
  sub_20B9E0F28();
  v7 = sub_20C13CF74();
  v8 = a4;
  v10 = self;
  if (sub_20B9E0E84(v7))
  {

    sub_20B9DEC5C(*(&v10->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI8TVButton_controlState) & 0xFFFFFFFFFFFFFFFELL, 1);
  }

  else
  {
    v9 = sub_20C13CF64();

    v11.receiver = v10;
    v11.super_class = ObjectType;
    [(TVButton *)&v11 pressesCancelled:v9 withEvent:v8];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_20B51C88C(0, &qword_27C764588);
  sub_20B9E0F28();
  v7 = sub_20C13CF74();
  v8 = a4;
  v10 = self;
  if (sub_20B9E0E84(v7))
  {

    sub_20B9DEC5C(*(&v10->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI8TVButton_controlState) & 0xFFFFFFFFFFFFFFFELL, 1);
    [(TVButton *)v10 sendActionsForControlEvents:0x2000];
  }

  else
  {
    v9 = sub_20C13CF64();

    v11.receiver = v10;
    v11.super_class = ObjectType;
    [(TVButton *)&v11 pressesEnded:v9 withEvent:v8];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  TVButton.didUpdateFocus(in:with:)(v6, v7);
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4
{
  v4 = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) _preferredConfigurationForFocusAnimation_inContext_];

  return v4;
}

- (_TtC9SeymourUI8TVButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end