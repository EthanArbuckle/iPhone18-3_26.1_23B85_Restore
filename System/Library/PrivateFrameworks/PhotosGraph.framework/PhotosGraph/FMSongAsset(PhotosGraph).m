@interface FMSongAsset(PhotosGraph)
- (uint64_t)pg_requestDownloadIfNeeded;
@end

@implementation FMSongAsset(PhotosGraph)

- (uint64_t)pg_requestDownloadIfNeeded
{
  if (![a1 localURLExists] || (result = objc_msgSend(a1, "contentUpdateAvailable"), result))
  {

    return [a1 requestDownload];
  }

  return result;
}

@end