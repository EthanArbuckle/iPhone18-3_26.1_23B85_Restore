@interface _UNNotificationContactServiceMatchDetails
- (_UNNotificationContactServiceMatchDetails)initWithCnContactIdentifier:(id)identifier cnContactFullname:(id)fullname isSuggestedContact:(BOOL)contact;
@end

@implementation _UNNotificationContactServiceMatchDetails

- (_UNNotificationContactServiceMatchDetails)initWithCnContactIdentifier:(id)identifier cnContactFullname:(id)fullname isSuggestedContact:(BOOL)contact
{
  v15.receiver = self;
  v15.super_class = _UNNotificationContactServiceMatchDetails;
  v5 = [(_UNNotificationContactServiceMatchDetails *)&v15 init:identifier];
  if (v5)
  {
    NCRegisterUserNotificationsUILogging();
    v6 = NCUILogCommunicationNotifications;
    if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
    {
      [(_UNNotificationContactServiceMatchDetails *)v6 initWithCnContactIdentifier:v7 cnContactFullname:v8 isSuggestedContact:v9, v10, v11, v12, v13];
    }
  }

  return v5;
}

@end