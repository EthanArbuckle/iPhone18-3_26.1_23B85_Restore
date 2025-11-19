void STStart()
{
  v0 = +[STStorageAppsMonitor sharedMonitor];
  [v0 sync];
}

void sub_26BB90430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26BB90784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t STStorageAppSortByNameBlock_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

uint64_t STStorageAppSortBySizeBlock_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 appSize];
  v7 = [v6 userTotal];

  v8 = [v5 appSize];
  v9 = [v8 userTotal];

  if (v7 <= v9)
  {
    if (v7 < v9)
    {
      v10 = 1;
    }

    else
    {
      v11 = [v4 name];
      v12 = [v5 name];
      v10 = [v11 localizedCaseInsensitiveCompare:v12];
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

void AppendSizeInfo(void *a1, void *a2, uint64_t a3)
{
  v8 = a1;
  v5 = a2;
  if (a3 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = -a3;
  }

  if (v6 >= 0xFA0)
  {
    v7 = STFormattedSize(v6);
    [v8 appendFormat:@" %@:%@", v5, v7];

    if (a3 < 0)
    {
      [v8 appendFormat:@"*"];
    }
  }
}

id STStorageLog()
{
  if (STStorageLog_onceToken != -1)
  {
    STStorageLog_cold_1();
  }

  v1 = STStorageLog__gSharedLog;

  return v1;
}

uint64_t __STStorageLog_block_invoke()
{
  STStorageLog__gSharedLog = os_log_create("com.apple.storage", "log");

  return MEMORY[0x2821F96F8]();
}

void STTokenLogSize(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = STFormattedSize(a1);
  STLog(4, @"%@: %@", v4, v5, v6, v7, v8, v9, v10);
}

void STLog(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCACA8];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = STStorageLog();
  v14 = v13;
  switch(a1)
  {
    case 2:
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        STLog_cold_2(v12, v14);
      }

      break;
    case 3:
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        STLog_cold_1(v12, v14);
      }

      break;
    case 4:
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = @"StorageLogInvestigation";
        v21 = 2114;
        v22 = v12;
        v15 = "%@ - %{public}@";
        v16 = v14;
        v17 = 22;
LABEL_12:
        _os_log_impl(&dword_26BB8E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }

      break;
    default:
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v12;
        v15 = "%{public}@";
        v16 = v14;
        v17 = 12;
        goto LABEL_12;
      }

      break;
  }

  v18 = *MEMORY[0x277D85DE8];
}

id STFormattedSize(uint64_t a1)
{
  v2 = NSLocalizedFileSizeDescription();
  v3 = v2;
  if (a1 < 0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"-%@", v2];
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v5;
}

void STLogSize(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = STFormattedSize(a1);
  STLog(1, @"%@: %@", v4, v5, v6, v7, v8, v9, v10);
}

void STLogSizeVector(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v16 = STFormattedSize([v4 userTotal]);
  v5 = STFormattedSize([v4 docsAndData]);
  v6 = STFormattedSize([v4 purgeable]);
  v7 = STFormattedSize([v4 fixed]);
  v8 = [v4 dynamic];

  v15 = STFormattedSize(v8);
  STLog(1, @"%@: UT: %@ / DD: %@ / PG: %@ / FX: %@ / DY: %@", v9, v10, v11, v12, v13, v14, v3);
}

id STFormattedShortDate(void *a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __STFormattedShortDate_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v7 = a2;
  v2 = STFormattedShortDate_onceToken;
  v3 = a1;
  if (v2 != -1)
  {
    dispatch_once(&STFormattedShortDate_onceToken, block);
  }

  v4 = [STFormattedShortDate__formatter stringFromDate:v3];

  return v4;
}

uint64_t __STFormattedShortDate_block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = STFormattedShortDate__formatter;
  STFormattedShortDate__formatter = v2;

  [STFormattedShortDate__formatter setDateStyle:1];
  [STFormattedShortDate__formatter setTimeStyle:*(a1 + 32)];
  [STFormattedShortDate__formatter setDoesRelativeDateFormatting:1];
  v4 = STFormattedShortDate__formatter;

  return [v4 setFormattingContext:2];
}

id STMakeDirPath(void *a1)
{
  v1 = a1;
  if ([v1 length] && (objc_msgSend(v1, "hasSuffix:", @"/") & 1) == 0)
  {
    v2 = [v1 stringByAppendingString:@"/"];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

uint64_t STSizeOfSystemVolume()
{
  if (STSizeOfSystemVolume_onceToken != -1)
  {
    STSizeOfSystemVolume_cold_1();
  }

  return STSizeOfSystemVolume__gSystemSize;
}

void __STSizeOfSystemVolume_block_invoke()
{
  v0 = STVolumeSize("/");
  v1 = STVolumeSize("/private/preboot") + v0;
  v2 = STSizeOfPathWithOptions(@"/private/var/.overprovisioning_file", 0);
  STSizeOfSystemVolume__gSystemSize = v1 + [v2 unsignedLongLongValue];
}

uint64_t STVolumeSize(const char *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 20);
  v13 = 0;
  v11 = 5;
  v12 = 2155872256;
  v2 = getattrlist(a1, &v11, v10, 0x14uLL, 0);
  v3 = STStorageLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      STVolumeSize_cold_1(a1, v4);
    }

    LODWORD(v12) = -2147483628;
    if (getattrlist(a1, &v11, v10, 0x14uLL, 0))
    {
      v5 = STStorageLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        STVolumeSize_cold_2(a1, v5);
      }

      v6 = 0;
    }

    else
    {
      v6 = *&v10[1] - *&v10[3];
      v7 = STStorageLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v15 = a1;
        v16 = 2048;
        v17 = v6;
        _os_log_impl(&dword_26BB8E000, v7, OS_LOG_TYPE_INFO, "STVolumeSize: %{public}s volume: %lld", buf, 0x16u);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v15 = a1;
      v16 = 2048;
      v17 = *&v10[1];
      _os_log_impl(&dword_26BB8E000, v4, OS_LOG_TYPE_INFO, "STVolumeSize: %{public}s volume: %lld", buf, 0x16u);
    }

    v6 = *&v10[1];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

