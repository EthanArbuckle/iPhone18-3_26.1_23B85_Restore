@interface PGWrapperMusicForYouCacher
+ (void)cacheMusicForMomentsInPhotoLibrary:(id)library forceCaching:(BOOL)caching progressReporter:(id)reporter completionHandler:(id)handler;
- (PGWrapperMusicForYouCacher)init;
@end

@implementation PGWrapperMusicForYouCacher

+ (void)cacheMusicForMomentsInPhotoLibrary:(id)library forceCaching:(BOOL)caching progressReporter:(id)reporter completionHandler:(id)handler
{
  cachingCopy = caching;
  v9 = _Block_copy(handler);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v9);
  libraryCopy = library;
  reporterCopy = reporter;
  sub_22F2CD924(libraryCopy, cachingCopy, reporterCopy, ObjCClassMetadata, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (PGWrapperMusicForYouCacher)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGWrapperMusicForYouCacher *)&v3 init];
}

@end