@interface PGWrapperMusicCatalogMonitor
+ (BOOL)clearCatalogMusicFromCacheWithPhotoLibrary:(id)a3 progressReporter:(id)a4 error:(id *)a5;
+ (void)checkMusicCatalogEligibilityWithProgressReporter:(id)a3 completionHandler:(id)a4;
- (PGWrapperMusicCatalogMonitor)init;
@end

@implementation PGWrapperMusicCatalogMonitor

+ (void)checkMusicCatalogEligibilityWithProgressReporter:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;
  sub_22F393CF4(sub_22F394154, v6);
}

+ (BOOL)clearCatalogMusicFromCacheWithPhotoLibrary:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  sub_22F393E04(v6);

  return 1;
}

- (PGWrapperMusicCatalogMonitor)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGWrapperMusicCatalogMonitor *)&v3 init];
}

@end