@interface FMSongAsset(PhotosGraph)
- (uint64_t)pg_requestDownloadIfNeeded;
@end

@implementation FMSongAsset(PhotosGraph)

- (uint64_t)pg_requestDownloadIfNeeded
{
  if (![self localURLExists] || (result = objc_msgSend(self, "contentUpdateAvailable"), result))
  {

    return [self requestDownload];
  }

  return result;
}

@end