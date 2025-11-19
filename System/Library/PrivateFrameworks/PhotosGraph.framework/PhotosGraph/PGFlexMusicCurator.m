@interface PGFlexMusicCurator
+ (id)curateFlexMusicWithCurationParameters:(id)a3 progressReporter:(id)a4 error:(id *)a5;
+ (id)generateDebugInformationForAssetCollection:(id)a3 graph:(id)a4 progressReporter:(id)a5 error:(id *)a6;
+ (id)generateDebugInformationForSongWithUID:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (PGFlexMusicCurator)init;
@end

@implementation PGFlexMusicCurator

+ (id)curateFlexMusicWithCurationParameters:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = sub_22F1CE74C(v6, v7);

  return v8;
}

- (PGFlexMusicCurator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGFlexMusicCurator *)&v3 init];
}

+ (id)generateDebugInformationForSongWithUID:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v6 = sub_22F740E20();
  v8 = v7;
  v9 = a4;
  sub_22F250E20(v6, v8);

  v10 = sub_22F740DF0();

  return v10;
}

+ (id)generateDebugInformationForAssetCollection:(id)a3 graph:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_22F2513F0(v8, v9, v10);

  v11 = sub_22F740DF0();

  return v11;
}

@end