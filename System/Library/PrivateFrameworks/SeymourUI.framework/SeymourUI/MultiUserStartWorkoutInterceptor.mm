@interface MultiUserStartWorkoutInterceptor
- (_TtC9SeymourUI32MultiUserStartWorkoutInterceptor)init;
- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5;
@end

@implementation MultiUserStartWorkoutInterceptor

- (_TtC9SeymourUI32MultiUserStartWorkoutInterceptor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_20BCB53F4(a5);
}

- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  MultiUserStartWorkoutInterceptor.dynamicViewController(_:didFinishPurchaseWith:error:)(v8, a4, a5);
}

@end