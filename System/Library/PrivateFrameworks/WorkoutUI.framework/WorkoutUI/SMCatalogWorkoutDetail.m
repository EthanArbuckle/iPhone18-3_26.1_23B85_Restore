@interface SMCatalogWorkoutDetail
+ (id)canonical;
- (NSNumber)mediaTypeRawValue;
- (SMCatalogWorkout)workout;
- (SMCatalogWorkoutDetail)init;
- (int64_t)assetLoadStatus;
- (int64_t)completedCount;
@end

@implementation SMCatalogWorkoutDetail

- (int64_t)assetLoadStatus
{
  v2 = self;
  v3 = CatalogWorkoutDetailBridge.assetLoadStatus.getter();

  return v3;
}

- (SMCatalogWorkout)workout
{
  v3 = type metadata accessor for CatalogWorkout();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  CatalogWorkoutDetail.workout.getter();
  v8 = type metadata accessor for CatalogWorkoutBridge();
  v9 = objc_allocWithZone(v8);
  (*(v4 + 16))(&v9[OBJC_IVAR___SMCatalogWorkout_workout], v6, v3);
  v9[OBJC_IVAR___SMCatalogWorkout_isPartOfAStack] = 0;
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = [(SMCatalogWorkoutDetail *)&v12 init];

  (*(v4 + 8))(v6, v3);

  return v10;
}

- (int64_t)completedCount
{
  v2 = self;
  v3 = CatalogWorkoutDetail.completedCount.getter();

  return v3;
}

- (NSNumber)mediaTypeRawValue
{
  v2 = self;
  v3 = CatalogWorkoutDetailBridge.mediaTypeRawValue.getter();

  return v3;
}

- (SMCatalogWorkoutDetail)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)canonical
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = type metadata accessor for CatalogWorkoutDetail();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CatalogWorkoutDetail.canonical()();
  v7 = objc_allocWithZone(ObjCClassMetadata);
  (*(v4 + 16))(v7 + OBJC_IVAR___SMCatalogWorkoutDetail_workoutDetail, v6, v3);
  v10.receiver = v7;
  v10.super_class = ObjCClassMetadata;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v4 + 8))(v6, v3);

  return v8;
}

@end