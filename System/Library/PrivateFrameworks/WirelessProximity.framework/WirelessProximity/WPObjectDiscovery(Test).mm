@interface WPObjectDiscovery(Test)
- (void)startTest;
- (void)stopTest;
@end

@implementation WPObjectDiscovery(Test)

- (void)receivedTestResponse:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v9 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startTest
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [OUTLINED_FUNCTION_6_0() isTestClient];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopTest
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [OUTLINED_FUNCTION_6_0() isTestClient];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateBeaconingState:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v3 = v2;
  OUTLINED_FUNCTION_8();
  [v0 BOOLValue];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateBeaconingKeys:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v9 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateBeaconingStatus:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v3 = v2;
  OUTLINED_FUNCTION_8();
  [v0 unsignedCharValue];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x18u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateBeaconingExtended:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v9 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateNearOwnerTokens:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v9 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateBeaconingInterval:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v3 = v2;
  OUTLINED_FUNCTION_8();
  [v0 intValue];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x18u);

  v9 = *MEMORY[0x277D85DE8];
}

@end