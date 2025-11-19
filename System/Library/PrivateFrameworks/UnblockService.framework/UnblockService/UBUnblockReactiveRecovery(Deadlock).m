@interface UBUnblockReactiveRecovery(Deadlock)
@end

@implementation UBUnblockReactiveRecovery(Deadlock)

- (void)selectNodeInDeadlocks:()Deadlock longerThan:serviceContext:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)selectNodeInDeadlocks:()Deadlock longerThan:serviceContext:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [0 debugDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end