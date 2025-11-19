@interface NCNotificationViewController(SBPPTRunnerAdditions)
- (id)_dismissControlOfPresentedLongLook;
- (void)_recapDismissLongLookViaPullDown;
- (void)_recapDismissLongLookViaTapOutside;
- (void)_recapSwipePresentLongLook;
- (void)setPPTLongLookDidDismissBlock:()SBPPTRunnerAdditions;
- (void)setPPTLongLookDidPresentBlock:()SBPPTRunnerAdditions;
- (void)setPPTLongLookWillDismissBlock:()SBPPTRunnerAdditions;
- (void)setPPTLongLookWillPresentBlock:()SBPPTRunnerAdditions;
@end

@implementation NCNotificationViewController(SBPPTRunnerAdditions)

- (void)setPPTLongLookWillPresentBlock:()SBPPTRunnerAdditions
{
  if (a3)
  {
    v4 = MEMORY[0x223D6F7F0](a3);
    objc_setAssociatedObject(a1, &_SBPPTRunnerBannerLongLookWillPresentCompletion, v4, 3);
  }
}

- (void)setPPTLongLookDidPresentBlock:()SBPPTRunnerAdditions
{
  if (a3)
  {
    v4 = MEMORY[0x223D6F7F0](a3);
    objc_setAssociatedObject(a1, &_SBPPTRunnerBannerLongLookDidPresentCompletion, v4, 3);
  }
}

- (void)setPPTLongLookWillDismissBlock:()SBPPTRunnerAdditions
{
  if (a3)
  {
    v4 = MEMORY[0x223D6F7F0](a3);
    objc_setAssociatedObject(a1, &_SBPPTRunnerBannerLongLookWillDismissCompletion, v4, 3);
  }
}

- (void)setPPTLongLookDidDismissBlock:()SBPPTRunnerAdditions
{
  if (a3)
  {
    v4 = MEMORY[0x223D6F7F0](a3);
    objc_setAssociatedObject(a1, &_SBPPTRunnerBannerLongLookDidDismissCompletion, v4, 3);
  }
}

- (void)_recapSwipePresentLongLook
{
  v1 = [a1 view];
  v2 = [v1 window];
  [v1 bounds];
  UIRectGetCenter();
  [v1 convertPoint:0 toView:?];
  [v2 _convertPointToSceneReferenceSpace:?];
  v4 = v3;
  v6 = v5;

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__NCNotificationViewController_SBPPTRunnerAdditions___recapSwipePresentLongLook__block_invoke;
  v7[3] = &__block_descriptor_48_e34_v16__0___RCPEventStreamComposer__8l;
  v7[4] = v4;
  v7[5] = v6;
  SBPPTSynthesizeEventsForEventActions(v7, 0);
}

- (id)_dismissControlOfPresentedLongLook
{
  v1 = [a1 _presentedLongLookViewController];
  v2 = [v1 _lookView];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 _lookView];
    v4 = [v3 dismissControl];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_recapDismissLongLookViaPullDown
{
  v1 = [a1 _presentedLongLookViewController];
  v2 = [v1 _lookView];

  v3 = [v2 window];
  [v2 bounds];
  UIRectGetCenter();
  [v2 convertPoint:0 toView:?];
  [v3 _convertPointToSceneReferenceSpace:?];
  v5 = v4;
  v7 = v6;

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__NCNotificationViewController_SBPPTRunnerAdditions___recapDismissLongLookViaPullDown__block_invoke;
  v8[3] = &__block_descriptor_48_e34_v16__0___RCPEventStreamComposer__8l;
  v8[4] = v5;
  v8[5] = v7;
  SBPPTSynthesizeEventsForEventActions(v8, 0);
}

- (void)_recapDismissLongLookViaTapOutside
{
  v1 = [a1 view];
  v2 = [v1 window];
  [v1 bounds];
  MinX = CGRectGetMinX(v9);
  [v1 bounds];
  [v1 convertPoint:0 toView:{MinX, CGRectGetMaxY(v10)}];
  [v2 _convertPointToSceneReferenceSpace:?];
  v5 = v4;
  v7 = v6;

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__NCNotificationViewController_SBPPTRunnerAdditions___recapDismissLongLookViaTapOutside__block_invoke;
  v8[3] = &__block_descriptor_48_e34_v16__0___RCPEventStreamComposer__8l;
  v8[4] = v5;
  v8[5] = v7;
  SBPPTSynthesizeEventsForEventActions(v8, 0);
}

@end