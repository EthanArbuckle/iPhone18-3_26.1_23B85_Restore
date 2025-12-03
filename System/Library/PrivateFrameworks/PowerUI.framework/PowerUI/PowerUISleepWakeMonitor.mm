@interface PowerUISleepWakeMonitor
- (PowerUISleepWakeMonitor)initWithManager:(id)manager withCheckpoint:(unint64_t)checkpoint withLastDesktopCheck:(id)check;
@end

@implementation PowerUISleepWakeMonitor

- (PowerUISleepWakeMonitor)initWithManager:(id)manager withCheckpoint:(unint64_t)checkpoint withLastDesktopCheck:(id)check
{
  v6.receiver = self;
  v6.super_class = PowerUISleepWakeMonitor;
  return [(PowerUISleepWakeMonitor *)&v6 init:manager];
}

@end