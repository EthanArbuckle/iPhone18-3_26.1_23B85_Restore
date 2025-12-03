@interface BackgroundTaskManager
- (void)handleAutomaticDownloadsSwitchDidChange;
- (void)registerBackgroundTasks;
- (void)scheduleBackgroundTasks;
@end

@implementation BackgroundTaskManager

- (void)registerBackgroundTasks
{
  selfCopy = self;
  sub_1E3E70874();
}

- (void)scheduleBackgroundTasks
{
  selfCopy = self;
  sub_1E3E70D80();
}

- (void)handleAutomaticDownloadsSwitchDidChange
{
  selfCopy = self;
  sub_1E3E726EC();
}

@end