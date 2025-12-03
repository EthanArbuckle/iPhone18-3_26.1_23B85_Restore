@interface PFPendingDownloadRemovals
- (PFPendingDownloadRemovals)init;
- (void)appendEpisodeUUIDsForDeletion:(id)deletion;
- (void)writeToUserDefaults:(id)defaults;
@end

@implementation PFPendingDownloadRemovals

- (void)appendEpisodeUUIDsForDeletion:(id)deletion
{
  v4 = sub_1D91785FC();
  selfCopy = self;
  PendingDownloadRemovals.append(episodes:)(v4);
}

- (void)writeToUserDefaults:(id)defaults
{
  v5 = sub_1D917820C();
  v7 = v6;
  defaultsCopy = defaults;
  selfCopy = self;
  sub_1D8E75704(selfCopy, v5, v7);
}

- (PFPendingDownloadRemovals)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end