id STSizeOfPathWithOptions(void *a1, int a2)
{
  v51[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (![v3 length])
  {
    goto LABEL_36;
  }

  v51[0] = [v3 fileSystemRepresentation];
  v51[1] = 0;
  v4 = fts_open(v51, 81, 0);
  if (!v4)
  {
    STLog(2, @"Failed to open path: %@", v5, v6, v7, v8, v9, v10, v3);
LABEL_36:
    v41 = 0;
    goto LABEL_40;
  }

  v11 = v4;
  v12 = objc_opt_new();
  v13 = fts_read(v11);
  if (!v13)
  {
    fts_close(v11);
    v40 = 0;
LABEL_38:
    v41 = [MEMORY[0x277CCABB0] numberWithLongLong:v40];
    goto LABEL_39;
  }

  v20 = v13;
  v47 = 0;
  v45 = 0;
  v46 = *MEMORY[0x277CBE908];
  do
  {
    v21 = v20;
    while (1)
    {
      fts_info = v21->fts_info;
      if (fts_info != 8)
      {
        break;
      }

      if (!a2)
      {
        v21 = v20;
        goto LABEL_27;
      }

      v49 = 0;
      v50 = 0;
      if (fsctl(v21->fts_path, 0x40104A0EuLL, &v49, 0) == -1 || v49 != 2)
      {
        goto LABEL_27;
      }

      v24 = v50;
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v50];
      v26 = [v12 containsObject:v25];

      if ((v26 & 1) == 0)
      {
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
        [v12 addObject:v34];

LABEL_27:
        fts_statp = v21->fts_statp;
        if ((fts_statp->st_flags & 0x20) != 0)
        {
          v36 = objc_autoreleasePoolPush();
          v37 = MEMORY[0x277CBEBC0];
          v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:v21->fts_path];
          v39 = [v37 fileURLWithPath:v38];

          v48 = 0;
          [v39 getResourceValue:&v48 forKey:v46 error:0];
          v47 += [v48 longLongValue];

          objc_autoreleasePoolPop(v36);
        }

        else
        {
          v49 = 0;
          if (v21->fts_info != 8 || (fsctl(v21->fts_path, 0x40084A47uLL, &v49, 0), !v49))
          {
            v47 += fts_statp->st_blocks << 9;
          }
        }

        goto LABEL_32;
      }

      v21 = fts_read(v11);
      if (!v21)
      {
        goto LABEL_33;
      }
    }

    if (v21->fts_info > 0xBu)
    {
      if ((fts_info - 12) >= 2)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    switch(fts_info)
    {
      case 4:
        STLog(2, @"path is unreadable: %s", v14, v15, v16, v17, v18, v19, v21->fts_path);
        break;
      case 7:
        v27 = __error();
        fts_path = v21->fts_path;
        STLog(3, @"error %d sizing %s", v28, v29, v30, v31, v32, v33, *v27);
        v45 = 1;
        break;
      case 10:
        STLog(2, @"stat failed for %s", v14, v15, v16, v17, v18, v19, v21->fts_path);
        break;
    }

LABEL_32:
    v20 = fts_read(v11);
  }

  while (v20);
LABEL_33:
  fts_close(v11);
  v40 = v47;
  if ((v45 & 1) == 0)
  {
    goto LABEL_38;
  }

  v41 = 0;
LABEL_39:

LABEL_40:
  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

id STSharedConcurrentQueue()
{
  if (STSharedConcurrentQueue_token != -1)
  {
    STSharedConcurrentQueue_cold_1();
  }

  v1 = STSharedConcurrentQueue_queue;

  return v1;
}

void __STSharedConcurrentQueue_block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("shared_concurrent", v0);
  v2 = STSharedConcurrentQueue_queue;
  STSharedConcurrentQueue_queue = v1;
}

id STSharedConcurrentOpQueue()
{
  if (STSharedConcurrentOpQueue_token != -1)
  {
    STSharedConcurrentOpQueue_cold_1();
  }

  v1 = STSharedConcurrentOpQueue_opQueue;

  return v1;
}

uint64_t __STSharedConcurrentOpQueue_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = STSharedConcurrentOpQueue_opQueue;
  STSharedConcurrentOpQueue_opQueue = v0;

  v2 = STSharedConcurrentQueue();
  [STSharedConcurrentOpQueue_opQueue setUnderlyingQueue:v2];

  v3 = STSharedConcurrentOpQueue_opQueue;

  return [v3 setMaxConcurrentOperationCount:4];
}

id STSharedContainerSizingQueue()
{
  if (STSharedContainerSizingQueue_token != -1)
  {
    STSharedContainerSizingQueue_cold_1();
  }

  v1 = STSharedContainerSizingQueue_queue;

  return v1;
}

void __STSharedContainerSizingQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.settings.storage.containersizing", attr);
  v2 = STSharedContainerSizingQueue_queue;
  STSharedContainerSizingQueue_queue = v1;
}

id STSharedPathSizingOpQueue()
{
  if (STSharedPathSizingOpQueue_token != -1)
  {
    STSharedPathSizingOpQueue_cold_1();
  }

  v1 = STSharedPathSizingOpQueue_opQueue;

  return v1;
}

uint64_t __STSharedPathSizingOpQueue_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = STSharedPathSizingOpQueue_opQueue;
  STSharedPathSizingOpQueue_opQueue = v0;

  v2 = STSharedConcurrentQueue();
  [STSharedPathSizingOpQueue_opQueue setUnderlyingQueue:v2];

  v3 = STSharedPathSizingOpQueue_opQueue;

  return [v3 setMaxConcurrentOperationCount:8];
}

id STSharedSerialQueue()
{
  if (STSharedSerialQueue_token != -1)
  {
    STSharedSerialQueue_cold_1();
  }

  v1 = STSharedSerialQueue_queue;

  return v1;
}

void __STSharedSerialQueue_block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("shared_serial", v0);
  v2 = STSharedSerialQueue_queue;
  STSharedSerialQueue_queue = v1;
}

id STSharedSerialOpQueue()
{
  if (STSharedSerialOpQueue_token != -1)
  {
    STSharedSerialOpQueue_cold_1();
  }

  v1 = STSharedSerialOpQueue_opQueue;

  return v1;
}

uint64_t __STSharedSerialOpQueue_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = STSharedSerialOpQueue_opQueue;
  STSharedSerialOpQueue_opQueue = v0;

  v2 = STSharedSerialQueue();
  [STSharedSerialOpQueue_opQueue setUnderlyingQueue:v2];

  v3 = STSharedSerialOpQueue_opQueue;

  return [v3 setMaxConcurrentOperationCount:1];
}

id STStorageDataLocStr(void *a1)
{
  v1 = STStorageDataLocStr_strToken;
  v2 = a1;
  if (v1 != -1)
  {
    STStorageDataLocStr_cold_1();
  }

  v3 = [STStorageDataLocStr_strBundle localizedStringForKey:v2 value:v2 table:0];

  return v3;
}

uint64_t __STStorageDataLocStr_block_invoke()
{
  STStorageDataLocStr_strBundle = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Ststorageapp.isa)];

  return MEMORY[0x2821F96F8]();
}

uint64_t STStorageIsInternalInstall()
{
  if (STStorageIsInternalInstall_onceToken != -1)
  {
    STStorageIsInternalInstall_cold_1();
  }

  return STStorageIsInternalInstall_isInternal;
}

void __STStorageIsInternalInstall_block_invoke()
{
  v0 = MGCopyAnswer();
  STStorageIsInternalInstall_isInternal = [v0 BOOLValue];
}

uint64_t STStorageIsDeveloperRelease()
{
  if (STStorageIsDeveloperRelease_onceToken != -1)
  {
    STStorageIsDeveloperRelease_cold_1();
  }

  return STStorageIsDeveloperRelease_isDeveloperRelease;
}

void __STStorageIsDeveloperRelease_block_invoke()
{
  v0 = MGGetStringAnswer();
  STStorageIsDeveloperRelease_isDeveloperRelease = [v0 isEqualToString:@"Beta"];
}

uint64_t STStorageDeviceIsiPad()
{
  if (STStorageDeviceIsiPad_onceToken != -1)
  {
    STStorageDeviceIsiPad_cold_1();
  }

  return STStorageDeviceIsiPad_isiPad;
}

