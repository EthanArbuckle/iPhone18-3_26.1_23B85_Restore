@interface SUCoreDownloadCheckpoint
- (SUCoreDownloadCheckpoint)initWithTimestamp:(double)timestamp downloadedBytes:(int64_t)bytes;
@end

@implementation SUCoreDownloadCheckpoint

- (SUCoreDownloadCheckpoint)initWithTimestamp:(double)timestamp downloadedBytes:(int64_t)bytes
{
  v7.receiver = self;
  v7.super_class = SUCoreDownloadCheckpoint;
  result = [(SUCoreDownloadCheckpoint *)&v7 init];
  if (result)
  {
    result->_timestamp = timestamp;
    result->_downloadedBytes = bytes;
  }

  return result;
}

@end