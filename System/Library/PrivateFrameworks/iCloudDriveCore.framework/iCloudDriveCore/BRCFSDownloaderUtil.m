@interface BRCFSDownloaderUtil
+ (id)cancellableDownloadKinds;
+ (int)downloadKindWithEtagIfLoser:(id)a3 options:(unint64_t)a4;
@end

@implementation BRCFSDownloaderUtil

+ (int)downloadKindWithEtagIfLoser:(id)a3 options:(unint64_t)a4
{
  if ((a4 & 0x20) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if ((a4 & 0x14) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (a3)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

+ (id)cancellableDownloadKinds
{
  if (cancellableDownloadKinds_onceToken != -1)
  {
    +[BRCFSDownloaderUtil cancellableDownloadKinds];
  }

  v3 = cancellableDownloadKinds_cancellableDownloadKinds;

  return v3;
}

uint64_t __47__BRCFSDownloaderUtil_cancellableDownloadKinds__block_invoke()
{
  cancellableDownloadKinds_cancellableDownloadKinds = [MEMORY[0x277CBEB98] setWithArray:&unk_2837B0CD0];

  return MEMORY[0x2821F96F8]();
}

@end