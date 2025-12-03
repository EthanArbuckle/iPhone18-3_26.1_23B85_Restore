@interface BATerminationAssertion
- (BATerminationAssertion)initWithBundleIdentifier:(id)identifier;
- (BOOL)acquireAssertionSync:(id *)sync;
- (void)acquireAssertionWithCompletion:(id)completion;
- (void)assertionTargetProcessDidExit:(id)exit;
- (void)invalidate;
@end

@implementation BATerminationAssertion

- (BATerminationAssertion)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = BATerminationAssertion;
  v5 = [(BATerminationAssertion *)&v11 init];
  if (v5)
  {
    v6 = [RBSProcessPredicate predicateMatchingBundleIdentifier:identifierCopy];
    identifierCopy = [NSString stringWithFormat:@"BackgroundAssets daemon terminating bundleID: %@", identifierCopy];
    v8 = [[RBSTerminateContext alloc] initWithExplanation:identifierCopy];
    [v8 setReportType:0];
    [v8 setMaximumTerminationResistance:40];
    v9 = [[RBSTerminationAssertion alloc] initWithPredicate:v6 context:v8];
    [(BATerminationAssertion *)v5 setTerminationAssertion:v9];
  }

  return v5;
}

- (BOOL)acquireAssertionSync:(id *)sync
{
  terminationAssertion = [(BATerminationAssertion *)self terminationAssertion];

  if (terminationAssertion)
  {
    v6 = dispatch_semaphore_create(0);
    [(BATerminationAssertion *)self setSyncSema:v6];
    terminationAssertion2 = [(BATerminationAssertion *)self terminationAssertion];
    [terminationAssertion2 addObserver:self];

    terminationAssertion3 = [(BATerminationAssertion *)self terminationAssertion];
    v9 = [terminationAssertion3 acquireWithError:sync];

    if (v9)
    {
      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      terminationAssertion4 = [(BATerminationAssertion *)self terminationAssertion];
      [terminationAssertion4 removeObserver:self];
    }
  }

  else if (sync)
  {
    sub_100027CE0(@"BAErrorDomain", -500);
    *sync = v9 = 0;
  }

  else
  {
    return 0;
  }

  return v9;
}

- (void)acquireAssertionWithCompletion:(id)completion
{
  completionCopy = completion;
  terminationAssertion = [(BATerminationAssertion *)self terminationAssertion];

  if (terminationAssertion)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008838;
    block[3] = &unk_100079440;
    objc_copyWeak(&v17, &location);
    block[4] = self;
    v6 = completionCopy;
    v16 = v6;
    v7 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    [(BATerminationAssertion *)self setAsyncClientBlock:v7];

    terminationAssertion2 = [(BATerminationAssertion *)self terminationAssertion];
    [terminationAssertion2 addObserver:self];

    terminationAssertion3 = [(BATerminationAssertion *)self terminationAssertion];
    v14 = 0;
    v10 = [terminationAssertion3 acquireWithError:&v14];
    v11 = v14;

    if ((v10 & 1) == 0)
    {
      terminationAssertion4 = [(BATerminationAssertion *)self terminationAssertion];
      [terminationAssertion4 removeObserver:self];

      [(BATerminationAssertion *)self setAsyncClientBlock:0];
      (*(v6 + 2))(v6, 0, v11);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = sub_100027CE0(@"BAErrorDomain", -500);
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

- (void)invalidate
{
  terminationAssertion = [(BATerminationAssertion *)self terminationAssertion];
  [terminationAssertion invalidate];

  [(BATerminationAssertion *)self setTerminationAssertion:0];

  [(BATerminationAssertion *)self setAsyncClientBlock:0];
}

- (void)assertionTargetProcessDidExit:(id)exit
{
  dsema = [(BATerminationAssertion *)self syncSema];
  if (dsema)
  {
    dispatch_semaphore_signal(dsema);
  }

  asyncClientBlock = [(BATerminationAssertion *)self asyncClientBlock];
  v5 = asyncClientBlock;
  if (asyncClientBlock)
  {
    (*(asyncClientBlock + 16))(asyncClientBlock);
    [(BATerminationAssertion *)self setAsyncClientBlock:0];
  }
}

@end