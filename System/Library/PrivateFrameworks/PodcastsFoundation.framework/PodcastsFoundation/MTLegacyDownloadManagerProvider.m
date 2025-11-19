@interface MTLegacyDownloadManagerProvider
- (void)setupWith:(id)a3 downloadsNotifier:(id)a4;
@end

@implementation MTLegacyDownloadManagerProvider

- (void)setupWith:(id)a3 downloadsNotifier:(id)a4
{
  v6 = a4;
  [(MTLegacyDownloadManagerProvider *)self setDownloads:a3];
  [(MTLegacyDownloadManagerProvider *)self setNotifier:v6];
}

@end