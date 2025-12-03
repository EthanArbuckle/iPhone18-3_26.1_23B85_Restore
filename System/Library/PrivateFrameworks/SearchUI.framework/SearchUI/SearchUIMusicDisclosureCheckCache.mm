@interface SearchUIMusicDisclosureCheckCache
- (void)computeObjectForKey:(id)key completionHandler:(id)handler;
@end

@implementation SearchUIMusicDisclosureCheckCache

- (void)computeObjectForKey:(id)key completionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = [SearchUIUtilities bundleIdentifierForApp:11];
  v6 = [SearchUIUtilities isAppInstalledWithBundleId:v5];

  if (v6)
  {
    mEMORY[0x1E69E4528] = [MEMORY[0x1E69E4528] sharedPrivacyInfo];
    preflightDisclosureRequiredForMusic = [mEMORY[0x1E69E4528] preflightDisclosureRequiredForMusic];
    v9 = preflightDisclosureRequiredForMusic | [mEMORY[0x1E69E4528] privacyAcknowledgementRequiredForMusic];
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
  handlerCopy[2](handlerCopy, v13);
}

@end