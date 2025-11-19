@interface SearchUIMobileTimerUtilities
+ (void)getEnablementStatusForAlarmWithIdentifier:(id)a3 completion:(id)a4;
@end

@implementation SearchUIMobileTimerUtilities

+ (void)getEnablementStatusForAlarmWithIdentifier:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__SearchUIMobileTimerUtilities_getEnablementStatusForAlarmWithIdentifier_completion___block_invoke;
  v9[3] = &unk_1E85B2720;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [SearchUIUtilities dispatchAsyncIfNecessary:v9];
}

void __85__SearchUIMobileTimerUtilities_getEnablementStatusForAlarmWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = getMTAlarmManagerClass_softClass;
  v20 = getMTAlarmManagerClass_softClass;
  if (!getMTAlarmManagerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMTAlarmManagerClass_block_invoke;
    v22 = &unk_1E85B2928;
    v23 = &v17;
    __getMTAlarmManagerClass_block_invoke(buf);
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  v4 = objc_opt_new();
  v5 = [v4 alarmWithIDString:{*(a1 + 32), v17}];
  v6 = SearchUIGeneralLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [v5 isEnabled];
      v9 = *(a1 + 32);
      *buf = 67109378;
      *&buf[4] = v8;
      *&buf[8] = 2112;
      *&buf[10] = v9;
      _os_log_impl(&dword_1DA169000, v6, OS_LOG_TYPE_DEFAULT, "Resolved enablement state (%d) for alarm of identifier: %@", buf, 0x12u);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), [v5 isEnabled]);
  }

  else
  {
    if (v7)
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      *&buf[4] = v10;
      _os_log_impl(&dword_1DA169000, v6, OS_LOG_TYPE_DEFAULT, "Fetching sleepMode enablement state for alarm of identifier: %@", buf, 0xCu);
    }

    v11 = [objc_alloc(MEMORY[0x1E69D3698]) initWithIdentifier:@"com.apple.SearchUI"];
    v12 = [v11 currentSleepScheduleWithError:0];
    v13 = [v12 occurrences];
    v14 = [v13 firstObject];
    v15 = [v14 alarmConfiguration];

    if (v15)
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), [v15 isEnabled]);
    }

    else
    {
      v16 = SearchUIGeneralLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __85__SearchUIMobileTimerUtilities_getEnablementStatusForAlarmWithIdentifier_completion___block_invoke_cold_1(v16);
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

@end