@interface PGMusicCatalogMonitor
+ (void)clearCatalogMusicFromCacheWithPhotoLibrary:(id)a3 progressReporter:(id)a4 completionHandler:(id)a5;
@end

@implementation PGMusicCatalogMonitor

+ (void)clearCatalogMusicFromCacheWithPhotoLibrary:(id)a3 progressReporter:(id)a4 completionHandler:(id)a5
{
  v10 = 0;
  v7 = a5;
  v8 = [PGWrapperMusicCatalogMonitor clearCatalogMusicFromCacheWithPhotoLibrary:a3 progressReporter:a4 error:&v10];
  v9 = v10;
  v7[2](v7, v8, v9);
}

@end