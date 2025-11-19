@interface SCROBrailleUIUtilities
+ (id)brailleForBackButton;
+ (void)tryDownloadingIfNeededForURL:(id)a3;
@end

@implementation SCROBrailleUIUtilities

+ (void)tryDownloadingIfNeededForURL:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v30 = 0;
  v4 = *MEMORY[0x277CBE8B8];
  v29 = 0;
  [v3 getResourceValue:&v30 forKey:v4 error:&v29];
  v5 = v30;
  v6 = v29;
  if ([v5 BOOLValue])
  {
    v7 = *MEMORY[0x277CBE950];
    v28 = 0;
    v8 = *MEMORY[0x277CBE948];
    v27 = 0;
    [v3 getResourceValue:&v28 forKey:v8 error:&v27];
    v9 = v28;
    v10 = v27;

    if ([v9 isEqualToString:v7])
    {
      v11 = _SCROD_LOG();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v3 path];
        *buf = 138412290;
        v32 = v12;
        _os_log_impl(&dword_26490B000, v11, OS_LOG_TYPE_DEFAULT, "Braille UI: Starting download for iCloud file %@", buf, 0xCu);
      }

      v13 = dispatch_semaphore_create(0);
      v14 = [MEMORY[0x277CCAA00] defaultManager];
      v26 = v10;
      [v14 startDownloadingUbiquitousItemAtURL:v3 error:&v26];
      v15 = v26;

      if (v15)
      {
        v16 = _SCROD_LOG();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v3 path];
          *buf = 138412546;
          v32 = v17;
          v33 = 2112;
          v34 = v15;
          _os_log_impl(&dword_26490B000, v16, OS_LOG_TYPE_DEFAULT, "Braille UI: Failed to start downloading iCloud file %@: %@", buf, 0x16u);
        }
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
        v25 = 0;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __55__SCROBrailleUIUtilities_tryDownloadingIfNeededForURL___block_invoke;
        v23[3] = &unk_279B748F0;
        v18 = v13;
        v24 = v18;
        [v16 coordinateReadingItemAtURL:v3 options:1 error:&v25 byAccessor:v23];
        v15 = v25;
        v19 = dispatch_time(0, 10000000000);
        if (dispatch_semaphore_wait(v18, v19))
        {
          v20 = _SCROD_LOG();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v3 path];
            *buf = 138412290;
            v32 = v21;
            _os_log_impl(&dword_26490B000, v20, OS_LOG_TYPE_DEFAULT, "Braille UI: Timeout waiting for iCloud file to download %@", buf, 0xCu);
          }
        }
      }

      v10 = v15;
    }

    v6 = v10;
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (id)brailleForBackButton
{
  if (brailleForBackButton_onceToken != -1)
  {
    +[SCROBrailleUIUtilities brailleForBackButton];
  }

  v3 = brailleForBackButton__brailleforBackButton;

  return v3;
}

void __46__SCROBrailleUIUtilities_brailleForBackButton__block_invoke()
{
  v0 = SCROBrailleUILocString(@"back.btn.label");
  v4 = [v0 lowercaseString];

  v1 = +[SCROBrailleTranslationManager sharedManager];
  v2 = [v1 printBrailleForText:v4 language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];
  v3 = brailleForBackButton__brailleforBackButton;
  brailleForBackButton__brailleforBackButton = v2;
}

@end