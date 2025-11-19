@interface NotificationOverlayOptionsSettingsChanged
@end

@implementation NotificationOverlayOptionsSettingsChanged

void ___NotificationOverlayOptionsSettingsChanged_block_invoke()
{
  v0 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v0 cancelAnyTransientOverlay];

  v1 = +[CACDisplayManager sharedManager];
  [v1 hideAnyNonInteractiveOverlay];

  v2 = +[CACDisplayManager sharedManager];
  [v2 updatePresentationForActiveOverlay];
}

@end