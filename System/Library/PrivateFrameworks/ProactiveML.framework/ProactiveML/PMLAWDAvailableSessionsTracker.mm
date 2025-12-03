@interface PMLAWDAvailableSessionsTracker
- (PMLAWDAvailableSessionsTracker)init;
- (PMLAWDAvailableSessionsTracker)initWithAWDConnection:(id)connection;
- (void)reportStatsToAWD;
- (void)setAWDMetricQueryDelegate:(id)delegate;
@end

@implementation PMLAWDAvailableSessionsTracker

- (void)reportStatsToAWD
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained availableSessionsStatsReportedToAWD];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLAWDAvailableSessionsTracker.m" lineNumber:54 description:@"Missing delegate to handle AWD metric request."];
  }
}

- (void)setAWDMetricQueryDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLAWDAvailableSessionsTracker.m" lineNumber:41 description:@"AWD metric query delegate can only be set once"];
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  objc_initWeak(&location, self);
  awdServerConnection = self->_awdServerConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__PMLAWDAvailableSessionsTracker_setAWDMetricQueryDelegate___block_invoke;
  v9[3] = &unk_279AC0810;
  objc_copyWeak(&v10, &location);
  [(AWDServerConnection *)awdServerConnection registerQueriableMetric:5636103 callback:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__PMLAWDAvailableSessionsTracker_setAWDMetricQueryDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reportStatsToAWD];
}

- (PMLAWDAvailableSessionsTracker)initWithAWDConnection:(id)connection
{
  connectionCopy = connection;
  v6 = objc_opt_new();
  v9.receiver = self;
  v9.super_class = PMLAWDAvailableSessionsTracker;
  v7 = [(PMLAWDBaseTracker *)&v9 initWithModel:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_awdServerConnection, connection);
  }

  return v7;
}

- (PMLAWDAvailableSessionsTracker)init
{
  v3 = [objc_alloc(MEMORY[0x277D7BC58]) initWithComponentId:86];
  v4 = [(PMLAWDAvailableSessionsTracker *)self initWithAWDConnection:v3];

  return v4;
}

@end