@interface SiriSharedUIResultViewPanFluidDismissalManager
- (void)_hyperInteractorApplyPresentationPoint:(id)point;
@end

@implementation SiriSharedUIResultViewPanFluidDismissalManager

- (void)_hyperInteractorApplyPresentationPoint:(id)point
{
  v4 = self + OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 16);
    selfCopy = self;
    v6();
    swift_unknownObjectRelease();
  }
}

@end