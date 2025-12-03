@interface CloseButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC10PodcastsUIP33_7356E91B5F9CFCB46676D7EB93CF2B4411CloseButton)initWithCoder:(id)coder;
- (_TtC10PodcastsUIP33_7356E91B5F9CFCB46676D7EB93CF2B4411CloseButton)initWithFrame:(CGRect)frame;
@end

@implementation CloseButton

- (_TtC10PodcastsUIP33_7356E91B5F9CFCB46676D7EB93CF2B4411CloseButton)initWithCoder:(id)coder
{
  result = sub_21B4CA488();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(CloseButton *)selfCopy bounds];
  v14.origin.x = UIEdgeInsetsInsetRect(v7, v8, v9, v10, *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC10PodcastsUIP33_7356E91B5F9CFCB46676D7EB93CF2B4411CloseButton_touchInsets), *(&selfCopy->super.super.super.super._responderFlags + OBJC_IVAR____TtC10PodcastsUIP33_7356E91B5F9CFCB46676D7EB93CF2B4411CloseButton_touchInsets));
  v13.x = x;
  v13.y = y;
  v11 = CGRectContainsPoint(v14, v13);

  return v11;
}

- (_TtC10PodcastsUIP33_7356E91B5F9CFCB46676D7EB93CF2B4411CloseButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end