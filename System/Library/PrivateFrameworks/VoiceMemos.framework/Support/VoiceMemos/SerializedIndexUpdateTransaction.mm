@interface SerializedIndexUpdateTransaction
- (SerializedIndexUpdateTransaction)initWithSearchIndex:(id)a3 identifier:(id)a4;
- (id)_waitWithReasonableTimeoutOnSemaphore:(id)a3 stepDescription:(id)a4;
- (void)performSynchronizedStepWithDescription:(id)a3 isSkippedIfPreviousErrors:(BOOL)a4 isIndexUpdatingStep:(BOOL)a5 block:(id)a6;
- (void)performTransactionOnQueue:(id)a3 processingBlock:(id)a4 finishedBlock:(id)a5;
@end

@implementation SerializedIndexUpdateTransaction

- (SerializedIndexUpdateTransaction)initWithSearchIndex:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = SerializedIndexUpdateTransaction;
  v9 = [(SerializedIndexUpdateTransaction *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchIndex, a3);
    objc_storeStrong(&v10->_identifier, a4);
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

- (void)performTransactionOnQueue:(id)a3 processingBlock:(id)a4 finishedBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  identifier = self->_identifier;
  v11 = a3;
  [(NSString *)identifier UTF8String];
  v12 = os_transaction_create();
  XPCKeepAliveTransaction = self->_XPCKeepAliveTransaction;
  self->_XPCKeepAliveTransaction = v12;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DC3C;
  block[3] = &unk_1000558D8;
  block[4] = self;
  v17 = v8;
  v18 = v9;
  v14 = v9;
  v15 = v8;
  dispatch_async(v11, block);
}

- (void)performSynchronizedStepWithDescription:(id)a3 isSkippedIfPreviousErrors:(BOOL)a4 isIndexUpdatingStep:(BOOL)a5 block:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (a4 || ![(NSMutableArray *)self->_operationTimeoutErrors count]&& ![(NSMutableArray *)self->_operationStepErrors count])
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
    v25 = a5;
    block[4] = self;
    dispatch_sync(queue, block);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10000E244;
    v21 = &unk_100055928;
    v22 = self;
    v15 = dispatch_semaphore_create(0);
    v23 = v15;
    v11[2](v11, &v18);
    v16 = [(SerializedIndexUpdateTransaction *)self _waitWithReasonableTimeoutOnSemaphore:v15 stepDescription:v10, v18, v19, v20, v21, v22];
    if (v16)
    {
      [(NSMutableArray *)self->_operationTimeoutErrors addObject:v16];
    }

    v17 = *p_currentStepDescription;
    *p_currentStepDescription = 0;
  }
}

- (id)_waitWithReasonableTimeoutOnSemaphore:(id)a3 stepDescription:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = dispatch_time(0, 5000000000);
  v8 = dispatch_semaphore_wait(v6, v7);

  if (v8)
  {
    v9 = [(__CFString *)v5 length];
    v10 = @"unknown operation";
    if (v9)
    {
      v10 = v5;
    }

    v11 = v10;

    v12 = [NSString stringWithFormat:@"Couldn’t communicate with a helper 'CoreSpotlight' while handling '%@'", v11];
    v15 = NSLocalizedDescriptionKey;
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v8 = [NSError errorWithDomain:RCSSavedRecordingServiceErrorDomain code:501 userInfo:v13];

    v5 = v11;
  }

  return v8;
}

@end