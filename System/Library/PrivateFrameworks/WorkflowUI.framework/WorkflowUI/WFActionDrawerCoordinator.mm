@interface WFActionDrawerCoordinator
- (_TtC10WorkflowUI25WFActionDrawerCoordinator)initWithWorkflow:(id)a3 home:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation WFActionDrawerCoordinator

- (_TtC10WorkflowUI25WFActionDrawerCoordinator)initWithWorkflow:(id)a3 home:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_274814998(v5, a4);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748183D0();
}

@end