@interface PGWrapperMusicCacheMusicKitReconciler
+ (void)runWithPhotoLibrary:(id)a3 progressReporter:(id)a4 completionHandler:(id)a5;
- (PGWrapperMusicCacheMusicKitReconciler)init;
@end

@implementation PGWrapperMusicCacheMusicKitReconciler

+ (void)runWithPhotoLibrary:(id)a3 progressReporter:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  swift_getObjCClassMetadata();
  v9 = a3;
  v10 = a4;
  static MusicCacheMusicKitReconciler.run(photoLibrary:progressReporter:completionHandler:)(v9, v10, sub_22F1E088C, v8);
}

- (PGWrapperMusicCacheMusicKitReconciler)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGWrapperMusicCacheMusicKitReconciler *)&v3 init];
}

@end