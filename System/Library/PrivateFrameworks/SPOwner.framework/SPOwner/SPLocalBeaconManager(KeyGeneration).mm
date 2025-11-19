@interface SPLocalBeaconManager(KeyGeneration)
@end

@implementation SPLocalBeaconManager(KeyGeneration)

- (void)dateIntervalForIndex:()KeyGeneration baseDate:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)generateBeaconingKeysOfType:()KeyGeneration now:withCompletion:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_0(&dword_2643D0000, v0, v1, "baseIndex (%llu) > currentIndex (%llu)!", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)generateOfflineAdvertisingKeysForReason:()KeyGeneration now:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)generateOfflineAdvertisingKeysForReason:()KeyGeneration now:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)generateOfflineAdvertisingKeysForReason:()KeyGeneration now:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end