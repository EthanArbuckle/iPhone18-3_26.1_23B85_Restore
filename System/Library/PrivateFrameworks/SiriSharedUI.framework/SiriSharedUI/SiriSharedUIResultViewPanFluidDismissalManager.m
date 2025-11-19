@interface SiriSharedUIResultViewPanFluidDismissalManager
- (void)_hyperInteractorApplyPresentationPoint:(id)a3;
@end

@implementation SiriSharedUIResultViewPanFluidDismissalManager

- (void)_hyperInteractorApplyPresentationPoint:(id)a3
{
  v4 = self + OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 16);
    v7 = self;
    v6();
    swift_unknownObjectRelease();
  }
}

@end