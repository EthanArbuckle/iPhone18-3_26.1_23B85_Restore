@interface PGWrapperMusicMemoryDisplayMetadataCacheManager
+ (void)evictExpiredSongsWithPhotoLibrary:(id)library progressReporter:(id)reporter completionHandler:(id)handler;
- (PGWrapperMusicMemoryDisplayMetadataCacheManager)init;
@end

@implementation PGWrapperMusicMemoryDisplayMetadataCacheManager

+ (void)evictExpiredSongsWithPhotoLibrary:(id)library progressReporter:(id)reporter completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  _Block_copy(v7);
  _Block_copy(v7);
  libraryCopy = library;
  reporterCopy = reporter;
  v9 = sub_22F1A26E0(libraryCopy);
  _Block_release(v7);
  _Block_copy(v7);
  sub_22F1E02E0(v9, reporterCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (PGWrapperMusicMemoryDisplayMetadataCacheManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGWrapperMusicMemoryDisplayMetadataCacheManager *)&v3 init];
}

@end