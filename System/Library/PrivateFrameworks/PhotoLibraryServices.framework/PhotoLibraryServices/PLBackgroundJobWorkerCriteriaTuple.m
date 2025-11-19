@interface PLBackgroundJobWorkerCriteriaTuple
- (BOOL)isEqual:(id)a3;
- (PLBackgroundJobWorkerCriteriaTuple)initWithWorker:(id)a3 withCriteria:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLBackgroundJobWorkerCriteriaTuple

- (unint64_t)hash
{
  v3 = [(PLBackgroundJobWorkerCriteriaTuple *)self worker];
  v4 = [v3 workerDetailedName];
  v5 = [v4 hash];
  v6 = [(PLBackgroundJobWorkerCriteriaTuple *)self criteria];
  v7 = [v6 hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PLBackgroundJobWorkerCriteriaTuple;
    if ([(PLBackgroundJobWorkerCriteriaTuple *)&v13 isEqual:v4])
    {
      v5 = [(PLBackgroundJobWorkerCriteriaTuple *)self worker];
      v6 = [v5 workerDetailedName];
      v7 = [(PLBackgroundJobWorkerCriteriaTuple *)v4 worker];
      v8 = [v7 workerDetailedName];
      if ([v6 isEqualToString:v8])
      {
        v9 = [(PLBackgroundJobWorkerCriteriaTuple *)self criteria];
        v10 = [(PLBackgroundJobWorkerCriteriaTuple *)v4 criteria];
        v11 = [v9 isEqual:v10];
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
  v4 = [(PLBackgroundJobCriteria *)self->_criteria shortCode];
  v5 = [(PLBackgroundJobWorker *)self->_worker workerDetailedName];
  v6 = [v3 stringWithFormat:@"[%@] - %@", v4, v5];

  return v6;
}

- (PLBackgroundJobWorkerCriteriaTuple)initWithWorker:(id)a3 withCriteria:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PLBackgroundJobWorkerCriteriaTuple;
  v9 = [(PLBackgroundJobWorkerCriteriaTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_worker, a3);
    objc_storeStrong(&v10->_criteria, a4);
  }

  return v10;
}

@end