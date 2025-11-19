@interface PPXPCNamedEntityStoreQueryMonitorSession
- (PPXPCNamedEntityStoreQueryMonitorSession)initWithMonitoringHelper:(id)a3;
- (void)setLastCallDate;
@end

@implementation PPXPCNamedEntityStoreQueryMonitorSession

- (void)setLastCallDate
{
  v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:-10.0];
  lastCallDate = self->_lastCallDate;
  self->_lastCallDate = v3;

  MEMORY[0x1EEE66BB8]();
}

- (PPXPCNamedEntityStoreQueryMonitorSession)initWithMonitoringHelper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PPXPCNamedEntityStoreQueryMonitorSession;
  v6 = [(PPXPCNamedEntityStoreQueryMonitorSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_monitoringHelper, a3);
    [(PPXPCNamedEntityStoreQueryMonitorSession *)v7 setLastCallDate];
  }

  return v7;
}

@end