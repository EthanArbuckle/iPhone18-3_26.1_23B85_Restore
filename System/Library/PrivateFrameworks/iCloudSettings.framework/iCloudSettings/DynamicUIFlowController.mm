@interface DynamicUIFlowController
- (_TtC14iCloudSettings23DynamicUIFlowController)init;
- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error;
@end

@implementation DynamicUIFlowController

- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_27592BCE4(result, error);
}

- (_TtC14iCloudSettings23DynamicUIFlowController)init
{
  *(&self->super.isa + OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_dynamicUI) = 0;
  *&self->dynamicUI[OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_flowCompletionDelegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for DynamicUIFlowController();
  return [(DynamicUIFlowController *)&v4 init];
}

@end