@interface PGFlexMusicCurationParameters
- (PGFlexMusicCurationParameters)init;
- (PGFlexMusicCurationParameters)initWithMood:(unint64_t)a3 moodKeywords:(id)a4 recentlyUsedSongs:(id)a5 entityUUID:(id)a6 useMoodKeywords:(BOOL)a7 features:(id)a8 musicCuratorContext:(id)a9;
- (PGFlexMusicCurationParameters)initWithMood:(unint64_t)a3 moodKeywords:(id)a4 recentlyUsedSongs:(id)a5 entityUUID:(id)a6 useMoodKeywords:(BOOL)a7 features:(id)a8 musicCuratorContext:(id)a9 genre:(id)a10 weightByLanguage:(id)a11 weightByRegion:(id)a12;
@end

@implementation PGFlexMusicCurationParameters

- (PGFlexMusicCurationParameters)initWithMood:(unint64_t)a3 moodKeywords:(id)a4 recentlyUsedSongs:(id)a5 entityUUID:(id)a6 useMoodKeywords:(BOOL)a7 features:(id)a8 musicCuratorContext:(id)a9
{
  v12 = sub_22F741180();
  v13 = sub_22F740E20();
  v15 = v14;
  v16 = a5;
  v17 = a8;
  v18 = a9;
  v19 = sub_22F1CD944(a3, v12, v16, v13, v15, a7, a8, a9);

  return v19;
}

- (PGFlexMusicCurationParameters)initWithMood:(unint64_t)a3 moodKeywords:(id)a4 recentlyUsedSongs:(id)a5 entityUUID:(id)a6 useMoodKeywords:(BOOL)a7 features:(id)a8 musicCuratorContext:(id)a9 genre:(id)a10 weightByLanguage:(id)a11 weightByRegion:(id)a12
{
  v28 = sub_22F741180();
  v14 = sub_22F740E20();
  v26 = v15;
  v27 = v14;
  v16 = sub_22F740E20();
  v18 = v17;
  sub_22F170D8C();
  v19 = sub_22F740CA0();
  v20 = sub_22F740CA0();
  v21 = a5;
  v22 = a8;
  v23 = a9;
  v24 = sub_22F1CDBF8(a3, v28, v21, v27, v26, a7, a8, a9, v16, v18, v19, v20);

  return v24;
}

- (PGFlexMusicCurationParameters)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end