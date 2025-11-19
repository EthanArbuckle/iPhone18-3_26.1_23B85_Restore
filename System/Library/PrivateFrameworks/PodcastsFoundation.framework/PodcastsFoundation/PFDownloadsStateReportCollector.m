@interface PFDownloadsStateReportCollector
- (PFDownloadsStateReportCollector)init;
- (PFDownloadsStateReportCollector)initWithManagedObjectContext:(id)a3 episodePropertiesToReport:(id)a4 showPropertiesToReport:(id)a5 allEpisodes:(BOOL)a6;
- (void)generateReportWithCompletionHandler:(id)a3;
@end

@implementation PFDownloadsStateReportCollector

- (PFDownloadsStateReportCollector)initWithManagedObjectContext:(id)a3 episodePropertiesToReport:(id)a4 showPropertiesToReport:(id)a5 allEpisodes:(BOOL)a6
{
  v9 = sub_1D91785FC();
  v10 = sub_1D91785FC();
  v11 = self + OBJC_IVAR___PFDownloadsStateReportCollector_checker;
  *v11 = a3;
  *(v11 + 1) = v9;
  *(v11 + 2) = v10;
  v11[24] = a6;
  v14.receiver = self;
  v14.super_class = type metadata accessor for DownloadStateReportCollector();
  v12 = a3;
  return [(PFDownloadsStateReportCollector *)&v14 init];
}

- (void)generateReportWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1D8F0CBA4(sub_1D8F0D33C, v5);
}

- (PFDownloadsStateReportCollector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end