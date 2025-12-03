@interface PUActivityItemSourceOperation
- (PUActivityItemSourceOperation)initWithDelegate:(id)delegate activityType:(id)type;
- (PUActivityItemSourceOperationDelegate)delegate;
- (void)main;
@end

@implementation PUActivityItemSourceOperation

- (PUActivityItemSourceOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)main
{
  delegate = [(PUActivityItemSourceOperation *)self delegate];
  activityType = [(PUActivityItemSourceOperation *)self activityType];
  [delegate activityItemSourceOperation:self prepareItemForActivityType:activityType];
}

- (PUActivityItemSourceOperation)initWithDelegate:(id)delegate activityType:(id)type
{
  delegateCopy = delegate;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = PUActivityItemSourceOperation;
  v8 = [(PUActivityItemSourceOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [typeCopy copy];
    activityType = v9->_activityType;
    v9->_activityType = v10;

    v12 = dispatch_semaphore_create(0);
    semaphore = v9->_semaphore;
    v9->_semaphore = v12;
  }

  return v9;
}

@end