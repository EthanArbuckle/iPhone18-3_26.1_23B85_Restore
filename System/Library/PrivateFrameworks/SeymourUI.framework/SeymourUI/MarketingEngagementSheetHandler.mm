@interface MarketingEngagementSheetHandler
- (BOOL)engagementViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler;
- (_TtC9SeymourUI31MarketingEngagementSheetHandler)init;
- (void)engagementViewController:(id)controller didResolveWithResult:(id)result error:(id)error;
@end

@implementation MarketingEngagementSheetHandler

- (_TtC9SeymourUI31MarketingEngagementSheetHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)engagementViewController:(id)controller didResolveWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  errorCopy = error;
  selfCopy = self;
  sub_20B64F1E4(errorCopy);
}

- (BOOL)engagementViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  controllerCopy = controller;
  actionCopy = action;
  selfCopy = self;
  LOBYTE(self) = sub_20B64F414();
  _Block_release(v8);

  return self & 1;
}

@end