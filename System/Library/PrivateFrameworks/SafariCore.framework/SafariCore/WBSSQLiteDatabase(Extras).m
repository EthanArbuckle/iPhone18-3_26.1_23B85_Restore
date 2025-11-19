@interface WBSSQLiteDatabase(Extras)
- (void)checkIntegrity;
@end

@implementation WBSSQLiteDatabase(Extras)

- (void)tryToPerformTransactionInBlock:()Extras .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_10(&dword_1B8447000, a2, a3, "Failed to begin transaction: %{public}@", a2);
}

- (void)tryToPerformTransactionInBlock:()Extras .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_10(&dword_1B8447000, a2, a3, "Failed to rollback transaction: %{public}@", a2);
}

- (void)tryToPerformTransactionInBlock:()Extras .cold.3(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_10(&dword_1B8447000, a2, a3, "Failed to commit transaction: %{public}@", a2);
}

- (void)checkIntegrity
{
  v5 = *a2;
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Failed database integrity check on %@: %@", buf, 0x16u);
}

@end