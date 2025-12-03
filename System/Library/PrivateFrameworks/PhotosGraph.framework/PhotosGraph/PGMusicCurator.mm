@interface PGMusicCurator
+ (id)curateMusicForFeatures:(id)features context:(id)context progressReporter:(id)reporter error:(id *)error;
+ (id)emptyCuration;
+ (id)extractMusicCurationFeaturesForAssets:(id)assets graph:(id)graph context:(id)context progressReporter:(id)reporter error:(id *)error;
+ (id)extractMusicCurationFeaturesForEnrichedMemory:(id)memory graph:(id)graph context:(id)context progressReporter:(id)reporter error:(id *)error;
+ (id)extractMusicCurationFeaturesForMemory:(id)memory graph:(id)graph context:(id)context progressReporter:(id)reporter error:(id *)error;
+ (id)generateDebugInformationForAssetCollection:(id)collection graph:(id)graph context:(id)context progressReporter:(id)reporter error:(id *)error;
+ (id)generateDebugInformationForSongWithAdamID:(id)d context:(id)context progressReporter:(id)reporter error:(id *)error;
+ (void)fetchSongAdamIDsForPurchasedSongID:(id)d inflationContext:(id)context progressReport:(id)report completionHandler:(id)handler;
+ (void)fetchSongDisplayMetadataJSONForAdamIDs:(id)ds inflationContext:(id)context progressReporter:(id)reporter completionHandler:(id)handler;
+ (void)fetchSongMetadataJSONForAdamIDs:(id)ds options:(id)options inflationContext:(id)context progressReporter:(id)reporter completionHandler:(id)handler;
+ (void)inflateDisplayMetadataForMusicCuration:(id)curation inflationContext:(id)context curatorContext:(id)curatorContext progressReporter:(id)reporter completionHandler:(id)handler;
- (PGMusicCurator)init;
@end

@implementation PGMusicCurator

+ (id)generateDebugInformationForSongWithAdamID:(id)d context:(id)context progressReporter:(id)reporter error:(id *)error
{
  v8 = sub_22F740E20();
  v10 = v9;
  contextCopy = context;
  reporterCopy = reporter;
  sub_22F262784(v8, v10, contextCopy);

  v13 = sub_22F740DF0();

  return v13;
}

+ (id)generateDebugInformationForAssetCollection:(id)collection graph:(id)graph context:(id)context progressReporter:(id)reporter error:(id *)error
{
  collectionCopy = collection;
  graphCopy = graph;
  contextCopy = context;
  reporterCopy = reporter;
  sub_22F263A08(collectionCopy, graphCopy, contextCopy, reporterCopy);

  v14 = sub_22F740DF0();

  return v14;
}

+ (id)extractMusicCurationFeaturesForMemory:(id)memory graph:(id)graph context:(id)context progressReporter:(id)reporter error:(id *)error
{
  memoryCopy = memory;
  graphCopy = graph;
  contextCopy = context;
  reporterCopy = reporter;
  sub_22F2C780C(memoryCopy, graph, contextCopy, reporterCopy);
  v15 = v14;

  return v15;
}

+ (id)extractMusicCurationFeaturesForEnrichedMemory:(id)memory graph:(id)graph context:(id)context progressReporter:(id)reporter error:(id *)error
{
  swift_unknownObjectRetain();
  graphCopy = graph;
  contextCopy = context;
  reporterCopy = reporter;
  sub_22F32CFEC(memory, graph, contextCopy);
  v15 = v14;

  swift_unknownObjectRelease();

  return v15;
}

+ (id)extractMusicCurationFeaturesForAssets:(id)assets graph:(id)graph context:(id)context progressReporter:(id)reporter error:(id *)error
{
  sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
  v10 = sub_22F741180();
  graphCopy = graph;
  contextCopy = context;
  reporterCopy = reporter;
  v14 = sub_22F34CE98(v10, graph, contextCopy, reporterCopy);

  return v14;
}

+ (id)curateMusicForFeatures:(id)features context:(id)context progressReporter:(id)reporter error:(id *)error
{
  swift_getObjCClassMetadata();
  featuresCopy = features;
  contextCopy = context;
  reporterCopy = reporter;
  v12 = static MusicCurator.curateMusic(for:context:progressReporter:)(featuresCopy, contextCopy);

  return v12;
}

- (PGMusicCurator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGMusicCurator *)&v3 init];
}

+ (id)emptyCuration
{
  v2 = _s11PhotosGraph12MusicCuratorC13emptyCurationAA0cF0CyFZ_0();

  return v2;
}

+ (void)inflateDisplayMetadataForMusicCuration:(id)curation inflationContext:(id)context curatorContext:(id)curatorContext progressReporter:(id)reporter completionHandler:(id)handler
{
  v11 = _Block_copy(handler);
  _Block_copy(v11);
  curationCopy = curation;
  contextCopy = context;
  curatorContextCopy = curatorContext;
  reporterCopy = reporter;
  sub_22F3A7F84(curationCopy, contextCopy, reporterCopy, v11);
  _Block_release(v11);
  _Block_release(v11);
}

+ (void)fetchSongDisplayMetadataJSONForAdamIDs:(id)ds inflationContext:(id)context progressReporter:(id)reporter completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = sub_22F741180();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v8);
  contextCopy = context;
  reporterCopy = reporter;
  v12 = sub_22F14EA28(MEMORY[0x277D84F90]);
  sub_22F3A9288(v9, v12, contextCopy, reporterCopy, ObjCClassMetadata, v8);
  _Block_release(v8);

  _Block_release(v8);
}

+ (void)fetchSongMetadataJSONForAdamIDs:(id)ds options:(id)options inflationContext:(id)context progressReporter:(id)reporter completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_22F741180();
  v11 = sub_22F740CA0();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v9);
  contextCopy = context;
  reporterCopy = reporter;
  sub_22F3A9288(v10, v11, contextCopy, reporterCopy, ObjCClassMetadata, v9);
  _Block_release(v9);

  _Block_release(v9);
}

+ (void)fetchSongAdamIDsForPurchasedSongID:(id)d inflationContext:(id)context progressReport:(id)report completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = sub_22F740E20();
  v11 = v10;
  _Block_copy(v8);
  contextCopy = context;
  reportCopy = report;
  sub_22F3AB520(v9, v11, contextCopy, reportCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end