@interface _UNNotificationContactServiceMatchDetails
- (_UNNotificationContactServiceMatchDetails)initWithCnContactIdentifier:(id)a3 cnContactFullname:(id)a4 isSuggestedContact:(BOOL)a5;
@end

@implementation _UNNotificationContactServiceMatchDetails

- (_UNNotificationContactServiceMatchDetails)initWithCnContactIdentifier:(id)a3 cnContactFullname:(id)a4 isSuggestedContact:(BOOL)a5
{
  v15.receiver = self;
  v15.super_class = _UNNotificationContactServiceMatchDetails;
  v5 = [(_UNNotificationContactServiceMatchDetails *)&v15 init:a3];
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