@interface UAFAssetSetStatus
- (UAFAssetSetStatus)initWithStatus:(unint64_t)status percent:(double)percent completedBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes;
@end

@implementation UAFAssetSetStatus

- (UAFAssetSetStatus)initWithStatus:(unint64_t)status percent:(double)percent completedBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes
{
  v14.receiver = self;
  v14.super_class = UAFAssetSetStatus;
  v10 = [(UAFAssetSetStatus *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_totalBytes = totalBytes;
    v10->_downloadStatus = status;
    v10->_completedPercent = percent;
    v10->_completedBytes = bytes;
    v12 = v10;
  }

  return v11;
}

@end