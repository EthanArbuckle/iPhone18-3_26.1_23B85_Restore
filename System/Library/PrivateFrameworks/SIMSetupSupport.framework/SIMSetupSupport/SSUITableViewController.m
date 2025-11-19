@interface SSUITableViewController
- (void)viewDidLoad;
@end

@implementation SSUITableViewController

- (void)viewDidLoad
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[SSUITableViewController viewDidLoad]";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]invalid delegate %@. not responds to maybeRegisterDismissHandler: @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end