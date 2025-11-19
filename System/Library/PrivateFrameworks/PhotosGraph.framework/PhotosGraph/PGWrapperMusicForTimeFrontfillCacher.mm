@interface PGWrapperMusicForTimeFrontfillCacher
+ (void)cacheMusicForMomentsInPhotoLibrary:(id)a3 forceCaching:(BOOL)a4 progressReporter:(id)a5 completionHandler:(id)a6;
- (PGWrapperMusicForTimeFrontfillCacher)init;
@end

@implementation PGWrapperMusicForTimeFrontfillCacher

+ (void)cacheMusicForMomentsInPhotoLibrary:(id)a3 forceCaching:(BOOL)a4 progressReporter:(id)a5 completionHandler:(id)a6
{
  v7 = a4;
  v9 = _Block_copy(a6);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v9);
  v11 = a3;
  v12 = a5;
  sub_22F376910(v11, v7, v12, ObjCClassMetadata, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (PGWrapperMusicForTimeFrontfillCacher)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGWrapperMusicForTimeFrontfillCacher *)&v3 init];
}

@end