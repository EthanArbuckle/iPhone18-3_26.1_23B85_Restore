@interface WBSStartPageBackgroundImagesDataSource
@end

@implementation WBSStartPageBackgroundImagesDataSource

void __88__WBSStartPageBackgroundImagesDataSource_initWithBuiltInImageURLs_localCachesDirectory___block_invoke_2_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Unable to read background images from primary or fallback path: %{public}@", buf, 0xCu);
}

@end