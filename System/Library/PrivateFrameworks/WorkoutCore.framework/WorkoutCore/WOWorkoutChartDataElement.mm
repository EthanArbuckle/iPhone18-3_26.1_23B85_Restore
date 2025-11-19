@interface WOWorkoutChartDataElement
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (WOWorkoutChartDataElement)init;
- (int64_t)hash;
@end

@implementation WOWorkoutChartDataElement

- (int64_t)hash
{
  v2 = self;
  v3 = WorkoutChartDataElement.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = WorkoutChartDataElement.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6;
}

- (WOWorkoutChartDataElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  v3 = WorkoutChartDataElement.description.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

@end