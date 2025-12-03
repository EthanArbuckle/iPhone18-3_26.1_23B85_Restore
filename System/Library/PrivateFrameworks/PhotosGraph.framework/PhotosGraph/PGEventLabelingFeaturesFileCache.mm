@interface PGEventLabelingFeaturesFileCache
+ (id)cacheForMomentGraphRebuildWithGraphServiceURL:(id)l graph:(id)graph error:(id *)error;
- (BOOL)clearCacheWithError:(id *)error;
- (BOOL)isCacheEmptyAtGraphServiceURL:(id)l;
- (BOOL)writeFeaturesForMomentNode:(id)node assetFetchResult:(id)result photoLibrary:(id)library progressReporter:(id)reporter error:(id *)error;
- (PGEventLabelingFeaturesFileCache)init;
@end

@implementation PGEventLabelingFeaturesFileCache

+ (id)cacheForMomentGraphRebuildWithGraphServiceURL:(id)l graph:(id)graph error:(id *)error
{
  v6 = sub_22F73F470();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F430();
  graphCopy = graph;
  v12 = sub_22F175D2C(v10, graphCopy);
  (*(v7 + 8))(v10, v6);

  return v12;
}

- (BOOL)writeFeaturesForMomentNode:(id)node assetFetchResult:(id)result photoLibrary:(id)library progressReporter:(id)reporter error:(id *)error
{
  nodeCopy = node;
  resultCopy = result;
  libraryCopy = library;
  reporterCopy = reporter;
  selfCopy = self;
  sub_22F176098(nodeCopy, resultCopy);

  return 1;
}

- (BOOL)clearCacheWithError:(id *)error
{
  selfCopy = self;
  EventLabelingFeaturesFileCache.clearCache()();

  if (v5)
  {
    if (error)
    {
      v6 = sub_22F73F360();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (BOOL)isCacheEmptyAtGraphServiceURL:(id)l
{
  v4 = sub_22F73F470();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F430();
  v9 = objc_allocWithZone(MEMORY[0x277CCAA00]);
  selfCopy = self;
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