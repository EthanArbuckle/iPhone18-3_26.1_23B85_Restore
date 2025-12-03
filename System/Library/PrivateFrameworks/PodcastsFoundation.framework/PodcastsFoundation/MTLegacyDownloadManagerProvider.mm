@interface MTLegacyDownloadManagerProvider
- (void)setupWith:(id)with downloadsNotifier:(id)notifier;
@end

@implementation MTLegacyDownloadManagerProvider

- (void)setupWith:(id)with downloadsNotifier:(id)notifier
{
  notifierCopy = notifier;
  [(MTLegacyDownloadManagerProvider *)self setDownloads:with];
  [(MTLegacyDownloadManagerProvider *)self setNotifier:notifierCopy];
}

@end