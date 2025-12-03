@interface MultiUserStartWorkoutInterceptor
- (_TtC9SeymourUI32MultiUserStartWorkoutInterceptor)init;
- (void)dynamicViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error;
@end

@implementation MultiUserStartWorkoutInterceptor

- (_TtC9SeymourUI32MultiUserStartWorkoutInterceptor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_20BCB53F4(error);
}

- (void)dynamicViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  MultiUserStartWorkoutInterceptor.dynamicViewController(_:didFinishPurchaseWith:error:)(controllerCopy, result, error);
}

@end