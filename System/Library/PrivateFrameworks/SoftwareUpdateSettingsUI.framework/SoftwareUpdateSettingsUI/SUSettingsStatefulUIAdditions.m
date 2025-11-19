@interface SUSettingsStatefulUIAdditions
+ (double)estimatedTimeRemainingForProgress:(id)a3 valid:(BOOL *)a4;
+ (id)buildVersionIncludingRSR;
+ (id)currentOSVersion;
+ (id)productVersionWithExtra;
+ (id)stringWithTimeRemainingForDownload:(id)a3;
@end

@implementation SUSettingsStatefulUIAdditions

+ (id)currentOSVersion
{
  v25[2] = a1;
  v25[1] = a2;
  v25[0] = 0;
  v24 = 0;
  v20 = [MEMORY[0x277D75418] currentDevice];
  v21 = [v20 sf_isiPad];
  MEMORY[0x277D82BD8](v20);
  if (v21)
  {
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = [v19 localizedStringForKey:@"iPadOS_VERSION" value:&stru_287B79370 table:@"Software Update"];
    v3 = v24;
    v24 = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v19);
  }

  else
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v18 localizedStringForKey:@"iOS_VERSION" value:&stru_287B79370 table:@"Software Update"];
    v5 = v24;
    v24 = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v18);
  }

  v23 = +[SUSettingsStatefulUIAdditions productVersionWithExtra];
  if (!v23)
  {
    v17 = [MEMORY[0x277D75418] currentDevice];
    v23 = [v17 systemVersion];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v17);
  }

  v6 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v24 validFormatSpecifiers:@"%@" error:0, v23];
  v7 = v25[0];
  v25[0] = v6;
  MEMORY[0x277D82BD8](v7);
  v15 = [MEMORY[0x277D75418] currentDevice];
  v16 = [v15 sf_isInternalInstall];
  MEMORY[0x277D82BD8](v15);
  if (v16)
  {
    v22 = +[SUSettingsStatefulUIAdditions buildVersionIncludingRSR];
    v12 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v14 localizedStringForKey:@"%@ (%@)" value:&stru_287B79370 table:@"Software Update"];
    v8 = [v12 stringWithFormat:v25[0], v22];
    v9 = v25[0];
    v25[0] = v8;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    objc_storeStrong(&v22, 0);
  }

  v11 = MEMORY[0x277D82BE0](v25[0]);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(v25, 0);

  return v11;
}

+ (double)estimatedTimeRemainingForProgress:(id)a3 valid:(BOOL *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = -1.0;
  if (a4)
  {
    *a4 = 0;
  }

  if (!location[0])
  {
    goto LABEL_13;
  }

  [location[0] timeRemaining];
  v7 = v4;
  if (v4 < 0.0)
  {
    goto LABEL_13;
  }

  if (v4 > 0.0 && v4 < 1.0)
  {
    v7 = 1.0;
  }

  if (v7 < 0x93A80uLL && v7 > 0.0)
  {
    if (a4)
    {
      *a4 = 1;
    }

    v9 = v7;
  }

  else
  {
LABEL_13:
    v9 = v7;
  }

  objc_storeStrong(location, 0);
  return v9;
}

+ (id)stringWithTimeRemainingForDownload:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = [location[0] progress];
  v37 = 0;
  v15 = 0;
  if (v39)
  {
    v38 = [v39 phase];
    v37 = 1;
    v15 = 0;
    if ([v38 isEqualToString:*MEMORY[0x277D64A00]])
    {
      [v39 percentComplete];
      v15 = v3 >= 1.0;
    }
  }

  if (v37)
  {
    MEMORY[0x277D82BD8](v38);
  }

  if (v15)
  {
    v14 = [location[0] descriptor];
    v35 = 0;
    v33 = 0;
    v31 = 0;
    v29 = 0;
    if ([v14 isSplatOnly])
    {
      v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = 1;
      v34 = [v36 localizedStringForKey:@"PREPARING_RSR" value:&stru_287B79370 table:@"Software Update"];
      v33 = 1;
      v4 = MEMORY[0x277D82BE0](v34);
    }

    else
    {
      v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = 1;
      v30 = [v32 localizedStringForKey:@"PREPARING_UPDATE" value:&stru_287B79370 table:@"Software Update"];
      v29 = 1;
      v4 = MEMORY[0x277D82BE0](v30);
    }

    v41 = v4;
    if (v29)
    {
      MEMORY[0x277D82BD8](v30);
    }

    if (v31)
    {
      MEMORY[0x277D82BD8](v32);
    }

    if (v33)
    {
      MEMORY[0x277D82BD8](v34);
    }

    if (v35)
    {
      MEMORY[0x277D82BD8](v36);
    }

    MEMORY[0x277D82BD8](v14);
    v28 = 1;
  }

  else
  {
    v13 = [location[0] descriptor];
    v25 = 0;
    v23 = 0;
    v21 = 0;
    v19 = 0;
    if ([v13 isSplatOnly])
    {
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = 1;
      v24 = [v26 localizedStringForKey:@"RSR_REQUESTED" value:&stru_287B79370 table:@"Software Update"];
      v23 = 1;
      v5 = MEMORY[0x277D82BE0](v24);
    }

    else
    {
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = 1;
      v20 = [v22 localizedStringForKey:@"UPDATE_REQUESTED" value:&stru_287B79370 table:@"Software Update"];
      v19 = 1;
      v5 = MEMORY[0x277D82BE0](v20);
    }

    v27 = v5;
    if (v19)
    {
      MEMORY[0x277D82BD8](v20);
    }

    if (v21)
    {
      MEMORY[0x277D82BD8](v22);
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](v24);
    }

    if (v25)
    {
      MEMORY[0x277D82BD8](v26);
    }

    MEMORY[0x277D82BD8](v13);
    v18 = 0;
    [SUSettingsStatefulUIAdditions estimatedTimeRemainingForProgress:v39 valid:&v18];
    v17 = v6;
    if (v18)
    {
      v16 = 0;
      v7 = objc_alloc_init(MEMORY[0x277CCA958]);
      v8 = v16;
      v16 = v7;
      MEMORY[0x277D82BD8](v8);
      [v16 setUnitsStyle:3];
      [v16 setAllowedUnits:240];
      [v16 setMaximumUnitCount:1];
      [v16 setIncludesApproximationPhrase:1];
      [v16 setIncludesTimeRemainingPhrase:1];
      [v16 setFormattingContext:2];
      v9 = [v16 stringFromTimeInterval:v17];
      v10 = v27;
      v27 = v9;
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v16, 0);
    }

    v41 = MEMORY[0x277D82BE0](v27);
    v28 = 1;
    objc_storeStrong(&v27, 0);
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  v11 = v41;

  return v11;
}

+ (id)productVersionWithExtra
{
  v7[2] = a1;
  v7[1] = a2;
  v7[0] = 0;
  location = _CFCopySupplementalVersionDictionary();
  if (location)
  {
    v2 = [location objectForKeyedSubscript:*MEMORY[0x277CBEC90]];
    v3 = v7[0];
    v7[0] = v2;
    MEMORY[0x277D82BD8](v3);
  }

  v5 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);

  return v5;
}

+ (id)buildVersionIncludingRSR
{
  v7[2] = a1;
  v7[1] = a2;
  v7[0] = 0;
  location = _CFCopySupplementalVersionDictionary();
  if (location)
  {
    v2 = [location objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
    v3 = v7[0];
    v7[0] = v2;
    MEMORY[0x277D82BD8](v3);
  }

  v5 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);

  return v5;
}

@end