@interface PGWrapperMusicForTopicCacher
+ (BOOL)cacheMusicWithCache:(id)cache progressReporter:(id)reporter error:(id *)error;
+ (void)prefetchCuratedSongLibraryAssetsWithProgressReporter:(id)reporter completionHandler:(id)handler;
- (PGWrapperMusicForTopicCacher)init;
@end

@implementation PGWrapperMusicForTopicCacher

+ (void)prefetchCuratedSongLibraryAssetsWithProgressReporter:(id)reporter completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  _Block_copy(v5);
  reporterCopy = reporter;
  sub_22F28B894(reporterCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

+ (BOOL)cacheMusicWithCache:(id)cache progressReporter:(id)reporter error:(id *)error
{
  cacheCopy = cache;
  reporterCopy = reporter;
  sub_22F28AC68(cacheCopy, reporterCopy);

  return 1;
}

- (PGWrapperMusicForTopicCacher)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGWrapperMusicForTopicCacher *)&v3 init];
}

@end