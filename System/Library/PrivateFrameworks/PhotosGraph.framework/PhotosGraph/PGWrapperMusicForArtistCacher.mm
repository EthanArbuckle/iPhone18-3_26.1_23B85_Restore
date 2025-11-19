@interface PGWrapperMusicForArtistCacher
+ (void)cacheMusicForMomentsInPhotoLibrary:(id)a3 graphManager:(id)a4 forceCaching:(BOOL)a5 progressReporter:(id)a6 completionHandler:(id)a7;
- (PGWrapperMusicForArtistCacher)init;
@end

@implementation PGWrapperMusicForArtistCacher

+ (void)cacheMusicForMomentsInPhotoLibrary:(id)a3 graphManager:(id)a4 forceCaching:(BOOL)a5 progressReporter:(id)a6 completionHandler:(id)a7
{
  v8 = a5;
  v11 = _Block_copy(a7);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  ObjCClassMetadata = swift_getObjCClassMetadata();

  v14 = a3;
  v15 = a4;
  v16 = a6;
  _Block_copy(v11);
  sub_22F3AC4A4(v14, v15, v8, 50, v16, ObjCClassMetadata, sub_22F1E088C, v12);

  _Block_release(v11);
}

- (PGWrapperMusicForArtistCacher)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGWrapperMusicForArtistCacher *)&v3 init];
}

@end