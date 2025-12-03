@interface UIViewController(SimSetup)
- (uint64_t)isCloudFlow;
- (void)configureNavigationItem;
- (void)dismissSimSetupFlowFromViewController;
- (void)isCloudFlow;
- (void)userDidTapCancel;
@end

@implementation UIViewController(SimSetup)

- (void)configureNavigationItem
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)userDidTapCancel
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)dismissSimSetupFlowFromViewController
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (uint64_t)isCloudFlow
{
  if (([self conformsToProtocol:&unk_28758ABD0] & 1) == 0)
  {
    selfCopy = _TSLogDomain();
    if (os_log_type_enabled(selfCopy, OS_LOG_TYPE_ERROR))
    {
      [UIViewController(SimSetup) isCloudFlow];
    }

    goto LABEL_10;
  }

  selfCopy = self;
  delegate = [selfCopy delegate];

  if (!delegate)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(UIViewController(SimSetup) *)v6 isCloudFlow];
    }

LABEL_10:
    isKindOfClass = 0;
    goto LABEL_13;
  }

  delegate2 = [selfCopy delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    delegate3 = [selfCopy delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

LABEL_13:
  return isKindOfClass & 1;
}

- (void)isCloudFlow
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[UIViewController(SimSetup) isCloudFlow]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]delegate not set @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end