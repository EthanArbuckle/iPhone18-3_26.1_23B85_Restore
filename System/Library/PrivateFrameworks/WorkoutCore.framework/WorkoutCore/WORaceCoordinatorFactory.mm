@interface WORaceCoordinatorFactory
+ (id)makeWithConfiguration:(id)configuration builder:(id)builder healthStore:(id)store;
- (WORaceCoordinatorFactory)init;
@end

@implementation WORaceCoordinatorFactory

+ (id)makeWithConfiguration:(id)configuration builder:(id)builder healthStore:(id)store
{
  v7 = *(configuration + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for RaceWorkoutConfiguration();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = objc_allocWithZone(type metadata accessor for RaceCoordinator());
    builderCopy = builder;
    storeCopy = store;
    v13 = v7;
    v14 = specialized RaceCoordinator.init(configuration:builder:healthStore:)(v9, builderCopy, storeCopy);

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