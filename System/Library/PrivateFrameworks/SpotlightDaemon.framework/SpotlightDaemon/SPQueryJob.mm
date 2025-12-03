@interface SPQueryJob
- (SPQueryJob)initWithSIJob:(__SIJobRef *)job dataclass:(id)dataclass eventHandler:(id)handler resultsHandler:(id)resultsHandler;
- (SPQueryResultsQueue)resultsQueue;
- (void)cancel;
- (void)dealloc;
@end

@implementation SPQueryJob

- (void)dealloc
{
  if (self->_siJob)
  {
    SICancel();
    self->_siJob = 0;
  }

  v3.receiver = self;
  v3.super_class = SPQueryJob;
  [(SPQueryJob *)&v3 dealloc];
}

- (SPQueryJob)initWithSIJob:(__SIJobRef *)job dataclass:(id)dataclass eventHandler:(id)handler resultsHandler:(id)resultsHandler
{
  dataclassCopy = dataclass;
  resultsHandlerCopy = resultsHandler;
  v17.receiver = self;
  v17.super_class = SPQueryJob;
  v12 = [(SPQueryJob *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_siJob = job;
    objc_storeStrong(&v12->_dataclass, dataclass);
    v14 = MEMORY[0x2383760E0](resultsHandlerCopy);
    resultsHandler = v13->_resultsHandler;
    v13->_resultsHandler = v14;
  }

  return v13;
}

- (void)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_resultsQueue);
  [WeakRetained cancelJob:self];
}

- (SPQueryResultsQueue)resultsQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_resultsQueue);

  return WeakRetained;
}

@end