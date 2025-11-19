@interface PXCloudQuotaUpsellSheetManager
+ (void)presentUpsellSheetIfNecessaryWithActivationOptions:(int64_t)a3;
@end

@implementation PXCloudQuotaUpsellSheetManager

+ (void)presentUpsellSheetIfNecessaryWithActivationOptions:(int64_t)a3
{
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"PXCloudQuotaUpsellSheetManagerDisabled"];

  v6 = PLUserStatusGetLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Will not request iCloud Quota upsell: Disabled by user default", buf, 2u);
    }

    goto LABEL_32;
  }

  v8 = os_signpost_id_generate(v6);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "iCloudQuotaUpsellCheck", "", buf, 2u);
  }

  v11 = PXPreferencesWelcomeViewLastPresentationDate();
  if (v11)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v13 = v12;
    [v11 timeIntervalSinceReferenceDate];
    if (v13 - v14 < 86400.0)
    {
      v15 = PLUserStatusGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v16 = "Will not request iCloud Quota upsell: Welcome views presented too recently";
LABEL_14:
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
        goto LABEL_31;
      }

      goto LABEL_31;
    }
  }

  if (a3 == 2)
  {
    v15 = PLUserStatusGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Will not request iCloud Quota upsell: Photos launched with some connection options";
      goto LABEL_14;
    }

LABEL_31:

LABEL_32:
    return;
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v17 = getICQOfferManagerClass_softClass;
  v42 = getICQOfferManagerClass_softClass;
  if (!getICQOfferManagerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __getICQOfferManagerClass_block_invoke;
    v37 = &unk_1E774BD00;
    v38 = &v39;
    __getICQOfferManagerClass_block_invoke(buf);
    v17 = v40[3];
  }

  v18 = v17;
  _Block_object_dispose(&v39, 8);
  v15 = [v17 sharedOfferManager];
  v19 = objc_opt_respondsToSelector();
  v20 = PLUserStatusGetLog();
  v21 = v20;
  if ((v19 & 1) == 0)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_ERROR, "Cannot request iCloud Quota upsell: Device OS version too old", buf, 2u);
    }

    goto LABEL_27;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEFAULT, "Will request iCloud Quota upsell", buf, 2u);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v23 = v22;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v24 = getICQUIUpsellTriggerEventAppLaunchSymbolLoc_ptr;
  v42 = getICQUIUpsellTriggerEventAppLaunchSymbolLoc_ptr;
  if (!getICQUIUpsellTriggerEventAppLaunchSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __getICQUIUpsellTriggerEventAppLaunchSymbolLoc_block_invoke;
    v37 = &unk_1E774BD00;
    v38 = &v39;
    v25 = iCloudQuotaUILibrary();
    v26 = dlsym(v25, "ICQUIUpsellTriggerEventAppLaunch");
    *(v38[1] + 24) = v26;
    getICQUIUpsellTriggerEventAppLaunchSymbolLoc_ptr = *(v38[1] + 24);
    v24 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (v24)
  {
    v27 = *MEMORY[0x1E69BFF18];
    v28 = *v24;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __85__PXCloudQuotaUpsellSheetManager_presentUpsellSheetIfNecessaryWithActivationOptions___block_invoke;
    v33[3] = &__block_descriptor_40_e8_B12__0B8l;
    v33[4] = v23;
    [v15 fetchAndPresentUpsellForBundleIdentifier:v27 event:v28 completion:v33];
LABEL_27:
    v29 = v10;
    v30 = v29;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v30, OS_SIGNPOST_INTERVAL_END, v8, "iCloudQuotaUpsellCheck", "", buf, 2u);
    }

    goto LABEL_31;
  }

  v31 = [MEMORY[0x1E696AAA8] currentHandler];
  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getICQUIUpsellTriggerEventAppLaunch(void)"];
  [v31 handleFailureInFunction:v32 file:@"PXCloudQuotaUpsellSheetManager.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

uint64_t __85__PXCloudQuotaUpsellSheetManager_presentUpsellSheetIfNecessaryWithActivationOptions___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    v6 = PLUserStatusGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v7 = "No iCloud Quota upsell currently available";
      v8 = &v11;
      goto LABEL_7;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_12;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3 - *(a1 + 32);
  v5 = PLUserStatusGetLog();
  v6 = v5;
  if (v4 > 1.0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v7 = "Request for iCloud Quota upsell timed out: Deny presentation";
      v8 = &v12;
LABEL_7:
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Request for iCloud Quota upsell returned current offer: Allow presentation", buf, 2u);
  }

  v9 = 1;
LABEL_12:

  return v9;
}

@end