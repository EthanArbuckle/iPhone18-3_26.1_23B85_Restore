@interface TRITaskRunResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResult:(id)a3;
- (TRITaskRunResult)initWithRunStatus:(int)a3 reportResultToServer:(BOOL)a4 nextTasks:(id)a5 earliestRetryDate:(id)a6;
- (id)copyWithReplacementEarliestRetryDate:(id)a3;
- (id)copyWithReplacementNextTasks:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRITaskRunResult

- (TRITaskRunResult)initWithRunStatus:(int)a3 reportResultToServer:(BOOL)a4 nextTasks:(id)a5 earliestRetryDate:(id)a6
{
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:688 description:{@"Invalid parameter not satisfying: %@", @"nextTasks != nil"}];
  }

  v18.receiver = self;
  v18.super_class = TRITaskRunResult;
  v14 = [(TRITaskRunResult *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_runStatus = a3;
    v14->_reportResultToServer = a4;
    objc_storeStrong(&v14->_nextTasks, a5);
    objc_storeStrong(&v15->_earliestRetryDate, a6);
  }

  return v15;
}

- (id)copyWithReplacementNextTasks:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRunStatus:self->_runStatus reportResultToServer:self->_reportResultToServer nextTasks:v4 earliestRetryDate:self->_earliestRetryDate];

  return v5;
}

- (id)copyWithReplacementEarliestRetryDate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRunStatus:self->_runStatus reportResultToServer:self->_reportResultToServer nextTasks:self->_nextTasks earliestRetryDate:v4];

  return v5;
}

- (BOOL)isEqualToResult:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  runStatus = self->_runStatus;
  if (runStatus != [v4 runStatus])
  {
    goto LABEL_10;
  }

  reportResultToServer = self->_reportResultToServer;
  if (reportResultToServer != [v5 reportResultToServer])
  {
    goto LABEL_10;
  }

  v8 = self->_nextTasks == 0;
  v9 = [v5 nextTasks];
  v10 = v9 != 0;

  if (v8 == v10)
  {
    goto LABEL_10;
  }

  nextTasks = self->_nextTasks;
  if (nextTasks)
  {
    v12 = [v5 nextTasks];
    v13 = [(NSArray *)nextTasks isEqual:v12];

    if (!v13)
    {
      goto LABEL_10;
    }
  }

  v14 = self->_earliestRetryDate == 0;
  v15 = [v5 earliestRetryDate];
  v16 = v15 != 0;

  if (v14 != v16)
  {
    earliestRetryDate = self->_earliestRetryDate;
    if (earliestRetryDate)
    {
      v18 = [v5 earliestRetryDate];
      v19 = [(NSDate *)earliestRetryDate isEqual:v18];
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
LABEL_10:
    v19 = 0;
  }

  return v19 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITaskRunResult *)self isEqualToResult:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = self->_reportResultToServer - self->_runStatus + 32 * self->_runStatus;
  v4 = [(NSArray *)self->_nextTasks hash]- v3 + 32 * v3;
  return [(NSDate *)self->_earliestRetryDate hash]- v4 + 32 * v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_runStatus];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_reportResultToServer];
  v6 = [v3 initWithFormat:@"<TRITaskRunResult | runStatus:%@ reportResultToServer:%@ nextTasks:%@ earliestRetryDate:%@>", v4, v5, self->_nextTasks, self->_earliestRetryDate];

  return v6;
}

@end