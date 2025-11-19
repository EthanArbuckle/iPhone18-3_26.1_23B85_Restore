@interface PMLAWDAvailableSessionsTracker
- (PMLAWDAvailableSessionsTracker)init;
- (PMLAWDAvailableSessionsTracker)initWithAWDConnection:(id)a3;
- (void)reportStatsToAWD;
- (void)setAWDMetricQueryDelegate:(id)a3;
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
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PMLAWDAvailableSessionsTracker.m" lineNumber:54 description:@"Missing delegate to handle AWD metric request."];
  }
}

- (void)setAWDMetricQueryDelegate:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PMLAWDAvailableSessionsTracker.m" lineNumber:41 description:@"AWD metric query delegate can only be set once"];
  }

  objc_storeWeak(&self->_delegate, v5);
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

- (PMLAWDAvailableSessionsTracker)initWithAWDConnection:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  v9.receiver = self;
  v9.super_class = PMLAWDAvailableSessionsTracker;
  v7 = [(PMLAWDBaseTracker *)&v9 initWithModel:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_awdServerConnection, a3);
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