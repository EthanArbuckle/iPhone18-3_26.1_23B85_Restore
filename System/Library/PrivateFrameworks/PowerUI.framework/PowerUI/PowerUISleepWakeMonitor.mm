@interface PowerUISleepWakeMonitor
- (PowerUISleepWakeMonitor)initWithManager:(id)a3 withCheckpoint:(unint64_t)a4 withLastDesktopCheck:(id)a5;
@end

@implementation PowerUISleepWakeMonitor

- (PowerUISleepWakeMonitor)initWithManager:(id)a3 withCheckpoint:(unint64_t)a4 withLastDesktopCheck:(id)a5
{
  v6.receiver = self;
  v6.super_class = PowerUISleepWakeMonitor;
  return [(PowerUISleepWakeMonitor *)&v6 init:a3];
}

@end