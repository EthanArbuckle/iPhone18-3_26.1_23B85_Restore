@interface VTGestureMonitorPhone
- (VTGestureMonitorPhone)init;
- (void)startObserving;
- (void)wakeGestureManager:(id)manager didUpdateWakeGesture:(int64_t)gesture;
@end

@implementation VTGestureMonitorPhone

- (void)wakeGestureManager:(id)manager didUpdateWakeGesture:(int64_t)gesture
{
  managerCopy = manager;
  if (gesture == 3)
  {
    v8.receiver = self;
    v8.super_class = VTGestureMonitorPhone;
    delegate = [(VTGestureMonitor *)&v8 delegate];
    [delegate gestureMonitorDidReceiveSleepGesture:self];
    goto LABEL_5;
  }

  if (gesture == 1)
  {
    v9.receiver = self;
    v9.super_class = VTGestureMonitorPhone;
    delegate = [(VTGestureMonitor *)&v9 delegate];
    [delegate gestureMonitorDidReceiveWakeGesture:self];
LABEL_5:
  }
}

- (void)startObserving
{
  [(CMWakeGestureManager *)self->_gestureManager setDelegate:self];
  gestureManager = self->_gestureManager;

  [(CMWakeGestureManager *)gestureManager startWakeGestureUpdates];
}

- (VTGestureMonitorPhone)init
{
  v6.receiver = self;
  v6.super_class = VTGestureMonitorPhone;
  v2 = [(VTGestureMonitorPhone *)&v6 init];
  if (v2 && [MEMORY[0x277CC1D80] isWakeGestureAvailable])
  {
    mEMORY[0x277CC1D80] = [MEMORY[0x277CC1D80] sharedManager];
    gestureManager = v2->_gestureManager;
    v2->_gestureManager = mEMORY[0x277CC1D80];
  }

  return v2;
}

@end