@interface PLBackgroundJobWorkerPendingWorkItems
- (PLBackgroundJobWorkerPendingWorkItems)initWithCriteria:(id)criteria workItemsNeedingProcessing:(id)processing;
- (PLBackgroundJobWorkerPendingWorkItems)initWithSignalAgainDate:(id)date;
- (PLBackgroundJobWorkerPendingWorkItems)initWithZeroWorkItemsForValidCriteria;
@end

@implementation PLBackgroundJobWorkerPendingWorkItems

- (PLBackgroundJobWorkerPendingWorkItems)initWithSignalAgainDate:(id)date
{
  dateCopy = date;
  initWithZeroWorkItems = [(PLBackgroundJobWorkerPendingWorkItems *)self initWithZeroWorkItems];
  [(PLBackgroundJobWorkerPendingWorkItems *)initWithZeroWorkItems setSignalAgainDate:dateCopy];

  return initWithZeroWorkItems;
}

- (PLBackgroundJobWorkerPendingWorkItems)initWithZeroWorkItemsForValidCriteria
{
  initWithZeroWorkItems = [(PLBackgroundJobWorkerPendingWorkItems *)self initWithZeroWorkItems];
  [(PLBackgroundJobWorkerPendingWorkItems *)initWithZeroWorkItems setZeroWorkItemsForValidCriteria:1];

  return initWithZeroWorkItems;
}

- (PLBackgroundJobWorkerPendingWorkItems)initWithCriteria:(id)criteria workItemsNeedingProcessing:(id)processing
{
  criteriaCopy = criteria;
  processingCopy = processing;
  v14.receiver = self;
  v14.super_class = PLBackgroundJobWorkerPendingWorkItems;
  v8 = [(PLBackgroundJobWorkerPendingWorkItems *)&v14 init];
  if (v8)
  {
    v9 = [criteriaCopy copy];
    criteria = v8->_criteria;
    v8->_criteria = v9;

    v11 = [processingCopy copy];
    workItemsNeedingProcessing = v8->_workItemsNeedingProcessing;
    v8->_workItemsNeedingProcessing = v11;
  }

  return v8;
}

@end