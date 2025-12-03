@interface GymKitConnectingView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI20GymKitConnectingView)initWithCoder:(id)coder;
@end

@implementation GymKitConnectingView

- (_TtC9SeymourUI20GymKitConnectingView)initWithCoder:(id)coder
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtC9SeymourUI20GymKitConnectingView_spriteView;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI20GymKitConnectingView_spriteView);
  selfCopy = self;
  [v4 intrinsicContentSize];
  v7 = v6;
  [*(&self->super.super.super.isa + v3) intrinsicContentSize];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end