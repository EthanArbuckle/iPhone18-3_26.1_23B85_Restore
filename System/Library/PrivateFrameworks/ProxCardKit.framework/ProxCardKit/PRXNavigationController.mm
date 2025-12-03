@interface PRXNavigationController
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation PRXNavigationController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v5 = PRXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(PRXNavigationController *)containerCopy preferredContentSizeDidChangeForChildContentContainer:v5];
  }

  topViewController = [(PRXNavigationController *)self topViewController];
  v7 = topViewController;
  if (!topViewController || [topViewController isEqual:containerCopy])
  {
    [containerCopy preferredContentSize];
    [(PRXNavigationController *)self setPreferredContentSize:?];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_260F65000, a2, OS_LOG_TYPE_DEBUG, "preferredContentSizeDidChangeForChildContentContainer: %@", &v2, 0xCu);
}

@end