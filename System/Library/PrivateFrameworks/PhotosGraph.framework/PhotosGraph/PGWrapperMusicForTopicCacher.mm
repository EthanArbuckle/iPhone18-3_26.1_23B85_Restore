@interface PGWrapperMusicForTopicCacher
+ (BOOL)cacheMusicWithCache:(id)a3 progressReporter:(id)a4 error:(id *)a5;
+ (void)prefetchCuratedSongLibraryAssetsWithProgressReporter:(id)a3 completionHandler:(id)a4;
- (PGWrapperMusicForTopicCacher)init;
@end

@implementation PGWrapperMusicForTopicCacher

+ (void)prefetchCuratedSongLibraryAssetsWithProgressReporter:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  v6 = a3;
  sub_22F28B894(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

+ (BOOL)cacheMusicWithCache:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  sub_22F28AC68(v6, v7);

  return 1;
}

- (PGWrapperMusicForTopicCacher)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGWrapperMusicForTopicCacher *)&v3 init];
}

@end