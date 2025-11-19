@interface WORacePositionProvider
- (WORaceDelegate)raceDelegate;
- (WORacePositionProvider)init;
- (void)accumulatorDidStop;
- (void)recoverFrom:(id)a3;
- (void)sessionActivity:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
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
  v2 = self;
  RacePositionProvider.accumulatorDidStop()();
}

- (void)sessionActivity:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v5 = a5 - 3;
  if (a5 - 3 <= 6 && ((0x6Fu >> v5) & 1) != 0)
  {
    *(self + OBJC_IVAR___WORacePositionProvider_shouldProcessLocations) = 0x1000000uLL >> (8 * v5);
  }
}

- (void)recoverFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  RacePositionProvider.recoverFrom(_:)(v4);
}

- (WORacePositionProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end