void __STStorageDeviceIsiPad_block_invoke()
{
  v0 = MGCopyAnswer();
  STStorageDeviceIsiPad_isiPad = [v0 intValue] == 3;
}

uint64_t STStorageComputePercentage(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  [a1 floatValue];
  v6 = v5;
  [v4 floatValue];
  v8 = v7;

  return [v3 numberWithInt:((v6 / v8) * 100.0)];
}

uint64_t STPersonasAreSupported()
{
  if (STPersonasAreSupported_onceToken != -1)
  {
    STPersonasAreSupported_cold_1();
  }

  return STPersonasAreSupported_personasSupported;
}

void __STPersonasAreSupported_block_invoke()
{
  v0 = [MEMORY[0x277D77BF8] sharedManager];
  STPersonasAreSupported_personasSupported = [v0 isMultiUser] ^ 1;

  if (STPersonasAreSupported_personasSupported == 1)
  {
    v1 = MGGetBoolAnswer() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  STPersonasAreSupported_personasSupported = v1;
}

id STPersonaCopyPersonaUniqueStrings()
{
  v35 = *MEMORY[0x277D85DE8];
  if (STPersonasAreSupported_onceToken != -1)
  {
    STPersonasAreSupported_cold_1();
  }

  if (STPersonasAreSupported_personasSupported == 1)
  {
    v0 = [MEMORY[0x277D77BF8] sharedManager];
    v33 = 0;
    v1 = [v0 personaGenerationIdentifierWithError:&v33];
    v2 = v33;

    if (v1)
    {
      if (v1 == STPersonaCopyPersonaUniqueStrings_previousGenerationId && STPersonaCopyPersonaUniqueStrings_personaUniqueStrings != 0)
      {
        v24 = STPersonaCopyPersonaUniqueStrings_personaUniqueStrings;

        goto LABEL_31;
      }

      STPersonaCopyPersonaUniqueStrings_previousGenerationId = v1;
    }

    v4 = [MEMORY[0x277D77BF8] sharedManager];
    v32 = v2;
    v5 = [v4 listAllPersonaAttributesWithError:&v32];
    v6 = v32;

    if (v5)
    {
      v27 = v6;
      v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
      v14 = STPersonaCopyPersonaUniqueStrings_personaUniqueStrings;
      STPersonaCopyPersonaUniqueStrings_personaUniqueStrings = v13;

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v5;
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (!v16)
      {
        goto LABEL_27;
      }

      v17 = v16;
      v18 = *v29;
      while (1)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = [v20 userPersonaUniqueString];
          if ([v20 isPersonalPersona])
          {
            v22 = 1;
            if (v21)
            {
              goto LABEL_24;
            }
          }

          else
          {
            if ([v20 isEnterprisePersona])
            {
              v22 = 2;
            }

            else
            {
              v22 = 0;
            }

            if (v21)
            {
LABEL_24:
              v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
              [STPersonaCopyPersonaUniqueStrings_personaUniqueStrings setObject:v23 forKeyedSubscript:v21];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (!v17)
        {
LABEL_27:

          v6 = v27;
          goto LABEL_29;
        }
      }
    }

    STLog(2, @"Could not fetch persona attributes from UserManagement %@\n", v7, v8, v9, v10, v11, v12, v6);
LABEL_29:
  }

  v24 = [STPersonaCopyPersonaUniqueStrings_personaUniqueStrings copy];
LABEL_31:
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

id DataContainersFromAppRecordWithPersonas(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 bundleIdentifier];
  v6 = [v3 managedPersonas];
  v7 = [v6 mutableCopy];

  if ([v7 count])
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2 * objc_msgSend(v7, "count")}];
    while ([v7 count])
    {
      v9 = [v7 lastObject];
      [v7 removeLastObject];
      v10 = [v4 objectForKeyedSubscript:v9];
      v11 = [v10 unsignedIntegerValue];

      if ((v11 - 1) > 1)
      {
        v12 = STPersonaUniqueStringOfType(1, v4);
        v13 = STPersonaUniqueStringOfType(2, v4);
        if (v12)
        {
          [v7 addObject:v12];
        }

        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      else
      {
        v12 = [STContainer containerWithIdentifier:v5 containerClass:2 personaUniqueString:v9];
        if (v12)
        {
          [v8 addObject:v12];
        }
      }
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    v14 = [STContainer containerWithIdentifier:v5 containerClass:2 personaUniqueString:0];
    if (v14)
    {
      [v8 addObject:v14];
    }
  }

  return v8;
}

id STPersonaUniqueStringOfType(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:{v8, v14}];
        v10 = [v9 unsignedIntegerValue];

        if (v10 == a1)
        {
          v11 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void STMCMDataContainersFromAppProxyWithPersonas(void *a1, void *a2, void *a3, void *a4)
{
  v30 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 bundleIdentifier];
  v11 = [v7 managedPersonas];
  if (v11)
  {
    v12 = v11;
    v13 = [v7 managedPersonas];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [v7 managedPersonas];
      v16 = [v15 mutableCopy];
      while (1)
      {
        while (1)
        {

          if (![v16 count])
          {
            goto LABEL_17;
          }

          v15 = [v16 lastObject];
          [v16 removeLastObject];
          v17 = [v30 objectForKeyedSubscript:v15];
          v18 = [v17 unsignedIntegerValue];

          if ((v18 - 1) <= 1)
          {
            break;
          }

          v20 = STPersonaUniqueStringOfType(1, v30);
          v23 = STPersonaUniqueStringOfType(2, v30);
          if (v20)
          {
            [v16 addObject:v20];
          }

          if (v23)
          {
            [v16 addObject:v23];
          }

LABEL_13:
        }

        if ([v7 isContainerized])
        {
          v19 = [STContainer containerWithIdentifier:v10 containerClass:2 personaUniqueString:v15];
          if (v19)
          {
            v20 = v19;
            v21 = [v19 url];
            v22 = [v21 path];
            v23 = STMakeDirPath(v22);

            v24 = STMakeDirPath(v23);
            [v8 setObject:v7 forKey:v24];

            [v9 setObject:v20 forKey:v23];
            goto LABEL_13;
          }
        }
      }
    }
  }

  if ([v7 isContainerized])
  {
    v25 = [STContainer containerWithIdentifier:v10 containerClass:2 personaUniqueString:0];
    if (v25)
    {
      v16 = v25;
      v26 = [v25 url];
      v27 = [v26 path];
      v28 = STMakeDirPath(v27);

      v29 = STMakeDirPath(v28);
      [v8 setObject:v7 forKey:v29];

      [v9 setObject:v16 forKey:v28];
LABEL_17:
    }
  }
}

id STNameForCategoryKey(void *a1)
{
  v1 = a1;
  if (STNameForCategoryKey_onceToken != -1)
  {
    STNameForCategoryKey_cold_1();
  }

  if ([v1 isEqualToString:@"CAT_SYSTEM"])
  {
    v2 = STNameForCategoryKey_marketingSystemName;
  }

  else
  {
    v2 = STStorageDataLocStr(v1);
  }

  v3 = v2;

  return v3;
}

