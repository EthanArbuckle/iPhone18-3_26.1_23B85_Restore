@interface BRKRoutineManager
+ (void)fetchLocationsOfInterestWithSingleRetryOfType:(int64_t)a3 routineManager:(id)a4 withHandler:(id)a5;
@end

@implementation BRKRoutineManager

+ (void)fetchLocationsOfInterestWithSingleRetryOfType:(int64_t)a3 routineManager:(id)a4 withHandler:(id)a5
{
  v7 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002A6C;
  v11[3] = &unk_100008338;
  v13 = a5;
  v14 = a3;
  v12 = v7;
  v8 = v13;
  v9 = v7;
  v10 = objc_retainBlock(v11);
  [v9 fetchLocationsOfInterestOfType:a3 withHandler:v10];
}

@end