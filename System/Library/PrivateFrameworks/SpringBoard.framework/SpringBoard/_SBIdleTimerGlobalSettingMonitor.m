@interface _SBIdleTimerGlobalSettingMonitor
- (BOOL)_updateCache;
- (_SBIdleTimerGlobalSettingMonitor)initWithLabel:(id)a3 delegate:(id)a4;
- (_SBIdleTimerGlobalSettingMonitorDelegate)delegate;
@end

@implementation _SBIdleTimerGlobalSettingMonitor

- (_SBIdleTimerGlobalSettingMonitor)initWithLabel:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SBIdleTimerGlobalSettingMonitor initWithLabel:a2 delegate:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [_SBIdleTimerGlobalSettingMonitor initWithLabel:a2 delegate:self];
LABEL_3:
  v14.receiver = self;
  v14.super_class = _SBIdleTimerGlobalSettingMonitor;
  v10 = [(_SBIdleTimerGlobalSettingMonitor *)&v14 init];
  if (v10)
  {
    v11 = [v7 copy];
    label = v10->_label;
    v10->_label = v11;

    objc_storeWeak(&v10->_delegate, v9);
  }

  return v10;
}

- (_SBIdleTimerGlobalSettingMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_updateCache
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)initWithLabel:(uint64_t)a1 delegate:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBIdleTimerGlobalStateMonitor.m" lineNumber:421 description:{@"Invalid parameter not satisfying: %@", @"label"}];
}

- (void)initWithLabel:(uint64_t)a1 delegate:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBIdleTimerGlobalStateMonitor.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

@end