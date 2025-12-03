@interface WOCoreCatalogWorkout
- (NSString)identifier;
- (WOCoreCatalogWorkout)init;
- (double)duration;
@end

@implementation WOCoreCatalogWorkout

- (double)duration
{
  selfCopy = self;
  CatalogWorkout.duration.getter();
  v4 = v3;

  return v4;
}

- (NSString)identifier
{
  selfCopy = self;
  v3 = CatalogWorkout.identifier.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

- (WOCoreCatalogWorkout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end