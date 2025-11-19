@interface UBUnblockClient(XPCHandling)
@end

@implementation UBUnblockClient(XPCHandling)

- (void)prepareRecoverRequest:()XPCHandling stackshot_data:err:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_27038C000, v0, v1, "Failed to serialize watchdog services. Error : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleRecoverReply:()XPCHandling input_services:err:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_27038C000, v0, v1, "Failed to deserialize watchdog services. Error : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleRecoverReply:()XPCHandling input_services:err:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(&dword_27038C000, v0, v1, "Result has invalid pid/thread_id/incident service's data: %@ vs %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)handleRecoverReply:()XPCHandling input_services:err:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_27038C000, v0, v1, "Failed to communicate with unblock service: Error : %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end