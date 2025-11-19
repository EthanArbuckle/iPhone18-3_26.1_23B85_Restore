@interface PhotosPagingSecondaryToolbarController
- (_TtC12PhotosUICore38PhotosPagingSecondaryToolbarController)initWithContainerView:(id)a3 styleGuideProvider:(id)a4;
- (void)isShowingGradientDidChange;
- (void)pageControlValueDidChange;
@end

@implementation PhotosPagingSecondaryToolbarController

- (_TtC12PhotosUICore38PhotosPagingSecondaryToolbarController)initWithContainerView:(id)a3 styleGuideProvider:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  return sub_1A43FFD2C(v5, a4);
}

- (void)isShowingGradientDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PhotosPagingSecondaryToolbarController();
  v2 = v7.receiver;
  v3 = [(PXSecondaryToolbarController *)&v7 isShowingGradientDidChange];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x80))(v3))
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v2, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)pageControlValueDidChange
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0x80);
  v6 = self;
  if (v2())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v6, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

@end