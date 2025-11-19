@interface DragForwarder_iOS
- (void)dragMonitorSession:(id)a3 didAcceptDropRequestWithItems:(id)a4;
- (void)dragMonitorSession:(id)a3 didConcludeDragNormally:(BOOL)a4;
- (void)dragMonitorSession:(id)a3 didUpdateDragPresentation:(id)a4;
- (void)dragMonitorSession:(id)a3 didUpdateRegisteredItems:(id)a4;
@end

@implementation DragForwarder_iOS

- (void)dragMonitorSession:(id)a3 didUpdateRegisteredItems:(id)a4
{
  sub_270690D44(0, &qword_28081CEC0, 0x277CCAA88);
  sub_2706E5B1C();
}

- (void)dragMonitorSession:(id)a3 didUpdateDragPresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_27068A654();
}

- (void)dragMonitorSession:(id)a3 didAcceptDropRequestWithItems:(id)a4
{
  sub_270690D44(0, &qword_28081CEC0, 0x277CCAA88);
  v6 = sub_2706E5B1C();
  v7 = a3;
  v8 = self;
  sub_27068ABA8(v8, v6);
}

- (void)dragMonitorSession:(id)a3 didConcludeDragNormally:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_27068AD9C(v7, a4);
}

@end