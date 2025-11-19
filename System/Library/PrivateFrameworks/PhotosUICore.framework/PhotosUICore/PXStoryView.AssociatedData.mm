@interface PXStoryView.AssociatedData
- (_TtCE12PhotosUICoreCSo11PXStoryViewP33_1B50DC52D4D0467ED56FE78BF1017C3914AssociatedData)init;
@end

@implementation PXStoryView.AssociatedData

- (_TtCE12PhotosUICoreCSo11PXStoryViewP33_1B50DC52D4D0467ED56FE78BF1017C3914AssociatedData)init
{
  *(&self->super.isa + OBJC_IVAR____TtCE12PhotosUICoreCSo11PXStoryViewP33_1B50DC52D4D0467ED56FE78BF1017C3914AssociatedData_isActive) = 0;
  *(&self->super.isa + OBJC_IVAR____TtCE12PhotosUICoreCSo11PXStoryViewP33_1B50DC52D4D0467ED56FE78BF1017C3914AssociatedData_isVisible) = 1;
  v2 = self + OBJC_IVAR____TtCE12PhotosUICoreCSo11PXStoryViewP33_1B50DC52D4D0467ED56FE78BF1017C3914AssociatedData_contentFrameOverride;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  *(&self->super.isa + OBJC_IVAR____TtCE12PhotosUICoreCSo11PXStoryViewP33_1B50DC52D4D0467ED56FE78BF1017C3914AssociatedData_itemPlacementContext) = 0;
  v4.receiver = self;
  v4.super_class = _s14AssociatedDataCMa_4();
  return [(PXStoryView.AssociatedData *)&v4 init];
}

@end