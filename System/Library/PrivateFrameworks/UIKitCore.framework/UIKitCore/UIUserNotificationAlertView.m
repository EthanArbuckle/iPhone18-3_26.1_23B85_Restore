@interface UIUserNotificationAlertView
@end

@implementation UIUserNotificationAlertView

void __36___UIUserNotificationAlertView_show__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 text];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1EFB14550;
  }

  [v4 addObject:v7];

  v8 = *(a1 + 40);
  v9 = [v3 placeholder];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1EFB14550;
  }

  [v8 addObject:v11];

  v12 = *(a1 + 48);
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "keyboardType")}];
  [v12 addObject:v13];

  v14 = *(a1 + 56);
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "autocapitalizationType")}];
  [v14 addObject:v15];

  v16 = *(a1 + 64);
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "autocorrectionType")}];
  [v16 addObject:v17];

  [*(a1 + 72) setObject:*(a1 + 32) forKey:*MEMORY[0x1E695EEA8]];
  [*(a1 + 72) setObject:*(a1 + 40) forKey:*MEMORY[0x1E695EEA0]];
  [*(a1 + 72) setObject:*(a1 + 48) forKey:*MEMORY[0x1E695EE88]];
  v19 = *(a1 + 64);
  v18 = *(a1 + 72);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v20 = qword_1ED499500;
  v35 = qword_1ED499500;
  if (!qword_1ED499500)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __getSBUserNotificationTextAutocorrectionTypeSymbolLoc_block_invoke;
    v31 = &unk_1E70F2F20;
    v21 = SpringBoardServicesLibrary_2();
    v33[3] = dlsym(v21, "SBUserNotificationTextAutocorrectionType");
    qword_1ED499500 = v33[3];
    v20 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (v20)
  {
    [v18 setObject:v19 forKey:*v20];
    v22 = *(a1 + 72);
    v23 = *(a1 + 56);
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v24 = qword_1ED499508;
    v35 = qword_1ED499508;
    if (!qword_1ED499508)
    {
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __getSBUserNotificationTextAutocapitalizationTypeSymbolLoc_block_invoke;
      v31 = &unk_1E70F2F20;
      v25 = SpringBoardServicesLibrary_2();
      v33[3] = dlsym(v25, "SBUserNotificationTextAutocapitalizationType");
      qword_1ED499508 = v33[3];
      v24 = v33[3];
    }

    _Block_object_dispose(&v32, 8);
    if (v24)
    {
      [v22 setObject:v23 forKey:*v24];

      return;
    }

    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationTextAutocapitalizationType(void)"];
    [v26 handleFailureInFunction:v27 file:@"UIAlertView_ViewServiceSupport.m" lineNumber:31 description:{@"%s", dlerror(), v28, v29, v30, v31}];
  }

  else
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationTextAutocorrectionType(void)"];
    [v26 handleFailureInFunction:v27 file:@"UIAlertView_ViewServiceSupport.m" lineNumber:30 description:{@"%s", dlerror(), v28, v29, v30, v31}];
  }

  __break(1u);
}

@end