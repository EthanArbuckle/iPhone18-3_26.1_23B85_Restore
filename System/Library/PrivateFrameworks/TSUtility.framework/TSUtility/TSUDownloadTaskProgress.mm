@interface TSUDownloadTaskProgress
- (id)description;
@end

@implementation TSUDownloadTaskProgress

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = TSUDownloadTaskProgress;
  v4 = [(TSUDownloadTaskProgress *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %lld of %lld", v4, self->_totalBytesDownloaded, self->_totalBytesExpectedToBeDownloaded];

  return v5;
}

@end