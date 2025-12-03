@interface SportsManager
- (_TtP9SportsKit21SportsManagerDelegate_)delegate;
- (int64_t)activitiesCount;
- (void)getEventForCanonicalId:(id)id completion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation SportsManager

- (_TtP9SportsKit21SportsManagerDelegate_)delegate
{
  v2 = sub_26B66CCE8();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_26B66CD88();
}

- (int64_t)activitiesCount
{
  selfCopy = self;
  v3 = sub_26B66FEC8();

  return v3;
}

- (void)getEventForCanonicalId:(id)id completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_26B6E9A24();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_26B66FF70(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

@end