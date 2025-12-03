@interface SearchUIOpenMediaHandler
- (BOOL)supportsIntentPath;
- (id)actionProvider;
- (id)clientSelectedBundleIdentifier;
- (id)intent;
- (id)mediaMetadata;
@end

@implementation SearchUIOpenMediaHandler

- (id)intent
{
  v3 = objc_alloc(MEMORY[0x1E696E9C8]);
  mediaMetadata = [(SearchUIOpenMediaHandler *)self mediaMetadata];
  v5 = [SearchUIMediaUtilities mediaSearchForMetadata:mediaMetadata];
  v6 = [v3 initWithMediaItems:0 mediaSearch:v5];

  return v6;
}

- (id)mediaMetadata
{
  command = [(SearchUICommandHandler *)self command];
  mediaMetadata = [command mediaMetadata];

  return mediaMetadata;
}

- (BOOL)supportsIntentPath
{
  clientSelectedBundleIdentifier = [(SearchUIOpenMediaHandler *)self clientSelectedBundleIdentifier];
  v3 = [SearchUIMediaUtilities bundleIdentifierSupportsOpenIntent:clientSelectedBundleIdentifier];

  return v3;
}

- (id)clientSelectedBundleIdentifier
{
  command = [(SearchUICommandHandler *)self command];
  clientSelectedBundleIdentifier = [command clientSelectedBundleIdentifier];
  v5 = clientSelectedBundleIdentifier;
  if (clientSelectedBundleIdentifier)
  {
    clientSelectedBundleIdentifier2 = clientSelectedBundleIdentifier;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SearchUIOpenMediaHandler;
    clientSelectedBundleIdentifier2 = [(SearchUIMediaHandler *)&v9 clientSelectedBundleIdentifier];
  }

  v7 = clientSelectedBundleIdentifier2;

  return v7;
}

- (id)actionProvider
{
  command = [(SearchUICommandHandler *)self command];
  environment = [(SearchUICommandHandler *)self environment];
  rowModel = [(SearchUICommandHandler *)self rowModel];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__SearchUIOpenMediaHandler_actionProvider__block_invoke;
  aBlock[3] = &unk_1E85B27E8;
  v12 = command;
  v13 = rowModel;
  v14 = environment;
  v6 = environment;
  v7 = rowModel;
  v8 = command;
  v9 = _Block_copy(aBlock);

  return v9;
}

id __42__SearchUIOpenMediaHandler_actionProvider__block_invoke(id *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 scale];
  v5 = v4;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [a1[4] mediaMetadata];
  v7 = [SearchUIMediaUtilities mediaDestinationsForMediaMetadata:v6];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = MEMORY[0x1E69DC628];
        v13 = [v11 title];
        v14 = [v11 image];
        v15 = [v14 loadImageWithScale:0 isDarkStyle:v5];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __42__SearchUIOpenMediaHandler_actionProvider__block_invoke_2;
        v24[3] = &unk_1E85B27C0;
        v24[4] = v11;
        v25 = a1[5];
        v26 = a1[6];
        v16 = [v12 actionWithTitle:v13 image:v15 identifier:0 handler:v24];

        [v2 addObject:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  if ([v2 count])
  {
    v17 = MEMORY[0x1E69DCC60];
    v18 = [a1[4] mediaMetadata];
    v19 = [v18 disambiguationTitle];
    v20 = [v17 menuWithTitle:v19 children:v2];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __42__SearchUIOpenMediaHandler_actionProvider__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) command];
  [v2 setCommand:v3];

  v4 = [SearchUICommandHandler handlerForButton:v2 rowModel:*(a1 + 40) environment:*(a1 + 48)];
  [v4 executeWithTriggerEvent:2];

  v5 = SearchUITapLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "tapping %@", &v6, 0xCu);
  }
}

@end