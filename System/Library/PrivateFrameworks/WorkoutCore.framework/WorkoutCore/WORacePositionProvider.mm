@interface WORacePositionProvider
- (WORaceDelegate)raceDelegate;
- (WORacePositionProvider)init;
- (void)accumulatorDidStop;
- (void)recoverFrom:(id)from;
- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
@end

@implementation WORacePositionProvider

- (WORaceDelegate)raceDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)accumulatorDidStop
{
  selfCopy = self;
  RacePositionProvider.accumulatorDidStop()();
}

- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v5 = toState - 3;
  if (toState - 3 <= 6 && ((0x6Fu >> v5) & 1) != 0)
  {
    *(self + OBJC_IVAR___WORacePositionProvider_shouldProcessLocations) = 0x1000000uLL >> (8 * v5);
  }
}

- (void)recoverFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  RacePositionProvider.recoverFrom(_:)(fromCopy);
}

- (WORacePositionProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end