uint64_t __STNameForCategoryKey_block_invoke()
{
  STNameForCategoryKey_marketingSystemName = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

__CFString *STKeyForCategory(unsigned int a1)
{
  if (a1 > 8)
  {
    return &stru_287C88100;
  }

  else
  {
    return off_279D1D0E0[a1];
  }
}

void _UpdateSize(void *a1, void *a2, uint64_t a3)
{
  if (*a2 != a3)
  {
    *a2 = a3;
    v4 = a1;
    [v4 setIntSizesVar:0];
    [v4 setAppSizesVar:0];
    [v4 notifyAppSizeChanged];
  }
}

id SizesOfContainers(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v2 = +[STMSizer sharedAppSizer];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = v1;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v4)
    {
      v5 = v4;
      v21 = 0;
      v22 = 0;
      v6 = 0;
      v7 = *v24;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          v10 = [v9 url];
          v11 = [v10 path];

          if ([v11 length])
          {
            v12 = STMakeDirPath(v11);

            v13 = [v2 updatedSizeOfItemForPath:v12];
            v14 = [v13 longLongValue];

            if (v14)
            {
              if ([v9 containerClass] == 1)
              {
                v22 += v14;
              }

              else
              {
                v21 += v14;
                v15 = [v12 stringByAppendingString:@"Library/Caches/"];

                v16 = [v2 updatedSizeOfItemForPath:v15];
                v6 += [v16 longLongValue];

                v12 = v15;
              }
            }
          }

          else
          {
            v12 = v11;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v5);
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v6 = 0;
    }

    v17 = [STSizeVector fixed:v22 dynamic:v21 purgeable:v6];

    v1 = v20;
  }

  else
  {
    v17 = +[STSizeVector zero];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void STMSizeOfFileTree(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x277CCAA00];
  v6 = a1;
  v13 = [v5 defaultManager];
  if ([v13 fileExistsAtPath:v6])
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    diskUsageList(v6, 0, a2, a3);
  }

  else
  {
    STLog(2, @"STMSizeOfFileTree: Could not get size of %@, file doesn't exist", v7, v8, v9, v10, v11, v12, v6);

    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 24) = 1;
    *(a3 + 32) = 0;
  }
}

void diskUsageList(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v165 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v154 = a2;
  memset(v164, 0, 7);
  if (v7)
  {
    if (a3)
    {
      memset(&v158.st_ino, 0, 32);
      *&v158.st_dev = 1;
      if (!fsctl([v7 fileSystemRepresentation], 0xC0284A20uLL, &v158, 0))
      {
        *(a4 + 16) = 0;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        *a4 = vextq_s8(*&v158.st_uid, *&v158.st_uid, 8uLL);
        goto LABEL_83;
      }

      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      v141[4093] = v14;
      v141[4094] = v16;
      STLog(0, @"Asked to use fast sizing on %@ but fast sizing failed: %d (%s)", v17, v18, v19, v20, v21, v22, v7);
    }

    v23 = objc_opt_new();
    v24 = [MEMORY[0x277CBEB18] array];
    info = 0;
    v160 = 0xA200000900000005;
    v161 = 0;
    v162 = 0x500000002;
    v163 = 768;
    mach_timebase_info(&info);
    v25 = mach_absolute_time();
    MEMORY[0x28223BE20]();
    bzero(v141, 0x8000uLL);
    v32 = +[PathObject pathObjectWithPath:component:](PathObject, "pathObjectWithPath:component:", [v7 fileSystemRepresentation], 0);
    if (v32)
    {
      v146 = v141;
      v142 = v25;
      v145 = v7;
      [v24 addObject:v32];
      v33 = [v24 count];
      v149 = v23;
      v144 = a4;
      v143 = v32;
      if (v33)
      {
        v156 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v147 = v24;
        while (1)
        {
          memset(&v158, 0, sizeof(v158));
          v37 = [v24 objectAtIndex:0];
          [v24 removeObjectAtIndex:0];
          v38 = open([v37 path], 256);
          if ((v38 & 0x80000000) == 0)
          {
            break;
          }

          v53 = __error();
          strerror(*v53);
          STLog(2, @"Failed to open directory %@ : %s", v54, v55, v56, v57, v58, v59, v37);
          v36 = 1;
LABEL_76:

          if (![v24 count])
          {
            goto LABEL_81;
          }
        }

        v39 = v38;
        if (fstat(v38, &v158))
        {
          v46 = __error();
          strerror(*v46);
          STLog(2, @"fstat failed for %@ : %s", v47, v48, v49, v50, v51, v52, v37);
          v36 = 1;
LABEL_75:
          close(v39);
          goto LABEL_76;
        }

        v60 = v158.st_mode & 0xF000;
        if (v60 == 40960 || v60 == 0x8000)
        {
          v119 = v158.st_blocks << 9;
          ++v34;
          v156 += v158.st_blocks << 9;
          v157 = 0;
          fsctl([v37 path], 0x40084A47uLL, &v157, 0);
          if (v157)
          {
            v120 = v119;
          }

          else
          {
            v120 = 0;
          }

          v35 += v120;
          goto LABEL_75;
        }

        if (v60 != 0x4000)
        {
          STLog(1, @"%@ is not a file, link or directory, skipping.", v40, v41, v42, v43, v44, v45, v37);
          goto LABEL_75;
        }

        v152 = v34;
        v155 = v35;
        v61 = 0;
LABEL_16:
        v62 = v146;
        do
        {
          v63 = getattrlistbulk(v39, &v160, v62, 0x8000uLL, 0);
          if (v63 == -1)
          {
            v121 = __error();
            strerror(*v121);
            STLog(2, @"getattrlistbulk on entry %llu in %@ returned error %s", v122, v123, v124, v125, v126, v127, v61);
            v36 = 1;
LABEL_74:
            v24 = v147;
            v35 = v155;
            v34 = v152;
            goto LABEL_75;
          }

          v70 = v63;
          if (!v63)
          {
            goto LABEL_74;
          }
        }

        while (v63 < 1);
        while (1)
        {
          v72 = *v62;
          v71 = v62[1];
          v73 = v62[4];
          v74 = v62[5];
          if ((v71 & 0x20000000) != 0)
          {
            if (v62[6])
            {
              v82 = __error();
              v83 = strerror(*v82);
              STLog(2, @"Got error %s while processing entry %llu in %@", v84, v85, v86, v87, v88, v89, v83);
              goto LABEL_60;
            }

            v75 = v62 + 7;
            if ((v71 & 1) == 0)
            {
LABEL_22:
              v76 = 0;
              if ((v71 & 8) != 0)
              {
                goto LABEL_23;
              }

              goto LABEL_31;
            }
          }

          else
          {
            v75 = v62 + 6;
            if ((v71 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          v76 = v75 + *v75;
          v75 += 2;
          if ((v71 & 8) != 0)
          {
LABEL_23:
            v77 = *v75++;
            v78 = v77 == 2;
            if ((v71 & 0x2000000) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_24;
          }

LABEL_31:
          v78 = 0;
          if ((v71 & 0x2000000) == 0)
          {
LABEL_32:
            v79 = 0;
            if (!v78)
            {
LABEL_25:
              if (v73)
              {
                v102 = *v75++;
                v81 = v102 == 1;
              }

              else
              {
                v81 = 0;
              }

              v153 = v36;
              if ((v73 & 4) != 0)
              {
                v104 = *v75;
                v75 += 2;
                v103 = v104;
              }

              else
              {
                v103 = 0;
              }

              v150 = v76;
              if ((v74 & 0x100) != 0)
              {
                v107 = *v75;
                v75 += 2;
                v105 = v107;
                if ((v74 & 0x200) == 0)
                {
                  goto LABEL_47;
                }

LABEL_45:
                v106 = *v75;
              }

              else
              {
                v105 = 0;
                if ((v74 & 0x200) != 0)
                {
                  goto LABEL_45;
                }

LABEL_47:
                LOBYTE(v106) = 0;
              }

              if (v154 && (v106 & 1) != 0 && v105)
              {
                v148 = v81;
                v108 = [MEMORY[0x277CCABB0] numberWithLongLong:v103];
                v151 = v72;
                v109 = v108;
                v110 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v105];
                [v154 setObject:v109 forKeyedSubscript:v110];

                v81 = v148;
                v72 = v151;
              }

              if ((v106 & 8) != 0)
              {
                v111 = v103;
              }

              else
              {
                v111 = 0;
              }

              v155 += v111;
              if (v81)
              {
                v156 += v103;
                ++v152;
                v36 = v153;
              }

              else
              {
                v151 = objc_autoreleasePoolPush();
                v112 = v149;
                if ([v149 containsIndex:v79])
                {
                  STLog(1, @"Skipping hardlinked file at %@/%s", v113, v114, v115, v116, v117, v118, v37);
                }

                else
                {
                  v156 += v103;
                  ++v152;
                  [v112 addIndex:v79];
                }

                v36 = v153;
                objc_autoreleasePoolPop(v151);
              }

              goto LABEL_66;
            }

            goto LABEL_33;
          }

LABEL_24:
          v80 = *v75;
          v75 += 2;
          v79 = v80;
          if (!v78)
          {
            goto LABEL_25;
          }

LABEL_33:
          if ((v62[3] & 2) != 0 && !*v75)
          {
            STLog(1, @"Skipping empty directory at %@/%s", v64, v65, v66, v67, v68, v69, v37);
            goto LABEL_66;
          }

          if (v76)
          {
            v151 = *v62;
            v90 = v36;
            v91 = objc_autoreleasePoolPush();
            v92 = +[PathObject pathObjectWithPath:component:](PathObject, "pathObjectWithPath:component:", [v37 path], v76);
            v99 = v92;
            if (v92)
            {
              v100 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v92, "path")}];
              v101 = [0 containsObject:v100];

              if ((v101 & 1) == 0)
              {
                [v147 addObject:v99];
              }
            }

            else
            {
              STLog(2, @"Failed to create path to child directory by appending %s to %@", v93, v94, v95, v96, v97, v98, v76);
              v90 = 1;
            }

            objc_autoreleasePoolPop(v91);
            v36 = v90;
            v72 = v151;
            goto LABEL_66;
          }

          STLog(2, @"Failed to get name for directory item %llu in %@; not counting its children", v64, v65, v66, v67, v68, v69, v61);
LABEL_60:
          v36 = 1;
LABEL_66:
          v62 = (v62 + v72);
          ++v61;
          if (!--v70)
          {
            goto LABEL_16;
          }
        }
      }

      LOBYTE(v36) = 0;
      v35 = 0;
      v34 = 0;
      v156 = 0;
LABEL_81:
      mach_absolute_time();
      v128 = v36;
      v129 = v156;
      v130 = [MEMORY[0x277CCA8E8] stringFromByteCount:v156 countStyle:0];
      v131 = [MEMORY[0x277CCA8E8] stringFromByteCount:v35 countStyle:0];
      v132 = v34;
      v7 = v145;
      STLog(1, @"result for %@: %llu files, %@ total, %@ purgeable, took %lf ms"), v133, v134, v135, v136, v137, v138, v145);

      v23 = v149;
      v139 = v144;
      *v144 = v129;
      v139[1] = v132;
      v139[2] = v35;
      v139[3] = 0;
      *(v139 + 32) = v128;
      *(v139 + 33) = v164[0];
      *(v139 + 9) = *(v164 + 3);
      v32 = v143;
    }

    else
    {
      STLog(2, @"unable to create PathObject from %@", v26, v27, v28, v29, v30, v31, v7);
      free(v141);
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 1;
      *(a4 + 33) = 0;
      *(a4 + 36) = 0;
    }
  }

  else
  {
    STLog(2, @"Path is nil", v8, v9, v10, v11, v12, v13, v142);
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 1;
    *(a4 + 33) = 0;
    *(a4 + 36) = 0;
  }

