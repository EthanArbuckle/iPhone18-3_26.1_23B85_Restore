@interface UIAlertController(TelephonyUI)
+ (id)callEndStewieControllerWithDialRequest:()TelephonyUI dialAction:title:buttonTitle:;
+ (id)enableWiFiCallingAlertControllerWithPreferredStyle:()TelephonyUI;
+ (id)networkUnavailableAlertControllerWithCallProvider:()TelephonyUI dialType:senderIdentityUUID:;
+ (id)telephonyAccountUnavailableAlertControllerWithSenderIdentities:()TelephonyUI preferredStyle:completion:;
@end

@implementation UIAlertController(TelephonyUI)

+ (id)enableWiFiCallingAlertControllerWithPreferredStyle:()TelephonyUI
{
  if ([MEMORY[0x1E69D8A48] supportsWiFiCalling])
  {
    v4 = TelephonyUIBundle();
    v5 = TUStringKeyForNetwork();
    v6 = [v4 localizedStringForKey:v5 value:&stru_1F2CA8008 table:@"General"];

    v7 = TelephonyUIBundle();
    v8 = TUStringKeyForNetwork();
    v9 = [v7 localizedStringForKey:v8 value:&stru_1F2CA8008 table:@"General"];

    mEMORY[0x1E699BE90] = [MEMORY[0x1E699BE90] sharedInstance];
    wiFiActiveAndReachable = [mEMORY[0x1E699BE90] wiFiActiveAndReachable];

    v12 = 0;
    if (([MEMORY[0x1E69D8A48] isWiFiCallingEnabled] & 1) == 0 && wiFiActiveAndReachable)
    {
      v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v6 preferredStyle:a3];
      v13 = [TPAlertAction actionWithType:5];
      [v12 addAction:v13];

      v14 = [TPAlertAction actionWithType:1];
      [v12 addAction:v14];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)networkUnavailableAlertControllerWithCallProvider:()TelephonyUI dialType:senderIdentityUUID:
{
  v7 = a3;
  v8 = a5;
  v9 = TelephonyUIBundle();
  v10 = [v9 localizedStringForKey:@"ALERT_TITLE_NETWORK_UNAVAILABLE" value:&stru_1F2CA8008 table:@"General"];

  v11 = 0x1E699B000uLL;
  if ([v7 isTelephonyProvider])
  {
    v12 = TelephonyUIBundle();
    v13 = [v12 localizedStringForKey:@"ALERT_MESSAGE_TELEPHONY_NO_LOCAL_CELLULAR" value:&stru_1F2CA8008 table:@"General"];

    if (v8)
    {
      v14 = [MEMORY[0x1E69D8A48] senderIdentityCapabilitiesWithUUID:v8];
      v15 = v14;
      if (a4 == 1)
      {
        canAttemptEmergencyCallsWithoutCellularConnection = [v14 canAttemptEmergencyCallsWithoutCellularConnection];
      }

      else
      {
        canAttemptEmergencyCallsWithoutCellularConnection = [v14 canAttemptTelephonyCallsWithoutCellularConnection];
      }

      v34 = canAttemptEmergencyCallsWithoutCellularConnection;

      if (v34)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    if (a4 == 1)
    {
      if (([MEMORY[0x1E69D8A48] canAttemptEmergencyCallsWithoutCellularConnection] & 1) == 0)
      {
LABEL_18:
        if ([MEMORY[0x1E69D8A48] supportsWiFiCalling])
        {
          v38 = TelephonyUIBundle();
          v39 = TUStringKeyForNetwork();
          v40 = [v38 localizedStringForKey:v39 value:&stru_1F2CA8008 table:@"General"];

          if ([MEMORY[0x1E69D8A48] isWiFiCallingEnabled])
          {
            mEMORY[0x1E699BE90] = [MEMORY[0x1E699BE90] sharedInstance];
            networkReachable = [mEMORY[0x1E699BE90] networkReachable];

            if (networkReachable)
            {
              v33 = 0;
            }

            else
            {
              v33 = 8;
            }
          }

          else
          {
            v33 = 16;
          }

          v13 = v40;
        }

        else
        {
          v33 = 0;
        }

        goto LABEL_26;
      }
    }

    else if (![MEMORY[0x1E69D8A48] canAttemptTelephonyCallsWithoutCellularConnection])
    {
      goto LABEL_18;
    }

LABEL_16:
    v35 = TelephonyUIBundle();
    v36 = TUStringKeyForNetwork();
    v37 = [v35 localizedStringForKey:v36 value:&stru_1F2CA8008 table:@"General"];

    v33 = 8;
    v13 = v37;
    goto LABEL_26;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  displayAppBundleIdentifier = [v7 displayAppBundleIdentifier];
  v19 = [mEMORY[0x1E699BE70] wifiAllowedForBundleId:displayAppBundleIdentifier];

  v20 = MEMORY[0x1E696AEC0];
  v21 = TelephonyUIBundle();
  v22 = TUStringKeyForNetwork();
  v23 = [v21 localizedStringForKey:v22 value:&stru_1F2CA8008 table:@"General"];
  localizedName = [v7 localizedName];
  v13 = [v20 stringWithFormat:v23, localizedName];

  mEMORY[0x1E699BE70]2 = [MEMORY[0x1E699BE70] sharedInstance];
  displayAppBundleIdentifier2 = [v7 displayAppBundleIdentifier];
  LODWORD(v23) = [mEMORY[0x1E699BE70]2 nonWifiAvailableForBundleId:displayAppBundleIdentifier2];

  if (v23)
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = TelephonyUIBundle();
    v29 = TUStringKeyForNetwork();
    v30 = [v28 localizedStringForKey:v29 value:&stru_1F2CA8008 table:@"General"];
    localizedName2 = [v7 localizedName];
    v32 = [v27 stringWithFormat:v30, localizedName2];

    v13 = v32;
  }

  if (v19)
  {
    v33 = 8;
  }

  else
  {
    v33 = 32;
  }

  v11 = 0x1E699B000;
LABEL_26:
  v43 = objc_alloc_init(MEMORY[0x1E698B6B0]);
  if ([v43 airplaneMode])
  {
    LOBYTE(v33) = v33 | 2;
    goto LABEL_31;
  }

  sharedInstance = [*(v11 + 3696) sharedInstance];
  displayAppBundleIdentifier3 = [v7 displayAppBundleIdentifier];
  v46 = [sharedInstance nonWifiAvailableForBundleId:displayAppBundleIdentifier3];

  if (v46)
  {
    LOBYTE(v33) = v33 | 4;
    goto LABEL_31;
  }

  if (v33)
  {
LABEL_31:
    v47 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:v13 preferredStyle:1];
    if ((v33 & 8) != 0)
    {
      v51 = [TPAlertAction actionWithType:4];
      [v47 addAction:v51];

      if ((v33 & 0x10) == 0)
      {
LABEL_33:
        if ((v33 & 2) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_43;
      }
    }

    else if ((v33 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    v52 = [TPAlertAction actionWithType:5];
    [v47 addAction:v52];

    if ((v33 & 2) == 0)
    {
LABEL_34:
      if ((v33 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_44;
    }

LABEL_43:
    v53 = [TPAlertAction actionWithType:2];
    [v47 addAction:v53];

    if ((v33 & 4) == 0)
    {
LABEL_35:
      if ((v33 & 0x20) == 0)
      {
LABEL_37:
        v49 = [TPAlertAction actionWithType:1];
        [v47 addAction:v49];

        goto LABEL_38;
      }

LABEL_36:
      v48 = [TPAlertAction actionWithType:6];
      [v47 addAction:v48];

      goto LABEL_37;
    }

LABEL_44:
    v54 = [TPAlertAction actionWithType:3];
    [v47 addAction:v54];

    if ((v33 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v47 = 0;
LABEL_38:

  return v47;
}

+ (id)telephonyAccountUnavailableAlertControllerWithSenderIdentities:()TelephonyUI preferredStyle:completion:
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v46 = a5;
  v8 = TelephonyUIBundle();
  v9 = [v8 localizedStringForKey:@"TELEPHONY_ACCOUNT_UNAVAILABLE_ALERT_TITLE" value:&stru_1F2CA8008 table:@"General"];

  v10 = &off_1B48EB000;
  if ([v7 count] >= 2)
  {
    v11 = MEMORY[0x1E69DC650];
    v12 = TelephonyUIBundle();
    v13 = [v12 localizedStringForKey:@"TELEPHONY_ACCOUNT_UNAVAILABLE_ALERT_MESSAGE" value:&stru_1F2CA8008 table:@"General"];
    v44 = v9;
    v14 = [v11 alertControllerWithTitle:v9 message:v13 preferredStyle:a4];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v7;
    v15 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v55;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          v19 = v14;
          if (*v55 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v54 + 1) + 8 * i);
          v21 = MEMORY[0x1E69DC648];
          localizedName = [v20 localizedName];
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __123__UIAlertController_TelephonyUI__telephonyAccountUnavailableAlertControllerWithSenderIdentities_preferredStyle_completion___block_invoke;
          v52[3] = &unk_1E7C0C1C0;
          v23 = v46;
          v52[4] = v20;
          v53 = v23;
          v24 = [v21 actionWithTitle:localizedName style:0 handler:v52];

          v14 = v19;
          [v19 addAction:v24];
        }

        v16 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v16);
    }

    actions = [v14 actions];
    firstObject = [actions firstObject];
    [v14 setPreferredAction:firstObject];

    v9 = v44;
    v10 = &off_1B48EB000;
    goto LABEL_12;
  }

  if ([v7 count] == 1)
  {
    v27 = MEMORY[0x1E69DC650];
    v28 = TelephonyUIBundle();
    v29 = [v28 localizedStringForKey:@"TELEPHONY_ACCOUNT_UNAVAILABLE_ALERT_MESSAGE_SINGLE" value:&stru_1F2CA8008 table:@"General"];
    v30 = [v27 alertControllerWithTitle:v9 message:v29 preferredStyle:a4];

    v31 = MEMORY[0x1E69DC648];
    v32 = TelephonyUIBundle();
    v14 = v30;
    v33 = [v32 localizedStringForKey:@"TELEPHONY_ACCOUNT_UNAVAILABLE_ALERT_ACTION_TITLE_CALL" value:&stru_1F2CA8008 table:@"General"];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __123__UIAlertController_TelephonyUI__telephonyAccountUnavailableAlertControllerWithSenderIdentities_preferredStyle_completion___block_invoke_2;
    v49[3] = &unk_1E7C0C1C0;
    v51 = v46;
    v50 = v7;
    v34 = [v31 actionWithTitle:v33 style:0 handler:v49];

    [v30 addAction:v34];
    actions2 = [v30 actions];
    firstObject2 = [actions2 firstObject];
    [v30 setPreferredAction:firstObject2];

    actions = v51;
LABEL_12:

    goto LABEL_14;
  }

  v14 = 0;
LABEL_14:
  v37 = MEMORY[0x1E69DC648];
  v38 = TelephonyUIBundle();
  v39 = [v38 localizedStringForKey:@"TELEPHONY_ACCOUNT_UNAVAILABLE_ALERT_ACTION_TITLE_CANCEL" value:&stru_1F2CA8008 table:@"General"];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = *(v10 + 233);
  v47[2] = __123__UIAlertController_TelephonyUI__telephonyAccountUnavailableAlertControllerWithSenderIdentities_preferredStyle_completion___block_invoke_3;
  v47[3] = &unk_1E7C0C1E8;
  v48 = v46;
  v40 = v46;
  v41 = [v37 actionWithTitle:v39 style:1 handler:v47];

  [v14 addAction:v41];
  v42 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)callEndStewieControllerWithDialRequest:()TelephonyUI dialAction:title:buttonTitle:
{
  v8 = a4;
  v9 = MEMORY[0x1E69DC650];
  v10 = a6;
  v11 = [v9 alertControllerWithTitle:a5 message:0 preferredStyle:0];
  v12 = MEMORY[0x1E69DC648];
  v13 = TelephonyUIBundle();
  v14 = [v13 localizedStringForKey:@"CANCEL" value:&stru_1F2CA8008 table:@"General"];
  v15 = [v12 actionWithTitle:v14 style:1 handler:&__block_literal_global_0];

  [v11 addAction:v15];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __102__UIAlertController_TelephonyUI__callEndStewieControllerWithDialRequest_dialAction_title_buttonTitle___block_invoke_2;
  v19[3] = &unk_1E7C0C1E8;
  v20 = v8;
  v16 = v8;
  v17 = [TPAlertAction actionWithTitle:v10 style:0 handler:v19];

  [v11 addAction:v17];

  return v11;
}

@end