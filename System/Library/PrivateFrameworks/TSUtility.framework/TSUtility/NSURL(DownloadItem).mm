@interface NSURL(DownloadItem)
+ (uint64_t)canHandleDownloadTask:()DownloadItem;
+ (void)downloadManager:()DownloadItem task:didFinishDownloadingToURL:;
- (id)downloadTaskDescription;
@end

@implementation NSURL(DownloadItem)

- (id)downloadTaskDescription
{
  v1 = MEMORY[0x277CCACA8];
  absoluteString = [self absoluteString];
  v3 = [v1 stringWithFormat:@"%@%@", @"File:", absoluteString];

  return v3;
}

+ (uint64_t)canHandleDownloadTask:()DownloadItem
{
  taskDescription = [a3 taskDescription];
  v4 = [taskDescription hasPrefix:@"File:"];

  return v4;
}

+ (void)downloadManager:()DownloadItem task:didFinishDownloadingToURL:
{
  v7 = a5;
  v8 = a3;
  originalRequest = [a4 originalRequest];
  v10 = [originalRequest URL];

  downloadInboxDirectory = [v8 downloadInboxDirectory];

  lastPathComponent = [v10 lastPathComponent];
  v13 = [downloadInboxDirectory URLByAppendingPathComponent:lastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtURL:v13 error:0];
  if (([defaultManager linkItemAtURL:v7 toURL:v13 error:0] & 1) == 0)
  {
    v21 = 0;
    v15 = [defaultManager copyItemAtURL:v7 toURL:v13 error:&v21];
    v20 = v21;
    if ((v15 & 1) == 0)
    {
      TSULogErrorInFunction("+[NSURL(DownloadItem) downloadManager:task:didFinishDownloadingToURL:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/NSURL_DownloadItem.m", 50, @"Failed to move downloaded file from %@ to %@: %@", v16, v17, v18, v19, v7);
    }
  }
}

@end