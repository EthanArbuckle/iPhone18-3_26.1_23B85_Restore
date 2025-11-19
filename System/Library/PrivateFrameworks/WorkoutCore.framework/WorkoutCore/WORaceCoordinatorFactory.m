@interface WORaceCoordinatorFactory
+ (id)makeWithConfiguration:(id)a3 builder:(id)a4 healthStore:(id)a5;
- (WORaceCoordinatorFactory)init;
@end

@implementation WORaceCoordinatorFactory

+ (id)makeWithConfiguration:(id)a3 builder:(id)a4 healthStore:(id)a5
{
  v7 = *(a3 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for RaceWorkoutConfiguration();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = objc_allocWithZone(type metadata accessor for RaceCoordinator());
    v11 = a4;
    v12 = a5;
    v13 = v7;
    v14 = specialized RaceCoordinator.init(configuration:builder:healthStore:)(v9, v11, v12);

    return v14;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (WORaceCoordinatorFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RaceCoordinatorFactory();
  return [(WORaceCoordinatorFactory *)&v3 init];
}

@end