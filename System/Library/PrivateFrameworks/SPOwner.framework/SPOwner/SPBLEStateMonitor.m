@interface SPBLEStateMonitor
- (SPBLEStateMonitor)init;
- (SPBLEStateMonitorDelegate)delegate;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)notifyDelegate:(unint64_t)a3;
- (void)startMonitoring;
@end

@implementation SPBLEStateMonitor

- (SPBLEStateMonitor)init
{
  v3.receiver = self;
  v3.super_class = SPBLEStateMonitor;
  result = [(SPBLEStateMonitor *)&v3 init];
  if (result)
  {
    result->_bleState = 0;
  }

  return result;
}

- (void)startMonitoring
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SPBLEStateMonitor_startMonitoring__block_invoke;
  block[3] = &unk_279B58AE8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __36__SPBLEStateMonitor_startMonitoring__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBDFF8]);
  v3 = [v2 initWithDelegate:*(a1 + 32) queue:MEMORY[0x277D85CD0]];
  [*(a1 + 32) setCentralManager:v3];

  v4 = *(a1 + 32);
  v5 = [v4 centralManager];
  [v4 centralManagerDidUpdateState:v5];
}

- (void)notifyDelegate:(unint64_t)a3
{
  if ([(SPBLEStateMonitor *)self bleState]!= a3)
  {
    v4 = [(SPBLEStateMonitor *)self delegate];
    [v4 bleMonitor:self didChangeState:{-[SPBLEStateMonitor bleState](self, "bleState")}];
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPBLEStateMonitor *)self bleState];
  if ([v4 state] == 5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(SPBLEStateMonitor *)self setBleState:v6];
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = [v4 state];
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "BluetoothState: %lu", &v9, 0xCu);
  }

  [(SPBLEStateMonitor *)self notifyDelegate:v5];
  v8 = *MEMORY[0x277D85DE8];
}

- (SPBLEStateMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end