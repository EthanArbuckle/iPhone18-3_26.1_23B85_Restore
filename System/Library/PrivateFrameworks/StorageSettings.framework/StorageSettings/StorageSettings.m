id STStorageDeviceKey()
{
  if (STStorageDeviceKey_onceToken != -1)
  {
    STStorageDeviceKey_cold_1();
  }

  v1 = STStorageDeviceKey_deviceKey;

  return v1;
}

void __STStorageDeviceKey_block_invoke()
{
  v3 = MGCopyAnswer();
  v0 = [v3 intValue];
  v1 = STStorageDeviceKey_deviceKey;
  if ((v0 - 1) > 2)
  {
    v2 = @"OTHER";
  }

  else
  {
    v2 = off_2782E27E0[v0 - 1];
  }

  STStorageDeviceKey_deviceKey = v2;
}

id STColorForCategoryKey(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (STColorForCategoryKey_onceToken == -1)
  {
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    STColorForCategoryKey_cold_1();
    if (v2)
    {
LABEL_3:
      v3 = [STColorForCategoryKey_gCategoryColors objectForKeyedSubscript:v2];
      if (v3)
      {
        goto LABEL_5;
      }
    }
  }

  v3 = [MEMORY[0x277D75348] redColor];
LABEL_5:

  return v3;
}

void __STColorForCategoryKey_block_invoke()
{
  v12[8] = *MEMORY[0x277D85DE8];
  v11[0] = *MEMORY[0x277D69968];
  v0 = [MEMORY[0x277D75348] systemPinkColor];
  v12[0] = v0;
  v11[1] = *MEMORY[0x277D69998];
  v1 = [MEMORY[0x277D75348] systemYellowColor];
  v12[1] = v1;
  v11[2] = *MEMORY[0x277D69990];
  v2 = [MEMORY[0x277D75348] systemGreenColor];
  v12[2] = v2;
  v11[3] = *MEMORY[0x277D69970];
  v3 = [MEMORY[0x277D75348] systemOrangeColor];
  v12[3] = v3;
  v11[4] = *MEMORY[0x277D69988];
  v4 = [MEMORY[0x277D75348] systemPurpleColor];
  v12[4] = v4;
  v11[5] = *MEMORY[0x277D69980];
  v5 = [MEMORY[0x277D75348] systemBlueColor];
  v12[5] = v5;
  v11[6] = *MEMORY[0x277D69978];
  v6 = [MEMORY[0x277D75348] systemTealColor];
  v12[6] = v6;
  v11[7] = *MEMORY[0x277D699A0];
  v7 = [MEMORY[0x277D75348] systemDarkMidGrayColor];
  v12[7] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:8];
  v9 = STColorForCategoryKey_gCategoryColors;
  STColorForCategoryKey_gCategoryColors = v8;

  v10 = *MEMORY[0x277D85DE8];
}

id STColorForCategory()
{
  v0 = STKeyForCategory();
  v1 = STColorForCategoryKey(v0);

  return v1;
}

uint64_t __LastUsedFormatString_block_invoke()
{
  LastUsedFormatString__lastUsedFormat = STFrameworkLocStr(@"ST_LAST_USED_FMT %@");

  return MEMORY[0x2821F96F8]();
}

void STLoadHeaderIconForAppID(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  IsClip = AppIsClip(v5);
  _STLoadHeaderIconForAppID(v5, v3, IsClip);
}

void _STLoadHeaderIconForAppID(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if (_STLoadHeaderIconForAppID_onceToken != -1)
  {
    _STLoadHeaderIconForAppID_cold_1();
  }

  v7 = _CachedIconForAppID(_gHeaderIconsByID, v5);
  if (v7)
  {
    v8 = v7;
    v6[2](v6, v7);
  }

  else
  {
    if (_gTableIconsByID)
    {
      v8 = _CachedIconForAppID(_gTableIconsByID, v5);
      if (v8)
      {
        v6[2](v6, v8);
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = getIconLoaderQueue();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___STLoadHeaderIconForAppID_block_invoke_2;
    v10[3] = &unk_2782E28E0;
    v11 = v5;
    v13 = a3;
    v12 = v6;
    [v9 addOperationWithBlock:v10];
  }
}

BOOL AppIsClip(void *a1)
{
  v1 = MEMORY[0x277CC1E70];
  v2 = a1;
  v3 = [[v1 alloc] initWithBundleIdentifier:v2 allowPlaceholder:1 error:0];

  v4 = [v3 appClipMetadata];
  v5 = v4 != 0;

  return v5;
}

void STLoadHeaderIconForApp(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v6 = [v4 appIdentifier];
  v5 = [v4 isAppClip];

  _STLoadHeaderIconForAppID(v6, v3, v5);
}

void STLoadTableIconForAppID(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  IsClip = AppIsClip(v5);
  _STLoadTableIconForAppID(v5, v3, IsClip);
}

void _STLoadTableIconForAppID(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if (_STLoadTableIconForAppID_onceToken != -1)
  {
    _STLoadTableIconForAppID_cold_1();
  }

  v7 = _CachedIconForAppID(_gTableIconsByID, v5);
  if (v7)
  {
    v6[2](v6, v7);
  }

  else
  {
    v8 = getIconLoaderQueue();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___STLoadTableIconForAppID_block_invoke_2;
    v9[3] = &unk_2782E28E0;
    v10 = v5;
    v12 = a3;
    v11 = v6;
    [v8 addOperationWithBlock:v9];
  }
}

void STLoadTableIconForApp(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v6 = [v4 appIdentifier];
  v5 = [v4 isAppClip];

  _STLoadTableIconForAppID(v6, v3, v5);
}

id _CachedIconForAppID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 length])
  {
    os_unfair_lock_lock(&_iconsLock);
    v5 = [v3 objectForKey:v4];
    os_unfair_lock_unlock(&_iconsLock);
  }

  else
  {
    v5 = PSBlankIconImage();
  }

  return v5;
}

