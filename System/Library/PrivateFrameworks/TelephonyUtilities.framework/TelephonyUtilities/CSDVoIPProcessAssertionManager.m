@interface CSDVoIPProcessAssertionManager
- (CSDVoIPProcessAssertionManager)initWithSerialQueue:(id)a3;
- (NSCountedSet)processAssertions;
- (id)processAssertionWithBundleIdentifier:(id)a3;
- (void)acquireProcessAssertionForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)invalidateProcessAssertionForBundleIdentifier:(id)a3 completion:(id)a4;
@end

@implementation CSDVoIPProcessAssertionManager

- (CSDVoIPProcessAssertionManager)initWithSerialQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CSDVoIPProcessAssertionManager;
  v6 = [(CSDVoIPProcessAssertionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serialQueue, a3);
    v8 = objc_alloc_init(NSCountedSet);
    processAssertions = v7->_processAssertions;
    v7->_processAssertions = v8;
  }

  return v7;
}

- (void)acquireProcessAssertionForBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDVoIPProcessAssertionManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AD384;
  block[3] = &unk_10061AF20;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)invalidateProcessAssertionForBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDVoIPProcessAssertionManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AD9AC;
  block[3] = &unk_10061AF20;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)processAssertionWithBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[CSDVoIPProcessAssertion alloc] initWithBundleIdentifier:v3];

  return v4;
}

- (NSCountedSet)processAssertions
{
  v3 = [(CSDVoIPProcessAssertionManager *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  processAssertions = self->_processAssertions;

  return processAssertions;
}

@end