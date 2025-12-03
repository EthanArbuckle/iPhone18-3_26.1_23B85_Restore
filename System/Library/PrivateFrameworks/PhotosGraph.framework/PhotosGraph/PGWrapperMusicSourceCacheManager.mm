@interface PGWrapperMusicSourceCacheManager
+ (void)pruneUnusedSourcesWithPhotoLibrary:(id)library graphManager:(id)manager progressReporter:(id)reporter completionHandler:(id)handler;
- (PGWrapperMusicSourceCacheManager)init;
@end

@implementation PGWrapperMusicSourceCacheManager

+ (void)pruneUnusedSourcesWithPhotoLibrary:(id)library graphManager:(id)manager progressReporter:(id)reporter completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  libraryCopy = library;
  managerCopy = manager;
  reporterCopy = reporter;
  sub_22F26F9C0(libraryCopy, managerCopy);
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