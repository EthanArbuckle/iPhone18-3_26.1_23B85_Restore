@interface ValueDrivingScrollLayout
- (_TtC12PhotosUICore24ValueDrivingScrollLayout)init;
- (_TtC12PhotosUICore24ValueDrivingScrollLayout)initWithContentLayout:(id)layout;
- (void)isScrollingDidChange;
- (void)scrollLayoutDidScroll:(id)scroll;
@end

@implementation ValueDrivingScrollLayout

- (void)scrollLayoutDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1A43F22E0();
}

- (void)isScrollingDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ValueDrivingScrollLayout *)&v3 isScrollingDidChange];
  sub_1A43F18F8();
}

- (_TtC12PhotosUICore24ValueDrivingScrollLayout)initWithContentLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12PhotosUICore24ValueDrivingScrollLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end