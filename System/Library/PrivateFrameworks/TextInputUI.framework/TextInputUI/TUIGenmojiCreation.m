@interface TUIGenmojiCreation
+ (BOOL)isGenmojiCreationAvailable;
+ (void)showGenmojiCreationForResponder:(id)a3;
@end

@implementation TUIGenmojiCreation

+ (void)showGenmojiCreationForResponder:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v9 = TUIGenmojiCreationLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v14) = 0;
    v10 = "Cannot show Genmoji creation for a nil responder.";
    v11 = v9;
    v12 = 2;
    goto LABEL_17;
  }

  if (([v3 isFirstResponder] & 1) == 0)
  {
    if ([v4 canBecomeFirstResponder])
    {
      if ([v4 becomeFirstResponder])
      {
        goto LABEL_3;
      }
    }

    else
    {
      v13 = TUIGenmojiCreationLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v4;
        _os_log_error_impl(&dword_18FFDC000, v13, OS_LOG_TYPE_ERROR, "Trying to show Genmoji creation for responder:%@ but it cannot become first responder.", &v14, 0xCu);
      }
    }

    v9 = TUIGenmojiCreationLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v14 = 138412290;
    v15 = v4;
    v10 = "Trying to show Genmoji creation for responder:%@ but it failed to become, or cannot become, first responder.";
    v11 = v9;
    v12 = 12;
LABEL_17:
    _os_log_error_impl(&dword_18FFDC000, v11, OS_LOG_TYPE_ERROR, v10, &v14, v12);
    goto LABEL_15;
  }

LABEL_3:
  v5 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v6 = [v5 currentInputMode];
  v7 = [v6 isEmojiInputMode];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x1E69DCBE0] activeInstance];
    [v8 setInputMode:*MEMORY[0x1E69DDFB8] userInitiated:1];
  }

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"TUIShowGenmojiCreationNotification" object:0];
LABEL_15:
}

+ (BOOL)isGenmojiCreationAvailable
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  [v2 userInterfaceIdiom];

  v3 = _os_feature_enabled_impl();
  v4 = +[TUIGenerativeModelsAvailability isAvailable];
  IsEmojiInputModeActive = UIKeyboardIsEmojiInputModeActive();
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = TUIGenmojiCreationLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_18FFDC000, v6, OS_LOG_TYPE_ERROR, "Genmoji creation not enabled: OS feature flag not enabled", &v13, 2u);
    }

    if (v4)
    {
LABEL_3:
      if (IsEmojiInputModeActive)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v7 = TUIGenmojiCreationLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v13) = 0;
    _os_log_error_impl(&dword_18FFDC000, v7, OS_LOG_TYPE_ERROR, "Genmoji creation not available: GenerativeModelsAvailability not available", &v13, 2u);
  }

  if ((IsEmojiInputModeActive & 1) == 0)
  {
LABEL_11:
    v8 = TUIGenmojiCreationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_18FFDC000, v8, OS_LOG_TYPE_ERROR, "Genmoji creation not available: emoji input mode not active", &v13, 2u);
    }
  }

LABEL_14:
  v9 = v3 & IsEmojiInputModeActive & v4;
  v10 = TUIGenmojiCreationLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = @"false";
    if (v9)
    {
      v12 = @"true";
    }

    v13 = 138412290;
    v14 = v12;
    _os_log_error_impl(&dword_18FFDC000, v10, OS_LOG_TYPE_ERROR, "isGenmojiCreationAvailable was called and returned %@", &v13, 0xCu);
  }

  return v9;
}

@end