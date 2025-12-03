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
    objc_setAssociatedObject(self, &_SBPPTRunnerBannerLongLookWillPresentCompletion, v4, 3);
  }
}

- (void)setPPTLongLookDidPresentBlock:()SBPPTRunnerAdditions
{
  if (a3)
  {
    v4 = MEMORY[0x223D6F7F0](a3);
    objc_setAssociatedObject(self, &_SBPPTRunnerBannerLongLookDidPresentCompletion, v4, 3);
  }
}

- (void)setPPTLongLookWillDismissBlock:()SBPPTRunnerAdditions
{
  if (a3)
  {
    v4 = MEMORY[0x223D6F7F0](a3);
    objc_setAssociatedObject(self, &_SBPPTRunnerBannerLongLookWillDismissCompletion, v4, 3);
  }
}

- (void)setPPTLongLookDidDismissBlock:()SBPPTRunnerAdditions
{
  if (a3)
  {
    v4 = MEMORY[0x223D6F7F0](a3);
    objc_setAssociatedObject(self, &_SBPPTRunnerBannerLongLookDidDismissCompletion, v4, 3);
  }
}

- (void)_recapSwipePresentLongLook
{
  view = [self view];
  window = [view window];
  [view bounds];
  UIRectGetCenter();
  [view convertPoint:0 toView:?];
  [window _convertPointToSceneReferenceSpace:?];
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
  _presentedLongLookViewController = [self _presentedLongLookViewController];
  _lookView = [_presentedLongLookViewController _lookView];
  if (objc_opt_respondsToSelector())
  {
    _lookView2 = [_presentedLongLookViewController _lookView];
    dismissControl = [_lookView2 dismissControl];
  }

  else
  {
    dismissControl = 0;
  }

  return dismissControl;
}

- (void)_recapDismissLongLookViaPullDown
{
  _presentedLongLookViewController = [self _presentedLongLookViewController];
  _lookView = [_presentedLongLookViewController _lookView];

  window = [_lookView window];
  [_lookView bounds];
  UIRectGetCenter();
  [_lookView convertPoint:0 toView:?];
  [window _convertPointToSceneReferenceSpace:?];
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
  view = [self view];
  window = [view window];
  [view bounds];
  MinX = CGRectGetMinX(v9);
  [view bounds];
  [view convertPoint:0 toView:{MinX, CGRectGetMaxY(v10)}];
  [window _convertPointToSceneReferenceSpace:?];
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