@interface CloseButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC10PodcastsUIP33_7356E91B5F9CFCB46676D7EB93CF2B4411CloseButton)initWithCoder:(id)a3;
- (_TtC10PodcastsUIP33_7356E91B5F9CFCB46676D7EB93CF2B4411CloseButton)initWithFrame:(CGRect)a3;
@end

@implementation CloseButton

- (_TtC10PodcastsUIP33_7356E91B5F9CFCB46676D7EB93CF2B4411CloseButton)initWithCoder:(id)a3
{
  result = sub_21B4CA488();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(CloseButton *)v6 bounds];
  v14.origin.x = UIEdgeInsetsInsetRect(v7, v8, v9, v10, *(&v6->super.super.super.super.super.isa + OBJC_IVAR____TtC10PodcastsUIP33_7356E91B5F9CFCB46676D7EB93CF2B4411CloseButton_touchInsets), *(&v6->super.super.super.super._responderFlags + OBJC_IVAR____TtC10PodcastsUIP33_7356E91B5F9CFCB46676D7EB93CF2B4411CloseButton_touchInsets));
  v13.x = x;
  v13.y = y;
  v11 = CGRectContainsPoint(v14, v13);

  return v11;
}

- (_TtC10PodcastsUIP33_7356E91B5F9CFCB46676D7EB93CF2B4411CloseButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end