@interface VUIHomeSharingMediaItem
@end

@implementation VUIHomeSharingMediaItem

void __41__VUIHomeSharingMediaItem_iOS_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIHomeSharingMediaItem_iOS");
  v1 = sLogObject_11;
  sLogObject_11 = v0;
}

void __63__VUIHomeSharingMediaItem_iOS_prepareForLoadingWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v10 = *(a1 + 40);
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = *(v10 + 16);
LABEL_7:
    v11();
    goto LABEL_8;
  }

  if (![*(a1 + 32) needsKeyBagSyncPriorToPlayback])
  {
    v11 = *(*(a1 + 40) + 16);
    goto LABEL_7;
  }

  [*(a1 + 32) setNeedsKeyBagSyncPriorToPlayback:0];
  v6 = [*(a1 + 32) ml3Track];
  v7 = [v6 valueForProperty:*MEMORY[0x1E69B3260]];

  v8 = [*(a1 + 32) loadingContext];
  objc_initWeak(&location, *(a1 + 32));
  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__VUIHomeSharingMediaItem_iOS_prepareForLoadingWithCompletion___block_invoke_2;
  v12[3] = &unk_1E87329D8;
  objc_copyWeak(v14, &location);
  v14[1] = v8;
  v13 = *(a1 + 40);
  [v9 _fetchKeybagForDSID:v7 isFamilyAccount:0 completion:v12];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);

LABEL_8:
}

void __63__VUIHomeSharingMediaItem_iOS_prepareForLoadingWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained ml3Track];
  v4 = [v3 valueForProperty:*MEMORY[0x1E69B32D0]];

  if (v4 && [v4 unsignedLongLongValue] && (objc_msgSend(WeakRetained, "_loadingCancelled:", *(a1 + 48)) & 1) == 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__VUIHomeSharingMediaItem_iOS_prepareForLoadingWithCompletion___block_invoke_3;
    v5[3] = &unk_1E872D7E0;
    v6 = *(a1 + 32);
    [WeakRetained _fetchKeybagForDSID:v4 isFamilyAccount:1 completion:v5];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sLogObject_11;
  if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Token request complete", buf, 2u);
  }

  v5 = [v3 tokenData];
  if ([v5 length])
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [v6 fileExistsAtPath:*(a1 + 32)];

    if ((v7 & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AC08] defaultManager];
      v9 = *(a1 + 32);
      v16 = 0;
      v10 = [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v16];
      v11 = v16;

      if ((v10 & 1) == 0 && os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_ERROR))
      {
        __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_2_cold_1();
      }
    }

    v12 = [objc_alloc(MEMORY[0x1E69D48A0]) initWithAuthorizationToken:v5 accountIdentifier:*(a1 + 40)];
    [v12 setKeybagPath:*(a1 + 32)];
    if (*(a1 + 56) == 1)
    {
      [v12 setReason:@"family"];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_40;
    v13[3] = &unk_1E8732A00;
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    [v12 startWithAuthorizationResponseBlock:v13];
  }

  else
  {
    if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_ERROR))
    {
      __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_2_cold_2();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = sLogObject_11;
  if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Authorization request complete", buf, 2u);
  }

  v8 = [v5 bodyData];
  if ([v8 length])
  {
    v9 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:0];
    v10 = [v9 objectForKey:@"keybag"];
    if ([v10 length])
    {
      *buf = 0;
      v16 = 0;
      v17 = 0;
      if (SSVFairPlayGetHardwareInfo())
      {
        v14 = 0;
        if (XtCqEf5X(0, buf, [*(a1 + 32) UTF8String], &v14))
        {
          if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_ERROR))
          {
            __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_40_cold_2();
          }
        }

        else
        {
          [v10 bytes];
          [v10 length];
          lCUad();
          v11 = sLogObject_11;
          if (v12)
          {
            if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_ERROR))
            {
              __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_40_cold_3();
            }
          }

          else if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_DEFAULT))
          {
            *v13 = 0;
            _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Successfully imported key bag", v13, 2u);
          }

          VLxCLgDpiF(v14);
        }
      }

      else if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_ERROR))
      {
        __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_40_cold_1();
      }
    }

    else if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_ERROR))
    {
      __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_40_cold_4();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_ERROR))
    {
      __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_40_cold_5();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_40_cold_1()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_40_cold_4()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_40_cold_5()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end