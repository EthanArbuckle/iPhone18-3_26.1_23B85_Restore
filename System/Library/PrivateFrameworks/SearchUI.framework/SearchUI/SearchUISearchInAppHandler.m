@interface SearchUISearchInAppHandler
- (id)destinationApplicationBundleIdentifier;
- (void)getUserActivityForCommand:(id)a3 environment:(id)a4 completionHandler:(id)a5;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUISearchInAppHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 searchInAppType] == 1)
  {
    v10 = [v8 applicationBundleIdentifier];
    v11 = [v8 searchString];
    [_TtC8SearchUI31SearchUIMarketplaceKitUtilities requestSearchPageWithDistributorID:v10 searchString:v11 completionHandler:&__block_literal_global_25];
  }

  else
  {
    v12 = [v8 applicationBundleIdentifier];
    v13 = [SearchUIUtilities bundleIdentifierForApp:1];
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v15 setScheme:@"itms-apps"];
      [v15 setHost:&stru_1F55BC4E8];
      v16 = [MEMORY[0x1E695DF70] array];
      v17 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"action" value:@"search"];
      [v16 addObject:v17];

      v18 = objc_alloc(MEMORY[0x1E696AF60]);
      v19 = [v8 searchString];
      v20 = [v18 initWithName:@"term" value:v19];
      [v16 addObject:v20];

      [v15 setQueryItems:v16];
      v21 = MEMORY[0x1E69CA320];
      v22 = [v15 URL];
      v23 = [v21 punchoutWithURL:v22];
      [SearchUIUtilities openPunchout:v23];
    }

    else
    {
      v24.receiver = self;
      v24.super_class = SearchUISearchInAppHandler;
      [(SearchUIOpenUserActivityHandler *)&v24 performCommand:v8 triggerEvent:a4 environment:v9];
    }
  }
}

- (void)getUserActivityForCommand:(id)a3 environment:(id)a4 completionHandler:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E69636A8];
  v8 = a5;
  v9 = [v7 alloc];
  v10 = [v9 initWithActivityType:*MEMORY[0x1E6963B78]];
  v11 = [v6 searchString];
  v12 = [v6 searchString];

  if (!v12)
  {
    v13 = SearchUITapLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [SearchUISearchInAppHandler getUserActivityForCommand:v6 environment:v13 completionHandler:?];
    }

    v11 = &stru_1F55BC4E8;
  }

  v17 = *MEMORY[0x1E6963B88];
  v14 = [v6 searchString];
  v18[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [v10 setUserInfo:v15];

  v16 = [v6 applicationBundleIdentifier];
  v8[2](v8, v10, v16);
}

- (id)destinationApplicationBundleIdentifier
{
  v2 = [(SearchUICommandHandler *)self command];
  v3 = [v2 applicationBundleIdentifier];

  return v3;
}

- (void)getUserActivityForCommand:(void *)a1 environment:(NSObject *)a2 completionHandler:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 applicationBundleIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_1DA169000, a2, OS_LOG_TYPE_FAULT, "SearchUISearchInAppHandler has nil string for app: %@", &v4, 0xCu);
}

@end