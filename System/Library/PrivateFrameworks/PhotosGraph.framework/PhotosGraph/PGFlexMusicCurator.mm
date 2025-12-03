@interface PGFlexMusicCurator
+ (id)curateFlexMusicWithCurationParameters:(id)parameters progressReporter:(id)reporter error:(id *)error;
+ (id)generateDebugInformationForAssetCollection:(id)collection graph:(id)graph progressReporter:(id)reporter error:(id *)error;
+ (id)generateDebugInformationForSongWithUID:(id)d progressReporter:(id)reporter error:(id *)error;
- (PGFlexMusicCurator)init;
@end

@implementation PGFlexMusicCurator

+ (id)curateFlexMusicWithCurationParameters:(id)parameters progressReporter:(id)reporter error:(id *)error
{
  parametersCopy = parameters;
  reporterCopy = reporter;
  v8 = sub_22F1CE74C(parametersCopy, reporterCopy);

  return v8;
}

- (PGFlexMusicCurator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGFlexMusicCurator *)&v3 init];
}

+ (id)generateDebugInformationForSongWithUID:(id)d progressReporter:(id)reporter error:(id *)error
{
  v6 = sub_22F740E20();
  v8 = v7;
  reporterCopy = reporter;
  sub_22F250E20(v6, v8);

  v10 = sub_22F740DF0();

  return v10;
}

+ (id)generateDebugInformationForAssetCollection:(id)collection graph:(id)graph progressReporter:(id)reporter error:(id *)error
{
  collectionCopy = collection;
  graphCopy = graph;
  reporterCopy = reporter;
  sub_22F2513F0(collectionCopy, graphCopy, reporterCopy);

  v11 = sub_22F740DF0();

  return v11;
}

@end