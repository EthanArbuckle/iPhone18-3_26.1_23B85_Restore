@interface WOWorkoutChartDataElement
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (WOWorkoutChartDataElement)init;
- (int64_t)hash;
@end

@implementation WOWorkoutChartDataElement

- (int64_t)hash
{
  selfCopy = self;
  v3 = WorkoutChartDataElement.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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
  selfCopy = self;
  v3 = WorkoutChartDataElement.description.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

@end