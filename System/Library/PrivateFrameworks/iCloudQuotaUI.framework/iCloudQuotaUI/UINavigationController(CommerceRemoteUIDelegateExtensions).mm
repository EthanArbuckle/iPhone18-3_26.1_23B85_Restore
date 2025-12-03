@interface UINavigationController(CommerceRemoteUIDelegateExtensions)
- (void)removeViewControllersAfter:()CommerceRemoteUIDelegateExtensions before:animated:;
@end

@implementation UINavigationController(CommerceRemoteUIDelegateExtensions)

- (void)removeViewControllersAfter:()CommerceRemoteUIDelegateExtensions before:animated:
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  viewControllers = [self viewControllers];
  v11 = [viewControllers mutableCopy];

  v12 = [v11 indexOfObject:v9];
  v13 = [v11 indexOfObject:v8];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134218240;
      v19 = v12;
      v20 = 2048;
      v21 = v13;
      v15 = "unable to find initial (%lu) or final (%lu) view controller";
      v16 = v14;
      v17 = 22;
LABEL_9:
      _os_log_impl(&dword_275623000, v16, OS_LOG_TYPE_DEFAULT, v15, &v18, v17);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v13 <= v12 + 1)
  {
    v14 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      v15 = "no view controllers between initial and final view controllers";
      v16 = v14;
      v17 = 2;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  [v11 removeObjectsInRange:?];
  [self setViewControllers:v11 animated:a5];
LABEL_11:
}

@end