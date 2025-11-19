@interface PGMusicCurator
+ (id)curateMusicForFeatures:(id)a3 context:(id)a4 progressReporter:(id)a5 error:(id *)a6;
+ (id)emptyCuration;
+ (id)extractMusicCurationFeaturesForAssets:(id)a3 graph:(id)a4 context:(id)a5 progressReporter:(id)a6 error:(id *)a7;
+ (id)extractMusicCurationFeaturesForEnrichedMemory:(id)a3 graph:(id)a4 context:(id)a5 progressReporter:(id)a6 error:(id *)a7;
+ (id)extractMusicCurationFeaturesForMemory:(id)a3 graph:(id)a4 context:(id)a5 progressReporter:(id)a6 error:(id *)a7;
+ (id)generateDebugInformationForAssetCollection:(id)a3 graph:(id)a4 context:(id)a5 progressReporter:(id)a6 error:(id *)a7;
+ (id)generateDebugInformationForSongWithAdamID:(id)a3 context:(id)a4 progressReporter:(id)a5 error:(id *)a6;
+ (void)fetchSongAdamIDsForPurchasedSongID:(id)a3 inflationContext:(id)a4 progressReport:(id)a5 completionHandler:(id)a6;
+ (void)fetchSongDisplayMetadataJSONForAdamIDs:(id)a3 inflationContext:(id)a4 progressReporter:(id)a5 completionHandler:(id)a6;
+ (void)fetchSongMetadataJSONForAdamIDs:(id)a3 options:(id)a4 inflationContext:(id)a5 progressReporter:(id)a6 completionHandler:(id)a7;
+ (void)inflateDisplayMetadataForMusicCuration:(id)a3 inflationContext:(id)a4 curatorContext:(id)a5 progressReporter:(id)a6 completionHandler:(id)a7;
- (PGMusicCurator)init;
@end

@implementation PGMusicCurator

+ (id)generateDebugInformationForSongWithAdamID:(id)a3 context:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v8 = sub_22F740E20();
  v10 = v9;
  v11 = a4;
  v12 = a5;
  sub_22F262784(v8, v10, v11);

  v13 = sub_22F740DF0();

  return v13;
}

+ (id)generateDebugInformationForAssetCollection:(id)a3 graph:(id)a4 context:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  sub_22F263A08(v10, v11, v12, v13);

  v14 = sub_22F740DF0();

  return v14;
}

+ (id)extractMusicCurationFeaturesForMemory:(id)a3 graph:(id)a4 context:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  sub_22F2C780C(v10, a4, v12, v13);
  v15 = v14;

  return v15;
}

+ (id)extractMusicCurationFeaturesForEnrichedMemory:(id)a3 graph:(id)a4 context:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  swift_unknownObjectRetain();
  v11 = a4;
  v12 = a5;
  v13 = a6;
  sub_22F32CFEC(a3, a4, v12);
  v15 = v14;

  swift_unknownObjectRelease();

  return v15;
}

+ (id)extractMusicCurationFeaturesForAssets:(id)a3 graph:(id)a4 context:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
  v10 = sub_22F741180();
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_22F34CE98(v10, a4, v12, v13);

  return v14;
}

+ (id)curateMusicForFeatures:(id)a3 context:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  swift_getObjCClassMetadata();
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = static MusicCurator.curateMusic(for:context:progressReporter:)(v9, v10);

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

+ (void)inflateDisplayMetadataForMusicCuration:(id)a3 inflationContext:(id)a4 curatorContext:(id)a5 progressReporter:(id)a6 completionHandler:(id)a7
{
  v11 = _Block_copy(a7);
  _Block_copy(v11);
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  sub_22F3A7F84(v12, v13, v15, v11);
  _Block_release(v11);
  _Block_release(v11);
}

+ (void)fetchSongDisplayMetadataJSONForAdamIDs:(id)a3 inflationContext:(id)a4 progressReporter:(id)a5 completionHandler:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_22F741180();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v8);
  v11 = a4;
  v13 = a5;
  v12 = sub_22F14EA28(MEMORY[0x277D84F90]);
  sub_22F3A9288(v9, v12, v11, v13, ObjCClassMetadata, v8);
  _Block_release(v8);

  _Block_release(v8);
}

+ (void)fetchSongMetadataJSONForAdamIDs:(id)a3 options:(id)a4 inflationContext:(id)a5 progressReporter:(id)a6 completionHandler:(id)a7
{
  v9 = _Block_copy(a7);
  v10 = sub_22F741180();
  v11 = sub_22F740CA0();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v9);
  v13 = a5;
  v14 = a6;
  sub_22F3A9288(v10, v11, v13, v14, ObjCClassMetadata, v9);
  _Block_release(v9);

  _Block_release(v9);
}

+ (void)fetchSongAdamIDsForPurchasedSongID:(id)a3 inflationContext:(id)a4 progressReport:(id)a5 completionHandler:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_22F740E20();
  v11 = v10;
  _Block_copy(v8);
  v12 = a4;
  v13 = a5;
  sub_22F3AB520(v9, v11, v12, v13, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end