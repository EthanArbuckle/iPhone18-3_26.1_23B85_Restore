@interface PFPendingDownloadRemovals
- (PFPendingDownloadRemovals)init;
- (void)appendEpisodeUUIDsForDeletion:(id)a3;
- (void)writeToUserDefaults:(id)a3;
@end

@implementation PFPendingDownloadRemovals

- (void)appendEpisodeUUIDsForDeletion:(id)a3
{
  v4 = sub_1D91785FC();
  v5 = self;
  PendingDownloadRemovals.append(episodes:)(v4);
}

- (void)writeToUserDefaults:(id)a3
{
  v5 = sub_1D917820C();
  v7 = v6;
  v8 = a3;
  v9 = self;
  sub_1D8E75704(v9, v5, v7);
}

- (PFPendingDownloadRemovals)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end