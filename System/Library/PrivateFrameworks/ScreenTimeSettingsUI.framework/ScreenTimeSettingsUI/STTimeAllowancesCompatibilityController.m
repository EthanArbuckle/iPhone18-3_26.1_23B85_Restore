@interface STTimeAllowancesCompatibilityController
+ (void)showOnDemandDowntimeCompatibilityAlertIfNeededForUser:(id)a3 alertPresenter:(id)a4 completionHandler:(id)a5;
@end

@implementation STTimeAllowancesCompatibilityController

+ (void)showOnDemandDowntimeCompatibilityAlertIfNeededForUser:(id)a3 alertPresenter:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__5;
  v47 = __Block_byref_object_dispose__5;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__5;
  v41 = __Block_byref_object_dispose__5;
  v42 = 0;
  v10 = [v7 managedObjectContext];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __130__STTimeAllowancesCompatibilityController_showOnDemandDowntimeCompatibilityAlertIfNeededForUser_alertPresenter_completionHandler___block_invoke;
  v31[3] = &unk_279B7E290;
  v33 = &v53;
  v11 = v7;
  v32 = v11;
  v34 = &v49;
  v35 = &v43;
  v36 = &v37;
  [v10 performBlockAndWait:v31];

  v12 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.preferences.screentime"];
  v13 = [v12 dictionaryForKey:@"HasShownOnDemandDowntimeCompatibilityAlertByDSID"];
  v14 = [v13 objectForKeyedSubscript:v44[5]];
  v15 = [v14 BOOLValue];

  if (!(v15 & 1 | ((v50[3] & 1) == 0)))
  {
    v16 = +[STScreenTimeSettingsUIBundle bundle];
    v17 = v16;
    if (*(v54 + 24) == 1)
    {
      if (v38[5])
      {
        v25 = [v16 localizedStringForKey:@"UpdateChildDevicesAlertTitleFormat" value:&stru_28766E5A8 table:0];
        v18 = [MEMORY[0x277CBEAF8] currentLocale];
        v19 = objc_alloc(MEMORY[0x277CCACA8]);
        v20 = [v19 initWithFormat:v25 locale:v18, v38[5]];
        v21 = [v17 localizedStringForKey:@"OnDemandDowntimeChildCompatibilityAlertMessageFormat" value:&stru_28766E5A8 table:0];
        v22 = objc_alloc(MEMORY[0x277CCACA8]);
        v23 = [v22 initWithFormat:v21 locale:v18, v38[5]];

LABEL_9:
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __130__STTimeAllowancesCompatibilityController_showOnDemandDowntimeCompatibilityAlertIfNeededForUser_alertPresenter_completionHandler___block_invoke_2;
        v26[3] = &unk_279B7E2B8;
        v27 = v13;
        v30 = &v43;
        v28 = v12;
        v29 = v9;
        [v8 showAlertWithTitle:v20 message:v23 completion:v26];

        goto LABEL_10;
      }

      v20 = [v16 localizedStringForKey:@"UpdateChildDevicesAlertTitle" value:&stru_28766E5A8 table:0];
      v24 = [v17 localizedStringForKey:@"OnDemandDowntimeChildCompatibilityAlertMessage" value:&stru_28766E5A8 table:0];
    }

    else
    {
      v20 = [v16 localizedStringForKey:@"UpdateOtherDevicesAlertTitle" value:&stru_28766E5A8 table:0];
      v24 = [v17 localizedStringForKey:@"OnDemandDowntimeCompatibilityAlertMessage" value:&stru_28766E5A8 table:0];
    }

    v23 = v24;
    goto LABEL_9;
  }

  v9[2](v9);
LABEL_10:

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
}

uint64_t __130__STTimeAllowancesCompatibilityController_showOnDemandDowntimeCompatibilityAlertIfNeededForUser_alertPresenter_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localUserDeviceState];
  *(*(*(a1 + 40) + 8) + 24) = v2 == 0;

  if ([*(a1 + 32) syncingEnabled])
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
  }

  *(*(*(a1 + 48) + 8) + 24) = v3 & 1;
  v4 = [*(a1 + 32) dsid];
  v5 = [v4 stringValue];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) givenName];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return MEMORY[0x2821F96F8](v8, v10);
}

void __130__STTimeAllowancesCompatibilityController_showOnDemandDowntimeCompatibilityAlertIfNeededForUser_alertPresenter_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  }

  v4 = v3;
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*(*(*(a1 + 56) + 8) + 40)];
  [*(a1 + 40) setObject:v4 forKey:@"HasShownOnDemandDowntimeCompatibilityAlertByDSID"];
  (*(*(a1 + 48) + 16))();
}

@end