@interface DownloadQueueManager
- (void)downloadManagerDidBecomeInitialized:(id)a3;
- (void)downloadManagerDownloadsDidChange:(id)a3;
- (void)handleErrors:(id)a3;
@end

@implementation DownloadQueueManager

- (void)downloadManagerDidBecomeInitialized:(id)a3
{
  v4 = a3;
  v8 = self;
  OUTLINED_FUNCTION_44_65();
  sub_1E32AD740(v5, v6, v7);
}

- (void)handleErrors:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  sub_1E42062B4();
  v4 = self;
  OUTLINED_FUNCTION_50();
  sub_1E409E9FC();
}

- (void)downloadManagerDownloadsDidChange:(id)a3
{
  v4 = a3;
  v8 = self;
  OUTLINED_FUNCTION_43_70();
  sub_1E32AD740(v5, v6, v7);
}

@end