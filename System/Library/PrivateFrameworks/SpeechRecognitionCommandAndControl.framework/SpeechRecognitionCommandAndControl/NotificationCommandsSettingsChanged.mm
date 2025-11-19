@interface NotificationCommandsSettingsChanged
@end

@implementation NotificationCommandsSettingsChanged

void ___NotificationCommandsSettingsChanged_block_invoke()
{
  v0 = MEMORY[0x277D82BB8];
  v1 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v0 cancelPreviousPerformRequestsWithTarget:v1 selector:sel__rebuildCommandRecognizers object:0];

  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 performSelector:sel__rebuildCommandRecognizers withObject:0 afterDelay:1.0];
}

@end