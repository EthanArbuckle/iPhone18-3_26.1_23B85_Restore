@interface ValueDrivingScrollLayout
- (_TtC12PhotosUICore24ValueDrivingScrollLayout)init;
- (_TtC12PhotosUICore24ValueDrivingScrollLayout)initWithContentLayout:(id)a3;
- (void)isScrollingDidChange;
- (void)scrollLayoutDidScroll:(id)a3;
@end

@implementation ValueDrivingScrollLayout

- (void)scrollLayoutDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
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

- (_TtC12PhotosUICore24ValueDrivingScrollLayout)initWithContentLayout:(id)a3
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