@interface DynamicUIFlowController
- (_TtC14iCloudSettings23DynamicUIFlowController)init;
- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5;
@end

@implementation DynamicUIFlowController

- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_27592BCE4(a4, a5);
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