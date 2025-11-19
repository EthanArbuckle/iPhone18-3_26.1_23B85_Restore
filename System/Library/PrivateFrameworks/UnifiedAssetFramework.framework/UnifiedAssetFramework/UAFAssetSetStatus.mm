@interface UAFAssetSetStatus
- (UAFAssetSetStatus)initWithStatus:(unint64_t)a3 percent:(double)a4 completedBytes:(unint64_t)a5 totalBytes:(unint64_t)a6;
@end

@implementation UAFAssetSetStatus

- (UAFAssetSetStatus)initWithStatus:(unint64_t)a3 percent:(double)a4 completedBytes:(unint64_t)a5 totalBytes:(unint64_t)a6
{
  v14.receiver = self;
  v14.super_class = UAFAssetSetStatus;
  v10 = [(UAFAssetSetStatus *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_totalBytes = a6;
    v10->_downloadStatus = a3;
    v10->_completedPercent = a4;
    v10->_completedBytes = a5;
    v12 = v10;
  }

  return v11;
}

@end