LABEL_83:

  v140 = *MEMORY[0x277D85DE8];
}

id STMSizesOfClones(void *a1)
{
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v3 = [[v1 alloc] initWithCapacity:1000];
  diskUsageList(v2, v3, 0, v5);

  return v3;
}

void *_CacheSizeForAppIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v1 allowPlaceholder:1 error:0];
    v3 = [v2 UIBackgroundModes];
    if ([v3 containsObject:@"continuous"])
    {
      v4 = 0;
    }

    else
    {
      v4 = [v2 dataContainerURL];

      if (!v4)
      {
LABEL_8:

        goto LABEL_9;
      }

      v5 = [v2 dataContainerURL];
      v6 = [v5 path];
      v3 = [v6 stringByAppendingPathComponent:@"Library/Caches/"];

      v11 = 0;
      memset(v10, 0, sizeof(v10));
      diskUsageList(v3, 0, 1, v10);
      v7 = *&v10[0] & ~(*&v10[0] >> 63);
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"CacheSize: %@", v1];
      STLogSize(v7, v8);

      v4 = (_SizeOfOPurgeableAssets(v1) + v7);
    }

    goto LABEL_8;
  }

  v4 = 0;
LABEL_9:

  return v4;
}

uint64_t _SizeOfOPurgeableAssets(void *a1)
{
  v1 = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___SizeOfOPurgeableAssets_block_invoke;
  v9[3] = &unk_279D1D188;
  v9[4] = &v10;
  v2 = v1;
  v3 = v9;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v4 = getCacheManagementEnumerateAssetsSymbolLoc_ptr;
  v18 = getCacheManagementEnumerateAssetsSymbolLoc_ptr;
  if (!getCacheManagementEnumerateAssetsSymbolLoc_ptr)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getCacheManagementEnumerateAssetsSymbolLoc_block_invoke;
    v14[3] = &unk_279D1D1B0;
    v14[4] = &v15;
    __getCacheManagementEnumerateAssetsSymbolLoc_block_invoke(v14);
    v4 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (v4)
  {
    (v4)(v2, 0, v3);

    v5 = v11[3];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"PurgeableAssets: %@", v2];
    STLogSize(v5, v6);

    v7 = v11[3];
    _Block_object_dispose(&v10, 8);

    return v7;
  }

  else
  {
    dlerror();
    result = abort_report_np();
    __break(1u);
  }

  return result;
}

