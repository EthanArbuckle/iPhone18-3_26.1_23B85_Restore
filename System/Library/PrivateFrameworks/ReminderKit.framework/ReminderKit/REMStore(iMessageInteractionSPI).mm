@interface REMStore(iMessageInteractionSPI)
+ (void)_shouldNotifyReminddOfInteractionWithPeople;
@end

@implementation REMStore(iMessageInteractionSPI)

+ (void)_shouldNotifyReminddOfInteractionWithPeople
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14();
  _os_log_error_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_ERROR, "Failed to get notify state. Returning YES to _shouldNotifyReminddOfInteractionWithPeople {token: %d, status: %d}", v2, 0xEu);
  v1 = *MEMORY[0x1E69E9840];
}

@end