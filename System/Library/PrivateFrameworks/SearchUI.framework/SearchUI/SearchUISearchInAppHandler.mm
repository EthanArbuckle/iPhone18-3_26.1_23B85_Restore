@interface SearchUISearchInAppHandler
- (id)destinationApplicationBundleIdentifier;
- (void)getUserActivityForCommand:(id)command environment:(id)environment completionHandler:(id)handler;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUISearchInAppHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  commandCopy = command;
  environmentCopy = environment;
  if ([commandCopy searchInAppType] == 1)
  {
    applicationBundleIdentifier = [commandCopy applicationBundleIdentifier];
    searchString = [commandCopy searchString];
    [_TtC8SearchUI31SearchUIMarketplaceKitUtilities requestSearchPageWithDistributorID:applicationBundleIdentifier searchString:searchString completionHandler:&__block_literal_global_25];
  }

  else
  {
    applicationBundleIdentifier2 = [commandCopy applicationBundleIdentifier];
    v13 = [SearchUIUtilities bundleIdentifierForApp:1];
    v14 = [applicationBundleIdentifier2 isEqualToString:v13];

    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v15 setScheme:@"itms-apps"];
      [v15 setHost:&stru_1F55BC4E8];
      array = [MEMORY[0x1E695DF70] array];
      v17 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"action" value:@"search"];
      [array addObject:v17];

      v18 = objc_alloc(MEMORY[0x1E696AF60]);
      searchString2 = [commandCopy searchString];
      v20 = [v18 initWithName:@"term" value:searchString2];
      [array addObject:v20];

      [v15 setQueryItems:array];
      v21 = MEMORY[0x1E69CA320];
      v22 = [v15 URL];
      v23 = [v21 punchoutWithURL:v22];
      [SearchUIUtilities openPunchout:v23];
    }

    else
    {
      v24.receiver = self;
      v24.super_class = SearchUISearchInAppHandler;
      [(SearchUIOpenUserActivityHandler *)&v24 performCommand:commandCopy triggerEvent:event environment:environmentCopy];
    }
  }
}

- (void)getUserActivityForCommand:(id)command environment:(id)environment completionHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  v7 = MEMORY[0x1E69636A8];
  handlerCopy = handler;
  v9 = [v7 alloc];
  v10 = [v9 initWithActivityType:*MEMORY[0x1E6963B78]];
  searchString = [commandCopy searchString];
  searchString2 = [commandCopy searchString];

  if (!searchString2)
  {
    v13 = SearchUITapLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [SearchUISearchInAppHandler getUserActivityForCommand:commandCopy environment:v13 completionHandler:?];
    }

    searchString = &stru_1F55BC4E8;
  }

  v17 = *MEMORY[0x1E6963B88];
  searchString3 = [commandCopy searchString];
  v18[0] = searchString3;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [v10 setUserInfo:v15];

  applicationBundleIdentifier = [commandCopy applicationBundleIdentifier];
  handlerCopy[2](handlerCopy, v10, applicationBundleIdentifier);
}

- (id)destinationApplicationBundleIdentifier
{
  command = [(SearchUICommandHandler *)self command];
  applicationBundleIdentifier = [command applicationBundleIdentifier];

  return applicationBundleIdentifier;
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