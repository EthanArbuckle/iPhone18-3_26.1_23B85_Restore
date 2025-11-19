@interface SportsManager
- (_TtP9SportsKit21SportsManagerDelegate_)delegate;
- (int64_t)activitiesCount;
- (void)getEventForCanonicalId:(id)a3 completion:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation SportsManager

- (_TtP9SportsKit21SportsManagerDelegate_)delegate
{
  v2 = sub_26B66CCE8();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_26B66CD88();
}

- (int64_t)activitiesCount
{
  v2 = self;
  v3 = sub_26B66FEC8();

  return v3;
}

- (void)getEventForCanonicalId:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_26B6E9A24();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_26B66FF70(v6, v8, v9, v5);
  _Block_release(v5);
}

@end