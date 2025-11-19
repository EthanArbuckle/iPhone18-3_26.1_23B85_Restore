@interface ABSProgressReporter
- (ABSProgressReporter)initWithSession:(id)a3;
- (void)doneForRealNotifyingPairedSync:(BOOL)a3;
@end

@implementation ABSProgressReporter

- (ABSProgressReporter)initWithSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ABSProgressReporter;
  v6 = [(ABSProgressReporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
    v7->_start = CFAbsoluteTimeGetCurrent();
  }

  return v7;
}

- (void)doneForRealNotifyingPairedSync:(BOOL)a3
{
  v5 = os_transaction_create();
  v6 = sub_10002ADFC();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039E14;
  block[3] = &unk_10005DB00;
  v10 = a3;
  block[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

@end