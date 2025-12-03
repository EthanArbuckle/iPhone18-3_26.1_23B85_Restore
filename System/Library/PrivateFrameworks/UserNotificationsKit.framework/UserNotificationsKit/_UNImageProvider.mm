@interface _UNImageProvider
+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)context bundleIdentifier:(id)identifier descriptorForRequiredKeys:(id)keys;
+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)context descriptorForRequiredKeys:(id)keys;
+ (id)imageDataForContentURL:(id)l;
@end

@implementation _UNImageProvider

+ (id)imageDataForContentURL:(id)l
{
  NCRegisterUserNotificationsUILogging();
  v3 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNImageProvider(DEPRECATED) *)v3 imageDataForContentURL:v4, v5, v6, v7, v8, v9, v10];
  }

  return 0;
}

+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)context bundleIdentifier:(id)identifier descriptorForRequiredKeys:(id)keys
{
  NCRegisterUserNotificationsUILogging();
  v5 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNImageProvider(DEPRECATED) *)v5 generateEphemeralContactsForImageRenderingWithContext:v6 bundleIdentifier:v7 descriptorForRequiredKeys:v8, v9, v10, v11, v12];
  }

  return MEMORY[0x277CBEBF8];
}

+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)context descriptorForRequiredKeys:(id)keys
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