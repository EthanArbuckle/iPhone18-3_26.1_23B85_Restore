@interface UITabBarController(radar147256381)
+ (void)vuiSetShouldCollapseTabBarOnScroll:()radar147256381 on:;
@end

@implementation UITabBarController(radar147256381)

+ (void)vuiSetShouldCollapseTabBarOnScroll:()radar147256381 on:
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_opt_respondsToSelector();
  v7 = VUICDefaultLogObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = 67109120;
      v10 = a3;
      _os_log_impl(&dword_270E6E000, v7, OS_LOG_TYPE_DEFAULT, "UITabBar:: vuiSetShouldCollapseTabBarOnScroll: %d", &v9, 8u);
    }

    [v5 _setShouldCollapseTabBarOnScroll:a3];
  }

  else
  {
    if (v8)
    {
      v9 = 67109120;
      v10 = a3;
      _os_log_impl(&dword_270E6E000, v7, OS_LOG_TYPE_DEFAULT, "UITabBar:: vuiSetShouldCollapseTabBarOnScroll: %d", &v9, 8u);
    }
  }
}

@end