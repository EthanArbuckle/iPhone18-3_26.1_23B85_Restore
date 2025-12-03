@interface PLBackgroundJobWorkerCriteriaTuple
- (BOOL)isEqual:(id)equal;
- (PLBackgroundJobWorkerCriteriaTuple)initWithWorker:(id)worker withCriteria:(id)criteria;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLBackgroundJobWorkerCriteriaTuple

- (unint64_t)hash
{
  worker = [(PLBackgroundJobWorkerCriteriaTuple *)self worker];
  workerDetailedName = [worker workerDetailedName];
  v5 = [workerDetailedName hash];
  criteria = [(PLBackgroundJobWorkerCriteriaTuple *)self criteria];
  v7 = [criteria hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PLBackgroundJobWorkerCriteriaTuple;
    if ([(PLBackgroundJobWorkerCriteriaTuple *)&v13 isEqual:equalCopy])
    {
      worker = [(PLBackgroundJobWorkerCriteriaTuple *)self worker];
      workerDetailedName = [worker workerDetailedName];
      worker2 = [(PLBackgroundJobWorkerCriteriaTuple *)equalCopy worker];
      workerDetailedName2 = [worker2 workerDetailedName];
      if ([workerDetailedName isEqualToString:workerDetailedName2])
      {
        criteria = [(PLBackgroundJobWorkerCriteriaTuple *)self criteria];
        criteria2 = [(PLBackgroundJobWorkerCriteriaTuple *)equalCopy criteria];
        v11 = [criteria isEqual:criteria2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  shortCode = [(PLBackgroundJobCriteria *)self->_criteria shortCode];
  workerDetailedName = [(PLBackgroundJobWorker *)self->_worker workerDetailedName];
  v6 = [v3 stringWithFormat:@"[%@] - %@", shortCode, workerDetailedName];

  return v6;
}

- (PLBackgroundJobWorkerCriteriaTuple)initWithWorker:(id)worker withCriteria:(id)criteria
{
  workerCopy = worker;
  criteriaCopy = criteria;
  v12.receiver = self;
  v12.super_class = PLBackgroundJobWorkerCriteriaTuple;
  v9 = [(PLBackgroundJobWorkerCriteriaTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_worker, worker);
    objc_storeStrong(&v10->_criteria, criteria);
  }

  return v10;
}

@end