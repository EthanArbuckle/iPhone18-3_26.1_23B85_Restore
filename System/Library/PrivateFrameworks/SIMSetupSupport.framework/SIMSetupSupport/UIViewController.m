@interface UIViewController
@end

@implementation UIViewController

void __67__UIViewController_SimSetup__dismissSimSetupFlowFromViewController__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _TSLogDomain();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[UIViewController(SimSetup) dismissSimSetupFlowFromViewController]_block_invoke";
    _os_log_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEFAULT, "Modal presentation dismissed successfully @%s", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

@end