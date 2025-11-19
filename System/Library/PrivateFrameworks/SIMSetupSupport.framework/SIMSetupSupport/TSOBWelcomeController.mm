@interface TSOBWelcomeController
- (CGSize)preferredContentSize;
- (void)viewDidLoad;
@end

@implementation TSOBWelcomeController

- (void)viewDidLoad
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSOBWelcomeController viewDidLoad]";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]invalid delegate %@. not responds to maybeRegisterDismissHandler: @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (CGSize)preferredContentSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end