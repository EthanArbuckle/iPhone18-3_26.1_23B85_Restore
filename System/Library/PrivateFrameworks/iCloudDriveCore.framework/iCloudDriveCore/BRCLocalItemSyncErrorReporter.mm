@interface BRCLocalItemSyncErrorReporter
- (BRCLocalItemSyncErrorReporter)initWithABCReporter:(id)a3 dbItemSyncErrorCapturer:(id)a4;
@end

@implementation BRCLocalItemSyncErrorReporter

- (BRCLocalItemSyncErrorReporter)initWithABCReporter:(id)a3 dbItemSyncErrorCapturer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BRCLocalItemSyncErrorReporter;
  v9 = [(BRCLocalItemSyncErrorReporter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_abcReporter, a3);
    objc_storeStrong(&v10->_dbItemSyncErrorCapturer, a4);
  }

  return v10;
}

@end