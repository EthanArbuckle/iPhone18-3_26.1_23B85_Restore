@interface BRKRoutineManager
+ (void)fetchLocationsOfInterestWithSingleRetryOfType:(int64_t)type routineManager:(id)manager withHandler:(id)handler;
@end

@implementation BRKRoutineManager

+ (void)fetchLocationsOfInterestWithSingleRetryOfType:(int64_t)type routineManager:(id)manager withHandler:(id)handler
{
  managerCopy = manager;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002A6C;
  v11[3] = &unk_100008338;
  handlerCopy = handler;
  typeCopy = type;
  v12 = managerCopy;
  v8 = handlerCopy;
  v9 = managerCopy;
  v10 = objc_retainBlock(v11);
  [v9 fetchLocationsOfInterestOfType:type withHandler:v10];
}

@end