@interface SPQueryJob
- (SPQueryJob)initWithSIJob:(__SIJobRef *)a3 dataclass:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6;
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

- (SPQueryJob)initWithSIJob:(__SIJobRef *)a3 dataclass:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = SPQueryJob;
  v12 = [(SPQueryJob *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_siJob = a3;
    objc_storeStrong(&v12->_dataclass, a4);
    v14 = MEMORY[0x2383760E0](v11);
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