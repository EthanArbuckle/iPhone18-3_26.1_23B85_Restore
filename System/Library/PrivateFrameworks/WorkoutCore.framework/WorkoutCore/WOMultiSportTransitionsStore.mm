@interface WOMultiSportTransitionsStore
- (WOMultiSportTransitionsStore)init;
- (_TtC11WorkoutCore21MultisportTransitions)transitions;
@end

@implementation WOMultiSportTransitionsStore

- (_TtC11WorkoutCore21MultisportTransitions)transitions
{
  v2 = specialized static MultisportTransitionsStore.read()();

  return v2;
}

- (WOMultiSportTransitionsStore)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MultiSportTransitionsStoreBridge();
  return [(WOMultiSportTransitionsStore *)&v3 init];
}

@end