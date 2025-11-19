@interface BRCUserActionsNavigator
+ (id)defaultNavigator;
- (void)openAppStoreForBundleID:(id)a3;
- (void)openShareURLInWebBrowser:(id)a3 withReason:(id)a4;
- (void)openiCloudSettings;
@end

@implementation BRCUserActionsNavigator

+ (id)defaultNavigator
{
  if (defaultNavigator_onceToken != -1)
  {
    +[BRCUserActionsNavigator defaultNavigator];
  }

  v3 = defaultNavigator_navigator;

  return v3;
}

uint64_t __43__BRCUserActionsNavigator_defaultNavigator__block_invoke()
{
  defaultNavigator_navigator = objc_alloc_init(BRCUserActionsNavigator);

  return MEMORY[0x2821F96F8]();
}

- (void)openShareURLInWebBrowser:(id)a3 withReason:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BRCUserActionsNavigator openShareURLInWebBrowser:withReason:];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  [BRCUserActionsNavigator openShareURLInWebBrowser:withReason:];
LABEL_3:
  v8 = [MEMORY[0x277CCACE0] componentsWithURL:v5 resolvingAgainstBaseURL:0];
  [v8 setScheme:@"https"];
  v9 = [v8 query];
  v10 = v9;
  if (v9)
  {
    if ([v9 rangeOfString:@"redirectReason"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }

    v11 = [v10 stringByAppendingFormat:@"&%@=%@", @"redirectReason", v7];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"redirectReason", v7];
  }

  v12 = v11;
  [v8 setQuery:v11];

LABEL_8:
  v13 = [v8 fragment];
  v14 = [v13 hasSuffix:@":nooverride"];

  if ((v14 & 1) == 0)
  {
    v15 = [v8 fragment];
    v16 = v15;
    v17 = &stru_2837504F0;
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;

    v19 = [(__CFString *)v18 stringByAppendingString:@":nooverride"];

    [v8 setFragment:v19];
  }

  v20 = [v8 URL];

  v21 = brc_bread_crumbs();
  v22 = brc_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v32 = v7;
    v33 = 2112;
    v34 = v20;
    v35 = 2112;
    v36 = v21;
    _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] Opening in web browser (reason: %@) %@%@", buf, 0x20u);
  }

  v23 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v29 = *MEMORY[0x277CC1DF0];
  v30 = MEMORY[0x277CBEC38];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v25 = [v23 openURL:v20 withOptions:v24];

  if ((v25 & 1) == 0)
  {
    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, 0x90u))
    {
      [(BRCUserActionsNavigator *)v20 openShareURLInWebBrowser:v26 withReason:v27];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)openiCloudSettings
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Ubiquity"];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

- (void)openAppStoreForBundleID:(id)a3
{
  if (a3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"itms-apps://?bundleIdentifier=%@", a3];
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v4 openSensitiveURL:v3 withOptions:0];
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      [(BRCUserActionsNavigator *)v5 openAppStoreForBundleID:v6];
    }
  }
}

- (void)openShareURLInWebBrowser:withReason:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: shareURL%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)openShareURLInWebBrowser:withReason:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: redirectReason%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)openShareURLInWebBrowser:(os_log_t)log withReason:.cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] Can't open %@ using default web browser%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)openAppStoreForBundleID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_223E7A000, a2, 0x90u, "[ERROR] passed nil app bundle ID%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end