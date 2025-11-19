@interface TTVectorMultiTimestamp(TTVectorTimestampPersistenceAdditions)
@end

@implementation TTVectorMultiTimestamp(TTVectorTimestampPersistenceAdditions)

- (void)initWithArchive:()TTVectorTimestampPersistenceAdditions andCapacity:.cold.1(int a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_19A0DB000, log, OS_LOG_TYPE_ERROR, "TTVectorMultiTimestamp requires the same number of clocks as capacity %d != %ld.", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

@end