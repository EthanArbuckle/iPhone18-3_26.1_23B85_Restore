@interface SBSHomePodControlsInterface
- (SBSHomePodControlsInterface)initWithTarget:(id)target;
- (void)dealloc;
- (void)getAllSyncedAlarmsAndTimers:(id)timers;
@end

@implementation SBSHomePodControlsInterface

- (void)dealloc
{
  [(NSXPCConnection *)self->_sbConnection invalidate];
  v3.receiver = self;
  v3.super_class = SBSHomePodControlsInterface;
  [(SBSHomePodControlsInterface *)&v3 dealloc];
}

- (void)getAllSyncedAlarmsAndTimers:(id)timers
{
  if (timers)
  {
    sbProxy = self->_sbProxy;

    [(SBSHomePodControlsImplementer *)sbProxy getAllSyncedAlarmsAndTimers:?];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _SBSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26B246000, v6, OS_LOG_TYPE_ERROR, "getAllSyncedAlarmsAndTimers Reply completion handler is nil", v7, 2u);
    }
  }
}

- (SBSHomePodControlsInterface)initWithTarget:(id)target
{
  targetCopy = target;
  v9.receiver = self;
  v9.super_class = SBSHomePodControlsInterface;
  v5 = [(SBSHomePodControlsInterface *)&v9 init];
  if (v5)
  {
    if ([targetCopy isEqualToString:@"localhost"])
    {
      [SBSUtils createProxyConnectionForXPCWithExportedObject:0 connection:&v5->_sbConnection];
    }

    else
    {
      [SBSUtils createProxyConnectionForRapportTarget:targetCopy];
    }
    v6 = ;
    sbProxy = v5->_sbProxy;
    v5->_sbProxy = v6;
  }

  return v5;
}

@end