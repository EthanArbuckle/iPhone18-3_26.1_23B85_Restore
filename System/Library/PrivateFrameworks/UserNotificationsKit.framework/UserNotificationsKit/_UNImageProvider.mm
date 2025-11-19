@interface _UNImageProvider
+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)a3 bundleIdentifier:(id)a4 descriptorForRequiredKeys:(id)a5;
+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)a3 descriptorForRequiredKeys:(id)a4;
+ (id)imageDataForContentURL:(id)a3;
@end

@implementation _UNImageProvider

+ (id)imageDataForContentURL:(id)a3
{
  NCRegisterUserNotificationsUILogging();
  v3 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNImageProvider(DEPRECATED) *)v3 imageDataForContentURL:v4, v5, v6, v7, v8, v9, v10];
  }

  return 0;
}

+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)a3 bundleIdentifier:(id)a4 descriptorForRequiredKeys:(id)a5
{
  NCRegisterUserNotificationsUILogging();
  v5 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNImageProvider(DEPRECATED) *)v5 generateEphemeralContactsForImageRenderingWithContext:v6 bundleIdentifier:v7 descriptorForRequiredKeys:v8, v9, v10, v11, v12];
  }

  return MEMORY[0x277CBEBF8];
}

+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)a3 descriptorForRequiredKeys:(id)a4
{
  NCRegisterUserNotificationsUILogging();
  v4 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNImageProvider(DEPRECATED) *)v4 generateEphemeralContactsForImageRenderingWithContext:v5 descriptorForRequiredKeys:v6, v7, v8, v9, v10, v11];
  }

  return MEMORY[0x277CBEBF8];
}

@end