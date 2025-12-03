@interface SYDUserNotifications
+ (BOOL)shouldShowNotifications;
+ (id)queue;
+ (id)userNotificationCenter;
+ (void)requestAuthorizationIfNecessary;
+ (void)showNotificationWithTitle:(id)title body:(id)body threadIdentifier:(id)identifier;
+ (void)showUserNotificationIfEnabledForStoreIdentifier:(id)identifier format:(id)format;
@end

@implementation SYDUserNotifications

+ (BOOL)shouldShowNotifications
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = os_variant_has_internal_content();
  }

  return v2;
}

+ (void)showUserNotificationIfEnabledForStoreIdentifier:(id)identifier format:(id)format
{
  identifierCopy = identifier;
  formatCopy = format;
  if ([self shouldShowNotifications])
  {
    v15 = &v16;
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:formatCopy arguments:&v16];
    queue = [self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__SYDUserNotifications_showUserNotificationIfEnabledForStoreIdentifier_format___block_invoke;
    v11[3] = &unk_279D300B8;
    v13 = v8;
    selfCopy = self;
    v12 = identifierCopy;
    v10 = v8;
    dispatch_async(queue, v11);
  }
}

void __79__SYDUserNotifications_showUserNotificationIfEnabledForStoreIdentifier_format___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = [v2 stringWithFormat:@"KVS: %@", v3];
  [*(a1 + 48) showNotificationWithTitle:v4 body:*(a1 + 40) threadIdentifier:v3];
}

+ (void)showNotificationWithTitle:(id)title body:(id)body threadIdentifier:(id)identifier
{
  titleCopy = title;
  bodyCopy = body;
  identifierCopy = identifier;
  [self requestAuthorizationIfNecessary];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v11 = getUNMutableNotificationContentClass_softClass;
  v28 = getUNMutableNotificationContentClass_softClass;
  if (!getUNMutableNotificationContentClass_softClass)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getUNMutableNotificationContentClass_block_invoke;
    v23 = &unk_279D2F840;
    v24 = &v25;
    __getUNMutableNotificationContentClass_block_invoke(&v20);
    v11 = v26[3];
  }

  v12 = v11;
  _Block_object_dispose(&v25, 8);
  v13 = objc_alloc_init(v11);
  [v13 setTitle:titleCopy];
  [v13 setBody:bodyCopy];
  [v13 setThreadIdentifier:identifierCopy];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v14 = getUNNotificationRequestClass_softClass;
  v28 = getUNNotificationRequestClass_softClass;
  if (!getUNNotificationRequestClass_softClass)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getUNNotificationRequestClass_block_invoke;
    v23 = &unk_279D2F840;
    v24 = &v25;
    __getUNNotificationRequestClass_block_invoke(&v20);
    v14 = v26[3];
  }

  v15 = v14;
  _Block_object_dispose(&v25, 8);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v18 = [v14 requestWithIdentifier:uUIDString content:v13 trigger:0];

  userNotificationCenter = [self userNotificationCenter];
  [userNotificationCenter addNotificationRequest:v18 withCompletionHandler:&__block_literal_global_5];
}

void __72__SYDUserNotifications_showNotificationWithTitle_body_threadIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = SYDGetMiscLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __72__SYDUserNotifications_showNotificationWithTitle_body_threadIdentifier___block_invoke_cold_1(v2, v3);
    }
  }
}

+ (void)requestAuthorizationIfNecessary
{
  if ([self shouldShowNotifications])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SYDUserNotifications_requestAuthorizationIfNecessary__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (requestAuthorizationIfNecessary_onceToken != -1)
    {
      dispatch_once(&requestAuthorizationIfNecessary_onceToken, block);
    }
  }
}

void __55__SYDUserNotifications_requestAuthorizationIfNecessary__block_invoke(uint64_t a1)
{
  v2 = SYDGetMiscLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__SYDUserNotifications_requestAuthorizationIfNecessary__block_invoke_cold_1(v2);
  }

  v3 = [*(a1 + 32) userNotificationCenter];
  [v3 requestAuthorizationWithOptions:4 completionHandler:&__block_literal_global_7];
}

void __55__SYDUserNotifications_requestAuthorizationIfNecessary__block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = SYDGetMiscLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__SYDUserNotifications_requestAuthorizationIfNecessary__block_invoke_4_cold_1(v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __55__SYDUserNotifications_requestAuthorizationIfNecessary__block_invoke_4_cold_2(a2, v6);
  }
}

+ (id)userNotificationCenter
{
  if (userNotificationCenter_onceToken != -1)
  {
    +[SYDUserNotifications userNotificationCenter];
  }

  v3 = userNotificationCenter_notificationCenter;

  return v3;
}

void __46__SYDUserNotifications_userNotificationCenter__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getUNUserNotificationCenterClass_softClass;
  v8 = getUNUserNotificationCenterClass_softClass;
  if (!getUNUserNotificationCenterClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getUNUserNotificationCenterClass_block_invoke;
    v4[3] = &unk_279D2F840;
    v4[4] = &v5;
    __getUNUserNotificationCenterClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [[v0 alloc] initWithBundleIdentifier:@"com.apple.Preferences"];
  v3 = userNotificationCenter_notificationCenter;
  userNotificationCenter_notificationCenter = v2;
}

+ (id)queue
{
  if (queue_onceToken != -1)
  {
    +[SYDUserNotifications queue];
  }

  v3 = queue_queue;

  return v3;
}

void __29__SYDUserNotifications_queue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.kvs.user-notifications", v2);
  v1 = queue_queue;
  queue_queue = v0;
}

void __72__SYDUserNotifications_showNotificationWithTitle_body_threadIdentifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26C384000, a2, OS_LOG_TYPE_ERROR, "Error adding notification request: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __55__SYDUserNotifications_requestAuthorizationIfNecessary__block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26C384000, a2, OS_LOG_TYPE_ERROR, "Error requesting notification authorization: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __55__SYDUserNotifications_requestAuthorizationIfNecessary__block_invoke_4_cold_2(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_26C384000, a2, OS_LOG_TYPE_DEBUG, "Requested notification authorization, granted=%d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end