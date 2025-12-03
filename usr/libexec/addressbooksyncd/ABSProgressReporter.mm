@interface ABSProgressReporter
- (ABSProgressReporter)initWithSession:(id)session;
- (void)doneForRealNotifyingPairedSync:(BOOL)sync;
@end

@implementation ABSProgressReporter

- (ABSProgressReporter)initWithSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = ABSProgressReporter;
  v6 = [(ABSProgressReporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    v7->_start = CFAbsoluteTimeGetCurrent();
  }

  return v7;
}

- (void)doneForRealNotifyingPairedSync:(BOOL)sync
{
  v5 = os_transaction_create();
  v6 = sub_10002ADFC();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039E14;
  block[3] = &unk_10005DB00;
  syncCopy = sync;
  block[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

@end