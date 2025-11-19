@interface DragObserver_iOS.InternalDragObserver
- (BOOL)dragMonitorSessionShouldHideLocalDragDisplay:(id)a3;
- (void)dragMonitor:(id)a3 didBeginDragSession:(id)a4;
- (void)dragMonitor:(id)a3 didEndDragSessionWithIdentifier:(unsigned int)a4;
- (void)dragMonitorSession:(id)a3 didConnectWithItems:(id)a4;
- (void)dragMonitorSession:(id)a3 didUpdateDragPresentation:(id)a4;
@end

@implementation DragObserver_iOS.InternalDragObserver

- (void)dragMonitor:(id)a3 didBeginDragSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2706CA404(v6, v7);
}

- (void)dragMonitor:(id)a3 didEndDragSessionWithIdentifier:(unsigned int)a4
{
  v6 = a3;
  v7 = self;
  sub_2706CA53C(v6, a4);
}

- (void)dragMonitorSession:(id)a3 didConnectWithItems:(id)a4
{
  sub_270690D44(0, &qword_28081CEC0, 0x277CCAA88);
  v5 = sub_2706E5B1C();
  nullsub_1(a3, v5);
}

- (void)dragMonitorSession:(id)a3 didUpdateDragPresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2706CA730(v6, v7);
}

- (BOOL)dragMonitorSessionShouldHideLocalDragDisplay:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_2706CA990();

  return self & 1;
}

@end