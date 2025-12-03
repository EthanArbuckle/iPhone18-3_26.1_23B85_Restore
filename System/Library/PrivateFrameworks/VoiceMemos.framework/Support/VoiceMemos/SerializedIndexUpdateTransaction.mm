@interface SerializedIndexUpdateTransaction
- (SerializedIndexUpdateTransaction)initWithSearchIndex:(id)index identifier:(id)identifier;
- (id)_waitWithReasonableTimeoutOnSemaphore:(id)semaphore stepDescription:(id)description;
- (void)performSynchronizedStepWithDescription:(id)description isSkippedIfPreviousErrors:(BOOL)errors isIndexUpdatingStep:(BOOL)step block:(id)block;
- (void)performTransactionOnQueue:(id)queue processingBlock:(id)block finishedBlock:(id)finishedBlock;
@end

@implementation SerializedIndexUpdateTransaction

- (SerializedIndexUpdateTransaction)initWithSearchIndex:(id)index identifier:(id)identifier
{
  indexCopy = index;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = SerializedIndexUpdateTransaction;
  v9 = [(SerializedIndexUpdateTransaction *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchIndex, index);
    objc_storeStrong(&v10->_identifier, identifier);
    v11 = dispatch_queue_create(0, 0);
    queue = v10->_queue;
    v10->_queue = v11;

    v13 = +[NSMutableArray array];
    operationTimeoutErrors = v10->_operationTimeoutErrors;
    v10->_operationTimeoutErrors = v13;

    v15 = +[NSMutableArray array];
    operationStepErrors = v10->_operationStepErrors;
    v10->_operationStepErrors = v15;

    v10->_canBatch = 0;
  }

  return v10;
}

- (void)performTransactionOnQueue:(id)queue processingBlock:(id)block finishedBlock:(id)finishedBlock
{
  blockCopy = block;
  finishedBlockCopy = finishedBlock;
  identifier = self->_identifier;
  queueCopy = queue;
  [(NSString *)identifier UTF8String];
  v12 = os_transaction_create();
  XPCKeepAliveTransaction = self->_XPCKeepAliveTransaction;
  self->_XPCKeepAliveTransaction = v12;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DC3C;
  block[3] = &unk_1000558D8;
  block[4] = self;
  v17 = blockCopy;
  v18 = finishedBlockCopy;
  v14 = finishedBlockCopy;
  v15 = blockCopy;
  dispatch_async(queueCopy, block);
}

- (void)performSynchronizedStepWithDescription:(id)description isSkippedIfPreviousErrors:(BOOL)errors isIndexUpdatingStep:(BOOL)step block:(id)block
{
  descriptionCopy = description;
  blockCopy = block;
  if (errors || ![(NSMutableArray *)self->_operationTimeoutErrors count]&& ![(NSMutableArray *)self->_operationStepErrors count])
  {
    p_currentStepDescription = &self->_currentStepDescription;
    if ([(NSString *)self->_currentStepDescription length])
    {
      v13 = *p_currentStepDescription;
    }

    else
    {
      v13 = @"unknown operation";
    }

    objc_storeStrong(&self->_currentStepDescription, v13);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E1E8;
    block[3] = &unk_100055900;
    stepCopy = step;
    block[4] = self;
    dispatch_sync(queue, block);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10000E244;
    v21 = &unk_100055928;
    selfCopy = self;
    v15 = dispatch_semaphore_create(0);
    v23 = v15;
    blockCopy[2](blockCopy, &v18);
    selfCopy = [(SerializedIndexUpdateTransaction *)self _waitWithReasonableTimeoutOnSemaphore:v15 stepDescription:descriptionCopy, v18, v19, v20, v21, selfCopy];
    if (selfCopy)
    {
      [(NSMutableArray *)self->_operationTimeoutErrors addObject:selfCopy];
    }

    v17 = *p_currentStepDescription;
    *p_currentStepDescription = 0;
  }
}

- (id)_waitWithReasonableTimeoutOnSemaphore:(id)semaphore stepDescription:(id)description
{
  descriptionCopy = description;
  semaphoreCopy = semaphore;
  v7 = dispatch_time(0, 5000000000);
  v8 = dispatch_semaphore_wait(semaphoreCopy, v7);

  if (v8)
  {
    v9 = [(__CFString *)descriptionCopy length];
    v10 = @"unknown operation";
    if (v9)
    {
      v10 = descriptionCopy;
    }

    v11 = v10;

    v12 = [NSString stringWithFormat:@"Couldn’t communicate with a helper 'CoreSpotlight' while handling '%@'", v11];
    v15 = NSLocalizedDescriptionKey;
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v8 = [NSError errorWithDomain:RCSSavedRecordingServiceErrorDomain code:501 userInfo:v13];

    descriptionCopy = v11;
  }

  return v8;
}

@end