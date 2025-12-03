@interface PGMusicCatalogMonitor
+ (void)clearCatalogMusicFromCacheWithPhotoLibrary:(id)library progressReporter:(id)reporter completionHandler:(id)handler;
@end

@implementation PGMusicCatalogMonitor

+ (void)clearCatalogMusicFromCacheWithPhotoLibrary:(id)library progressReporter:(id)reporter completionHandler:(id)handler
{
  v10 = 0;
  handlerCopy = handler;
  v8 = [PGWrapperMusicCatalogMonitor clearCatalogMusicFromCacheWithPhotoLibrary:library progressReporter:reporter error:&v10];
  v9 = v10;
  handlerCopy[2](handlerCopy, v8, v9);
}

@end