void sub_26BB99D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 80), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t STMSizeOfPurgeableAssets(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = _SizeOfOPurgeableAssets(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *__getCacheManagementEnumerateAssetsSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CacheDeleteLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CacheDeleteLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279D1D1D0;
    v8 = 0;
    CacheDeleteLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = CacheDeleteLibraryCore_frameworkLibrary;
    if (CacheDeleteLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CacheDeleteLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "CacheManagementEnumerateAssets");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCacheManagementEnumerateAssetsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CacheDeleteLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CacheDeleteLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26BB9AAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CompressPath(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [&unk_287C8E860 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v15;
    while (2)
    {
      v6 = 0;
      v7 = v4;
      v4 += v3;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(&unk_287C8E860);
        }

        v8 = *(*(&v14 + 1) + 8 * v6);
        if ([v1 hasPrefix:v8])
        {
          v10 = [v8 length];
          v11 = [&unk_287C8E878 objectAtIndexedSubscript:v7];
          v9 = [v1 stringByReplacingCharactersInRange:0 withString:{v10, v11}];

          goto LABEL_11;
        }

        ++v7;
        ++v6;
      }

      while (v3 != v6);
      v3 = [&unk_287C8E860 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v9 = v1;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

void _FSEventStreamCallback(uint64_t a1, void *a2, uint64_t a3, const char **a4, unsigned int *a5, uint64_t *a6)
{
  v30 = a2;
  context = objc_autoreleasePoolPush();
  v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
  if (a3)
  {
    v10 = *MEMORY[0x277CBECE8];
    do
    {
      v12 = *a5++;
      v11 = v12;
      v14 = *a6++;
      v13 = v14;
      if ((v11 & 0x10) == 0)
      {
        v15 = *a4;
        v16 = CFStringCreateWithFileSystemRepresentation(v10, *a4);
        if (v16)
        {
          v23 = v16;
          v24 = [(__CFString *)v16 lastPathComponent];
          v25 = [v24 hasPrefix:@"."];

          if ((v25 & 1) == 0)
          {
            if ((v11 & 0x20000) != 0)
            {
              v26 = STMakeDirPath(v23);

              v23 = v26;
            }

            v27 = [STMSizeCacheEvent eventWithPath:v23 flags:v11 event:v13];
            [v31 addObject:v27];
          }
        }

        else
        {
          STLog(2, @"Error creating filesystem path for: %s", v17, v18, v19, v20, v21, v22, v15);
        }
      }

      ++a4;
      --a3;
    }

    while (a3);
  }

  objc_autoreleasePoolPop(context);
  if ([v31 count])
  {
    v28 = _gSharedUpdateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___FSEventStreamCallback_block_invoke;
    block[3] = &unk_279D1CEB0;
    v33 = v30;
    v34 = v31;
    dispatch_async(v28, block);
  }
}

id STTapToRadarURLWithTitleAndContent(void *a1, void *a2)
{
  v18[7] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACE0];
  v4 = a2;
  v5 = a1;
  v6 = objc_alloc_init(v3);
  [v6 setScheme:@"tap-to-radar"];
  [v6 setHost:@"new"];
  v7 = [MEMORY[0x277CCAD18] queryItemWithName:@"Title" value:v5];

  v8 = [MEMORY[0x277CCAD18] queryItemWithName:@"Description" value:{v4, v7}];

  v18[1] = v8;
  v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:@"Disk Space Triage"];
  v18[2] = v9;
  v10 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:@"iOS"];
  v18[3] = v10;
  v11 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentID" value:@"951859"];
  v18[4] = v11;
  v12 = [MEMORY[0x277CCAD18] queryItemWithName:@"Classification" value:@"Other Bug"];
  v18[5] = v12;
  v13 = [MEMORY[0x277CCAD18] queryItemWithName:@"Reproducibility" value:@"Always"];
  v18[6] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:7];
  [v6 setQueryItems:v14];

  v15 = [v6 URL];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void *__getCacheDeleteCopyPurgeableSpaceWithInfoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CacheDeleteLibrary();
  result = dlsym(v2, "CacheDeleteCopyPurgeableSpaceWithInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCacheDeleteCopyPurgeableSpaceWithInfoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CacheDeleteLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CacheDeleteLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CacheDeleteLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279D1D3A8;
    v6 = 0;
    CacheDeleteLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = CacheDeleteLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!CacheDeleteLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __CacheDeleteLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CacheDeleteLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getCacheDeleteCopyItemizedPurgeableSpaceWithInfoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CacheDeleteLibrary();
  result = dlsym(v2, "CacheDeleteCopyItemizedPurgeableSpaceWithInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCacheDeleteCopyItemizedPurgeableSpaceWithInfoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_26BBA152C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void AddToMultiDict(void *a1, void *a2, void *a3)
{
  v10 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v10 objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    [v7 addObject:v6];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithObject:v6];

    [v10 setObject:v9 forKey:v5];
    v6 = v9;
  }
}

STStorageApp *getOrCreateApp(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 objectForKey:v6];
  if (v8)
  {
    goto LABEL_15;
  }

  v9 = v6;
  v10 = v7;
  v24 = 0;
  v11 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v9 allowPlaceholder:1 error:&v24];
  v12 = v24;
  v13 = v12;
  if (v11)
  {
    v14 = v12;
LABEL_5:
    v8 = [[STStorageApp alloc] initWithAppRecord:v11];

    goto LABEL_6;
  }

  v23 = v12;
  v11 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifierOfSystemPlaceholder:v9 error:&v23];
  v14 = v23;

  if (v11)
  {
    goto LABEL_5;
  }

  v8 = [[STStorageApp alloc] initWithBundleIdentifier:v9 name:v9 vendorName:0];
  [(STStorageApp *)v8 setAppKind:3];
LABEL_6:
  v15 = [STStorageDataManager overridesFor:v8];
  v16 = [v15 defaultName];

  if (v16)
  {
    v17 = [v15 defaultName];
  }

  else
  {
    v18 = [v10 name];

    if (!v18)
    {
      goto LABEL_11;
    }

    v17 = [v10 name];
  }

  v19 = v17;
  [(STStorageApp *)v8 setName:v17];

LABEL_11:
  if (![(STStorageApp *)v8 isInstalled])
  {
    v20 = [v15 unInstalledName];

    if (v20)
    {
      v21 = [v15 unInstalledName];
      [(STStorageApp *)v8 setName:v21];
    }
  }

  -[STStorageApp setForceHidden:](v8, "setForceHidden:", [v15 forceHidden]);
  [(STStorageApp *)v8 setUsageBundle:v10];

  [v5 setObject:v8 forKey:v9];
LABEL_15:

  return v8;
}

