@interface TTMergeableAttributedString(TTAttributedStringPersistenceAdditions)
@end

@implementation TTMergeableAttributedString(TTAttributedStringPersistenceAdditions)

+ (void)saveAttributes:()TTAttributedStringPersistenceAdditions toArchive:.cold.1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109376;
  v3[1] = 4;
  v4 = 1024;
  v5 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Incorrect number of color components for foreground color. Expected %d and got %d", v3, 0xEu);
  v2 = *MEMORY[0x1E69E9840];
}

@end