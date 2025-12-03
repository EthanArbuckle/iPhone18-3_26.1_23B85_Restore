@interface PGFlexMusicCurationParameters
- (PGFlexMusicCurationParameters)init;
- (PGFlexMusicCurationParameters)initWithMood:(unint64_t)mood moodKeywords:(id)keywords recentlyUsedSongs:(id)songs entityUUID:(id)d useMoodKeywords:(BOOL)moodKeywords features:(id)features musicCuratorContext:(id)context;
- (PGFlexMusicCurationParameters)initWithMood:(unint64_t)mood moodKeywords:(id)keywords recentlyUsedSongs:(id)songs entityUUID:(id)d useMoodKeywords:(BOOL)moodKeywords features:(id)features musicCuratorContext:(id)context genre:(id)self0 weightByLanguage:(id)self1 weightByRegion:(id)self2;
@end

@implementation PGFlexMusicCurationParameters

- (PGFlexMusicCurationParameters)initWithMood:(unint64_t)mood moodKeywords:(id)keywords recentlyUsedSongs:(id)songs entityUUID:(id)d useMoodKeywords:(BOOL)moodKeywords features:(id)features musicCuratorContext:(id)context
{
  v12 = sub_22F741180();
  v13 = sub_22F740E20();
  v15 = v14;
  songsCopy = songs;
  featuresCopy = features;
  contextCopy = context;
  v19 = sub_22F1CD944(mood, v12, songsCopy, v13, v15, moodKeywords, features, context);

  return v19;
}

- (PGFlexMusicCurationParameters)initWithMood:(unint64_t)mood moodKeywords:(id)keywords recentlyUsedSongs:(id)songs entityUUID:(id)d useMoodKeywords:(BOOL)moodKeywords features:(id)features musicCuratorContext:(id)context genre:(id)self0 weightByLanguage:(id)self1 weightByRegion:(id)self2
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
  songsCopy = songs;
  featuresCopy = features;
  contextCopy = context;
  v24 = sub_22F1CDBF8(mood, v28, songsCopy, v27, v26, moodKeywords, features, context, v16, v18, v19, v20);

  return v24;
}

- (PGFlexMusicCurationParameters)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end