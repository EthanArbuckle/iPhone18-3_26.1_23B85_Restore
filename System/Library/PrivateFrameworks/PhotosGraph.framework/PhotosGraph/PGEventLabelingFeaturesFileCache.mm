@interface PGEventLabelingFeaturesFileCache
+ (id)cacheForMomentGraphRebuildWithGraphServiceURL:(id)a3 graph:(id)a4 error:(id *)a5;
- (BOOL)clearCacheWithError:(id *)a3;
- (BOOL)isCacheEmptyAtGraphServiceURL:(id)a3;
- (BOOL)writeFeaturesForMomentNode:(id)a3 assetFetchResult:(id)a4 photoLibrary:(id)a5 progressReporter:(id)a6 error:(id *)a7;
- (PGEventLabelingFeaturesFileCache)init;
@end

@implementation PGEventLabelingFeaturesFileCache

+ (id)cacheForMomentGraphRebuildWithGraphServiceURL:(id)a3 graph:(id)a4 error:(id *)a5
{
  v6 = sub_22F73F470();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F430();
  v11 = a4;
  v12 = sub_22F175D2C(v10, v11);
  (*(v7 + 8))(v10, v6);

  return v12;
}

- (BOOL)writeFeaturesForMomentNode:(id)a3 assetFetchResult:(id)a4 photoLibrary:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = self;
  sub_22F176098(v11, v12);

  return 1;
}

- (BOOL)clearCacheWithError:(id *)a3
{
  v4 = self;
  EventLabelingFeaturesFileCache.clearCache()();

  if (v5)
  {
    if (a3)
    {
      v6 = sub_22F73F360();

      v7 = v6;
      *a3 = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (BOOL)isCacheEmptyAtGraphServiceURL:(id)a3
{
  v4 = sub_22F73F470();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F430();
  v9 = objc_allocWithZone(MEMORY[0x277CCAA00]);
  v10 = self;
  v11 = [v9 init];
  sub_22F73F440();
  v12 = sub_22F740DF0();

  LOBYTE(v9) = [v11 fileExistsAtPath_];

  (*(v5 + 8))(v8, v4);
  return v9 ^ 1;
}

- (PGEventLabelingFeaturesFileCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end