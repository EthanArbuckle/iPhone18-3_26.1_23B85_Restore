@interface IntervalWorkoutConfiguration
- (BOOL)isEqual:(id)a3;
- (int64_t)hash;
@end

@implementation IntervalWorkoutConfiguration

- (int64_t)hash
{
  v2 = self;
  v3 = IntervalWorkoutConfiguration.hash.getter();

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

  v6 = IntervalWorkoutConfiguration.isEqual(_:)(v8);

  _s10Foundation4UUIDVSgWOhTm_3(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

@end