@interface ViewControllerMatchingView
- (_TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView)init;
- (_TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView)initWithCoder:(id)coder;
- (_TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView)initWithFrame:(CGRect)frame;
@end

@implementation ViewControllerMatchingView

- (_TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIView) init];
  v9.receiver = self;
  v9.super_class = ObjectType;
  v5 = [(UIView *)&v9 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v6 = *(&v5->super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView);
  v7 = v5;
  [(UIView *)v7 addSubview:v6];
  [(UIView *)v7 setClipsToBounds:1];

  return v7;
}

- (_TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UIView) init];
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end