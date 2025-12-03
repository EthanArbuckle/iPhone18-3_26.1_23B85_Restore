@interface BRCLocalItemSyncErrorReporter
- (BRCLocalItemSyncErrorReporter)initWithABCReporter:(id)reporter dbItemSyncErrorCapturer:(id)capturer;
@end

@implementation BRCLocalItemSyncErrorReporter

- (BRCLocalItemSyncErrorReporter)initWithABCReporter:(id)reporter dbItemSyncErrorCapturer:(id)capturer
{
  reporterCopy = reporter;
  capturerCopy = capturer;
  v12.receiver = self;
  v12.super_class = BRCLocalItemSyncErrorReporter;
  v9 = [(BRCLocalItemSyncErrorReporter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_abcReporter, reporter);
    objc_storeStrong(&v10->_dbItemSyncErrorCapturer, capturer);
  }

  return v10;
}

@end