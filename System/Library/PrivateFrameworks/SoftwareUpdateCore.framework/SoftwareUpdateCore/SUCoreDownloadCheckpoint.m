@interface SUCoreDownloadCheckpoint
- (SUCoreDownloadCheckpoint)initWithTimestamp:(double)a3 downloadedBytes:(int64_t)a4;
@end

@implementation SUCoreDownloadCheckpoint

- (SUCoreDownloadCheckpoint)initWithTimestamp:(double)a3 downloadedBytes:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = SUCoreDownloadCheckpoint;
  result = [(SUCoreDownloadCheckpoint *)&v7 init];
  if (result)
  {
    result->_timestamp = a3;
    result->_downloadedBytes = a4;
  }

  return result;
}

@end