@interface _UNNotificationContactService
+ (id)sharedInstance;
- (BOOL)canAddToCuratedContacts:(id)contacts bundleIdentifier:(id)identifier;
- (id)curatedContactForContact:(id)contact bundleIdentifier:(id)identifier keysToFetch:(id)fetch;
- (id)curatedContactMatchDetailsForContact:(id)contact bundleIdentifier:(id)identifier;
- (id)newCuratedContactForContact:(id)contact imageData:(id)data bundleIdentifier:(id)identifier;
- (void)confirmCuratedContactSuggestion:(BOOL)suggestion forContact:(id)contact bundleIdentifier:(id)identifier;
- (void)didAddToCuratedContactsForContact:(id)contact bundleIdentifier:(id)identifier cnContactIdentifier:(id)contactIdentifier;
@end

@implementation _UNNotificationContactService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_UNNotificationContactService sharedInstance];
  }

  NCRegisterUserNotificationsUILogging();
  v2 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v2 sharedInstance:v3];
  }

  v10 = sharedInstance___sharedInstance;

  return v10;
}

- (id)curatedContactMatchDetailsForContact:(id)contact bundleIdentifier:(id)identifier
{
  NCRegisterUserNotificationsUILogging();
  v4 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v4 curatedContactMatchDetailsForContact:v5 bundleIdentifier:v6, v7, v8, v9, v10, v11];
  }

  return 0;
}

- (id)curatedContactForContact:(id)contact bundleIdentifier:(id)identifier keysToFetch:(id)fetch
{
  NCRegisterUserNotificationsUILogging();
  v5 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v5 curatedContactForContact:v6 bundleIdentifier:v7 keysToFetch:v8, v9, v10, v11, v12];
  }

  return 0;
}

- (void)confirmCuratedContactSuggestion:(BOOL)suggestion forContact:(id)contact bundleIdentifier:(id)identifier
{
  NCRegisterUserNotificationsUILogging();
  v5 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v5 confirmCuratedContactSuggestion:v6 forContact:v7 bundleIdentifier:v8, v9, v10, v11, v12];
  }
}

- (BOOL)canAddToCuratedContacts:(id)contacts bundleIdentifier:(id)identifier
{
  NCRegisterUserNotificationsUILogging();
  v4 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v4 canAddToCuratedContacts:v5 bundleIdentifier:v6, v7, v8, v9, v10, v11];
  }

  return 0;
}

- (id)newCuratedContactForContact:(id)contact imageData:(id)data bundleIdentifier:(id)identifier
{
  NCRegisterUserNotificationsUILogging();
  v5 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v5 newCuratedContactForContact:v6 imageData:v7 bundleIdentifier:v8, v9, v10, v11, v12];
  }

  return objc_alloc_init(MEMORY[0x277CBDA58]);
}

- (void)didAddToCuratedContactsForContact:(id)contact bundleIdentifier:(id)identifier cnContactIdentifier:(id)contactIdentifier
{
  NCRegisterUserNotificationsUILogging();
  v5 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v5 didAddToCuratedContactsForContact:v6 bundleIdentifier:v7 cnContactIdentifier:v8, v9, v10, v11, v12];
  }
}

@end