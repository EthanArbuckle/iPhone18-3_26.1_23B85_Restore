@interface IMWritePushNotificationSettingsService
- (IMWritePushNotificationSettingsService)initWithData:(id)a3;
- (id)urlRequest;
@end

@implementation IMWritePushNotificationSettingsService

- (IMWritePushNotificationSettingsService)initWithData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IMWritePushNotificationSettingsService;
  v5 = [(IMBaseStoreService *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMWritePushNotificationSettingsService *)v5 setData:v4];
    [(IMBaseStoreService *)v6 setPersonalizeRequests:1];
  }

  return v6;
}

- (id)urlRequest
{
  v3 = [(IMPushNotificationSettingsService *)self endpointURLForKey:@"setPushNotificationSettings"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__IMWritePushNotificationSettingsService_urlRequest__block_invoke;
  v6[3] = &unk_1E856B140;
  v6[4] = self;
  v4 = [v3 thenWithBlock:v6];

  return v4;
}

id __52__IMWritePushNotificationSettingsService_urlRequest__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD68] requestWithURL:a2];
  [v3 setHTTPMethod:@"POST"];
  [v3 addValue:@"application/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
  v4 = [*(a1 + 32) data];
  [v3 setHTTPBody:v4];

  v5 = [MEMORY[0x1E698CAD0] promiseWithResult:v3];

  return v5;
}

@end