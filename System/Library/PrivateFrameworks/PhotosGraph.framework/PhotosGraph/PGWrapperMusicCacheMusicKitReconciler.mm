@interface PGWrapperMusicCacheMusicKitReconciler
+ (void)runWithPhotoLibrary:(id)library progressReporter:(id)reporter completionHandler:(id)handler;
- (PGWrapperMusicCacheMusicKitReconciler)init;
@end

@implementation PGWrapperMusicCacheMusicKitReconciler

+ (void)runWithPhotoLibrary:(id)library progressReporter:(id)reporter completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  swift_getObjCClassMetadata();
  libraryCopy = library;
  reporterCopy = reporter;
  static MusicCacheMusicKitReconciler.run(photoLibrary:progressReporter:completionHandler:)(libraryCopy, reporterCopy, sub_22F1E088C, v8);
}

- (PGWrapperMusicCacheMusicKitReconciler)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGWrapperMusicCacheMusicKitReconciler *)&v3 init];
}

@end