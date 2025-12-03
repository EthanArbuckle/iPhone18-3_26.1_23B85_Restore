@interface IntervalWorkoutConfiguration
- (BOOL)isEqual:(id)equal;
- (int64_t)hash;
@end

@implementation IntervalWorkoutConfiguration

- (int64_t)hash
{
  selfCopy = self;
  v3 = IntervalWorkoutConfiguration.hash.getter();

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

  v6 = IntervalWorkoutConfiguration.isEqual(_:)(v8);

  _s10Foundation4UUIDVSgWOhTm_3(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

@end