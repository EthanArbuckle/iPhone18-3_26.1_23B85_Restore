@interface PGWrapperMusicForMomentCacher
+ (void)cacheMusicForMomentsInPhotoLibrary:(id)a3 progressReporter:(id)a4 completionHandler:(id)a5;
- (PGWrapperMusicForMomentCacher)init;
@end

@implementation PGWrapperMusicForMomentCacher

+ (void)cacheMusicForMomentsInPhotoLibrary:(id)a3 progressReporter:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v7);
  v9 = a3;
  v10 = a4;
  sub_22F3DE04C(v9, v10, ObjCClassMetadata, v7);
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