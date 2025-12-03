@interface NSFileCoordinator
- (void)tsp_coordinateAccessWithIntents:(id)intents queue:(id)queue byAccessor:(id)accessor;
@end

@implementation NSFileCoordinator

- (void)tsp_coordinateAccessWithIntents:(id)intents queue:(id)queue byAccessor:(id)accessor
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001E534;
  v7[3] = &unk_1001C6968;
  accessorCopy = accessor;
  v6 = accessorCopy;
  [queue addOperationWithBlock:v7];
}

@end