STStorageApp *MakePseudoAppForContainer(void *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 vendorName];
        if ([v12 length])
        {
          v13 = [v4 objectForKey:v12];
          v14 = v13;
          if (v13)
          {
            [v13 addObject:v11];
          }

          else
          {
            v15 = [MEMORY[0x277CBEB18] arrayWithObject:v11];
            [v4 setObject:v15 forKey:v12];
          }

          v16 = [v14 count];
          if (v16 > [v8 count])
          {
            v17 = v14;

            v8 = v17;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = v5;
  }

  v19 = v18;

  v20 = [v19 firstObject];
  v21 = [v20 vendorName];
  v22 = [STStorageApp alloc];
  v23 = [v21 length];
  v24 = v21;
  if (!v23)
  {
    v24 = STStorageDataLocStr(@"SHARED_DATA");
  }

  v25 = MEMORY[0x277CCACA8];
  v26 = STStorageDataLocStr(@"SHARED_FMT %ld");
  v27 = [v25 localizedStringWithFormat:v26, objc_msgSend(v5, "count")];
  v28 = [(STStorageApp *)v22 initWithBundleIdentifier:v31 name:v24 vendorName:v27];

  if (!v23)
  {
  }

  [(STStorageApp *)v28 setAppKind:2];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

id STMessagesExternalDataSize()
{
  if (STMessagesExternalDataSize_onceToken != -1)
  {
    STMessagesExternalDataSize_cold_1();
  }

  if (STMessagesExternalDataSize__messagesPlugin && (v0 = [STMessagesExternalDataSize__messagesPlugin externDataSizeForApp:@"com.apple.MobileSMS"], v0 >= 1))
  {
    v1 = [STSizeVector docsAndData:v0];
  }

  else
  {
    v1 = +[STSizeVector zero];
  }

  return v1;
}

void __STMessagesExternalDataSize_block_invoke()
{
  v0 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PreferenceBundles/StoragePlugins/CKStoragePlugin.bundle" isDirectory:1];
  v1 = [MEMORY[0x277CCA8D8] bundleWithURL:v0];
  v9 = 0;
  v2 = [v1 loadAndReturnError:&v9];
  v3 = v9;
  if (v2 && (v4 = [v1 principalClass]) != 0)
  {
    v5 = objc_alloc_init(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 externDataSizeAppIdentifiers];
      if ([v6 containsObject:@"com.apple.MobileSMS"])
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = STMessagesExternalDataSize__messagesPlugin;
  STMessagesExternalDataSize__messagesPlugin = v7;
}

void sub_26BBA4EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_26BBA5324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCSSearchQueryContextClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CSSearchQueryContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSSearchQueryContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCSSearchQueryContextClass_block_invoke_cold_1();
    CoreSpotlightLibrary();
  }
}

void CoreSpotlightLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CoreSpotlightLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279D1D670;
    v4 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!CoreSpotlightLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreSpotlightLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

STMSizeCacheEntry *__getCSSearchQueryClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary();
  result = objc_getClass("CSSearchQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSSearchQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCSSearchQueryClass_block_invoke_cold_1();
    return [(STMSizeCacheEntry *)v3 initWithPath:v4, v5];
  }

  return result;
}

void GetDeviceSpace(void *a1, void *a2)
{
  memset(v12, 0, 20);
  v13[2] = 0;
  v13[0] = 5;
  v13[1] = 2147483668;
  if (getattrlist("/", v13, v12, 0x14uLL, 0))
  {
    v4 = __error();
    v5 = strerror(*v4);
    STLog(3, @"Error retreiving the attributes list for / : %s", v6, v7, v8, v9, v10, v11, v5);
  }

  else
  {
    *a1 = *(v12 + 4);
    *a2 = *(&v12[1] + 4);
  }
}

id STDictLookup(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        v3 = [v9 objectForKey:{v10, v14}];

        if (!v3)
        {
          v9 = 0;
LABEL_12:

          v11 = 0;
          goto LABEL_13;
        }

        ++v8;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = v3;
  v11 = v9;
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id STDictLookupFromPathString(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 componentsSeparatedByString:@":"];
  v5 = STDictLookup(v3, v4);

  return v5;
}

void STSyncATCUsage()
{
  v0 = +[STStorageMediaMonitor sharedMonitor];
  [v0 sync];
}

id STGetCurrentMediaUsage()
{
  v0 = +[STStorageMediaMonitor sharedMonitor];
  v1 = [v0 atcDictionary];

  return v1;
}

STMutableSizeDict *STSelectMediaUsage(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277CBEB38];
  v5 = a2;
  v6 = [v4 dictionary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __STSelectMediaUsage_block_invoke;
  v13[3] = &unk_279D1D6F0;
  v7 = v6;
  v14 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v13];

  v8 = v3;
  v9 = v7;
  v10 = objc_alloc_init(STMutableSizeDict);
  v11 = objc_opt_new();
  recursiveComputeMediaUsage(v10, v11, v8, v9, 0);

  return v10;
}

void __STSelectMediaUsage_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 includeMediaUsage];
  v7 = v6;
  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(a1 + 32) setObject:v5 forKey:*(*(&v13 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

STMutableSizeDict *STComputeUsageBundleData(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(STMutableSizeDict);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = v3;
  v6 = [v3 allAppsWithUsageBundles];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v4 objectForKeyedSubscript:v11];
        if (([v12 excludeUsageBundle] & 1) == 0)
        {
          if (![(STMutableSizeDict *)v5 hasKey:v11])
          {
            STLog(1, @"Adding %@ because of UsageBundleData", v13, v14, v15, v16, v17, v18, v11);
          }

          v19 = [v25 usageBundleForIdentifier:v11];
          [v19 totalSize];
          v21 = [STSizeVector docsAndData:v20];
          [(STMutableSizeDict *)v5 addSize:v21 toKey:v11];
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"UsageBundleData %@", v11];
          STLogSizeVector(v21, v22);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v5;
}

STMutableSizeDict *STComputeFSOverrides(void *a1)
{
  v1 = a1;
  v2 = +[STMSizer sharedAppSizer];
  v3 = objc_alloc_init(STMutableSizeDict);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __STComputeFSOverrides_block_invoke;
  v9[3] = &unk_279D1D718;
  v10 = v2;
  v4 = v3;
  v11 = v4;
  v5 = v2;
  [v1 enumerateKeysAndObjectsUsingBlock:v9];

  v6 = v11;
  v7 = v4;

  return v4;
}

void __STComputeFSOverrides_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [a3 includeFsPaths];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v6 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [*(a1 + 32) itemForPath:v10];
        if (v11)
        {
          v12 = v11;
          [*(a1 + 32) updateSizeOfItem:v11 synchronous:1];
        }

        else
        {
          v13 = [STMSizeCacheEntry alloc];
          v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
          v12 = [(STMSizeCacheEntry *)v13 initWithURL:v14];

          [*(a1 + 32) addItem:v12 andComputeSizeSynchronously:1];
        }

        v21 = [(STMSizeCacheEntry *)v12 itemSize];
        if (v21)
        {
          if (([*(a1 + 40) hasKey:v5] & 1) == 0)
          {
            STLog(1, @"Adding %@ because of FSOverride", v22, v23, v24, v25, v26, v27, v5);
          }

          v28 = *(a1 + 40);
          v29 = +[STSizeVector docsAndData:](STSizeVector, "docsAndData:", [v21 longLongValue]);
          [v28 addSize:v29 toKey:v5];

          v30 = [v21 longLongValue];
          v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"FSOverride: %@ in %@", v5, v10];
          STLogSize(v30, v31);
        }

        else
        {
          STLog(2, @"No size for app %@ in %@", v15, v16, v17, v18, v19, v20, v5);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v7);
  }

  v32 = *MEMORY[0x277D85DE8];
}

