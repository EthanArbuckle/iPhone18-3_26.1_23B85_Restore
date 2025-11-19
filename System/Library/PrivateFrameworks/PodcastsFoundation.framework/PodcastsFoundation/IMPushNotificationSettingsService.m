@interface IMPushNotificationSettingsService
- (id)endpointURLForKey:(id)a3;
- (void)performDataRequestWithCompletion:(id)a3;
@end

@implementation IMPushNotificationSettingsService

- (id)endpointURLForKey:(id)a3
{
  v4 = a3;
  v5 = [(IMBaseStoreService *)self bag];
  v6 = [v5 dictionaryForKey:@"pushNotificationSettings"];

  v7 = [v6 asyncValuePromise];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__IMPushNotificationSettingsService_endpointURLForKey___block_invoke;
  v11[3] = &unk_1E856B0A8;
  v12 = v4;
  v8 = v4;
  v9 = [v7 thenWithBlock:v11];

  return v9;
}

id __55__IMPushNotificationSettingsService_endpointURLForKey___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [a2 valueForKey:*(a1 + 32)];
    v5 = [v3 URLWithString:v4];

    if (v5)
    {
      v6 = [MEMORY[0x1E696AF20] componentsWithURL:v5 resolvingAgainstBaseURL:0];
      v7 = [MEMORY[0x1E696AF60] queryItemWithName:@"bid" value:@"com.apple.Podcasts"];
      v19[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v6 setQueryItems:v8];

      v9 = [v6 URL];
    }
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to find an endpoint for the key '%@'", *(a1 + 32)];
  v11 = MEMORY[0x1E696ABC0];
  v17 = *MEMORY[0x1E696A578];
  v18 = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v13 = [v11 errorWithDomain:@"IMPushNotificationSettingsServiceErrorDomain" code:-1000 userInfo:v12];

  v14 = [MEMORY[0x1E698CAD0] promiseWithError:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)performDataRequestWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(IMPushNotificationSettingsService *)self urlRequest];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__IMPushNotificationSettingsService_performDataRequestWithCompletion___block_invoke;
  v7[3] = &unk_1E856B0F8;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v7[4] = self;
  v8 = v6;
  [v5 addFinishBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __70__IMPushNotificationSettingsService_performDataRequestWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __70__IMPushNotificationSettingsService_performDataRequestWithCompletion___block_invoke_2;
      v9[3] = &unk_1E856B0D0;
      v8 = *(a1 + 32);
      v10 = *(a1 + 40);
      [v8 performDataRequest:v5 callback:v9];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

uint64_t __70__IMPushNotificationSettingsService_performDataRequestWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a5);
  }

  return result;
}

@end