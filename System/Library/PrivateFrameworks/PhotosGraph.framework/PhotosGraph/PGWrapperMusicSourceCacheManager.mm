@interface PGWrapperMusicSourceCacheManager
+ (void)pruneUnusedSourcesWithPhotoLibrary:(id)a3 graphManager:(id)a4 progressReporter:(id)a5 completionHandler:(id)a6;
- (PGWrapperMusicSourceCacheManager)init;
@end

@implementation PGWrapperMusicSourceCacheManager

+ (void)pruneUnusedSourcesWithPhotoLibrary:(id)a3 graphManager:(id)a4 progressReporter:(id)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = a3;
  v11 = a4;
  v12 = a5;
  sub_22F26F9C0(v10, v11);
  v9[2](v9, 1, 0);

  _Block_release(v9);
}

- (PGWrapperMusicSourceCacheManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGWrapperMusicSourceCacheManager *)&v3 init];
}

@end