@interface VMABCReporter
+ (id)sharedInstance;
- (VMABCReporter)init;
- (void)reportIssueType:(id)a3 description:(id)a4;
@end

@implementation VMABCReporter

+ (id)sharedInstance
{
  if (qword_10010D6E8 != -1)
  {
    sub_10009B3B4();
  }

  v3 = qword_10010D6E0;

  return v3;
}

- (VMABCReporter)init
{
  v8.receiver = self;
  v8.super_class = VMABCReporter;
  v2 = [(VMABCReporter *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.visualvoicemail.vvm.abcreporter", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [[SDRDiagnosticReporter alloc] initWithQueue:v2->_queue];
    reporter = v2->_reporter;
    v2->_reporter = v5;
  }

  return v2;
}

- (void)reportIssueType:(id)a3 description:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VMABCReporter *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008224;
  block[3] = &unk_1000ED478;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

@end