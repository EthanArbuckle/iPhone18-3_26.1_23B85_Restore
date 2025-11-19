@interface UNCNotificationSourceSettingsDescription
+ (id)notificationSourceSettingsDescriptionFromDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation UNCNotificationSourceSettingsDescription

+ (id)notificationSourceSettingsDescriptionFromDictionary:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [v3 bs_safeObjectForKey:@"UNSettingAlerts" ofType:objc_opt_class()];
    v30 = [v4 un_safeBoolValue];

    v5 = [v3 bs_safeObjectForKey:@"UNSettingSounds" ofType:objc_opt_class()];
    v29 = [v5 un_safeBoolValue];

    v6 = [v3 bs_safeObjectForKey:@"UNSettingBadges" ofType:objc_opt_class()];
    v28 = [v6 un_safeBoolValue];

    v7 = [v3 bs_safeObjectForKey:@"UNSettingLockScreen" ofType:objc_opt_class()];
    v27 = [v7 un_safeBoolValue];

    v8 = [v3 bs_safeObjectForKey:@"UNSettingNotificationCenter" ofType:objc_opt_class()];
    v9 = [v8 un_safeBoolValue];

    v10 = [v3 bs_safeObjectForKey:@"UNSettingCarPlay" ofType:objc_opt_class()];
    v11 = [v10 un_safeBoolValue];

    v12 = [v3 bs_safeObjectForKey:@"UNSettingAnnouncement" ofType:objc_opt_class()];
    if ([v12 un_safeBoolValue])
    {
      v13 = 1;
    }

    else
    {
      v15 = [v3 bs_safeObjectForKey:@"UNSettingSpoken" ofType:objc_opt_class()];
      v13 = [v15 un_safeBoolValue];
    }

    v16 = [v3 bs_safeObjectForKey:@"UNSettingAlwaysShowPreviews" ofType:objc_opt_class()];
    v17 = [v16 un_safeBoolValue];

    v18 = [v3 bs_safeObjectForKey:@"UNSettingModalAlertStyle" ofType:objc_opt_class()];
    v19 = [v18 un_safeBoolValue];

    v20 = [v3 objectForKey:@"UNSettingProvidesAppNotificationSettings"];
    v21 = [v20 un_safeBoolValue];

    v22 = [v3 objectForKey:@"UNSettingTimeSensitive"];
    v23 = [v22 un_safeBoolValue];

    v24 = [v3 objectForKey:@"UNSettingCriticalAlerts"];
    v25 = [v24 un_safeBoolValue];

    v14 = [UNCNotificationSourceSettingsDescription alloc];
    [(UNCNotificationSourceSettingsDescription *)v14 setSupportsAlerts:v30];
    [(UNCNotificationSourceSettingsDescription *)v14 setSupportsSounds:v29];
    [(UNCNotificationSourceSettingsDescription *)v14 setSupportsBadges:v28];
    [(UNCNotificationSourceSettingsDescription *)v14 setSupportsLockScreen:v27];
    [(UNCNotificationSourceSettingsDescription *)v14 setSupportsNotificationCenter:v9];
    [(UNCNotificationSourceSettingsDescription *)v14 setSupportsCarPlay:v11];
    [(UNCNotificationSourceSettingsDescription *)v14 setSupportsSpoken:v13];
    [(UNCNotificationSourceSettingsDescription *)v14 setAlwaysShowPreviews:v17];
    [(UNCNotificationSourceSettingsDescription *)v14 setModalAlertStyle:v19];
    [(UNCNotificationSourceSettingsDescription *)v14 setProvidesAppNotificationSettings:v21];
    [(UNCNotificationSourceSettingsDescription *)v14 setSupportsTimeSensitive:v23];
    [(UNCNotificationSourceSettingsDescription *)v14 setSupportsCriticalAlerts:v25];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(UNCNotificationSourceSettingsDescription *)self supportsSounds];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __52__UNCNotificationSourceSettingsDescription_isEqual___block_invoke;
  v68[3] = &unk_1E85D7AA8;
  v7 = v4;
  v69 = v7;
  v8 = [v5 appendBool:v6 counterpart:v68];
  v9 = [(UNCNotificationSourceSettingsDescription *)self supportsAlerts];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __52__UNCNotificationSourceSettingsDescription_isEqual___block_invoke_2;
  v66[3] = &unk_1E85D7AA8;
  v10 = v7;
  v67 = v10;
  v11 = [v5 appendBool:v9 counterpart:v66];
  v12 = [(UNCNotificationSourceSettingsDescription *)self supportsBadges];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __52__UNCNotificationSourceSettingsDescription_isEqual___block_invoke_3;
  v64[3] = &unk_1E85D7AA8;
  v13 = v10;
  v65 = v13;
  v14 = [v5 appendBool:v12 counterpart:v64];
  v15 = [(UNCNotificationSourceSettingsDescription *)self supportsLockScreen];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __52__UNCNotificationSourceSettingsDescription_isEqual___block_invoke_4;
  v62[3] = &unk_1E85D7AA8;
  v16 = v13;
  v63 = v16;
  v17 = [v5 appendBool:v15 counterpart:v62];
  v18 = [(UNCNotificationSourceSettingsDescription *)self supportsNotificationCenter];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __52__UNCNotificationSourceSettingsDescription_isEqual___block_invoke_5;
  v60[3] = &unk_1E85D7AA8;
  v19 = v16;
  v61 = v19;
  v20 = [v5 appendBool:v18 counterpart:v60];
  v21 = [(UNCNotificationSourceSettingsDescription *)self supportsCarPlay];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __52__UNCNotificationSourceSettingsDescription_isEqual___block_invoke_6;
  v58[3] = &unk_1E85D7AA8;
  v22 = v19;
  v59 = v22;
  v23 = [v5 appendBool:v21 counterpart:v58];
  v24 = [(UNCNotificationSourceSettingsDescription *)self supportsSpoken];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __52__UNCNotificationSourceSettingsDescription_isEqual___block_invoke_7;
  v56[3] = &unk_1E85D7AA8;
  v25 = v22;
  v57 = v25;
  v26 = [v5 appendBool:v24 counterpart:v56];
  v27 = [(UNCNotificationSourceSettingsDescription *)self modalAlertStyle];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __52__UNCNotificationSourceSettingsDescription_isEqual___block_invoke_8;
  v54[3] = &unk_1E85D7AA8;
  v28 = v25;
  v55 = v28;
  v29 = [v5 appendBool:v27 counterpart:v54];
  v30 = [(UNCNotificationSourceSettingsDescription *)self alwaysShowPreviews];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __52__UNCNotificationSourceSettingsDescription_isEqual___block_invoke_9;
  v52[3] = &unk_1E85D7AA8;
  v31 = v28;
  v53 = v31;
  v32 = [v5 appendBool:v30 counterpart:v52];
  v33 = [(UNCNotificationSourceSettingsDescription *)self providesAppNotificationSettings];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __52__UNCNotificationSourceSettingsDescription_isEqual___block_invoke_10;
  v50[3] = &unk_1E85D7AA8;
  v34 = v31;
  v51 = v34;
  v35 = [v5 appendBool:v33 counterpart:v50];
  v36 = [(UNCNotificationSourceSettingsDescription *)self supportsTimeSensitive];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __52__UNCNotificationSourceSettingsDescription_isEqual___block_invoke_11;
  v48[3] = &unk_1E85D7AA8;
  v37 = v34;
  v49 = v37;
  v38 = [v5 appendBool:v36 counterpart:v48];
  v39 = [(UNCNotificationSourceSettingsDescription *)self supportsCriticalAlerts];
  v43 = MEMORY[0x1E69E9820];
  v44 = 3221225472;
  v45 = __52__UNCNotificationSourceSettingsDescription_isEqual___block_invoke_12;
  v46 = &unk_1E85D7AA8;
  v47 = v37;
  v40 = v37;
  v41 = [v5 appendBool:v39 counterpart:&v43];
  LOBYTE(v37) = [v5 isEqual];

  return v37;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:{-[UNCNotificationSourceSettingsDescription supportsSounds](self, "supportsSounds")}];
  v5 = [v3 appendBool:{-[UNCNotificationSourceSettingsDescription supportsAlerts](self, "supportsAlerts")}];
  v6 = [v3 appendBool:{-[UNCNotificationSourceSettingsDescription supportsBadges](self, "supportsBadges")}];
  v7 = [v3 appendBool:{-[UNCNotificationSourceSettingsDescription supportsLockScreen](self, "supportsLockScreen")}];
  v8 = [v3 appendBool:{-[UNCNotificationSourceSettingsDescription supportsNotificationCenter](self, "supportsNotificationCenter")}];
  v9 = [v3 appendBool:{-[UNCNotificationSourceSettingsDescription supportsCarPlay](self, "supportsCarPlay")}];
  v10 = [v3 appendBool:{-[UNCNotificationSourceSettingsDescription supportsSpoken](self, "supportsSpoken")}];
  v11 = [v3 appendBool:{-[UNCNotificationSourceSettingsDescription modalAlertStyle](self, "modalAlertStyle")}];
  v12 = [v3 appendBool:{-[UNCNotificationSourceSettingsDescription alwaysShowPreviews](self, "alwaysShowPreviews")}];
  v13 = [v3 appendBool:{-[UNCNotificationSourceSettingsDescription providesAppNotificationSettings](self, "providesAppNotificationSettings")}];
  v14 = [v3 appendBool:{-[UNCNotificationSourceSettingsDescription supportsTimeSensitive](self, "supportsTimeSensitive")}];
  v15 = [v3 appendBool:{-[UNCNotificationSourceSettingsDescription supportsCriticalAlerts](self, "supportsCriticalAlerts")}];
  v16 = [v3 hash];

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:-[UNCNotificationSourceSettingsDescription supportsSounds](self withName:{"supportsSounds"), @"supportsSounds"}];
  v5 = [v3 appendBool:-[UNCNotificationSourceSettingsDescription supportsAlerts](self withName:{"supportsAlerts"), @"supportsAlerts"}];
  v6 = [v3 appendBool:-[UNCNotificationSourceSettingsDescription supportsBadges](self withName:{"supportsBadges"), @"supportsBadges"}];
  v7 = [v3 appendBool:-[UNCNotificationSourceSettingsDescription supportsLockScreen](self withName:{"supportsLockScreen"), @"supportsLockScreen"}];
  v8 = [v3 appendBool:-[UNCNotificationSourceSettingsDescription supportsNotificationCenter](self withName:{"supportsNotificationCenter"), @"supportsNotificationCenter"}];
  v9 = [v3 appendBool:-[UNCNotificationSourceSettingsDescription supportsCarPlay](self withName:{"supportsCarPlay"), @"supportsCarPlay"}];
  v10 = [v3 appendBool:-[UNCNotificationSourceSettingsDescription supportsSpoken](self withName:{"supportsSpoken"), @"supportsSpoken"}];
  v11 = [v3 appendBool:-[UNCNotificationSourceSettingsDescription modalAlertStyle](self withName:{"modalAlertStyle"), @"modalAlertStyle"}];
  v12 = [v3 appendBool:-[UNCNotificationSourceSettingsDescription alwaysShowPreviews](self withName:{"alwaysShowPreviews"), @"alwaysShowPreviews"}];
  v13 = [v3 appendBool:-[UNCNotificationSourceSettingsDescription providesAppNotificationSettings](self withName:{"providesAppNotificationSettings"), @"providesAppNotificationSettings"}];
  v14 = [v3 appendBool:-[UNCNotificationSourceSettingsDescription supportsTimeSensitive](self withName:{"supportsTimeSensitive"), @"supportsTimeSensitive"}];
  v15 = [v3 appendBool:-[UNCNotificationSourceSettingsDescription supportsCriticalAlerts](self withName:{"supportsCriticalAlerts"), @"supportsCriticalAlerts"}];
  v16 = [v3 build];

  return v16;
}

@end