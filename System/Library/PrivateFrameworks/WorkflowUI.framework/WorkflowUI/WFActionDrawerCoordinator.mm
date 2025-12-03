@interface WFActionDrawerCoordinator
- (_TtC10WorkflowUI25WFActionDrawerCoordinator)initWithWorkflow:(id)workflow home:(id)home;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation WFActionDrawerCoordinator

- (_TtC10WorkflowUI25WFActionDrawerCoordinator)initWithWorkflow:(id)workflow home:(id)home
{
  workflowCopy = workflow;
  homeCopy = home;
  return sub_274814998(workflowCopy, home);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_2748183D0();
}

@end