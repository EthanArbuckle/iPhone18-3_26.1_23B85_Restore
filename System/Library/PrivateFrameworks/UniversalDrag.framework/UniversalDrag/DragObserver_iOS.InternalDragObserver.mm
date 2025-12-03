@interface DragObserver_iOS.InternalDragObserver
- (BOOL)dragMonitorSessionShouldHideLocalDragDisplay:(id)display;
- (void)dragMonitor:(id)monitor didBeginDragSession:(id)session;
- (void)dragMonitor:(id)monitor didEndDragSessionWithIdentifier:(unsigned int)identifier;
- (void)dragMonitorSession:(id)session didConnectWithItems:(id)items;
- (void)dragMonitorSession:(id)session didUpdateDragPresentation:(id)presentation;
@end

@implementation DragObserver_iOS.InternalDragObserver

- (void)dragMonitor:(id)monitor didBeginDragSession:(id)session
{
  monitorCopy = monitor;
  sessionCopy = session;
  selfCopy = self;
  sub_2706CA404(monitorCopy, sessionCopy);
}

- (void)dragMonitor:(id)monitor didEndDragSessionWithIdentifier:(unsigned int)identifier
{
  monitorCopy = monitor;
  selfCopy = self;
  sub_2706CA53C(monitorCopy, identifier);
}

- (void)dragMonitorSession:(id)session didConnectWithItems:(id)items
{
  sub_270690D44(0, &qword_28081CEC0, 0x277CCAA88);
  v5 = sub_2706E5B1C();
  nullsub_1(session, v5);
}

- (void)dragMonitorSession:(id)session didUpdateDragPresentation:(id)presentation
{
  sessionCopy = session;
  presentationCopy = presentation;
  selfCopy = self;
  sub_2706CA730(sessionCopy, presentationCopy);
}

- (BOOL)dragMonitorSessionShouldHideLocalDragDisplay:(id)display
{
  displayCopy = display;
  selfCopy = self;
  LOBYTE(self) = sub_2706CA990();

  return self & 1;
}

@end