@interface SSCellularSetupMultiSIMActivatingViewController(UITableViewDataSource)
@end

@implementation SSCellularSetupMultiSIMActivatingViewController(UITableViewDataSource)

- (void)tableView:()UITableViewDataSource cellForRowAtIndexPath:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SSCellularSetupMultiSIMActivatingViewController(UITableViewDataSource) tableView:cellForRowAtIndexPath:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]out of bound index @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end