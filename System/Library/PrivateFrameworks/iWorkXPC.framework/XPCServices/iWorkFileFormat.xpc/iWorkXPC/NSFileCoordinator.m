@interface NSFileCoordinator
- (void)tsp_coordinateAccessWithIntents:(id)a3 queue:(id)a4 byAccessor:(id)a5;
@end

@implementation NSFileCoordinator

- (void)tsp_coordinateAccessWithIntents:(id)a3 queue:(id)a4 byAccessor:(id)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001E534;
  v7[3] = &unk_1001C6968;
  v8 = a5;
  v6 = v8;
  [a4 addOperationWithBlock:v7];
}

@end