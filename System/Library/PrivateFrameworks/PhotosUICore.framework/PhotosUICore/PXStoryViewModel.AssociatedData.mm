@interface PXStoryViewModel.AssociatedData
- (_TtCE12PhotosUICoreCSo16PXStoryViewModelP33_1B50DC52D4D0467ED56FE78BF1017C3914AssociatedData)init;
- (_TtCE12PhotosUICoreCSo16PXStoryViewModelP33_F04B6F2764CD012E39AF3DBCA957C80F14AssociatedData)init;
@end

@implementation PXStoryViewModel.AssociatedData

- (_TtCE12PhotosUICoreCSo16PXStoryViewModelP33_1B50DC52D4D0467ED56FE78BF1017C3914AssociatedData)init
{
  *(&self->super.isa + OBJC_IVAR____TtCE12PhotosUICoreCSo16PXStoryViewModelP33_1B50DC52D4D0467ED56FE78BF1017C3914AssociatedData_isFirstActivation) = 1;
  v3 = OBJC_IVAR____TtCE12PhotosUICoreCSo16PXStoryViewModelP33_1B50DC52D4D0467ED56FE78BF1017C3914AssociatedData_lastIsActiveChangeDate;
  v4 = sub_1A5241144();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = _s14AssociatedDataCMa_3(0);
  return [(PXStoryViewModel.AssociatedData *)&v6 init];
}

- (_TtCE12PhotosUICoreCSo16PXStoryViewModelP33_F04B6F2764CD012E39AF3DBCA957C80F14AssociatedData)init
{
  *(&self->super.isa + OBJC_IVAR____TtCE12PhotosUICoreCSo16PXStoryViewModelP33_F04B6F2764CD012E39AF3DBCA957C80F14AssociatedData_actionContext) = 0;
  v3.receiver = self;
  v3.super_class = _s14AssociatedDataCMa_9();
  return [(PXStoryViewModel.AssociatedData *)&v3 init];
}

@end