STMutableSizeDict *STComputeCacheDeleteOverrides(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(STMutableSizeDict);
  v3 = +[STStorageCacheDelete sharedMonitor];
  v4 = [v3 cacheDeleteDict];

  v5 = [v4 objectForKey:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __STComputeCacheDeleteOverrides_block_invoke;
  v12[3] = &unk_279D1D740;
  v13 = v5;
  v14 = v4;
  v6 = v2;
  v15 = v6;
  v7 = v4;
  v8 = v5;
  [v1 enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v15;
  v10 = v6;

  return v6;
}

void __STComputeCacheDeleteOverrides_block_invoke(id *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 includeCacheDeleteKeys];
  if ([v6 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v25 = v5;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [a1[4] objectForKey:v14];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 += [v15 longLongValue];
          }

          v11 = [a1[5] objectForKey:v14];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 += [v11 longLongValue];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v8);

      v5 = v25;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    if (v9 | v10)
    {
      if (([a1[6] hasKey:v5] & 1) == 0)
      {
        STLog(1, @"Adding %@ because of CacheDeleteOverride", v16, v17, v18, v19, v20, v21, v5);
      }

      v22 = [STSizeVector docsAndData:v9 purgeable:v10];
      [a1[6] addSize:v22 toKey:v5];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"CacheDeleteOverride %@", v5];
      STLogSizeVector(v22, v23);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

STMutableSizeDict *STFileProviderExternalDataSize(void *a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(STMutableSizeDict);
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v69 = [v3 isiCloudDriveAllowed];

  v4 = +[STStorageCacheDelete sharedMonitor];
  v5 = [v4 cacheDeleteDict];

  v71 = v5;
  v6 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
  v7 = [v6 objectForKeyedSubscript:@"com.apple.FileProvider.cache-delete"];
  v70 = v7;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    STLog(3, @"'com.apple.FileProvider.cache-delete' value must be an NSDictionary.\nCACHE_DELETE_ITEMIZED_NONPURGEABLE value: %@", v8, v9, v10, v11, v12, v13, v6);
    v63 = objc_alloc_init(STMutableSizeDict);
  }

  else
  {
    v67 = v6;
    v68 = v1;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v1;
    v14 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
    v15 = v69;
    if (v14)
    {
      v16 = v14;
      v17 = *v82;
      v72 = *v82;
      while (2)
      {
        v18 = 0;
        v73 = v16;
        do
        {
          if (*v82 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v81 + 1) + 8 * v18);
          if (v15 & 1 | (([v19 isiCloudDriveProvider] & 1) == 0))
          {
            v75 = v18;
            v20 = [v19 providerID];
            v21 = [v19 topLevelBundleIdentifier];
            v22 = v21;
            if (v21)
            {
              v23 = v21;
            }

            else
            {
              v23 = v20;
            }

            v24 = v23;

            v76 = v20;
            if ([v20 isEqualToString:@"com.apple.FileProvider.LocalStorage"])
            {
              v25 = [v19 storageURLs];
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v26 = [v25 countByEnumeratingWithState:&v77 objects:v85 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v78;
                do
                {
                  for (i = 0; i != v27; ++i)
                  {
                    if (*v78 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = [*(*(&v77 + 1) + 8 * i) path];
                    v31 = STSizeOfPathWithOptions(v30, 1);

                    v32 = [v31 longLongValue];
                    if (v32)
                    {
                      v33 = v32;
                      if (![(STMutableSizeDict *)v2 hasKey:v24])
                      {
                        STLog(1, @"Adding %@ because of FPOverride", v34, v35, v36, v37, v38, v39, v24);
                      }

                      v40 = [STSizeVector docsAndData:v33 purgeable:0];
                      [(STMutableSizeDict *)v2 addSize:v40 toKey:v24];
                      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"FPExternalData %@", v24];
                      STLogSizeVector(v40, v41);
                    }
                  }

                  v27 = [v25 countByEnumeratingWithState:&v77 objects:v85 count:16];
                }

                while (v27);
                v7 = v70;
                v15 = v69;
                v17 = v72;
              }
            }

            else
            {
              v25 = [v71 objectForKey:v20];
              v42 = [v7 objectForKey:v20];
              if (v25 | v42)
              {
                if (![(STMutableSizeDict *)v2 hasKey:v24])
                {
                  STLog(1, @"Adding %@ because of FPOverride", v43, v44, v45, v46, v47, v48, v24);
                }

                if (v25)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v64 = v76;
                    STLog(3, @"'%@' value must be an NSNumber.\ncacheDeleteDict value: %@", v49, v50, v51, v52, v53, v54, v76);
                    v6 = v67;
LABEL_41:
                    v63 = objc_alloc_init(STMutableSizeDict);

                    v1 = v68;
                    goto LABEL_42;
                  }
                }

                if (v42)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v6 = v67;
                    v64 = v76;
                    STLog(3, @"'%@' value must be an NSNumber.\nCACHE_DELETE_ITEMIZED_NONPURGEABLE value: %@", v55, v56, v57, v58, v59, v60, v76);
                    goto LABEL_41;
                  }
                }

                v61 = +[STSizeVector docsAndData:purgeable:](STSizeVector, "docsAndData:purgeable:", [v42 longLongValue], objc_msgSend(v25, "longLongValue"));
                [(STMutableSizeDict *)v2 addSize:v61 toKey:v24];
                v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"FPExternalData %@", v24];
                STLogSizeVector(v61, v62);

                v17 = v72;
              }
            }

            v16 = v73;
            v18 = v75;
          }

          ++v18;
        }

        while (v18 != v16);
        v16 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v63 = v2;
    v6 = v67;
    v1 = v68;
  }

LABEL_42:

  v65 = *MEMORY[0x277D85DE8];

  return v63;
}

void recursiveComputeMediaUsage(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __recursiveComputeMediaUsage_block_invoke;
  v17[3] = &unk_279D1D768;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v9;
  v13 = v9;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [a3 enumerateKeysAndObjectsUsingBlock:v17];
}

void __recursiveComputeMediaUsage_block_invoke(id *a1, uint64_t a2, void *a3)
{
  v22 = a3;
  [a1[4] addObject:a2];
  v5 = [a1[4] componentsJoinedByString:@":"];
  v6 = [a1[5] objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = a1[6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v22;
    v8 = v7;
    if (v6)
    {
      v9 = [v7 objectForKeyedSubscript:@"_PhysicalSize"];
      v10 = [v8 objectForKeyedSubscript:@"_PurgeableSize"];
      if (v9)
      {
        v11 = [v9 longLongValue];
        v12 = v10 ? [v10 longLongValue] : 0;
        v13 = v11 - v12;
        if (v13 >= 1)
        {
          if (([a1[7] hasKey:v6] & 1) == 0)
          {
            STLog(1, @"Adding %@ because of MediaUsage", v14, v15, v16, v17, v18, v19, v6);
          }

          v20 = [STSizeVector docsAndData:v13 purgeable:v12];
          [a1[7] addSize:v20 toKey:v6];
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"MediaUsage %@", v6];
          STLogSizeVector(v20, v21);
        }
      }
    }

    recursiveComputeMediaUsage(a1[7], a1[4], v8, a1[5], v6);
  }

  [a1[4] removeLastObject];
}

void STLog_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_26BB8E000, a2, OS_LOG_TYPE_FAULT, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void STLog_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26BB8E000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void STVolumeSize_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *__error();
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_26BB8E000, a2, OS_LOG_TYPE_FAULT, "Error retrieving the total attributes list for %{public}s : %{errno}d", v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

void STVolumeSize_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *__error();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26BB8E000, a2, OS_LOG_TYPE_ERROR, "Error retrieving the total and available attributes list for %{public}s : %{errno}d", v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}