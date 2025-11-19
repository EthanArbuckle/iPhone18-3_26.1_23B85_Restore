@interface TSCellularPlanActivatingFlow(Override)
- (void)firstViewController;
@end

@implementation TSCellularPlanActivatingFlow(Override)

- (void)firstViewController
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end