@interface PGWrapperMusicCatalogMonitor
+ (BOOL)clearCatalogMusicFromCacheWithPhotoLibrary:(id)library progressReporter:(id)reporter error:(id *)error;
+ (void)checkMusicCatalogEligibilityWithProgressReporter:(id)reporter completionHandler:(id)handler;
- (PGWrapperMusicCatalogMonitor)init;
@end

@implementation PGWrapperMusicCatalogMonitor

+ (void)checkMusicCatalogEligibilityWithProgressReporter:(id)reporter completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  reporterCopy = reporter;
  sub_22F393CF4(sub_22F394154, v6);
}

+ (BOOL)clearCatalogMusicFromCacheWithPhotoLibrary:(id)library progressReporter:(id)reporter error:(id *)error
{
  libraryCopy = library;
  reporterCopy = reporter;
  sub_22F393E04(libraryCopy);

  return 1;
}

- (PGWrapperMusicCatalogMonitor)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGWrapperMusicCatalogMonitor *)&v3 init];
}

@end