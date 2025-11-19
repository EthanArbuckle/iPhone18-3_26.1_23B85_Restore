@interface CachedGeocoder.CacheKey
- (BOOL)isEqual:(id)a3;
- (_TtCC15SafetyMonitorUI14CachedGeocoder8CacheKey)init;
- (int64_t)hash;
@end

@implementation CachedGeocoder.CacheKey

- (int64_t)hash
{
  v2 = self;
  v3 = CachedGeocoder.CacheKey.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_264785BA4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CachedGeocoder.CacheKey.isEqual(_:)(v8);

  sub_26460CD50(v8, &qword_27FF77FC8, &qword_26478F3A0);
  return v6;
}

- (_TtCC15SafetyMonitorUI14CachedGeocoder8CacheKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end