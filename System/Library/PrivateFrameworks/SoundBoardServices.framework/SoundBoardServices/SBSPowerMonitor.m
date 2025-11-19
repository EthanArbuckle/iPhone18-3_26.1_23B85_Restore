@interface SBSPowerMonitor
- (SBSPowerMonitor)initWithTarget:(id)a3;
- (void)dealloc;
- (void)getPowerEstimateForInterval:(float)a3 reply:(id)a4;
@end

@implementation SBSPowerMonitor

- (void)dealloc
{
  [(NSXPCConnection *)self->_sbConnection invalidate];
  v3.receiver = self;
  v3.super_class = SBSPowerMonitor;
  [(SBSPowerMonitor *)&v3 dealloc];
}

- (void)getPowerEstimateForInterval:(float)a3 reply:(id)a4
{
  if (a4)
  {
    sbProxy = self->_sbProxy;

    [SBSPowerMonitorImplementer getPowerEstimateForInterval:"getPowerEstimateForInterval:reply:" reply:?];
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v7 = _SBSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_26B246000, v7, OS_LOG_TYPE_ERROR, "Reply completion handler is nil", v8, 2u);
    }
  }
}

- (SBSPowerMonitor)initWithTarget:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSPowerMonitor;
  v5 = [(SBSPowerMonitor *)&v9 init];
  if (v5)
  {
    if ([v4 isEqualToString:@"localhost"])
    {
      [SBSUtils createProxyConnectionForXPCWithExportedObject:0 connection:&v5->_sbConnection];
    }

    else
    {
      [SBSUtils createProxyConnectionForRapportTarget:v4];
    }
    v6 = ;
    sbProxy = v5->_sbProxy;
    v5->_sbProxy = v6;
  }

  return v5;
}

@end