@interface _UITabAccessoryContainer
- (_TtC5UIKit24_UITabAccessoryContainer)initWithCoder:(id)a3;
- (_TtC5UIKit24_UITabAccessoryContainer)initWithFrame:(CGRect)a3;
@end

@implementation _UITabAccessoryContainer

- (_TtC5UIKit24_UITabAccessoryContainer)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_pocketInteraction;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle_];
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_TtC5UIKit24_UITabAccessoryContainer)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end