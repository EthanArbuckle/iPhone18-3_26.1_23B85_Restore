@interface IMFetchPushNotificationSettingsService
- (IMFetchPushNotificationSettingsService)init;
- (id)urlRequest;
@end

@implementation IMFetchPushNotificationSettingsService

- (IMFetchPushNotificationSettingsService)init
{
  v5.receiver = self;
  v5.super_class = IMFetchPushNotificationSettingsService;
  v2 = [(IMBaseStoreService *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMBaseStoreService *)v2 setPersonalizeRequests:1];
  }

  return v3;
}

- (id)urlRequest
{
  v2 = [(IMPushNotificationSettingsService *)self endpointURLForKey:@"getPushNotificationSettings"];
  v3 = [v2 thenWithBlock:&__block_literal_global_14];

  return v3;
}

id __52__IMFetchPushNotificationSettingsService_urlRequest__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E698CAD0];
  v3 = [MEMORY[0x1E696AF68] requestWithURL:a2];
  v4 = [v2 promiseWithResult:v3];

  return v4;
}

@end