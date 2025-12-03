@interface FooterViewCoordinator
- (_TtC12PhotosUICore21FooterViewCoordinator)init;
- (void)photosGlobalFooterView:(id)view presentViewController:(id)controller;
- (void)photosGlobalFooterViewDidChangeHeight:(id)height;
@end

@implementation FooterViewCoordinator

- (void)photosGlobalFooterView:(id)view presentViewController:(id)controller
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A46A7F68(controller);

  swift_unknownObjectRelease();
}

- (void)photosGlobalFooterViewDidChangeHeight:(id)height
{
  heightCopy = height;
  selfCopy = self;
  sub_1A46A80F0(heightCopy);
}

- (_TtC12PhotosUICore21FooterViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end