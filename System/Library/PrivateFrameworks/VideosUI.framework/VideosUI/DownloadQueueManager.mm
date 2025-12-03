@interface DownloadQueueManager
- (void)downloadManagerDidBecomeInitialized:(id)initialized;
- (void)downloadManagerDownloadsDidChange:(id)change;
- (void)handleErrors:(id)errors;
@end

@implementation DownloadQueueManager

- (void)downloadManagerDidBecomeInitialized:(id)initialized
{
  initializedCopy = initialized;
  selfCopy = self;
  OUTLINED_FUNCTION_44_65();
  sub_1E32AD740(v5, v6, v7);
}

- (void)handleErrors:(id)errors
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  sub_1E42062B4();
  selfCopy = self;
  OUTLINED_FUNCTION_50();
  sub_1E409E9FC();
}

- (void)downloadManagerDownloadsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  OUTLINED_FUNCTION_43_70();
  sub_1E32AD740(v5, v6, v7);
}

@end