@interface TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate)
@end

@implementation TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate)

- (void)_maybeHandleConfirmationCodeError:()TSCellularPlanManagerCacheDelegate .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 iccid];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_maybeHandleProvisioningError:()TSCellularPlanManagerCacheDelegate items:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 identifier];
  v9 = [a1 planName];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handlePostInstallItemUpdate:()TSCellularPlanManagerCacheDelegate .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _handlePostInstallItemUpdate:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] wait provisioning plan @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end