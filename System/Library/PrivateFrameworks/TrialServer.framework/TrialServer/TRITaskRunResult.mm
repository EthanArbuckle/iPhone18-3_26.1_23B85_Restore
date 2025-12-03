@interface TRITaskRunResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResult:(id)result;
- (TRITaskRunResult)initWithRunStatus:(int)status reportResultToServer:(BOOL)server nextTasks:(id)tasks earliestRetryDate:(id)date;
- (id)copyWithReplacementEarliestRetryDate:(id)date;
- (id)copyWithReplacementNextTasks:(id)tasks;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRITaskRunResult

- (TRITaskRunResult)initWithRunStatus:(int)status reportResultToServer:(BOOL)server nextTasks:(id)tasks earliestRetryDate:(id)date
{
  tasksCopy = tasks;
  dateCopy = date;
  if (!tasksCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:688 description:{@"Invalid parameter not satisfying: %@", @"nextTasks != nil"}];
  }

  v18.receiver = self;
  v18.super_class = TRITaskRunResult;
  v14 = [(TRITaskRunResult *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_runStatus = status;
    v14->_reportResultToServer = server;
    objc_storeStrong(&v14->_nextTasks, tasks);
    objc_storeStrong(&v15->_earliestRetryDate, date);
  }

  return v15;
}

- (id)copyWithReplacementNextTasks:(id)tasks
{
  tasksCopy = tasks;
  v5 = [objc_alloc(objc_opt_class()) initWithRunStatus:self->_runStatus reportResultToServer:self->_reportResultToServer nextTasks:tasksCopy earliestRetryDate:self->_earliestRetryDate];

  return v5;
}

- (id)copyWithReplacementEarliestRetryDate:(id)date
{
  dateCopy = date;
  v5 = [objc_alloc(objc_opt_class()) initWithRunStatus:self->_runStatus reportResultToServer:self->_reportResultToServer nextTasks:self->_nextTasks earliestRetryDate:dateCopy];

  return v5;
}

- (BOOL)isEqualToResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (!resultCopy)
  {
    goto LABEL_10;
  }

  runStatus = self->_runStatus;
  if (runStatus != [resultCopy runStatus])
  {
    goto LABEL_10;
  }

  reportResultToServer = self->_reportResultToServer;
  if (reportResultToServer != [v5 reportResultToServer])
  {
    goto LABEL_10;
  }

  v8 = self->_nextTasks == 0;
  nextTasks = [v5 nextTasks];
  v10 = nextTasks != 0;

  if (v8 == v10)
  {
    goto LABEL_10;
  }

  nextTasks = self->_nextTasks;
  if (nextTasks)
  {
    nextTasks2 = [v5 nextTasks];
    v13 = [(NSArray *)nextTasks isEqual:nextTasks2];

    if (!v13)
    {
      goto LABEL_10;
    }
  }

  v14 = self->_earliestRetryDate == 0;
  earliestRetryDate = [v5 earliestRetryDate];
  v16 = earliestRetryDate != 0;

  if (v14 != v16)
  {
    earliestRetryDate = self->_earliestRetryDate;
    if (earliestRetryDate)
    {
      earliestRetryDate2 = [v5 earliestRetryDate];
      v19 = [(NSDate *)earliestRetryDate isEqual:earliestRetryDate2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITaskRunResult *)self isEqualToResult:v5];
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