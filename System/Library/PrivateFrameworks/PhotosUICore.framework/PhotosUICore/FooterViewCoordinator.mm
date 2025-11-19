@interface FooterViewCoordinator
- (_TtC12PhotosUICore21FooterViewCoordinator)init;
- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4;
- (void)photosGlobalFooterViewDidChangeHeight:(id)a3;
@end

@implementation FooterViewCoordinator

- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1A46A7F68(a4);

  swift_unknownObjectRelease();
}

- (void)photosGlobalFooterViewDidChangeHeight:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A46A80F0(v4);
}

- (_TtC12PhotosUICore21FooterViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end