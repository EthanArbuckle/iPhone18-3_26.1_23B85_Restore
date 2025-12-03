@interface TULocalNicknameInfo
- (TULocalNicknameInfo)init;
- (id)appleTVNicknameForDeviceName:(id)name;
- (id)formattedDisplayNameForIMNickname:(id)nickname style:(int64_t)style;
- (id)nicknameWithFormatterStyle:(int64_t)style;
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
      sharedController = [v3 sharedController];
      [sharedController connectToDaemon];
    }
  }

  return v2;
}

- (id)appleTVNicknameForDeviceName:(id)name
{
  nameCopy = name;
  if (nameCopy && ([(TULocalNicknameInfo *)self shortNickname], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = MEMORY[0x1E696AEC0];
    v8 = TUBundle();
    v9 = [v8 localizedStringForKey:@"%@_APPLE_TV_DEVICE_NAME_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    nameCopy = [v7 stringWithFormat:v9, v6, nameCopy];
  }

  else
  {
    v6 = TUBundle();
    nameCopy = [v6 localizedStringForKey:@"APPLE_TV" value:&stru_1F098C218 table:@"TelephonyUtilities"];
  }

  return nameCopy;
}

- (id)nicknameWithFormatterStyle:(int64_t)style
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = CUTWeakLinkClass();
  if (!v5)
  {
    goto LABEL_11;
  }

  sharedInstance = [v5 sharedInstance];
  *&v35 = 0;
  *(&v35 + 1) = &v35;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  personalNickname = [sharedInstance personalNickname];
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
    [sharedInstance fetchPersonalNicknameWithCompletion:v29];
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

  v12 = [(TULocalNicknameInfo *)self formattedDisplayNameForIMNickname:v7 style:style];
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
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    if (bundleIdentifier)
    {
      v17 = [v14 tu_contactStoreConfigurationForBundleIdentifier:bundleIdentifier];
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

- (id)formattedDisplayNameForIMNickname:(id)nickname style:(int64_t)style
{
  if (nickname)
  {
    nicknameCopy = nickname;
    v6 = objc_opt_new();
    firstName = [nicknameCopy firstName];
    [v6 setGivenName:firstName];

    lastName = [nicknameCopy lastName];

    [v6 setFamilyName:lastName];
    v9 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v6 style:style options:0];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v11 = [v9 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
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