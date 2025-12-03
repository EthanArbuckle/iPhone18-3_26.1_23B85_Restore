@interface PGWrapperMusicForMomentCacher
+ (void)cacheMusicForMomentsInPhotoLibrary:(id)library progressReporter:(id)reporter completionHandler:(id)handler;
- (PGWrapperMusicForMomentCacher)init;
@end

@implementation PGWrapperMusicForMomentCacher

+ (void)cacheMusicForMomentsInPhotoLibrary:(id)library progressReporter:(id)reporter completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v7);
  libraryCopy = library;
  reporterCopy = reporter;
  sub_22F3DE04C(libraryCopy, reporterCopy, ObjCClassMetadata, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (PGWrapperMusicForMomentCacher)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGWrapperMusicForMomentCacher *)&v3 init];
}

@end