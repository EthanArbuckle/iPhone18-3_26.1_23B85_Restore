@interface SearchUIMusicDisclosureCheckCache
- (void)computeObjectForKey:(id)a3 completionHandler:(id)a4;
@end

@implementation SearchUIMusicDisclosureCheckCache

- (void)computeObjectForKey:(id)a3 completionHandler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [SearchUIUtilities bundleIdentifierForApp:11];
  v6 = [SearchUIUtilities isAppInstalledWithBundleId:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1E69E4528] sharedPrivacyInfo];
    v8 = [v7 preflightDisclosureRequiredForMusic];
    v9 = v8 | [v7 privacyAcknowledgementRequiredForMusic];
    v10 = v9 ^ 1u;
    v11 = SearchUIGeneralLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"YES";
      if (v9)
      {
        v12 = @"NO";
      }

      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_1DA169000, v11, OS_LOG_TYPE_DEFAULT, "Disclosure approved by user: %@", &v14, 0xCu);
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:v10];
  v4[2](v4, v13);
}

@end