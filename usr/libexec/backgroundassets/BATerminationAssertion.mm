@interface BATerminationAssertion
- (BATerminationAssertion)initWithBundleIdentifier:(id)a3;
- (BOOL)acquireAssertionSync:(id *)a3;
- (void)acquireAssertionWithCompletion:(id)a3;
- (void)assertionTargetProcessDidExit:(id)a3;
- (void)invalidate;
@end

@implementation BATerminationAssertion

- (BATerminationAssertion)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BATerminationAssertion;
  v5 = [(BATerminationAssertion *)&v11 init];
  if (v5)
  {
    v6 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v4];
    v7 = [NSString stringWithFormat:@"BackgroundAssets daemon terminating bundleID: %@", v4];
    v8 = [[RBSTerminateContext alloc] initWithExplanation:v7];
    [v8 setReportType:0];
    [v8 setMaximumTerminationResistance:40];
    v9 = [[RBSTerminationAssertion alloc] initWithPredicate:v6 context:v8];
    [(BATerminationAssertion *)v5 setTerminationAssertion:v9];
  }

  return v5;
}

- (BOOL)acquireAssertionSync:(id *)a3
{
  v5 = [(BATerminationAssertion *)self terminationAssertion];

  if (v5)
  {
    v6 = dispatch_semaphore_create(0);
    [(BATerminationAssertion *)self setSyncSema:v6];
    v7 = [(BATerminationAssertion *)self terminationAssertion];
    [v7 addObserver:self];

    v8 = [(BATerminationAssertion *)self terminationAssertion];
    v9 = [v8 acquireWithError:a3];

    if (v9)
    {
      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v10 = [(BATerminationAssertion *)self terminationAssertion];
      [v10 removeObserver:self];
    }
  }

  else if (a3)
  {
    sub_100027CE0(@"BAErrorDomain", -500);
    *a3 = v9 = 0;
  }

  else
  {
    return 0;
  }

  return v9;
}

- (void)acquireAssertionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BATerminationAssertion *)self terminationAssertion];

  if (v5)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008838;
    block[3] = &unk_100079440;
    objc_copyWeak(&v17, &location);
    block[4] = self;
    v6 = v4;
    v16 = v6;
    v7 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    [(BATerminationAssertion *)self setAsyncClientBlock:v7];

    v8 = [(BATerminationAssertion *)self terminationAssertion];
    [v8 addObserver:self];

    v9 = [(BATerminationAssertion *)self terminationAssertion];
    v14 = 0;
    v10 = [v9 acquireWithError:&v14];
    v11 = v14;

    if ((v10 & 1) == 0)
    {
      v12 = [(BATerminationAssertion *)self terminationAssertion];
      [v12 removeObserver:self];

      [(BATerminationAssertion *)self setAsyncClientBlock:0];
      (*(v6 + 2))(v6, 0, v11);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = sub_100027CE0(@"BAErrorDomain", -500);
    (*(v4 + 2))(v4, 0, v13);
  }
}

- (void)invalidate
{
  v3 = [(BATerminationAssertion *)self terminationAssertion];
  [v3 invalidate];

  [(BATerminationAssertion *)self setTerminationAssertion:0];

  [(BATerminationAssertion *)self setAsyncClientBlock:0];
}

- (void)assertionTargetProcessDidExit:(id)a3
{
  dsema = [(BATerminationAssertion *)self syncSema];
  if (dsema)
  {
    dispatch_semaphore_signal(dsema);
  }

  v4 = [(BATerminationAssertion *)self asyncClientBlock];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    [(BATerminationAssertion *)self setAsyncClientBlock:0];
  }
}

@end