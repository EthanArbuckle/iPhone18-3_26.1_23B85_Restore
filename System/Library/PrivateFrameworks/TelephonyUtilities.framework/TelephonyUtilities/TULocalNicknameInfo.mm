@interface TULocalNicknameInfo
- (TULocalNicknameInfo)init;
- (id)appleTVNicknameForDeviceName:(id)a3;
- (id)formattedDisplayNameForIMNickname:(id)a3 style:(int64_t)a4;
- (id)nicknameWithFormatterStyle:(int64_t)a3;
@end

@implementation TULocalNicknameInfo

- (TULocalNicknameInfo)init
{
  v6.receiver = self;
  v6.super_class = TULocalNicknameInfo;
  v2 = [(TULocalNicknameInfo *)&v6 init];
  if (v2)
  {
    v3 = CUTWeakLinkClass();
    if (v3)
    {
      v4 = [v3 sharedController];
      [v4 connectToDaemon];
    }
  }

  return v2;
}

- (id)appleTVNicknameForDeviceName:(id)a3
{
  v4 = a3;
  if (v4 && ([(TULocalNicknameInfo *)self shortNickname], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = MEMORY[0x1E696AEC0];
    v8 = TUBundle();
    v9 = [v8 localizedStringForKey:@"%@_APPLE_TV_DEVICE_NAME_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v10 = [v7 stringWithFormat:v9, v6, v4];
  }

  else
  {
    v6 = TUBundle();
    v10 = [v6 localizedStringForKey:@"APPLE_TV" value:&stru_1F098C218 table:@"TelephonyUtilities"];
  }

  return v10;
}

- (id)nicknameWithFormatterStyle:(int64_t)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = CUTWeakLinkClass();
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v5 sharedInstance];
  *&v35 = 0;
  *(&v35 + 1) = &v35;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = [v6 personalNickname];
  v7 = *(*(&v35 + 1) + 40);
  if (!v7)
  {
    v8 = dispatch_semaphore_create(0);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __50__TULocalNicknameInfo_nicknameWithFormatterStyle___block_invoke;
    v29[3] = &unk_1E7424CB0;
    v31 = &v35;
    v9 = v8;
    v30 = v9;
    [v6 fetchPersonalNicknameWithCompletion:v29];
    v10 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v9, v10))
    {
      v11 = TUDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [TULocalNicknameInfo nicknameWithFormatterStyle:v11];
      }
    }

    v7 = *(*(&v35 + 1) + 40);
  }

  v12 = [(TULocalNicknameInfo *)self formattedDisplayNameForIMNickname:v7 style:a3];
  v13 = TUDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v12;
    _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Local nickame info retrieved from SNaP: %@", buf, 0xCu);
  }

  _Block_object_dispose(&v35, 8);
  if (!v12)
  {
LABEL_11:
    v14 = MEMORY[0x1E695CE28];
    v15 = [MEMORY[0x1E696AAE8] mainBundle];
    v16 = [v15 bundleIdentifier];
    if (v16)
    {
      v17 = [v14 tu_contactStoreConfigurationForBundleIdentifier:v16];
    }

    else
    {
      v18 = TUPreferredFaceTimeBundleIdentifier();
      v17 = [v14 tu_contactStoreConfigurationForBundleIdentifier:v18];
    }

    v19 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v17];
    v32[0] = *MEMORY[0x1E695C258];
    v20 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    v32[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v28 = 0;
    v22 = [v19 _crossPlatformUnifiedMeContactWithKeysToFetch:v21 error:&v28];
    v23 = v28;

    if (v23)
    {
      v24 = TUDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(TULocalNicknameInfo *)v23 nicknameWithFormatterStyle:v24];
      }

      v12 = 0;
    }

    else
    {
      v12 = TUNameForContactWithFormatterStyle(v22, 1);
    }

    v25 = TUDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v35) = 138412290;
      *(&v35 + 4) = v12;
      _os_log_impl(&dword_1956FD000, v25, OS_LOG_TYPE_DEFAULT, "Local nickame info retrieved from MeContact: %@", &v35, 0xCu);
    }
  }

  v26 = *MEMORY[0x1E69E9840];

  return v12;
}

void __50__TULocalNicknameInfo_nicknameWithFormatterStyle___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)formattedDisplayNameForIMNickname:(id)a3 style:(int64_t)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = objc_opt_new();
    v7 = [v5 firstName];
    [v6 setGivenName:v7];

    v8 = [v5 lastName];

    [v6 setFamilyName:v8];
    v9 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v6 style:a4 options:0];
    v10 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v11 = [v9 stringByTrimmingCharactersInSet:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)nicknameWithFormatterStyle:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch meContact for local nickname info with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end