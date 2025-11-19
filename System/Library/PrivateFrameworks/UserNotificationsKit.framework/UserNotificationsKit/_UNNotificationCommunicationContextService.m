@interface _UNNotificationCommunicationContextService
- (id)resolveCommunicationContextForRequest:(id)a3 bundleIdentifier:(id)a4;
@end

@implementation _UNNotificationCommunicationContextService

- (id)resolveCommunicationContextForRequest:(id)a3 bundleIdentifier:(id)a4
{
  v4 = a3;
  NCRegisterUserNotificationsUILogging();
  v5 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [_UNNotificationCommunicationContextService resolveCommunicationContextForRequest:v5 bundleIdentifier:?];
  }

  return v4;
}

- (void)resolveCommunicationContextForRequest:(os_log_t)log bundleIdentifier:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136446210;
  v2 = "[_UNNotificationCommunicationContextService resolveCommunicationContextForRequest:bundleIdentifier:]";
  _os_log_error_impl(&dword_270A33000, log, OS_LOG_TYPE_ERROR, "%{public}s: DEPRECATED WITHOUT SUPPORT. Please use UserNotificationsServices/UNSNotificationCommunicationContextService.", &v1, 0xCu);
}

@end