id getIconLoaderQueue()
{
  if (getIconLoaderQueue_onceToken != -1)
  {
    getIconLoaderQueue_cold_1();
  }

  v1 = getIconLoaderQueue__iconLoaderQueue;

  return v1;
}

id _LoadIconForAppID(void *a1, void *a2, int a3, int a4)
{
  v7 = a1;
  v8 = a2;
  if (![v8 hasPrefix:@"com.apple."])
  {
    goto LABEL_11;
  }

  if ([v8 isEqualToString:*MEMORY[0x277D699A8]])
  {
    v9 = @"Calendar";
LABEL_9:
    v10 = STFrameworkImage(v9);
    goto LABEL_10;
  }

  if ([v8 isEqualToString:@"com.apple.VideosUsage"])
  {
    v9 = @"Videos";
    goto LABEL_9;
  }

  if (([v8 isEqualToString:*MEMORY[0x277D699C0]] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D699B8]))
  {
    v9 = @"iCloudDriveIcon";
    goto LABEL_9;
  }

  if ([v8 isEqualToString:*MEMORY[0x277D699C8]])
  {
    v24 = [MEMORY[0x277CE1CB8] _typeOfCurrentDevice];
    v25 = [v24 identifier];
    v43 = 0;
    v26 = [MEMORY[0x277D1B1D8] symbolForTypeIdentifier:v25 error:&v43];
    v27 = MEMORY[0x277D755B8];
    v28 = [v26 name];
    v11 = [v27 systemImageNamed:v28];

    if (!v11)
    {
      v29 = MGGetSInt32Answer();
      v30 = [MEMORY[0x277D75418] currentDevice];
      v31 = [v30 userInterfaceIdiom];

      v32 = @"LocalStorageOldPhoneIcon";
      if (v29 == 2)
      {
        v32 = @"LocalStoragePhoneIcon";
      }

      v33 = @"LocalStoragePadIcon";
      if (v29 != 2)
      {
        v33 = @"LocalStorageOldPadIcon";
      }

      if (v31 == 1)
      {
        v32 = v33;
      }

      v34 = v32;
      v11 = STFrameworkImage(v34);
    }

    if (v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ([v8 isEqualToString:@"com.apple.ToneSettingsUsage"])
    {
      v10 = [MEMORY[0x277D755B8] systemImageNamed:@"speaker.wave.2.circle.fill"];
LABEL_10:
      v11 = v10;
      if (!v10)
      {
        goto LABEL_11;
      }

LABEL_23:
      os_unfair_lock_lock(&_iconsLock);
      [v7 setObject:v11 forKey:v8];
      os_unfair_lock_unlock(&_iconsLock);
      goto LABEL_24;
    }

    if ([v8 isEqualToString:*MEMORY[0x277D699D0]])
    {
      v35 = *MEMORY[0x277D699B0];

      v8 = v35;
    }
  }

LABEL_11:
  ScreenScale();
  if (a3)
  {
    v12 = 58.0;
  }

  else
  {
    v12 = 29.0;
  }

  v13 = objc_alloc(MEMORY[0x277D1B1C8]);
  ScreenScale();
  v15 = [v13 initWithSize:v12 scale:{v12, v14}];
  v16 = v15;
  if (a4)
  {
    v17 = 5;
  }

  else
  {
    v17 = 0;
  }

  [v15 setShape:v17];
  [v16 setDrawBorder:1];
  v18 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:v8];
  if (v18 || ([MEMORY[0x277D1B1A8] genericApplicationIcon], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v18;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v20 = dispatch_semaphore_create(0);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = ___LoadIconForAppID_block_invoke;
    v36[3] = &unk_2782E2908;
    v38 = &v39;
    v21 = v20;
    v37 = v21;
    [v19 getCGImageForImageDescriptor:v16 completion:v36];
    v22 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v21, v22);
    if (v40[3])
    {
      v11 = [MEMORY[0x277D755B8] imageWithCGImage:?];
      CGImageRelease(v40[3]);
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v39, 8);
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v11 = 0;
LABEL_24:

  return v11;
}

void sub_21B8E07BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __getIconLoaderQueue_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = getIconLoaderQueue__iconLoaderQueue;
  getIconLoaderQueue__iconLoaderQueue = v0;

  [getIconLoaderQueue__iconLoaderQueue setMaxConcurrentOperationCount:3];
  v2 = getIconLoaderQueue__iconLoaderQueue;

  return [v2 setQualityOfService:25];
}

id STFrameworkLocStr(void *a1)
{
  v1 = a1;
  v2 = _FrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id _FrameworkBundle()
{
  if (_FrameworkBundle_onceToken != -1)
  {
    _FrameworkBundle_cold_1();
  }

  v1 = _FrameworkBundle_bundle;

  return v1;
}

id STFrameworkImage(void *a1)
{
  v1 = MEMORY[0x277D755B8];
  v2 = a1;
  v3 = _FrameworkBundle();
  v4 = [v1 imageNamed:v2 inBundle:v3];

  return v4;
}

uint64_t __PercentString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = PercentString__formatter;
  PercentString__formatter = v0;

  v2 = PercentString__formatter;

  return [v2 setNumberStyle:3];
}