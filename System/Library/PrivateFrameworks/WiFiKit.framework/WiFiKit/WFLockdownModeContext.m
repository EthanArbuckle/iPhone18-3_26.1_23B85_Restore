@interface WFLockdownModeContext
- (WFLockdownModeContext)initWithNetwork:(id)a3 securityType:(unint64_t)a4;
- (WFNetworkView)provider;
- (void)cancel;
- (void)join;
@end

@implementation WFLockdownModeContext

- (WFLockdownModeContext)initWithNetwork:(id)a3 securityType:(unint64_t)a4
{
  v7 = a3;
  if (v7)
  {
    objc_storeStrong(&self->_network, a3);
    self->_securityType = a4;
    self->_needsDismissal = 1;
  }

  else
  {
    [WFLockdownModeContext initWithNetwork:? securityType:?];
    self = 0;
  }

  return self;
}

- (void)cancel
{
  self->_needsDismissal = 0;
  v2 = [(WFLockdownModeContext *)self completionHandler];
  v2[2](v2, 0);
}

- (void)join
{
  self->_needsDismissal = 0;
  v2 = [(WFLockdownModeContext *)self completionHandler];
  v2[2](v2, 1);
}

- (WFNetworkView)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (void)initWithNetwork:(void *)a1 securityType:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    v5 = 136315138;
    v6 = "[WFLockdownModeContext initWithNetwork:securityType:]";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: nil network", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end