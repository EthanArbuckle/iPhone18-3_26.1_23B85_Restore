@interface PGMockFlexMusicSong
- (NSDictionary)weightedKeywords;
- (NSString)description;
- (PGMockFlexMusicSong)init;
- (id)regions;
@end

@implementation PGMockFlexMusicSong

- (NSDictionary)weightedKeywords
{
  v2 = *(self + OBJC_IVAR___PGMockFlexMusicSong_weightedKeywords);
  sub_22F170D8C();

  v3 = sub_22F740C80();

  return v3;
}

- (id)regions
{
  v2 = *(self + OBJC_IVAR___PGMockFlexMusicSong__tagIDs);

  sub_22F1B9D70(v3);
  v4 = sub_22F741410();

  return v4;
}

- (PGMockFlexMusicSong)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  MockFlexMusicSong.description.getter();

  v3 = sub_22F740DF0();

  return v3;
}

@end