@interface PGWrapperMusicMemoryDisplayMetadataCacheManager
+ (void)evictExpiredSongsWithPhotoLibrary:(id)a3 progressReporter:(id)a4 completionHandler:(id)a5;
- (PGWrapperMusicMemoryDisplayMetadataCacheManager)init;
@end

@implementation PGWrapperMusicMemoryDisplayMetadataCacheManager

+ (void)evictExpiredSongsWithPhotoLibrary:(id)a3 progressReporter:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  _Block_copy(v7);
  _Block_copy(v7);
  v8 = a3;
  v10 = a4;
  v9 = sub_22F1A26E0(v8);
  _Block_release(v7);
  _Block_copy(v7);
  sub_22F1E02E0(v9, v10, v7);
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