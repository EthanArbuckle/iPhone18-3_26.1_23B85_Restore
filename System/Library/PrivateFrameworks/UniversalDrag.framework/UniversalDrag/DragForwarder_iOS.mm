@interface DragForwarder_iOS
- (void)dragMonitorSession:(id)session didAcceptDropRequestWithItems:(id)items;
- (void)dragMonitorSession:(id)session didConcludeDragNormally:(BOOL)normally;
- (void)dragMonitorSession:(id)session didUpdateDragPresentation:(id)presentation;
- (void)dragMonitorSession:(id)session didUpdateRegisteredItems:(id)items;
@end

@implementation DragForwarder_iOS

- (void)dragMonitorSession:(id)session didUpdateRegisteredItems:(id)items
{
  sub_270690D44(0, &qword_28081CEC0, 0x277CCAA88);
  sub_2706E5B1C();
}

- (void)dragMonitorSession:(id)session didUpdateDragPresentation:(id)presentation
{
  sessionCopy = session;
  presentationCopy = presentation;
  selfCopy = self;
  sub_27068A654();
}

- (void)dragMonitorSession:(id)session didAcceptDropRequestWithItems:(id)items
{
  sub_270690D44(0, &qword_28081CEC0, 0x277CCAA88);
  v6 = sub_2706E5B1C();
  sessionCopy = session;
  selfCopy = self;
  sub_27068ABA8(selfCopy, v6);
}

- (void)dragMonitorSession:(id)session didConcludeDragNormally:(BOOL)normally
{
  sessionCopy = session;
  selfCopy = self;
  sub_27068AD9C(selfCopy, normally);
}

@end