@interface PFDownloadsStateReportCollector
- (PFDownloadsStateReportCollector)init;
- (PFDownloadsStateReportCollector)initWithManagedObjectContext:(id)context episodePropertiesToReport:(id)report showPropertiesToReport:(id)toReport allEpisodes:(BOOL)episodes;
- (void)generateReportWithCompletionHandler:(id)handler;
@end

@implementation PFDownloadsStateReportCollector

- (PFDownloadsStateReportCollector)initWithManagedObjectContext:(id)context episodePropertiesToReport:(id)report showPropertiesToReport:(id)toReport allEpisodes:(BOOL)episodes
{
  v9 = sub_1D91785FC();
  v10 = sub_1D91785FC();
  v11 = self + OBJC_IVAR___PFDownloadsStateReportCollector_checker;
  *v11 = context;
  *(v11 + 1) = v9;
  *(v11 + 2) = v10;
  v11[24] = episodes;
  v14.receiver = self;
  v14.super_class = type metadata accessor for DownloadStateReportCollector();
  contextCopy = context;
  return [(PFDownloadsStateReportCollector *)&v14 init];
}

- (void)generateReportWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1D8F0CBA4(sub_1D8F0D33C, v5);
}

- (PFDownloadsStateReportCollector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end