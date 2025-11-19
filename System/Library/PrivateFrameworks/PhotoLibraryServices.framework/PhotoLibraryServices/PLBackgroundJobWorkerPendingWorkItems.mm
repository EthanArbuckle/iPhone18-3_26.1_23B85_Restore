@interface PLBackgroundJobWorkerPendingWorkItems
- (PLBackgroundJobWorkerPendingWorkItems)initWithCriteria:(id)a3 workItemsNeedingProcessing:(id)a4;
- (PLBackgroundJobWorkerPendingWorkItems)initWithSignalAgainDate:(id)a3;
- (PLBackgroundJobWorkerPendingWorkItems)initWithZeroWorkItemsForValidCriteria;
@end

@implementation PLBackgroundJobWorkerPendingWorkItems

- (PLBackgroundJobWorkerPendingWorkItems)initWithSignalAgainDate:(id)a3
{
  v4 = a3;
  v5 = [(PLBackgroundJobWorkerPendingWorkItems *)self initWithZeroWorkItems];
  [(PLBackgroundJobWorkerPendingWorkItems *)v5 setSignalAgainDate:v4];

  return v5;
}

- (PLBackgroundJobWorkerPendingWorkItems)initWithZeroWorkItemsForValidCriteria
{
  v2 = [(PLBackgroundJobWorkerPendingWorkItems *)self initWithZeroWorkItems];
  [(PLBackgroundJobWorkerPendingWorkItems *)v2 setZeroWorkItemsForValidCriteria:1];

  return v2;
}

- (PLBackgroundJobWorkerPendingWorkItems)initWithCriteria:(id)a3 workItemsNeedingProcessing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PLBackgroundJobWorkerPendingWorkItems;
  v8 = [(PLBackgroundJobWorkerPendingWorkItems *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    criteria = v8->_criteria;
    v8->_criteria = v9;

    v11 = [v7 copy];
    workItemsNeedingProcessing = v8->_workItemsNeedingProcessing;
    v8->_workItemsNeedingProcessing = v11;
  }

  return v8;
}

@end