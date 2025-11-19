@interface SMDependencies
+ (id)workoutDependenciesWithWheelchairStatusProvider:(id)a3;
- (SMDependencies)init;
@end

@implementation SMDependencies

- (SMDependencies)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)workoutDependenciesWithWheelchairStatusProvider:(id)a3
{
  type metadata accessor for Dependencies();
  type metadata accessor for OS_dispatch_queue();
  swift_unknownObjectRetain();
  v4 = static OS_dispatch_queue.main.getter();
  swift_getObjectType();
  v5 = specialized static Dependencies.workout(wheelchairStatusProvider:queue:)(a3, v4);

  v6 = type metadata accessor for DependenciesWrapper();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___SMDependencies_dependencies] = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  v8 = objc_msgSendSuper2(&v10, sel_init);

  swift_unknownObjectRelease();

  return v8;
}

@end