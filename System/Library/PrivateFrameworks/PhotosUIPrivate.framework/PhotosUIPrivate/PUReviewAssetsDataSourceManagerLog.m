@interface PUReviewAssetsDataSourceManagerLog
@end

@implementation PUReviewAssetsDataSourceManagerLog

uint64_t ___PUReviewAssetsDataSourceManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "PUReviewAssetsDataSourceManager");
  v1 = _PUReviewAssetsDataSourceManagerLog_log;
  _PUReviewAssetsDataSourceManagerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end