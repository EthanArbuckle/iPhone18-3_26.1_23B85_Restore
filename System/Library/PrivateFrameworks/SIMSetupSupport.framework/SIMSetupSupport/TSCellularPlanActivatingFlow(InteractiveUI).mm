@interface TSCellularPlanActivatingFlow(InteractiveUI)
@end

@implementation TSCellularPlanActivatingFlow(InteractiveUI)

- (void)_maybeDisplayInteractiveUI:()InteractiveUI .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 navigationController];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end