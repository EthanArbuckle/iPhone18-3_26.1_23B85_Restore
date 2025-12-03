@interface CSDVoIPProcessAssertionManager
- (CSDVoIPProcessAssertionManager)initWithSerialQueue:(id)queue;
- (NSCountedSet)processAssertions;
- (id)processAssertionWithBundleIdentifier:(id)identifier;
- (void)acquireProcessAssertionForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)invalidateProcessAssertionForBundleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CSDVoIPProcessAssertionManager

- (CSDVoIPProcessAssertionManager)initWithSerialQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = CSDVoIPProcessAssertionManager;
  v6 = [(CSDVoIPProcessAssertionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serialQueue, queue);
    v8 = objc_alloc_init(NSCountedSet);
    processAssertions = v7->_processAssertions;
    v7->_processAssertions = v8;
  }

  return v7;
}

- (void)acquireProcessAssertionForBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  serialQueue = [(CSDVoIPProcessAssertionManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AD384;
  block[3] = &unk_10061AF20;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(serialQueue, block);
}

- (void)invalidateProcessAssertionForBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  serialQueue = [(CSDVoIPProcessAssertionManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AD9AC;
  block[3] = &unk_10061AF20;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(serialQueue, block);
}

- (id)processAssertionWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CSDVoIPProcessAssertion alloc] initWithBundleIdentifier:identifierCopy];

  return v4;
}

- (NSCountedSet)processAssertions
{
  serialQueue = [(CSDVoIPProcessAssertionManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  processAssertions = self->_processAssertions;

  return processAssertions;
}

@end