@interface PGWrapperMusicForArtistCacher
+ (void)cacheMusicForMomentsInPhotoLibrary:(id)library graphManager:(id)manager forceCaching:(BOOL)caching progressReporter:(id)reporter completionHandler:(id)handler;
- (PGWrapperMusicForArtistCacher)init;
@end

@implementation PGWrapperMusicForArtistCacher

+ (void)cacheMusicForMomentsInPhotoLibrary:(id)library graphManager:(id)manager forceCaching:(BOOL)caching progressReporter:(id)reporter completionHandler:(id)handler
{
  cachingCopy = caching;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  ObjCClassMetadata = swift_getObjCClassMetadata();

  libraryCopy = library;
  managerCopy = manager;
  reporterCopy = reporter;
  _Block_copy(v11);
  sub_22F3AC4A4(libraryCopy, managerCopy, cachingCopy, 50, reporterCopy, ObjCClassMetadata, sub_22F1E088C, v12);

  _Block_release(v11);
}

- (PGWrapperMusicForArtistCacher)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGWrapperMusicForArtistCacher *)&v3 init];
}

@end