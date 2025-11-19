@interface CUSystemMonitor
- (BOOL)screenActive;
@end

@implementation CUSystemMonitor

- (BOOL)screenActive
{
  if ([(CUSystemMonitor *)self screenState])
  {
    return [(CUSystemMonitor *)self screenState]> 29;
  }

  return [(CUSystemMonitor *)self screenOn];
}

@end