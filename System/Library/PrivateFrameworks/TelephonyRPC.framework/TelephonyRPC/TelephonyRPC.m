uint64_t NanoPhoneVoicemailMetaReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v56) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v56 & 0x7F) << v5;
      if ((v56 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v56) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v56 & 0x7F) << v13;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_91:
            v51 = 32;
            goto LABEL_96;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_91;
      case 3u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 136) |= 2u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v56 & 0x7F) << v23;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_87;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v25;
        }

LABEL_87:
        v51 = 16;
        goto LABEL_96;
      case 4u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 136) |= 4u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v56 & 0x7F) << v31;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_95;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v33;
        }

LABEL_95:
        v51 = 24;
LABEL_96:
        *(a1 + v51) = v19;
        goto LABEL_108;
      case 5u:
        *(a1 + 136) |= 1u;
        v56 = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v53 = [a2 data];
          [v53 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v56;
        goto LABEL_108;
      case 6u:
        v20 = PBReaderReadString();
        v21 = 104;
        goto LABEL_83;
      case 7u:
        v20 = PBReaderReadString();
        v21 = 48;
        goto LABEL_83;
      case 8u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 136) |= 8u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v56 & 0x7F) << v37;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v43 = 0;
            goto LABEL_100;
          }
        }

        if ([a2 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

LABEL_100:
        v52 = 72;
        goto LABEL_105;
      case 9u:
        v20 = PBReaderReadString();
        v21 = 64;
        goto LABEL_83;
      case 0xAu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 136) |= 0x10u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v56 & 0x7F) << v44;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v43 = 0;
            goto LABEL_104;
          }
        }

        if ([a2 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v46;
        }

LABEL_104:
        v52 = 76;
LABEL_105:
        *(a1 + v52) = v43;
        goto LABEL_108;
      case 0xBu:
        v22 = objc_alloc_init(NanoPhoneVoicemailBody);
        objc_storeStrong((a1 + 120), v22);
        v56 = 0;
        v57 = 0;
        if (PBReaderPlaceMark() && NanoPhoneVoicemailBodyReadFrom(v22, a2))
        {
          goto LABEL_72;
        }

        goto LABEL_110;
      case 0xCu:
        v22 = objc_alloc_init(NanoPhoneVoicemailTranscript);
        objc_storeStrong((a1 + 128), v22);
        v56 = 0;
        v57 = 0;
        if (PBReaderPlaceMark() && NanoPhoneVoicemailTranscriptReadFrom(v22, a2))
        {
LABEL_72:
          PBReaderRecallMark();

LABEL_108:
          v54 = [a2 position];
          if (v54 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_110:

        return 0;
      case 0xDu:
        v20 = PBReaderReadString();
        v21 = 96;
        goto LABEL_83;
      case 0xEu:
        v20 = PBReaderReadString();
        v21 = 80;
        goto LABEL_83;
      case 0xFu:
        v20 = PBReaderReadString();
        v21 = 88;
        goto LABEL_83;
      case 0x10u:
        v20 = PBReaderReadString();
        v21 = 56;
        goto LABEL_83;
      case 0x11u:
        v20 = PBReaderReadString();
        v21 = 40;
        goto LABEL_83;
      case 0x12u:
        v20 = PBReaderReadString();
        v21 = 112;
LABEL_83:
        v50 = *(a1 + v21);
        *(a1 + v21) = v20;

        goto LABEL_108;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_108;
    }
  }
}

id CTSUServerQueue()
{
  if (CTSUServerQueue_onceToken != -1)
  {
    CTSUServerQueue_cold_1();
  }

  v1 = CTSUServerQueue_sCTServerQueue;

  return v1;
}

void __CTSUServerQueue_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = dispatch_queue_create("com.apple.bridge.nanophone.ctserverqueue", 0);
  v1 = CTSUServerQueue_sCTServerQueue;
  CTSUServerQueue_sCTServerQueue = v0;

  if (!CTSUServerQueue_sCTServerQueue)
  {
    v2 = nph_general_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "dispatch_queue_t CTSUServerQueue(void)_block_invoke";
      _os_log_impl(&dword_26D269000, v2, OS_LOG_TYPE_DEFAULT, "%s - unable to create sCTServerQueue", &v4, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t CTSUServerConnectionRef()
{
  if (CTSUServerConnectionRef_onceToken != -1)
  {
    CTSUServerConnectionRef_cold_1();
  }

  return CTSUServerConnectionRef_sCTServerConnectionRef;
}

void __CTSUServerConnectionRef_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  _CTServerConnectionAddIdentifierException();
  v0 = *MEMORY[0x277CBECE8];
  v1 = CTSUServerQueue();
  CTSUServerConnectionRef_sCTServerConnectionRef = _CTServerConnectionCreateOnTargetQueue();

  if (!CTSUServerConnectionRef_sCTServerConnectionRef)
  {
    v2 = nph_general_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "CTServerConnectionRef CTSUServerConnectionRef(void)_block_invoke";
      _os_log_impl(&dword_26D269000, v2, OS_LOG_TYPE_DEFAULT, "%s - unable to create sCTServerConnectionRef", &v4, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __CTSUServerConnectionRef_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "CTServerConnectionRef CTSUServerConnectionRef(void)_block_invoke_2";
    v9 = 2112;
    v10 = a2;
    v11 = 2112;
    v12 = a3;
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s notification:%@ info:%@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t NPHDeviceOSIsInternalInstall()
{
  if (NPHDeviceOSIsInternalInstall_onceToken != -1)
  {
    NPHDeviceOSIsInternalInstall_cold_1();
  }

  return __NPHInternalOS;
}

uint64_t __NPHDeviceOSIsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  __NPHInternalOS = result;
  return result;
}

uint64_t NPHDeviceHasBaseband()
{
  if (NPHDeviceHasBaseband_onceToken != -1)
  {
    NPHDeviceHasBaseband_cold_1();
  }

  return NPHDeviceHasBaseband_isCellularDevice;
}

uint64_t __NPHDeviceHasBaseband_block_invoke()
{
  result = MGGetBoolAnswer();
  NPHDeviceHasBaseband_isCellularDevice = result;
  return result;
}

uint64_t NPHIsCerberusEnabled()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"cerberusEnabled"];

  return v1;
}

uint64_t NPHIsWalkaboutEnabled()
{
  if (NPHIsWalkaboutEnabled_onceToken != -1)
  {
    NPHIsWalkaboutEnabled_cold_1();
  }

  return __NPHWalkaboutEnabled;
}

uint64_t __NPHIsWalkaboutEnabled_block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da");
  if (v0)
  {
    v2 = v0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v2 isEqualToString:@"walkabout"])
      {
        if (NPHDeviceOSIsInternalInstall_onceToken != -1)
        {
          NPHDeviceOSIsInternalInstall_cold_1();
        }

        __NPHWalkaboutEnabled = __NPHInternalOS;
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

id NPHWiFiStringKey(void *a1)
{
  v1 = a1;
  if (MGGetBoolAnswer())
  {
    v2 = @"_WLAN";
  }

  else
  {
    v2 = @"_WIFI";
  }

  v3 = [v1 stringByAppendingString:v2];

  return v3;
}

uint64_t NPHDeriveProgramName(char *a1)
{
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = a1;
  }

  programName = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];

  return MEMORY[0x2821F96F8]();
}

void NPHSetTmpDirPrefix()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  [v1 cStringUsingEncoding:4];
  v2 = _set_user_dir_suffix();

  if ((v2 & 1) == 0)
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      NPHSetTmpDirPrefix_cold_1(v3);
    }
  }
}

id NPHSharedUtilitiesAppendBuildVersion(void *a1)
{
  v1 = a1;
  v2 = MGCopyAnswer();
  v3 = v2;
  v4 = @"unknown";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.", v1, v5];

  return v6;
}

__CFString *NSStringFromTUCallDisconnectedReason(unsigned int a1)
{
  if (a1 < 0x1A && ((0x3EFFFFFu >> a1) & 1) != 0)
  {
    v2 = off_279D960D0[a1];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unhadled TUCallDisconnectedReason in %s", "NSString *NSStringFromTUCallDisconnectedReason(TUCallDisconnectedReason)"];
  }

  return v2;
}

double mach_time_elapsed_to_seconds(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return (info.numer * a1 / info.denom) / 1000000000.0;
}

void nph_ensure_on_main_queue(void *a1)
{
  v1 = MEMORY[0x277CCACC8];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

id ListOfVoicemailsToSyncWithManager(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = [a1 allVoicemail];
  if (v1)
  {
    v2 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v16 + 1) + 8 * v8);
          memset(&v15, 0, sizeof(v15));
          v10 = [v9 dataPath];
          v11 = lstat([v10 fileSystemRepresentation], &v15);

          if (!v11)
          {
            st_size = v15.st_size;
            if (MaxVoicemailTotalBytes_onceToken != -1)
            {
              ListOfVoicemailsToSyncWithManager_cold_1();
            }

            if (st_size + v6 > MaxVoicemailTotalBytes_sMaxVoicemailTotalBytes)
            {
              goto LABEL_14;
            }

            v6 += v15.st_size;
          }

          [v2 addObject:v9];
          ++v8;
        }

        while (v5 != v8);
        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

LABEL_14:
  }

  else
  {
    v2 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t MaxVoicemailCount()
{
  if (MaxVoicemailCount_onceToken != -1)
  {
    MaxVoicemailCount_cold_1();
  }

  return MaxVoicemailCount_sMaxVoicemailCount;
}

void __MaxVoicemailCount_block_invoke()
{
  MaxVoicemailCount_sMaxVoicemailCount = 20;
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v0 objectForKey:@"SYNC_MAX_VOICEMAIL_COUNT"];

  v1 = v2;
  if (v2)
  {
    MaxVoicemailCount_sMaxVoicemailCount = [v2 integerValue];
    v1 = v2;
  }
}

void __MaxVoicemailTotalBytes_block_invoke()
{
  MaxVoicemailTotalBytes_sMaxVoicemailTotalBytes = 5000000;
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v0 objectForKey:@"SYNC_MAX_VOICEMAIL_TOTAL_SIZE"];

  v1 = v2;
  if (v2)
  {
    MaxVoicemailTotalBytes_sMaxVoicemailTotalBytes = [v2 integerValue];
    v1 = v2;
  }
}

uint64_t NanoPhoneVoicemailBodyReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void __deviceUnlockedSinceBoot_block_invoke()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = dispatch_semaphore_create(0);
  v1 = deviceUnlockedSinceBoot_semaphore;
  deviceUnlockedSinceBoot_semaphore = v0;

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __deviceUnlockedSinceBoot_block_invoke_2;
  handler[3] = &unk_279D96260;
  handler[4] = &v9;
  v3 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &v12, v2, handler);

  if (v3)
  {
    v4 = nph_general_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __deviceUnlockedSinceBoot_block_invoke_cold_1(v4);
    }

    dispatch_semaphore_signal(deviceUnlockedSinceBoot_semaphore);
  }

  else if (MKBGetDeviceLockState() == 3 || MKBDeviceUnlockedSinceBoot() == 1)
  {
    v5 = nph_general_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "dispatch_semaphore_t deviceUnlockedSinceBoot(void)_block_invoke";
      _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_INFO, "%s: already first unlocked", buf, 0xCu);
    }

    dispatch_semaphore_signal(deviceUnlockedSinceBoot_semaphore);
    notify_cancel(*(v10 + 6));
  }

  else
  {
    v6 = nph_general_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "dispatch_semaphore_t deviceUnlockedSinceBoot(void)_block_invoke";
      _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s: waiting for first unlock", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v9, 8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_26D2750D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __deviceUnlockedSinceBoot_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = nph_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "dispatch_semaphore_t deviceUnlockedSinceBoot(void)_block_invoke_2";
    _os_log_impl(&dword_26D269000, v2, OS_LOG_TYPE_INFO, "%s: first unlocked", &v5, 0xCu);
  }

  dispatch_semaphore_signal(deviceUnlockedSinceBoot_semaphore);
  result = notify_cancel(*(*(*(a1 + 32) + 8) + 24));
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t define_nph_log(char *category)
{
  v1 = os_log_create("com.apple.NanoPhone", category);

  return v1;
}

id nph_general_log()
{
  if (nph_general_log_onceToken != -1)
  {
    nph_general_log_cold_1();
  }

  v1 = nph_general_log_logger;

  return v1;
}

uint64_t __nph_general_log_block_invoke()
{
  nph_general_log_logger = os_log_create("com.apple.NanoPhone", "general");

  return MEMORY[0x2821F96F8]();
}

id nph_sos_general_log()
{
  if (nph_sos_general_log_onceToken != -1)
  {
    nph_sos_general_log_cold_1();
  }

  v1 = nph_sos_general_log_logger;

  return v1;
}

uint64_t __nph_sos_general_log_block_invoke()
{
  nph_sos_general_log_logger = os_log_create("com.apple.NanoPhone", "sos_general");

  return MEMORY[0x2821F96F8]();
}

id nph_sos_newton_log()
{
  if (nph_sos_newton_log_onceToken != -1)
  {
    nph_sos_newton_log_cold_1();
  }

  v1 = nph_sos_newton_log_logger;

  return v1;
}

uint64_t __nph_sos_newton_log_block_invoke()
{
  nph_sos_newton_log_logger = os_log_create("com.apple.NanoPhone", "sos_newton");

  return MEMORY[0x2821F96F8]();
}

uint64_t NanoPhoneVoicemailTranscriptReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_26D2760F4()
{
  v0 = sub_26D287338();
  __swift_allocate_value_buffer(v0, qword_2804F6DE0);
  v1 = __swift_project_value_buffer(v0, qword_2804F6DE0);
  if (qword_2804F6E20 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2804F7990);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_26D2761CC@<X0>(void *a1@<X8>)
{
  result = [*v1 identifier];
  *a1 = result;
  return result;
}

id sub_26D276200(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EA8, &qword_26D28AF70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v45 - v4;
  v45 = sub_26D2870A8();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D2870E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    goto LABEL_23;
  }

  v15 = result;
  _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
  v16 = sub_26D276948();
  v18 = v17;
  v19 = *(v10 + 8);
  v19(v13, v9);
  [v15 setVoicemailNumber_];
  _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
  v20 = sub_26D276C50();
  v19(v13, v9);
  [v15 setIdentifier_];
  [v15 setRemoteUID_];
  sub_26D287168();
  sub_26D2870B8();
  v19(v13, v9);
  v21 = sub_26D2873F8();

  [v15 setConversationIDString_];

  sub_26D2871B8();
  sub_26D2870B8();
  v19(v13, v9);
  v22 = sub_26D2873F8();

  [v15 setCallUUIDString_];

  sub_26D287198();
  if (v23)
  {
    v24 = sub_26D2873F8();
  }

  else
  {
    v24 = 0;
  }

  v25 = v46;
  [v15 setSimID_];

  sub_26D287148();
  sub_26D287098();
  v27 = v26;
  (*(v5 + 8))(v8, v45);
  [v15 setDate_];
  sub_26D287188();
  v28 = sub_26D2873F8();

  [v15 setSender_];

  sub_26D287188();
  v29 = sub_26D2873F8();

  [v15 setCallbackNumber_];

  sub_26D2871E8();
  if (v30)
  {
    v31 = sub_26D2873F8();
  }

  else
  {
    v31 = 0;
  }

  [v15 setReceiverDestinationID_];

  result = sub_26D2871C8();
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v32 <= -2147483650.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v32 >= 2147483650.0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v15 setDuration_];
  sub_26D27E55C(v25);
  v33 = sub_26D287048();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v25, 1, v33) == 1)
  {
    sub_26D27CBA8(v25, &qword_2804F6EA8, &qword_26D28AF70);
    v35 = 0;
  }

  else
  {
    sub_26D287018();
    (*(v34 + 8))(v25, v33);
    v35 = sub_26D2873F8();
  }

  [v15 setDataPath_];

  sub_26D2871D8();
  v36 = sub_26D2873F8();

  [v15 setProviderID_];

  [v15 setFlags_];
  v37 = [objc_allocWithZone(NanoPhoneVoicemailBody) init];
  [v15 setVoicemailBody_];

  result = [v15 voicemailBody];
  if (!result)
  {
    goto LABEL_24;
  }

  v38 = result;
  v39 = [v15 voicemailNumber];

  [v38 setVoicemailNumber_];
  sub_26D27E788();
  if (!v40)
  {
LABEL_19:

    return v15;
  }

  v41 = [objc_allocWithZone(NanoPhoneVoicemailTranscript) init];
  [v15 setVoicemailTranscript_];

  result = [v15 voicemailTranscript];
  if (!result)
  {
    goto LABEL_25;
  }

  v42 = result;
  [result setVoicemailNumber_];

  result = [v15 voicemailTranscript];
  if (result)
  {
    v43 = result;
    v44 = sub_26D2873F8();

    [v43 setTranscriptionString_];

    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26D276948()
{
  v0 = sub_26D2870D8();
  v1 = v0;
  v3 = v2;
  v4 = v0 >> 8;
  v5 = v0 >> 16;
  v6 = v0 >> 24;
  v7 = HIDWORD(v0);
  v8 = v0 >> 40;
  v9 = HIWORD(v0);
  v39 = HIBYTE(v0);
  v40 = v2 >> 8;
  v41 = v2 >> 16;
  v42 = v2 >> 24;
  v43 = HIDWORD(v2);
  v44 = v2 >> 40;
  v45 = HIWORD(v2);
  v46 = HIBYTE(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EB0, &qword_26D28AF78);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26D28AD70;
  *(v10 + 32) = v1;
  *(v10 + 33) = v4;
  *(v10 + 34) = v5;
  *(v10 + 35) = v6;
  *(v10 + 36) = v7;
  *(v10 + 37) = v8;
  *(v10 + 38) = v9;
  *(v10 + 39) = v39;
  v11 = sub_26D27B938(v10);
  v13 = v12;

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26D28AD70;
  *(v14 + 32) = v3;
  *(v14 + 33) = v40;
  *(v14 + 34) = v41;
  *(v14 + 35) = v42;
  *(v14 + 36) = v43;
  *(v14 + 37) = v44;
  *(v14 + 38) = v45;
  *(v14 + 39) = v46;
  v15 = sub_26D27B938(v14);
  v17 = v16;

  v18 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    v19 = v11;
    if (!v18)
    {
      goto LABEL_14;
    }

    if (v11 > v11 >> 32)
    {
      __break(1u);
      goto LABEL_28;
    }

    v20 = sub_26D286F68();
    if (!v20)
    {
LABEL_37:
      sub_26D286F78();
      __break(1u);
      goto LABEL_38;
    }

    v21 = v20;
    v22 = sub_26D286F88();
    if (__OFSUB__(v11, v22))
    {
      goto LABEL_31;
    }

    v23 = (v11 - v22 + v21);
    sub_26D286F78();
    if (v23)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v18 == 2)
  {
    v24 = *(v11 + 16);
    v25 = sub_26D286F68();
    if (!v25)
    {
LABEL_33:
      sub_26D286F78();
      goto LABEL_34;
    }

    v26 = v25;
    v27 = sub_26D286F88();
    if (!__OFSUB__(v24, v27))
    {
      v23 = (v24 - v27 + v26);
      sub_26D286F78();
      if (!v23)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_12:
      v19 = *v23;
      goto LABEL_14;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = 0;
LABEL_14:
  v28 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    goto LABEL_21;
  }

  if (!v28)
  {
    goto LABEL_26;
  }

  if (v15 > v15 >> 32)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = sub_26D286F68();
  if (v29)
  {
    v30 = v29;
    v31 = sub_26D286F88();
    if (__OFSUB__(v15, v31))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v32 = (v15 - v31 + v30);
    sub_26D286F78();
    if (v32)
    {
LABEL_25:
      v37 = *v32;
      goto LABEL_26;
    }

    __break(1u);
LABEL_21:
    if (v28 == 2)
    {
      v33 = *(v15 + 16);
      v34 = sub_26D286F68();
      if (!v34)
      {
LABEL_35:
        sub_26D286F78();
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v35 = v34;
      v36 = sub_26D286F88();
      if (!__OFSUB__(v33, v36))
      {
        v32 = (v33 - v36 + v35);
        sub_26D286F78();
        if (v32)
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      }

      goto LABEL_30;
    }

LABEL_26:
    sub_26D27C7D8(v15, v17);
    sub_26D27C7D8(v11, v13);
    return v19;
  }

LABEL_38:
  result = sub_26D286F78();
  __break(1u);
  return result;
}

uint64_t sub_26D276C50()
{
  v0 = sub_26D2870D8();
  v1 = v0;
  v2 = v0 >> 8;
  v3 = v0 >> 16;
  v4 = v0 >> 24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EB0, &qword_26D28AF78);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26D28AD70;
  *(v5 + 32) = v1;
  *(v5 + 33) = v2;
  *(v5 + 34) = v3;
  *(v5 + 35) = v4;
  *(v5 + 36) = 0;
  v6 = sub_26D27B938(v5);
  v8 = v7;

  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
LABEL_8:
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_14;
    }

    v15 = *(v6 + 16);
    v16 = sub_26D286F68();
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = v16;
    v18 = sub_26D286F88();
    if (!__OFSUB__(v15, v18))
    {
      v14 = (v15 - v18 + v17);
      sub_26D286F78();
      if (v14)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v10 = v6;
  if (!v9)
  {
LABEL_14:
    sub_26D27C7D8(v6, v8);
    return v10;
  }

  if (v6 > v6 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = sub_26D286F68();
  if (v11)
  {
    v12 = v11;
    v13 = sub_26D286F88();
    if (__OFSUB__(v6, v13))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      sub_26D286F78();
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v14 = (v6 - v13 + v12);
    sub_26D286F78();
    if (v14)
    {
LABEL_12:
      v10 = *v14;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_20:
  result = sub_26D286F78();
  __break(1u);
  return result;
}

uint64_t sub_26D276DB8()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v86 = &v75 - v3;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EA8, &qword_26D28AF70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v80 = (&v75 - v5);
  v6 = sub_26D286FC8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  (MEMORY[0x28223BE20])();
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D287048();
  v88 = *(v11 - 8);
  v89 = v11;
  v12 = *(v88 + 64);
  v13 = (MEMORY[0x28223BE20])();
  v85 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v75 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v75 - v19;
  v81 = v21;
  MEMORY[0x28223BE20](v18);
  v23 = &v75 - v22;
  v84 = objc_opt_self();
  v24 = [v84 defaultManager];
  v25 = [v24 temporaryDirectory];

  sub_26D287008();
  v90 = [v1 voicemailNumber];
  v90 = sub_26D287718();
  v91 = v26;
  v27 = v7[13];
  v76 = *MEMORY[0x277CC91D8];
  v77 = v7 + 13;
  v75 = v27;
  v27(v10);
  sub_26D27C8B8();
  sub_26D287038();
  v28 = v7[1];
  v78 = v10;
  v79 = v6;
  v28(v10, v6);
  v29 = v89;

  v30 = v88;
  v31 = *(v88 + 8);
  v82 = v17;
  v31(v17, v29);
  sub_26D286FF8();
  v32 = v20;
  v31(v20, v29);
  v33 = [v1 voicemailBody];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 voicemailRecording];
    if (v35)
    {
      v87 = v31;
      v36 = v29;
      v37 = v35;
      v38 = sub_26D287078();
      v40 = v39;

      sub_26D287088();
      sub_26D27C7D8(v38, v40);

      v29 = v36;
LABEL_10:
      v31 = v87;
      goto LABEL_11;
    }
  }

  v41 = [v1 dataPath];
  if (!v41)
  {
LABEL_11:
    v49 = sub_26D287018();
    v50 = v23;
    v43 = v49;
    v31(v50, v29);
    return v43;
  }

  v87 = v31;
  v83 = v23;
  v42 = v41;
  v43 = sub_26D287428();

  sub_26D287478();
  v44 = sub_26D2874C8();

  if ((v44 & 1) == 0)
  {
    v45 = [v84 defaultManager];
    v46 = v83;
    sub_26D287018();
    v47 = sub_26D2873F8();

    v48 = [v45 fileExistsAtPath_];

    if ((v48 & 1) == 0)
    {
      v52 = v30;
      (*(v30 + 56))(v80, 1, 1, v29);
      v75(v78, v76, v79);
      v53 = v85;
      sub_26D287028();
      v80 = dispatch_semaphore_create(0);
      v54 = swift_allocObject();
      v55 = v29;
      v79 = v54;
      *(v54 + 16) = 0;
      v84 = (v54 + 16);
      v56 = v86;
      sub_26D287558();
      v57 = sub_26D287578();
      (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
      v58 = *(v52 + 16);
      v59 = v32;
      v58(v32, v53, v55);
      v60 = v82;
      v58(v82, v46, v55);
      v61 = *(v52 + 80);
      v62 = (v61 + 32) & ~v61;
      v63 = (v81 + v61 + v62) & ~v61;
      v64 = (v81 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      *(v65 + 16) = 0;
      *(v65 + 24) = 0;
      v66 = *(v52 + 32);
      v67 = v65 + v62;
      v68 = v59;
      v69 = v79;
      v70 = v89;
      v66(v67, v68, v89);
      v66(v65 + v63, v60, v70);
      *(v65 + v64) = v69;
      v71 = v80;
      *(v65 + ((v64 + 15) & 0xFFFFFFFFFFFFFFF8)) = v80;

      v72 = v71;
      v73 = v86;
      sub_26D279724(0, 0, v86, &unk_26D28AF90, v65);

      sub_26D27CBA8(v73, &qword_2804F6E68, &qword_26D28AEE8);
      sub_26D287608();

      v31 = v87;
      v87(v85, v70);
      v74 = v84;
      swift_beginAccess();
      if (*v74)
      {
        v31(v83, v70);

        return 0;
      }

      v29 = v70;
      v23 = v83;
      goto LABEL_11;
    }

    v23 = v46;
    goto LABEL_10;
  }

  v87(v83, v29);
  return v43;
}

uint64_t sub_26D277778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = sub_26D287048();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26D27783C, 0, 0);
}

uint64_t sub_26D27783C()
{
  sub_26D277ED0(*(v0 + 40), *(v0 + 88));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_26D277AF8;
  v2 = *(v0 + 88);
  v3 = *(v0 + 48);

  return sub_26D2787A8(v2, v3, 0, 0);
}

uint64_t sub_26D277AF8()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_26D277C90;
  }

  else
  {
    v3 = sub_26D277C0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26D277C0C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[11];
  v2 = v0[8];
  sub_26D287618();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26D277C90()
{
  v18 = v0;
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[13];
  if (qword_2804F6DD8 != -1)
  {
    swift_once();
  }

  v2 = sub_26D287338();
  __swift_project_value_buffer(v2, qword_2804F6DE0);
  v3 = v1;
  v4 = sub_26D287318();
  v5 = sub_26D287598();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_26D285EE0(0x5061746144726D61, 0xED00002928687461, &v17);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_26D269000, v4, v5, "%s: conversion error: %@", v6, 0x16u);
    sub_26D27CBA8(v7, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6B92B0](v8, -1, -1);
    MEMORY[0x26D6B92B0](v6, -1, -1);
  }

  v11 = v0[7];
  swift_beginAccess();
  v12 = *(v11 + 16);
  *(v11 + 16) = v1;

  v13 = v0[11];
  v14 = v0[8];
  sub_26D287618();

  v15 = v0[1];

  return v15();
}

id sub_26D277ED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v93[2] = *MEMORY[0x277D85DE8];
  v3 = sub_26D286FC8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_26D287048();
  v92 = *(v89 - 8);
  v8 = *(v92 + 64);
  v9 = MEMORY[0x28223BE20](v89);
  v86 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v85 = v82 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v87 = v82 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v82 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v82 - v18;
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  v22 = [v21 temporaryDirectory];

  sub_26D287008();
  v91 = a1;
  v93[0] = sub_26D286FD8();
  v93[1] = v23;
  (*(v4 + 104))(v7, *MEMORY[0x277CC91D8], v3);
  sub_26D27C8B8();
  sub_26D287038();
  (*(v4 + 8))(v7, v3);
  v24 = v89;

  v25 = (v92 + 8);
  v26 = v17;
  v27 = v19;
  v28 = v20;
  v29 = &__block_descriptor_32_e41_v24__0____CFString__8____CFDictionary__16l;
  v90 = *(v92 + 8);
  v90(v26, v24);
  v30 = [v28 defaultManager];
  sub_26D287018();
  v31 = sub_26D2873F8();

  LODWORD(v21) = [v30 fileExistsAtPath_];

  if (!v21)
  {
    goto LABEL_10;
  }

  if (qword_2804F6DD8 != -1)
  {
    swift_once();
  }

  v32 = sub_26D287338();
  v33 = __swift_project_value_buffer(v32, qword_2804F6DE0);
  v34 = v87;
  v82[0] = *(v92 + 16);
  v82[1] = v92 + 16;
  (v82[0])(v87, v27, v24);
  v83 = v33;
  v35 = sub_26D287318();
  v36 = sub_26D2875B8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v84 = v27;
    v38 = v37;
    v39 = v25;
    v40 = v24;
    v41 = swift_slowAlloc();
    v93[0] = v41;
    *v38 = 136315138;
    sub_26D27C3E4(&qword_2804F6EF0, MEMORY[0x277CC9260]);
    v42 = sub_26D287718();
    v43 = v34;
    v45 = v44;
    v90(v43, v40);
    v46 = sub_26D285EE0(v42, v45, v93);

    *(v38 + 4) = v46;
    _os_log_impl(&dword_26D269000, v35, v36, "A file already exists at outputURL %s! Checking if it's equal", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    v47 = v41;
    v24 = v40;
    v25 = v39;
    v29 = &__block_descriptor_32_e41_v24__0____CFString__8____CFDictionary__16l;
    MEMORY[0x26D6B92B0](v47, -1, -1);
    v48 = v38;
    v27 = v84;
    MEMORY[0x26D6B92B0](v48, -1, -1);
  }

  else
  {

    v90(v34, v24);
  }

  v49 = [v28 v29[148]];
  sub_26D287018();
  v50 = v28;
  v51 = sub_26D2873F8();

  sub_26D287018();
  v52 = sub_26D2873F8();

  v53 = [v49 contentsEqualAtPath:v51 andPath:v52];

  v28 = v50;
  if (v53)
  {
    v87 = v25;
    v54 = v85;
    v55 = v82[0];
    (v82[0])(v85, v91, v24);
    v56 = v86;
    v55(v86, v27, v24);
    v57 = sub_26D287318();
    v58 = sub_26D2875B8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v84 = v27;
      v91 = v60;
      v93[0] = v60;
      *v59 = 136315394;
      sub_26D27C3E4(&qword_2804F6EF0, MEMORY[0x277CC9260]);
      LODWORD(v83) = v58;
      v61 = sub_26D287718();
      v62 = v24;
      v64 = v63;
      v65 = v90;
      v90(v54, v62);
      v66 = sub_26D285EE0(v61, v64, v93);
      v24 = v62;

      *(v59 + 4) = v66;
      *(v59 + 12) = 2080;
      v67 = v86;
      v68 = sub_26D287718();
      v70 = v69;
      v65(v67, v24);
      v71 = sub_26D285EE0(v68, v70, v93);

      *(v59 + 14) = v71;
      _os_log_impl(&dword_26D269000, v57, v83, "%s and %s have the same contents!", v59, 0x16u);
      v72 = v91;
      swift_arrayDestroy();
      v27 = v84;
      MEMORY[0x26D6B92B0](v72, -1, -1);
      MEMORY[0x26D6B92B0](v59, -1, -1);
    }

    else
    {

      v80 = v90;
      v90(v56, v24);
      v80(v54, v24);
    }

    result = (*(v92 + 32))(v88, v27, v24);
  }

  else
  {
LABEL_10:
    v73 = [v28 v29[148]];
    v74 = sub_26D286FE8();
    v75 = sub_26D286FE8();
    v93[0] = 0;
    v76 = [v73 copyItemAtURL:v74 toURL:v75 error:v93];

    v77 = v93[0];
    if (v76)
    {
      (*(v92 + 32))(v88, v27, v24);
      result = v77;
    }

    else
    {
      v79 = v93[0];
      sub_26D286FA8();

      swift_willThrow();
      result = (v90)(v27, v24);
    }
  }

  v81 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26D2787A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v6 = sub_26D287048();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  if (a3)
  {
    swift_getObjectType();
    v9 = sub_26D287528();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v4[12] = v9;
  v4[13] = v11;

  return MEMORY[0x2822009F8](sub_26D2788B0, v9, v11);
}

uint64_t sub_26D2788B0()
{
  v57 = v0;
  if (qword_2804F6DD8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[4];
  v5 = sub_26D287338();
  v0[14] = __swift_project_value_buffer(v5, qword_2804F6DE0);
  v6 = *(v3 + 16);
  v0[15] = v6;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_26D287318();
  v8 = sub_26D2875B8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  if (v9)
  {
    v53 = v8;
    v13 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = v54;
    *v13 = 136315394;
    *(v13 + 4) = sub_26D285EE0(0xD00000000000001BLL, 0x800000026D28A8A0, &v55);
    *(v13 + 12) = 2080;
    sub_26D27C3E4(&qword_2804F6EF0, MEMORY[0x277CC9260]);
    v14 = sub_26D287718();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_26D285EE0(v14, v16, &v55);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_26D269000, v7, v53, "%s: MOV to AMR conversion started for %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v54, -1, -1);
    MEMORY[0x26D6B92B0](v13, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[17] = v17;
  v19 = v0[4];
  v20 = sub_26D286FE8();
  v21 = [objc_opt_self() assetWithURL_];
  v0[18] = v21;

  v22 = [objc_allocWithZone(MEMORY[0x277CE6400]) initWithAsset:v21 presetName:*MEMORY[0x277CE5C48]];
  v0[19] = v22;
  if (v22)
  {
    v23 = v22;
    v24 = v0 + 2;
    v25 = [v22 supportedFileTypes];
    type metadata accessor for AVFileType(0);
    v27 = v26;
    v28 = sub_26D2874F8();

    v29 = sub_26D287318();
    v30 = sub_26D2875B8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v55 = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_26D285EE0(0xD00000000000001BLL, 0x800000026D28A8A0, &v55);
      *(v31 + 12) = 2080;
      v33 = MEMORY[0x26D6B87D0](v28, v27);
      v35 = sub_26D285EE0(v33, v34, &v55);

      *(v31 + 14) = v35;
      _os_log_impl(&dword_26D269000, v29, v30, "%s: Supported file types: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6B92B0](v32, -1, -1);
      v36 = v31;
      v24 = v0 + 2;
      MEMORY[0x26D6B92B0](v36, -1, -1);
    }

    v37 = *MEMORY[0x277CE5D60];
    v0[20] = *MEMORY[0x277CE5D60];
    v0[2] = v37;
    v38 = swift_task_alloc();
    *(v38 + 16) = v24;
    v39 = sub_26D27B5CC(sub_26D27CF20, v38, v28);

    if (v39)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EE0, &qword_26D28AFB8);
      v40 = sub_26D2870F8();
      v0[21] = v40;
      v41 = *(MEMORY[0x277D82DC0] + 4);
      v42 = swift_task_alloc();
      v0[22] = v42;
      *v42 = v0;
      v42[1] = sub_26D278F20;
      v43 = v0[6];
      v44 = v0[7];

      return MEMORY[0x2821FAF00](v0 + 3, v40, v43, v44);
    }

    sub_26D27CE6C();
    swift_allocError();
    *v48 = 0xD00000000000002CLL;
    v48[1] = 0x800000026D28A900;
    swift_willThrow();
  }

  else
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_26D287668();
    MEMORY[0x26D6B8770](0xD00000000000001BLL, 0x800000026D28A8A0);
    MEMORY[0x26D6B8770](0xD00000000000003DLL, 0x800000026D28A8C0);
    v45 = v55;
    v46 = v56;
    sub_26D27CE6C();
    swift_allocError();
    *v47 = v45;
    v47[1] = v46;
    swift_willThrow();
  }

  v50 = v0[10];
  v49 = v0[11];

  v51 = v0[1];

  return v51();
}

uint64_t sub_26D278F20()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = v2[21];

  v6 = v2[13];
  v7 = v2[12];
  if (v0)
  {
    v8 = sub_26D279634;
  }

  else
  {
    v8 = sub_26D279074;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_26D279074()
{
  v22 = v0;
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[3];
  sub_26D27CF40(0, &qword_2804F6EE8, 0x277CE6520);
  v4 = sub_26D2874E8();

  [v1 setMetadata_];

  v5 = v1;
  v6 = sub_26D287318();
  v7 = sub_26D2875B8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_26D285EE0(0xD00000000000001BLL, 0x800000026D28A8A0, &v21);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    v12 = v8;
    _os_log_impl(&dword_26D269000, v6, v7, "%s: Set exportSession properties %@", v9, 0x16u);
    sub_26D27CBA8(v10, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D6B92B0](v11, -1, -1);
    MEMORY[0x26D6B92B0](v9, -1, -1);
  }

  v13 = *(MEMORY[0x277D82DB8] + 4);
  v14 = swift_task_alloc();
  v0[24] = v14;
  *v14 = v0;
  v14[1] = sub_26D2792A0;
  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[6];
  v18 = v0[7];
  v19 = v0[5];

  return MEMORY[0x2821FAED0](v19, v15, v17, v18);
}

uint64_t sub_26D2792A0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_26D2796AC;
  }

  else
  {
    v7 = sub_26D2793DC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26D2793DC()
{
  v25 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  (*(v0 + 120))(*(v0 + 80), *(v0 + 40), *(v0 + 64));
  v3 = sub_26D287318();
  v4 = sub_26D2875B8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);
  if (v5)
  {
    v22 = *(v0 + 144);
    v23 = *(v0 + 152);
    v11 = swift_slowAlloc();
    v21 = v7;
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_26D285EE0(0xD00000000000001BLL, 0x800000026D28A8A0, &v24);
    *(v11 + 12) = 2080;
    sub_26D27C3E4(&qword_2804F6EF0, MEMORY[0x277CC9260]);
    v13 = sub_26D287718();
    v15 = v14;
    v21(v8, v10);
    v16 = sub_26D285EE0(v13, v15, &v24);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_26D269000, v3, v4, "%s: MOV to AMR conversion finished for %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v12, -1, -1);
    MEMORY[0x26D6B92B0](v11, -1, -1);
  }

  else
  {

    v7(v8, v10);
  }

  v18 = *(v0 + 80);
  v17 = *(v0 + 88);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26D279634()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 184);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26D2796AC()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 200);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26D279724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_26D27CC54(a3, v26 - v10);
  v12 = sub_26D287578();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26D27CBA8(v11, &qword_2804F6E68, &qword_26D28AEE8);
  }

  else
  {
    sub_26D287568();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26D287528();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26D287488() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26D279A4C(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v25 = a1;
  v3 = sub_26D27B704(&v25, &v26);
  v25 = a2;
  v4 = sub_26D27B704(&v25, &v26);
  v5 = v3[2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v5 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v5 == 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5 < 5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5 == 5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5 < 7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 == 7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = v4;
  v7 = *(v3 + 32);
  v8 = *(v3 + 33);
  v9 = *(v3 + 34);
  v10 = *(v3 + 35);
  v11 = *(v3 + 36);
  v12 = *(v3 + 37);
  v13 = *(v3 + 38);
  v24 = *(v3 + 39);

  v14 = v6[2];
  if (!v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v14 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < 3)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v14 == 3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 < 5)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v14 == 5)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v14 < 7)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  if (v14 == 7)
  {
    goto LABEL_33;
  }

  v15 = *(v6 + 32);
  v16 = *(v6 + 33);
  v17 = *(v6 + 34);
  v18 = *(v6 + 35);
  v19 = *(v6 + 36);
  v20 = *(v6 + 37);
  v21 = *(v6 + 19);

  result = sub_26D2870C8();
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26D279C30()
{
  result = sub_26D2873F8();
  qword_2804F7958 = result;
  return result;
}

uint64_t sub_26D279C68()
{
  result = sub_26D2873F8();
  qword_2804F7960 = result;
  return result;
}

uint64_t sub_26D279CA0()
{
  if (qword_2804F6DF8 != -1)
  {
    swift_once();
  }

  result = sub_26D287428();
  qword_2804F7968 = result;
  unk_2804F7970 = v1;
  return result;
}

uint64_t sub_26D279D24()
{
  if (qword_2804F6E00 != -1)
  {
    swift_once();
  }

  result = sub_26D287428();
  qword_2804F7978 = result;
  unk_2804F7980 = v1;
  return result;
}

id sub_26D279DA8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v9 = a5;
    v10 = a4;
    swift_once();
    a4 = v10;
    a5 = v9;
  }

  v5 = *a4;
  v6 = *a5;
  v7 = sub_26D2873F8();

  return v7;
}

id sub_26D279E0C()
{
  result = [objc_allocWithZone(type metadata accessor for VoicemailManager_ObjC()) init];
  qword_2804F7988 = result;
  return result;
}

void sub_26D279FC0()
{
  v1 = sub_26D286F48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultCenter];
  if (qword_2804F6DF8 != -1)
  {
    swift_once();
  }

  v7 = qword_2804F7958;
  v11[3] = type metadata accessor for VoicemailManager_ObjC();
  v11[0] = v0;
  v8 = v7;
  v9 = v0;
  sub_26D286F38();
  v10 = sub_26D286F28();
  (*(v2 + 8))(v5, v1);
  [v6 postNotification_];
}

id sub_26D27A134()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E78, &qword_26D28AF28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E80, &unk_26D28AF30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  *&v0[OBJC_IVAR____TtC12TelephonyRPC21VoicemailManager_ObjC_allVoicemail] = 0;
  *&v0[OBJC_IVAR____TtC12TelephonyRPC21VoicemailManager_ObjC_cancellables] = MEMORY[0x277D84FA0];
  v11 = type metadata accessor for VoicemailManager_ObjC();
  v17.receiver = v0;
  v17.super_class = v11;
  v12 = objc_msgSendSuper2(&v17, sel_init);
  v13 = qword_2804F6E30;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E88, &qword_26D28B540);
  sub_26D287388();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E90, &qword_26D28AF40);
  sub_26D27C82C(&qword_2804F6E98, &qword_2804F6E78, &qword_26D28AF28);
  sub_26D2873C8();
  (*(v2 + 8))(v5, v1);
  swift_getKeyPath();
  v16[1] = v14;
  sub_26D27C82C(&qword_2804F6EA0, &qword_2804F6E80, &unk_26D28AF30);
  sub_26D2873E8();

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  sub_26D287348();
  swift_endAccess();

  return v14;
}

uint64_t *sub_26D27A47C@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (!*result)
  {
    v5 = 0;
LABEL_13:
    *a2 = v5;
    return result;
  }

  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v9 = *result;
    }

    result = sub_26D2876E8();
    v4 = result;
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_13;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_26D2876B8();
  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_26D27CF40(0, &qword_2804F6E48, off_279D95C58);
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D6B8940](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v6 = (v6 + 1);
      sub_26D276200(v7);
      sub_26D287698();
      v8 = *(v10 + 16);
      sub_26D2876C8();
      sub_26D2876D8();
      result = sub_26D2876A8();
    }

    while (v4 != v6);
    v5 = v10;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_26D27A5D0(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC12TelephonyRPC21VoicemailManager_ObjC_allVoicemail);
  *(*a2 + OBJC_IVAR____TtC12TelephonyRPC21VoicemailManager_ObjC_allVoicemail) = *a1;

  sub_26D279FC0();
}

uint64_t sub_26D27A638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8) - 8) + 64) + 15;
  v5[2] = swift_task_alloc();
  v5[3] = sub_26D287548();
  v5[4] = sub_26D287538();
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_26D27A71C;

  return sub_26D27BA14(a5);
}

uint64_t sub_26D27A71C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 48) = a1;

  v6 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D27A860, v6, v5);
}

uint64_t sub_26D27A860()
{
  v1 = v0[6];
  v2 = v0[4];

  if (v1)
  {
    v3 = v0[6];
    v4 = v0[2];
    v5 = v0[3];
    v6 = sub_26D287578();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = v3;
    v8 = sub_26D287538();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *(v9 + 32) = 1;
    *(v9 + 40) = v7;
    sub_26D27E180(0, 0, v4, &unk_26D28AF20, v9);
  }

  v11 = v0[2];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26D27A9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8) - 8) + 64) + 15;
  v5[2] = swift_task_alloc();
  v5[3] = sub_26D287548();
  v5[4] = sub_26D287538();
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_26D27AA98;

  return sub_26D27BA14(a5);
}

uint64_t sub_26D27AA98(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 48) = a1;

  v6 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D27ABDC, v6, v5);
}

uint64_t sub_26D27ABDC()
{
  v1 = v0[6];
  v2 = v0[4];

  if (v1)
  {
    v3 = v0[6];
    v4 = v0[2];
    v5 = v0[3];
    v6 = sub_26D287578();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = v3;
    v8 = sub_26D287538();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *(v9 + 32) = 1;
    *(v9 + 40) = v7;
    sub_26D27E180(0, 0, v4, &unk_26D28AF08, v9);
  }

  v11 = v0[2];

  v12 = v0[1];

  return v12();
}

void sub_26D27AD30(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_26D287578();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_26D287548();
  v13 = a3;
  v14 = a1;
  v15 = v13;
  v16 = sub_26D287538();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v14;
  v17[5] = v15;
  sub_26D27E180(0, 0, v11, a5, v17);
}

id sub_26D27AE7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailManager_ObjC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26D27AF28(uint64_t a1)
{
  result = sub_26D27AF50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26D27AF50()
{
  result = qword_2804F6E40;
  if (!qword_2804F6E40)
  {
    sub_26D27CF40(255, &qword_2804F6E48, off_279D95C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F6E40);
  }

  return result;
}

uint64_t sub_26D27B004(uint64_t a1, id *a2)
{
  result = sub_26D287408();
  *a2 = 0;
  return result;
}

uint64_t sub_26D27B07C(uint64_t a1, id *a2)
{
  v3 = sub_26D287418();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26D27B0FC@<X0>(uint64_t *a1@<X8>)
{
  sub_26D287428();
  v2 = sub_26D2873F8();

  *a1 = v2;
  return result;
}

uint64_t sub_26D27B140(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26D287428();
  v6 = v5;
  if (v4 == sub_26D287428() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D287728();
  }

  return v9 & 1;
}

uint64_t sub_26D27B1DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26D2873F8();

  *a2 = v5;
  return result;
}

uint64_t sub_26D27B224@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26D287428();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26D27B2B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26D27D10C;

  return sub_26D27A9B4(a1, v4, v5, v7, v6);
}

uint64_t sub_26D27B378(uint64_t a1)
{
  v2 = sub_26D27C3E4(&qword_2804F6F18, type metadata accessor for AVFileType);
  v3 = sub_26D27C3E4(&qword_2804F6F20, type metadata accessor for AVFileType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26D27B434()
{
  v1 = *v0;
  v2 = sub_26D287428();
  v3 = MEMORY[0x26D6B87A0](v2);

  return v3;
}

uint64_t sub_26D27B470()
{
  v1 = *v0;
  sub_26D287428();
  sub_26D287498();
}

uint64_t sub_26D27B4C4()
{
  v1 = *v0;
  sub_26D287428();
  sub_26D287778();
  sub_26D287498();
  v2 = sub_26D287788();

  return v2;
}

_BYTE *sub_26D27B538@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_26D27B780(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26D27B838(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26D27B8B4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_26D27B5CC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_26D27B674(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26D287428();
  v6 = v5;
  if (v4 == sub_26D287428() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D287728();
  }

  return v9 & 1;
}

void *sub_26D27B704(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_26D286320(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D27B780(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26D27B838(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26D286F98();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26D286F58();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26D287068();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_26D27B8B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26D286F98();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26D286F58();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26D27B938(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EB8, &qword_26D28AF80);
  v10 = sub_26D27C82C(&qword_2804F6EC0, &qword_2804F6EB8, &qword_26D28AF80);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_26D27B538(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v5;
}

uint64_t sub_26D27BA14(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_26D2870E8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_26D287548();
  v1[7] = sub_26D287538();
  v6 = sub_26D287528();
  v1[8] = v6;
  v1[9] = v5;

  return MEMORY[0x2822009F8](sub_26D27BB14, v6, v5);
}

uint64_t sub_26D27BB14()
{
  v1 = *(v0 + 48);
  sub_26D279A4C([*(v0 + 16) voicemailNumber], objc_msgSend(*(v0 + 16), sel_remoteUID));
  if (qword_2804F6E30 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = qword_2804F79A8;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_26D27BC28;
  v3 = *(v0 + 48);

  return sub_26D27F01C(v3);
}

uint64_t sub_26D27BC28(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = a1;

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_26D27BD50, v5, v4);
}

uint64_t sub_26D27BD50()
{
  v38 = v0;
  if (*(v0 + 96))
  {
    v1 = *(v0 + 56);
    (*(*(v0 + 32) + 8))(*(v0 + 48), *(v0 + 24));

    v2 = *(v0 + 96);
LABEL_13:
    v33 = *(v0 + 40);
    v32 = *(v0 + 48);

    v34 = *(v0 + 8);

    return v34(v2);
  }

  v3 = [*(v0 + 16) identifier];
  if (HIDWORD(v3))
  {
    v4 = *(v0 + 56);

    if (qword_2804F6DD8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    v9 = *(v0 + 16);
    v10 = sub_26D287338();
    __swift_project_value_buffer(v10, qword_2804F6DE0);
    (*(v8 + 16))(v5, v6, v7);
    v11 = v9;
    v12 = sub_26D287318();
    v13 = sub_26D287598();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    v17 = *(v0 + 24);
    v18 = *(v0 + 32);
    v19 = *(v0 + 16);
    if (v14)
    {
      v20 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v20 = 136315650;
      *(v20 + 4) = sub_26D285EE0(0x286567617373656DLL, 0xED0000293A726F66, &v37);
      *(v20 + 12) = 2080;
      sub_26D27C3E4(&qword_2804F6E70, MEMORY[0x277CC95F0]);
      v21 = sub_26D287718();
      v35 = v16;
      v23 = v22;
      v24 = *(v18 + 8);
      v24(v15, v17);
      v25 = sub_26D285EE0(v21, v23, &v37);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2048;
      v26 = [v19 identifier];

      *(v20 + 24) = v26;
      _os_log_impl(&dword_26D269000, v12, v13, "%s: no Message with recordUUID: %s or voicemailID: %lld", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D6B92B0](v36, -1, -1);
      MEMORY[0x26D6B92B0](v20, -1, -1);

      v24(v35, v17);
    }

    else
    {

      v31 = *(v18 + 8);
      v31(v15, v17);
      v31(v16, v17);
    }

    v2 = 0;
    goto LABEL_13;
  }

  v27 = v3;
  v28 = swift_task_alloc();
  *(v0 + 104) = v28;
  *v28 = v0;
  v28[1] = sub_26D27C120;
  v29 = *(v0 + 80);

  return sub_26D27D8AC(v27);
}

uint64_t sub_26D27C120(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = a1;

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_26D27C248, v5, v4);
}

uint64_t sub_26D27C248()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  v4 = v0[4];

  (*(v4 + 8))(v2, v3);
  v5 = v0[14];
  v7 = v0[5];
  v6 = v0[6];

  v8 = v0[1];

  return v8(v5);
}

uint64_t sub_26D27C2E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26D27D10C;

  return sub_26D2814F0(a1, v4, v5, v6, v7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26D27C3E4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D27C4D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26D27C598;

  return sub_26D27A638(a1, v4, v5, v7, v6);
}

uint64_t sub_26D27C598()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_29Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D27C6CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26D27D10C;

  return sub_26D27FABC(a1, v4, v5, v6, v7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26D27C7D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26D27C82C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26D27C8B8()
{
  result = qword_2804F6EC8;
  if (!qword_2804F6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F6EC8);
  }

  return result;
}

uint64_t sub_26D27C90C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D27C944()
{
  v1 = sub_26D287048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v6, v1);
  v11 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v3 | 7);
}

uint64_t sub_26D27CA5C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26D287048() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v10);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_26D27D10C;

  return sub_26D277778(a1, v11, v12, v1 + v7, v1 + v9, v13, v14);
}

uint64_t sub_26D27CBA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26D27CC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D27CCC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D27CCFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26D27D10C;

  return sub_26D285C3C(a1, v5);
}

uint64_t sub_26D27CDB4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26D27C598;

  return sub_26D285C3C(a1, v5);
}

unint64_t sub_26D27CE6C()
{
  result = qword_2804F6ED8;
  if (!qword_2804F6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F6ED8);
  }

  return result;
}

void sub_26D27CED4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26D27CF40(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D27CF94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D27CFDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26D27D110()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26D27D174()
{
  v0 = sub_26D287338();
  __swift_allocate_value_buffer(v0, qword_2804F7990);
  __swift_project_value_buffer(v0, qword_2804F7990);
  return sub_26D287328();
}

uint64_t sub_26D27D208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6F28, &qword_26D28B210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D27D278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6F28, &qword_26D28B210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26D27D2E0()
{
  result = qword_2804F6F30;
  if (!qword_2804F6F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804F6F30);
  }

  return result;
}

unint64_t sub_26D27D32C()
{
  result = qword_2804F6F48;
  if (!qword_2804F6F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F6F40, &qword_26D28B220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F6F48);
  }

  return result;
}

uint64_t sub_26D27D390(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26D27D408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  a8();
  sub_26D27D208(a5, v23);
  sub_26D27D208(v23, &v20);
  v17[0] = v20;
  v17[1] = v21;
  v18 = v22;
  if (*(&v21 + 1))
  {
    sub_26D27D390(v17, v19);
    v10 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_26D27D74C(0, v10[2] + 1, 1, v10);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_26D27D74C((v11 > 1), v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    sub_26D27D390(v19, &v10[5 * v12 + 4]);
  }

  else
  {
    sub_26D27D278(v17);
    v10 = MEMORY[0x277D84F90];
  }

  sub_26D27D278(v23);
  sub_26D27D2E0();
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_26D287718();
  v14 = sub_26D287638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6F38, &qword_26D28B218);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26D28B200;
  *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6F40, &qword_26D28B220);
  *(v15 + 64) = sub_26D27D32C();
  *(v15 + 32) = v10;
  sub_26D287308();
}

uint64_t os_log_type_t.description.getter(unsigned __int8 a1)
{
  if (sub_26D287598() == a1)
  {
    return 0x524F525245;
  }

  if (sub_26D2875A8() == a1)
  {
    return 0x544C554146;
  }

  if (sub_26D287588() == a1)
  {
    return 1330007625;
  }

  return 0x4755424544;
}

uint64_t sub_26D27D6BC()
{
  v1 = *v0;
  if (v1 == sub_26D287598())
  {
    return 0x524F525245;
  }

  if (v1 == sub_26D2875A8())
  {
    return 0x544C554146;
  }

  if (sub_26D287588() == v1)
  {
    return 1330007625;
  }

  return 0x4755424544;
}

void *sub_26D27D74C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6F38, &qword_26D28B218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6F50, &unk_26D28B280);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26D27D8AC(int a1)
{
  *(v2 + 24) = v1;
  *(v2 + 104) = a1;
  v3 = sub_26D287108();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  sub_26D287548();
  *(v2 + 56) = sub_26D287538();
  v7 = sub_26D287528();
  *(v2 + 64) = v7;
  *(v2 + 72) = v6;

  return MEMORY[0x2822009F8](sub_26D27D9A4, v7, v6);
}

uint64_t sub_26D27D9A4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 104);
  v5 = *(*(v0 + 24) + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7050, &qword_26D28B5E8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26D28B200;
  *(v7 + 32) = v4;
  *(v6 + 16) = v7;
  *v1 = v6;
  v8 = *MEMORY[0x277D07E50];
  v9 = sub_26D2872B8();
  (*(*(v9 - 8) + 104))(v1, v8, v9);
  (*(v2 + 104))(v1, *MEMORY[0x277D07E10], v3);
  v10 = *(MEMORY[0x277D07E38] + 4);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_26D27DB28;
  v12 = *(v0 + 48);

  return MEMORY[0x28215DDC0](v12, 0x7FFFFFFFFFFFFFFFLL, 0);
}

uint64_t sub_26D27DB28(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  (*(v7 + 8))(v6, v8);
  v10 = *(v3 + 72);
  v11 = *(v3 + 64);
  if (v1)
  {
    v12 = sub_26D27DF58;
  }

  else
  {
    v12 = sub_26D27DCC8;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_26D27DCC8()
{
  v22 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  if (v1 >> 62)
  {
    if (*(v0 + 88) < 0)
    {
      v5 = *(v0 + 88);
    }

    result = sub_26D2876E8();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v6 = *(v0 + 88);

    v4 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D6B8940](0, *(v0 + 88));
    v20 = *(v0 + 88);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(*(v0 + 88) + 32);
  }

LABEL_11:
  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v7 = sub_26D287338();
  __swift_project_value_buffer(v7, qword_2804F6F58);
  v8 = v4;
  v9 = sub_26D287318();
  v10 = sub_26D2875B8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 104);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_26D285EE0(0xD000000000000015, 0x800000026D28ABB0, &v21);
    *(v12 + 12) = 1024;
    *(v12 + 14) = v11;
    *(v12 + 18) = 2080;
    *(v0 + 16) = v4;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7028, &qword_26D28B5A8);
    v15 = sub_26D287468();
    v17 = sub_26D285EE0(v15, v16, &v21);

    *(v12 + 20) = v17;
    _os_log_impl(&dword_26D269000, v9, v10, "%s: %d message: %s", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v13, -1, -1);
    MEMORY[0x26D6B92B0](v12, -1, -1);
  }

  v18 = *(v0 + 48);

  v19 = *(v0 + 8);

  return v19(v4);
}

uint64_t sub_26D27DF58()
{
  v19 = v0;
  v1 = *(v0 + 56);

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v3 = sub_26D287338();
  __swift_project_value_buffer(v3, qword_2804F6F58);
  v4 = v2;
  v5 = sub_26D287318();
  v6 = sub_26D287598();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 96);
  if (v7)
  {
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_26D285EE0(0xD000000000000015, 0x800000026D28ABB0, &v18);
    *(v10 + 12) = 1024;
    *(v10 + 14) = v9;
    *(v10 + 18) = 2112;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 20) = v14;
    *v11 = v14;
    _os_log_impl(&dword_26D269000, v5, v6, "%s: %d error: %@)", v10, 0x1Cu);
    sub_26D27CBA8(v11, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D6B92B0](v12, -1, -1);
    MEMORY[0x26D6B92B0](v10, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 48);

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_26D27E180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26D27CC54(a3, v27 - v11);
  v13 = sub_26D287578();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26D27CBA8(v12, &qword_2804F6E68, &qword_26D28AEE8);
  }

  else
  {
    sub_26D287568();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26D287528();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26D287488() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_26D27CBA8(a3, &qword_2804F6E68, &qword_26D28AEE8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26D27CBA8(a3, &qword_2804F6E68, &qword_26D28AEE8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_26D27E474(uint64_t a1)
{
  result = sub_26D27E514(&qword_2804F6F70, MEMORY[0x277D07E18]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26D27E514(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26D27E55C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EA8, &qword_26D28AF70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_26D287118();
  v7 = sub_26D2872F8();

  if (v7)
  {
    v8 = sub_26D287048();
    v9 = *(v8 - 8);
    v10 = *(v9 + 56);
    v10(v5, 1, 1, v8);
    sub_26D27E514(&qword_2804F7060, MEMORY[0x277CC9260]);
    sub_26D287708();

    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      v11 = a1;
      v12 = 1;
    }

    else
    {
      (*(v9 + 32))(a1, v5, v8);
      v11 = a1;
      v12 = 0;
    }

    return (v10)(v11, v12, 1, v8);
  }

  else
  {
    v13 = sub_26D287048();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

uint64_t sub_26D27E788()
{
  v0 = sub_26D287458();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v42[1] = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EA8, &qword_26D28AF70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v42 - v5;
  v7 = sub_26D287048();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7058, &qword_26D28B608);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v42 - v17;
  v19 = sub_26D2872D8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D287138();
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    (*(v20 + 32))(v23, v18, v19);
    v36 = sub_26D2872C8();
    (*(v20 + 8))(v23, v19);
    return v36;
  }

  sub_26D27CBA8(v18, &qword_2804F7058, &qword_26D28B608);
  result = sub_26D287178();
  if (result)
  {
    v25 = result;
    v26 = sub_26D2872F8();

    if (!v26)
    {
      return 0;
    }

    v27 = v7;
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_26D27E514(&qword_2804F7060, MEMORY[0x277CC9260]);
    sub_26D287708();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return 0;
    }

    v28 = *(v8 + 32);
    v28(v12, v6, v7);
    v28(v14, v12, v7);
    v29 = sub_26D287058();
    v31 = v30;
    sub_26D27CF40(0, &qword_2804F7068, 0x277CCAAC8);
    sub_26D2875C8();
    if (v45)
    {
      sub_26D286934(&v44, v46);
      sub_26D28657C(v46, &v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7078, &unk_26D28B610);
      if (swift_dynamicCast())
      {
        v32 = objc_opt_self();
        sub_26D27CF40(0, &unk_2804F7080, 0x277D6EE40);
        v33 = sub_26D2874E8();

        v34 = [v32 combinedStringFromCaptions_];

        v35 = sub_26D287428();
        sub_26D27C7D8(v29, v31);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        (*(v8 + 8))(v14, v27);
        return v35;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v46);
    }

    else
    {
      sub_26D27CBA8(&v44, &qword_2804F7008, &qword_26D28B550);
    }

    sub_26D2875C8();
    if (v45)
    {
      sub_26D286934(&v44, v46);
      sub_26D28657C(v46, &v44);
      sub_26D27CF40(0, &qword_2804F7070, 0x277D79780);
      if (swift_dynamicCast())
      {
        v37 = v43;
        v38 = [v43 confidenceRating];
        if (v38 > 3 || v38 == 1)
        {
          sub_26D27C7D8(v29, v31);

          v40 = 0;
        }

        else
        {
          v39 = [v37 transcriptionString];
          v40 = sub_26D287428();
          sub_26D27C7D8(v29, v31);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        (*(v8 + 8))(v14, v7);
        return v40;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v46);
    }

    else
    {
      sub_26D27CBA8(&v44, &qword_2804F7008, &qword_26D28B550);
    }

    sub_26D287448();
    v41 = sub_26D287438();
    sub_26D27C7D8(v29, v31);
    (*(v8 + 8))(v14, v7);
    return v41;
  }

  return result;
}

uint64_t sub_26D27F01C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_26D2870E8();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_26D287548();
  v2[9] = sub_26D287538();
  v7 = sub_26D287528();
  v2[10] = v7;
  v2[11] = v6;

  return MEMORY[0x2822009F8](sub_26D27F11C, v7, v6);
}

uint64_t sub_26D27F11C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = *(v0[4] + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7020, &qword_26D28B578);
  v5 = *(v2 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[12] = v7;
  *(v7 + 16) = xmmword_26D28B200;
  v8 = *(v2 + 16);
  v0[13] = v8;
  v0[14] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v7 + v6, v3, v1);
  v9 = *(MEMORY[0x277D07E30] + 4);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_26D27F240;

  return MEMORY[0x28215DDB8](v7);
}

uint64_t sub_26D27F240(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v10 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v5 = v3[10];
    v6 = v3[11];
    v7 = sub_26D27F6D8;
  }

  else
  {
    v8 = v3[12];

    v5 = v3[10];
    v6 = v3[11];
    v7 = sub_26D27F35C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_26D27F35C()
{
  v38 = v0;
  v1 = v0[16];
  v2 = v0[9];

  if (v1 >> 62)
  {
    if (v0[16] < 0)
    {
      v5 = v0[16];
    }

    result = sub_26D2876E8();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v6 = v0[16];

    v4 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D6B8940](0, v0[16]);
    v34 = v0[16];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v0[16] + 32);
  }

LABEL_11:
  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[3];
  v12 = sub_26D287338();
  __swift_project_value_buffer(v12, qword_2804F6F58);
  v8(v9, v11, v10);
  v13 = v4;
  v14 = sub_26D287318();
  v15 = sub_26D2875B8();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[8];
  v19 = v0[5];
  v18 = v0[6];
  if (v16)
  {
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v20 = 136315650;
    *(v20 + 4) = sub_26D285EE0(0x286567617373656DLL, 0xEE00293A64697575, &v37);
    *(v20 + 12) = 2080;
    sub_26D27E514(&qword_2804F6E70, MEMORY[0x277CC95F0]);
    v21 = v4;
    v22 = sub_26D287718();
    v35 = v15;
    v24 = v23;
    (*(v18 + 8))(v17, v19);
    v25 = v22;
    v4 = v21;
    v26 = sub_26D285EE0(v25, v24, &v37);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    v0[2] = v21;
    v27 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7028, &qword_26D28B5A8);
    v28 = sub_26D287468();
    v30 = sub_26D285EE0(v28, v29, &v37);

    *(v20 + 24) = v30;
    _os_log_impl(&dword_26D269000, v14, v35, "%s: %s message: %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v36, -1, -1);
    MEMORY[0x26D6B92B0](v20, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v17, v19);
  }

  v32 = v0[7];
  v31 = v0[8];

  v33 = v0[1];

  return v33(v4);
}

uint64_t sub_26D27F6D8()
{
  v32 = v0;
  v1 = v0[12];
  v2 = v0[9];

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[7];
  v7 = v0[5];
  v8 = v0[3];
  v9 = sub_26D287338();
  __swift_project_value_buffer(v9, qword_2804F6F58);
  v5(v6, v8, v7);
  v10 = v3;
  v11 = sub_26D287318();
  v12 = sub_26D287598();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[17];
  v16 = v0[6];
  v15 = v0[7];
  v17 = v0[5];
  if (v13)
  {
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v18 = 136315650;
    *(v18 + 4) = sub_26D285EE0(0x286567617373656DLL, 0xEE00293A64697575, &v31);
    *(v18 + 12) = 2080;
    sub_26D27E514(&qword_2804F6E70, MEMORY[0x277CC95F0]);
    v19 = sub_26D287718();
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    v22 = sub_26D285EE0(v19, v21, &v31);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2112;
    v23 = v14;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v24;
    *v29 = v24;
    _os_log_impl(&dword_26D269000, v11, v12, "%s: %s error: %@)", v18, 0x20u);
    sub_26D27CBA8(v29, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v29, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v30, -1, -1);
    MEMORY[0x26D6B92B0](v18, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v26 = v0[7];
  v25 = v0[8];

  v27 = v0[1];

  return v27(0);
}

uint64_t sub_26D27F9F4()
{
  v0 = sub_26D287338();
  __swift_allocate_value_buffer(v0, qword_2804F6F58);
  v1 = __swift_project_value_buffer(v0, qword_2804F6F58);
  if (qword_2804F6E20 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2804F7990);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26D27FABC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 200) = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EA8, &qword_26D28AF70) - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7010, &qword_26D28B568) - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v8 = sub_26D2870E8();
  *(v5 + 80) = v8;
  v9 = *(v8 - 8);
  *(v5 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = sub_26D287548();
  *(v5 + 128) = sub_26D287538();
  v13 = sub_26D287528();
  *(v5 + 136) = v13;
  *(v5 + 144) = v12;

  return MEMORY[0x2822009F8](sub_26D27FC78, v13, v12);
}

uint64_t sub_26D27FC78()
{
  if (*(v0 + 200) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *v1 = v0;
    v1[1] = sub_26D27FF38;
    v2 = *(v0 + 48);

    return sub_26D28091C();
  }

  else
  {
    if (qword_2804F6E30 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 48);
    *(v0 + 168) = *(qword_2804F79A8 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7018, &qword_26D28B570);
    v11 = swift_allocObject();
    *(v0 + 176) = v11;
    *(v11 + 16) = xmmword_26D28B290;

    _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
    v12 = *(v5 + 56);
    v12(v6, 1, 1, v7);
    v12(v8, 1, 1, v7);
    v13 = sub_26D287048();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = objc_allocWithZone(sub_26D287228());
    *(v11 + 32) = sub_26D287218();
    v15 = *(MEMORY[0x277D07E48] + 4);
    v16 = swift_task_alloc();
    *(v0 + 184) = v16;
    *v16 = v0;
    v16[1] = sub_26D2803E4;

    return MEMORY[0x28215DDD0](v11);
  }
}

uint64_t sub_26D27FF38(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = a1;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);

  return MEMORY[0x2822009F8](sub_26D280060, v5, v4);
}

uint64_t sub_26D280060()
{
  v1 = v0[20];
  v2 = v0[16];

  if (v1)
  {
    v3 = v0[20];
    v36 = v3;
    if (v3 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26D2876E8())
    {
      v5 = 0;
      v33 = i;
      v6 = v0[20];
      v34 = v6 & 0xFFFFFFFFFFFFFF8;
      v35 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v35)
        {
          v7 = MEMORY[0x26D6B8940](v5, v36);
        }

        else
        {
          if (v5 >= *(v34 + 16))
          {
            goto LABEL_20;
          }

          v7 = *(v36 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v11 = v0[14];
        v10 = v0[15];
        v12 = v0[13];
        v13 = sub_26D287578();
        v14 = *(v13 - 8);
        (*(v14 + 56))(v11, 1, 1, v13);
        v15 = v8;
        v16 = sub_26D287538();
        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        *(v17 + 24) = MEMORY[0x277D85700];
        *(v17 + 32) = 0;
        *(v17 + 40) = v15;
        sub_26D27CC54(v11, v12);
        LODWORD(v11) = (*(v14 + 48))(v12, 1, v13);

        v18 = v0[13];
        if (v11 == 1)
        {
          sub_26D27CBA8(v0[13], &qword_2804F6E68, &qword_26D28AEE8);
        }

        else
        {
          sub_26D287568();
          (*(v14 + 8))(v18, v13);
        }

        v19 = *(v17 + 16);
        v20 = *(v17 + 24);
        swift_unknownObjectRetain();

        if (v19)
        {
          swift_getObjectType();
          v21 = sub_26D287528();
          v23 = v22;
          swift_unknownObjectRelease();
        }

        else
        {
          v21 = 0;
          v23 = 0;
        }

        sub_26D27CBA8(v0[14], &qword_2804F6E68, &qword_26D28AEE8);
        v24 = swift_allocObject();
        *(v24 + 16) = &unk_26D28AF20;
        *(v24 + 24) = v17;
        if (v23 | v21)
        {
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v21;
          v0[5] = v23;
        }

        swift_task_create();

        ++v5;
        if (v9 == v33)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[12];
  v29 = v0[8];
  v28 = v0[9];
  v30 = v0[7];

  v31 = v0[1];

  return v31();
}

uint64_t sub_26D2803E4()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v10 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_26D2806C0;
  }

  else
  {
    v8 = v2[21];
    v7 = v2[22];

    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_26D280508;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26D280508()
{
  v16 = v0;
  v1 = v0[16];

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v2 = sub_26D287338();
  __swift_project_value_buffer(v2, qword_2804F6F58);
  v3 = sub_26D287318();
  v4 = sub_26D2875B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_26D285EE0(0xD000000000000014, 0x800000026D28ABD0, &v15);
    _os_log_impl(&dword_26D269000, v3, v4, "%s: success", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6B92B0](v6, -1, -1);
    MEMORY[0x26D6B92B0](v5, -1, -1);
  }

  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_26D2806C0()
{
  v25 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[16];

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v4 = v0[24];
  v5 = sub_26D287338();
  __swift_project_value_buffer(v5, qword_2804F6F58);
  v6 = v4;
  v7 = sub_26D287318();
  v8 = sub_26D287598();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[24];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_26D285EE0(0xD000000000000014, 0x800000026D28ABD0, &v24);
    *(v11 + 12) = 2112;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_26D269000, v7, v8, "%s: error: %@", v11, 0x16u);
    sub_26D27CBA8(v12, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D6B92B0](v13, -1, -1);
    MEMORY[0x26D6B92B0](v11, -1, -1);
  }

  else
  {
  }

  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  v20 = v0[8];
  v19 = v0[9];
  v21 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_26D28091C()
{
  v1[2] = v0;
  v2 = sub_26D2870E8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26D2809DC, 0, 0);
}

uint64_t sub_26D2809DC()
{
  *(v0 + 48) = sub_26D287548();
  *(v0 + 56) = sub_26D287538();
  v2 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D280A74, v2, v1);
}

uint64_t sub_26D280A74()
{
  v1 = *(v0 + 56);

  if (qword_2804F6E30 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_26D280B0C, 0, 0);
}

uint64_t sub_26D280B0C()
{
  v1 = *(v0 + 48);
  *(v0 + 64) = sub_26D287538();
  v3 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D280B98, v3, v2);
}

uint64_t sub_26D280B98()
{
  v1 = *(v0 + 64);

  *(v0 + 72) = qword_2804F79A8;

  return MEMORY[0x2822009F8](sub_26D280C0C, 0, 0);
}

uint64_t sub_26D280C0C()
{
  v1 = v0[5];
  v2 = v0[2];
  _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_26D280CB0;
  v4 = v0[9];
  v5 = v0[5];

  return sub_26D27F01C(v5);
}

uint64_t sub_26D280CB0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v9 = *v1;
  v2[11] = a1;

  v7 = *(v5 + 8);
  v2[12] = v7;
  v2[13] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);

  return MEMORY[0x2822009F8](sub_26D280E1C, 0, 0);
}

uint64_t sub_26D280E1C()
{
  v30 = v0;
  v1 = v0[11];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7018, &qword_26D28B570);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_26D28B290;
    *(v2 + 32) = v1;
    v3 = v0[5];

    v4 = v0[1];

    return v4(v2);
  }

  else
  {
    if (qword_2804F6E28 != -1)
    {
      swift_once();
    }

    v6 = v0[2];
    v7 = sub_26D287338();
    __swift_project_value_buffer(v7, qword_2804F6F58);
    v8 = v6;
    v9 = sub_26D287318();
    v10 = sub_26D287598();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[13];
      v12 = v0[5];
      v13 = v0[2];
      v14 = v0[3];
      v27 = v0[12];
      v15 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v15 = 136315650;
      *(v15 + 4) = sub_26D285EE0(0x6569726575716572, 0xEB00000000292864, &v29);
      *(v15 + 12) = 2080;
      _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
      sub_26D27E514(&qword_2804F6E70, MEMORY[0x277CC95F0]);
      v16 = sub_26D287718();
      v18 = v17;
      v27(v12, v14);
      v19 = sub_26D285EE0(v16, v18, &v29);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2080;
      sub_26D287168();
      v20 = sub_26D287718();
      v22 = v21;
      v27(v12, v14);
      v23 = sub_26D285EE0(v20, v22, &v29);

      *(v15 + 24) = v23;
      _os_log_impl(&dword_26D269000, v9, v10, "%s: rdar://117099230: previously vended recordUUID: %s missing, falling back to conversationUUID: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D6B92B0](v28, -1, -1);
      MEMORY[0x26D6B92B0](v15, -1, -1);
    }

    v24 = v0[6];
    v0[14] = sub_26D287538();
    v26 = sub_26D287528();

    return MEMORY[0x2822009F8](sub_26D281180, v26, v25);
  }
}

uint64_t sub_26D281180()
{
  v1 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_26D2811E8, 0, 0);
}

uint64_t sub_26D2811E8()
{
  v1 = *(v0 + 48);
  *(v0 + 120) = sub_26D287538();
  v3 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D281274, v3, v2);
}

uint64_t sub_26D281274()
{
  v1 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_26D2812DC, 0, 0);
}

uint64_t sub_26D2812DC()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_26D287168();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_26D281380;
  v4 = v0[9];
  v5 = v0[5];

  return sub_26D282804(v5);
}

uint64_t sub_26D281380(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 24);
  v12 = *v1;

  v6(v7, v8);
  v9 = *(v3 + 40);

  v10 = *(v12 + 8);

  return v10(a1);
}

uint64_t sub_26D2814F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 232) = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EA8, &qword_26D28AF70) - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7010, &qword_26D28B568) - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v8 = sub_26D2870E8();
  *(v5 + 80) = v8;
  v9 = *(v8 - 8);
  *(v5 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = sub_26D287548();
  *(v5 + 128) = sub_26D287538();
  v13 = sub_26D287528();
  *(v5 + 136) = v13;
  *(v5 + 144) = v12;

  return MEMORY[0x2822009F8](sub_26D2816AC, v13, v12);
}

uint64_t sub_26D2816AC()
{
  if (*(v0 + 232) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *v1 = v0;
    v1[1] = sub_26D281AA8;
    v2 = *(v0 + 48);

    return sub_26D28091C();
  }

  else
  {
    v4 = *(v0 + 48);
    sub_26D287158();
    LODWORD(v4) = sub_26D2872E8();
    if (v4 == sub_26D2872E8())
    {
      if (qword_2804F6E30 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 88);
      v6 = *(v0 + 48);
      *(v0 + 168) = *(qword_2804F79A8 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7020, &qword_26D28B578);
      v7 = *(v5 + 72);
      v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v9 = swift_allocObject();
      *(v0 + 176) = v9;
      *(v9 + 16) = xmmword_26D28B200;

      _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
      v10 = *(MEMORY[0x277D07E40] + 4);
      v11 = swift_task_alloc();
      *(v0 + 184) = v11;
      *v11 = v0;
      v11[1] = sub_26D281F54;

      return MEMORY[0x28215DDC8](v9);
    }

    else
    {
      if (qword_2804F6E30 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 88);
      v12 = *(v0 + 96);
      v14 = *(v0 + 72);
      v15 = *(v0 + 80);
      v17 = *(v0 + 56);
      v16 = *(v0 + 64);
      v18 = *(v0 + 48);
      *(v0 + 200) = *(qword_2804F79A8 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7018, &qword_26D28B570);
      v19 = swift_allocObject();
      *(v0 + 208) = v19;
      *(v19 + 16) = xmmword_26D28B290;

      _s20FaceTimeMessageStore0C0C12TelephonyRPCE2id10Foundation4UUIDVvg_0();
      v20 = *(v13 + 56);
      v20(v14, 1, 1, v15);
      v20(v16, 1, 1, v15);
      v21 = sub_26D287048();
      (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
      v22 = objc_allocWithZone(sub_26D287228());
      *(v19 + 32) = sub_26D287218();
      v23 = *(MEMORY[0x277D07E48] + 4);
      v24 = swift_task_alloc();
      *(v0 + 216) = v24;
      *v24 = v0;
      v24[1] = sub_26D282230;

      return MEMORY[0x28215DDD0](v19);
    }
  }
}

uint64_t sub_26D281AA8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = a1;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);

  return MEMORY[0x2822009F8](sub_26D281BD0, v5, v4);
}

uint64_t sub_26D281BD0()
{
  v1 = v0[20];
  v2 = v0[16];

  if (v1)
  {
    v3 = v0[20];
    v36 = v3;
    if (v3 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26D2876E8())
    {
      v5 = 0;
      v33 = i;
      v6 = v0[20];
      v34 = v6 & 0xFFFFFFFFFFFFFF8;
      v35 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v35)
        {
          v7 = MEMORY[0x26D6B8940](v5, v36);
        }

        else
        {
          if (v5 >= *(v34 + 16))
          {
            goto LABEL_20;
          }

          v7 = *(v36 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v11 = v0[14];
        v10 = v0[15];
        v12 = v0[13];
        v13 = sub_26D287578();
        v14 = *(v13 - 8);
        (*(v14 + 56))(v11, 1, 1, v13);
        v15 = v8;
        v16 = sub_26D287538();
        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        *(v17 + 24) = MEMORY[0x277D85700];
        *(v17 + 32) = 0;
        *(v17 + 40) = v15;
        sub_26D27CC54(v11, v12);
        LODWORD(v11) = (*(v14 + 48))(v12, 1, v13);

        v18 = v0[13];
        if (v11 == 1)
        {
          sub_26D27CBA8(v0[13], &qword_2804F6E68, &qword_26D28AEE8);
        }

        else
        {
          sub_26D287568();
          (*(v14 + 8))(v18, v13);
        }

        v19 = *(v17 + 16);
        v20 = *(v17 + 24);
        swift_unknownObjectRetain();

        if (v19)
        {
          swift_getObjectType();
          v21 = sub_26D287528();
          v23 = v22;
          swift_unknownObjectRelease();
        }

        else
        {
          v21 = 0;
          v23 = 0;
        }

        sub_26D27CBA8(v0[14], &qword_2804F6E68, &qword_26D28AEE8);
        v24 = swift_allocObject();
        *(v24 + 16) = &unk_26D28AF08;
        *(v24 + 24) = v17;
        if (v23 | v21)
        {
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v21;
          v0[5] = v23;
        }

        swift_task_create();

        ++v5;
        if (v9 == v33)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[12];
  v29 = v0[8];
  v28 = v0[9];
  v30 = v0[7];

  v31 = v0[1];

  return v31();
}

uint64_t sub_26D281F54()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v10 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_26D282354;
  }

  else
  {
    v8 = v2[21];
    v7 = v2[22];

    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_26D282078;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26D282078()
{
  v16 = v0;
  v1 = v0[16];

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v2 = sub_26D287338();
  __swift_project_value_buffer(v2, qword_2804F6F58);
  v3 = sub_26D287318();
  v4 = sub_26D2875B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_26D285EE0(0xD000000000000015, 0x800000026D28AB50, &v15);
    _os_log_impl(&dword_26D269000, v3, v4, "%s: success", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6B92B0](v6, -1, -1);
    MEMORY[0x26D6B92B0](v5, -1, -1);
  }

  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_26D282230()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v10 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_26D2825AC;
  }

  else
  {
    v8 = v2[25];
    v7 = v2[26];

    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_26D286960;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26D282354()
{
  v23 = v0;
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[16];

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v5 = sub_26D287338();
  __swift_project_value_buffer(v5, qword_2804F6F58);
  v6 = v1;
  v7 = sub_26D287318();
  v8 = sub_26D287598();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_26D285EE0(0xD000000000000015, 0x800000026D28AB50, &v22);
    *(v9 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_26D269000, v7, v8, "%s: error: %@", v9, 0x16u);
    sub_26D27CBA8(v10, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D6B92B0](v11, -1, -1);
    MEMORY[0x26D6B92B0](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[12];
  v18 = v0[8];
  v17 = v0[9];
  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_26D2825AC()
{
  v23 = v0;
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[16];

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v5 = sub_26D287338();
  __swift_project_value_buffer(v5, qword_2804F6F58);
  v6 = v1;
  v7 = sub_26D287318();
  v8 = sub_26D287598();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_26D285EE0(0xD000000000000015, 0x800000026D28AB50, &v22);
    *(v9 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_26D269000, v7, v8, "%s: error: %@", v9, 0x16u);
    sub_26D27CBA8(v10, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D6B92B0](v11, -1, -1);
    MEMORY[0x26D6B92B0](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[12];
  v18 = v0[8];
  v17 = v0[9];
  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_26D282804(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26D2870E8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_26D287108();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  sub_26D287548();
  v2[11] = sub_26D287538();
  v10 = sub_26D287528();
  v2[12] = v10;
  v2[13] = v9;

  return MEMORY[0x2822009F8](sub_26D282960, v10, v9);
}

uint64_t sub_26D282960()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v18 = *(v0[3] + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7020, &qword_26D28B578);
  v8 = *(v5 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26D28B200;
  v11 = *(v5 + 16);
  v0[14] = v11;
  v0[15] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v10 + v9, v6, v4);
  *(v7 + 16) = v10;
  *v1 = v7;
  v12 = *MEMORY[0x277D07E58];
  v13 = sub_26D2872B8();
  (*(*(v13 - 8) + 104))(v1, v12, v13);
  (*(v2 + 104))(v1, *MEMORY[0x277D07E10], v3);
  v14 = *(MEMORY[0x277D07E38] + 4);
  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_26D282B38;
  v16 = v0[10];

  return MEMORY[0x28215DDC0](v16, 0x7FFFFFFFFFFFFFFFLL, 0);
}

uint64_t sub_26D282B38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 72);
  v8 = *(*v2 + 64);
  v9 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  (*(v7 + 8))(v6, v8);
  v10 = *(v3 + 104);
  v11 = *(v3 + 96);
  if (v1)
  {
    v12 = sub_26D282FC8;
  }

  else
  {
    v12 = sub_26D282CD8;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_26D282CD8()
{
  v35 = v0;
  v1 = v0[11];

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[2];
  v8 = sub_26D287338();
  __swift_project_value_buffer(v8, qword_2804F6F58);
  v4(v5, v7, v6);

  v9 = sub_26D287318();
  v10 = sub_26D2875B8();

  if (os_log_type_enabled(v9, v10))
  {
    v33 = v0[17];
    v11 = v0[7];
    v13 = v0[4];
    v12 = v0[5];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_26D285EE0(0xD00000000000001BLL, 0x800000026D28AB70, &v34);
    *(v14 + 12) = 2080;
    sub_26D27E514(&qword_2804F6E70, MEMORY[0x277CC95F0]);
    v16 = sub_26D287718();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_26D285EE0(v16, v18, &v34);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2080;
    v20 = sub_26D2871F8();
    v21 = MEMORY[0x26D6B87D0](v33, v20);
    v23 = sub_26D285EE0(v21, v22, &v34);

    *(v14 + 24) = v23;
    _os_log_impl(&dword_26D269000, v9, v10, "%s: %s messages: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v15, -1, -1);
    MEMORY[0x26D6B92B0](v14, -1, -1);
  }

  else
  {
    v24 = v0[7];
    v25 = v0[4];
    v26 = v0[5];

    (*(v26 + 8))(v24, v25);
  }

  v27 = v0[17];
  v28 = v0[10];
  v30 = v0[6];
  v29 = v0[7];

  v31 = v0[1];

  return v31(v27);
}

uint64_t sub_26D282FC8()
{
  v32 = v0;
  v1 = v0[11];

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];
  v8 = sub_26D287338();
  __swift_project_value_buffer(v8, qword_2804F6F58);
  v4(v5, v7, v6);
  v9 = v2;
  v10 = sub_26D287318();
  v11 = sub_26D287598();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[18];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  if (v12)
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v17 = 136315650;
    *(v17 + 4) = sub_26D285EE0(0xD00000000000001BLL, 0x800000026D28AB70, &v31);
    *(v17 + 12) = 2080;
    sub_26D27E514(&qword_2804F6E70, MEMORY[0x277CC95F0]);
    v18 = sub_26D287718();
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = sub_26D285EE0(v18, v20, &v31);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2112;
    v22 = v13;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v23;
    *v29 = v23;
    _os_log_impl(&dword_26D269000, v10, v11, "%s: %s error: %@)", v17, 0x20u);
    sub_26D27CBA8(v29, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v29, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v30, -1, -1);
    MEMORY[0x26D6B92B0](v17, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v24 = v0[10];
  v25 = v0[6];
  v26 = v0[7];

  v27 = v0[1];

  return v27(0);
}

uint64_t sub_26D283300()
{
  v1 = sub_26D2873F8();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_26D287648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_26D27CBA8(v7, &qword_2804F7008, &qword_26D28B550);
    return 2;
  }
}

uint64_t sub_26D2833F8(void *a1)
{
  v1 = a1;
  v2 = sub_26D283300();

  return v2 & 1;
}

void sub_26D28342C(void *a1)
{
  v3 = a1;
  v1 = sub_26D287518();
  v2 = sub_26D2873F8();
  [v3 setObject:v1 forKey:v2];
}

void *sub_26D2834BC()
{
  v0 = type metadata accessor for VoicemailManager(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_26D283938();
  qword_2804F79A8 = v3;
  return result;
}

void sub_26D2834FC()
{
  v1 = v0;
  v2 = *v0;
  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v3 = sub_26D287338();
  __swift_project_value_buffer(v3, qword_2804F6F58);

  oslog = sub_26D287318();
  v4 = sub_26D2875B8();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315650;

    v7 = sub_26D287468();
    v9 = sub_26D285EE0(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_26D285EE0(0x69616D6563696F76, 0xEA0000000000736CLL, &v15);
    *(v5 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D287398();

    if (v1)
    {
      if (v1 >> 62)
      {
        sub_26D2876E8();
      }

      else
      {
        v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6FF8, &unk_26D28B500);
    v11 = sub_26D287468();
    v13 = sub_26D285EE0(v11, v12, &v15);

    *(v5 + 24) = v13;
    _os_log_impl(&dword_26D269000, oslog, v4, "%s.%s: count: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D6B92B0](v6, -1, -1);
    MEMORY[0x26D6B92B0](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_26D2837C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D287398();

  return v1;
}

uint64_t sub_26D283838@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D287398();

  *a2 = v5;
  return result;
}

void sub_26D2838B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D2873A8();
  sub_26D2834FC();
}

void *sub_26D283938()
{
  v1 = v0;
  v46[1] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7030, &qword_26D28B5B0);
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = v46 - v4;
  v47 = sub_26D2875E8();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v47);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7000, &qword_26D28B548);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E88, &qword_26D28B540);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v46 - v17;
  v19 = OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager__voicemails;
  v52[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6FB8, &qword_26D28B368);
  sub_26D287378();
  (*(v15 + 32))(v1 + v19, v18, v14);
  v20 = OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager__accounts;
  v52[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6FC8, &qword_26D28B370);
  sub_26D287378();
  (*(v10 + 32))(v1 + v20, v13, v9);
  v21 = OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store;
  sub_26D2872A8();
  *(v1 + v21) = sub_26D287288();
  *(v1 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_cancellables) = MEMORY[0x277D84FA0];
  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = sub_26D287428();
    v26 = v25;

    if (v24 == 0xD000000000000014 && 0x800000026D28AB90 == v26 || (sub_26D287728() & 1) != 0 || v24 == 0xD000000000000013 && 0x800000026D28A980 == v26)
    {

      v27 = 0;
    }

    else
    {
      v45 = sub_26D287728();

      v27 = v45 ^ 1;
    }
  }

  else
  {
    v27 = 1;
  }

  v28 = OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_needsContent;
  *(v1 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_needsContent) = v27 & 1;
  v29 = *(v1 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store);

  sub_26D287298();

  v30 = [objc_opt_self() defaultCenter];
  v31 = *MEMORY[0x277CBD140];
  sub_26D2875F8();

  sub_26D27E514(&qword_2804F7038, MEMORY[0x277CC9DB0]);

  v32 = v47;
  sub_26D2873D8();

  (*(v5 + 8))(v8, v32);
  swift_beginAccess();
  sub_26D287348();
  swift_endAccess();

  v33 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  v34 = v48;
  sub_26D286FB8();

  sub_26D286894();

  v35 = v50;
  sub_26D2873D8();

  (*(v49 + 8))(v34, v35);
  swift_beginAccess();
  sub_26D287348();
  swift_endAccess();

  if (*(v1 + v28))
  {
    sub_26D28432C();
  }

  else
  {
    if (qword_2804F6E28 != -1)
    {
      swift_once();
    }

    v36 = sub_26D287338();
    __swift_project_value_buffer(v36, qword_2804F6F58);

    v37 = sub_26D287318();
    v38 = sub_26D287588();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51 = v1;
      v52[0] = v40;
      *v39 = 136315394;

      v41 = sub_26D287468();
      v43 = sub_26D285EE0(v41, v42, v52);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_26D285EE0(0x292874696E69, 0xE600000000000000, v52);
      _os_log_impl(&dword_26D269000, v37, v38, "%s: %s: needsContent: false ⇒ skipping accounts, voicemails", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6B92B0](v40, -1, -1);
      MEMORY[0x26D6B92B0](v39, -1, -1);
    }
  }

  return v1;
}

uint64_t sub_26D2840EC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_26D27E514(&qword_2804F7048, type metadata accessor for VoicemailManager);
  sub_26D287358();
  sub_26D287368();
}

void sub_26D284190()
{
  v1 = *v0;
  v2 = sub_26D286F48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultCenter];
  if (qword_2804F6E00 != -1)
  {
    swift_once();
  }

  v10[3] = v1;
  v10[0] = v0;
  v8 = qword_2804F7960;

  sub_26D286F38();
  v9 = sub_26D286F28();
  (*(v3 + 8))(v6, v2);
  [v7 postNotification_];
}

void sub_26D28432C()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  if (*(v0 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_needsContent) == 1)
  {
    if (qword_2804F6E28 != -1)
    {
      swift_once();
    }

    v7 = sub_26D287338();
    __swift_project_value_buffer(v7, qword_2804F6F58);

    v8 = sub_26D287318();
    v9 = sub_26D2875B8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v1;
      v30 = v11;
      *v10 = 136315394;

      v12 = sub_26D287468();
      v14 = sub_26D285EE0(v12, v13, &v30);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_26D285EE0(0xD000000000000010, 0x800000026D28AB30, &v30);
      _os_log_impl(&dword_26D269000, v8, v9, "%s: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6B92B0](v11, -1, -1);
      MEMORY[0x26D6B92B0](v10, -1, -1);
    }

    v15 = sub_26D287578();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    sub_26D287548();

    v16 = sub_26D287538();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v1;
    sub_26D27E180(0, 0, v6, &unk_26D28B490, v17);
  }

  else
  {
    if (qword_2804F6E28 != -1)
    {
      swift_once();
    }

    v19 = sub_26D287338();
    __swift_project_value_buffer(v19, qword_2804F6F58);

    v28 = sub_26D287318();
    v20 = sub_26D287588();

    if (os_log_type_enabled(v28, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v1;
      v30 = v22;
      *v21 = 136315394;

      v23 = sub_26D287468();
      v25 = sub_26D285EE0(v23, v24, &v30);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_26D285EE0(0xD000000000000010, 0x800000026D28AB30, &v30);
      _os_log_impl(&dword_26D269000, v28, v20, "%s: %s: needsContent: false ⇒ skipping voicemails", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6B92B0](v22, -1, -1);
      MEMORY[0x26D6B92B0](v21, -1, -1);
    }

    else
    {
      v26 = v28;
    }
  }
}

uint64_t sub_26D284798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_26D287108();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  sub_26D287548();
  v4[7] = sub_26D287538();
  v9 = sub_26D287528();
  v4[8] = v9;
  v4[9] = v8;

  return MEMORY[0x2822009F8](sub_26D28488C, v9, v8);
}

uint64_t sub_26D28488C()
{
  v1 = v0[6];
  v2 = v0[3];
  v35 = v0[5];
  v36 = v0[4];
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 providerManager];

  v5 = [v4 telephonyProvider];
  v6 = [v5 identifier];

  v7 = sub_26D287428();
  v32 = v8;
  v33 = v7;

  v34 = *(v2 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6FE0, &qword_26D28B498);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  v12 = *MEMORY[0x277D07E20];
  v13 = sub_26D287208();
  (*(*(v13 - 8) + 104))(v1, v12, v13);
  v14 = *MEMORY[0x277D07E28];
  v15 = sub_26D287238();
  (*(*(v15 - 8) + 104))(v1 + v10, v14, v15);
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6FE8, &qword_26D28B4A0);
  v17 = sub_26D2872B8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26D28B2A0;
  v22 = (v21 + v20);
  v23 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6FF0, &qword_26D28B4A8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26D28B200;
  *(v24 + 32) = v33;
  *(v24 + 40) = v32;
  *(v23 + 16) = v24;
  *v22 = v23;
  v25 = *(v18 + 104);
  v25(v22, *MEMORY[0x277D07E70], v17);
  v26 = swift_allocObject();
  *(v26 + 16) = &unk_287EA40D8;
  *(v22 + v19) = v26;
  v25((v22 + v19), *MEMORY[0x277D07E68], v17);
  *(v16 + 16) = v21;
  *(v1 + v11) = v16;
  v25((v1 + v11), *MEMORY[0x277D07E60], v17);
  (*(v35 + 104))(v1, *MEMORY[0x277D07E08], v36);
  v27 = MaxVoicemailCount();
  v28 = *(MEMORY[0x277D07E38] + 4);
  v29 = swift_task_alloc();
  v0[10] = v29;
  *v29 = v0;
  v29[1] = sub_26D284C68;
  v30 = v0[6];

  return MEMORY[0x28215DDC0](v30, v27, 0);
}

uint64_t sub_26D284C68(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  (*(v7 + 8))(v6, v8);
  v10 = *(v3 + 72);
  v11 = *(v3 + 64);
  if (v1)
  {
    v12 = sub_26D28503C;
  }

  else
  {
    v12 = sub_26D284E08;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_26D284E08()
{
  v19 = v0;
  v1 = v0[7];

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = sub_26D287338();
  __swift_project_value_buffer(v3, qword_2804F6F58);

  v4 = sub_26D287318();
  v5 = sub_26D2875B8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_26D285EE0(0xD000000000000010, 0x800000026D28AB30, &v18);
    *(v8 + 12) = 2048;
    if (v7 >> 62)
    {
      if (v0[11] < 0)
      {
        v17 = v0[11];
      }

      v10 = sub_26D2876E8();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v0[11];
    *(v8 + 14) = v10;

    _os_log_impl(&dword_26D269000, v4, v5, "%s: count: %ld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6B92B0](v9, -1, -1);
    MEMORY[0x26D6B92B0](v8, -1, -1);
  }

  else
  {
    v12 = v0[11];
  }

  v13 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v7;

  sub_26D2873A8();
  sub_26D2834FC();
  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26D28503C()
{
  v1 = v0[7];

  if (qword_2804F6E28 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = sub_26D287338();
  __swift_project_value_buffer(v3, qword_2804F6F58);
  v4 = v2;
  v5 = sub_26D287318();
  v6 = sub_26D287598();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26D269000, v5, v6, "error loading voicemail: %@", v9, 0xCu);
    sub_26D27CBA8(v10, &qword_2804F6ED0, &qword_26D28B4B0);
    MEMORY[0x26D6B92B0](v10, -1, -1);
    MEMORY[0x26D6B92B0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[6];

  v14 = v0[1];

  return v14();
}

uint64_t sub_26D2851F0()
{
  v1 = OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager__voicemails;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E88, &qword_26D28B540);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager__accounts;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7000, &qword_26D28B548);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_store);

  v6 = *(v0 + OBJC_IVAR____TtC12TelephonyRPC16VoicemailManager_cancellables);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

void sub_26D28532C()
{
  sub_26D285448(319, &qword_2804F6FB0, &qword_2804F6FB8, &qword_26D28B368);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26D285448(319, &qword_2804F6FC0, &qword_2804F6FC8, &qword_26D28B370);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26D285448(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26D2873B8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26D28549C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26D287358();
  *a1 = result;
  return result;
}

uint64_t sub_26D2854EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_26D287548();
  *(v4 + 24) = sub_26D287538();
  v6 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D285584, v6, v5);
}

uint64_t sub_26D285584()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_26D28432C();
  v3 = v0[1];

  return v3();
}

uint64_t sub_26D285608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_26D287548();
  *(v4 + 24) = sub_26D287538();
  v6 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D286964, v6, v5);
}

uint64_t sub_26D285700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_26D287548();
  *(v4 + 24) = sub_26D287538();
  v6 = sub_26D287528();

  return MEMORY[0x2822009F8](sub_26D285798, v6, v5);
}

uint64_t sub_26D285798()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_26D284190();
  v3 = v0[1];

  return v3();
}

uint64_t sub_26D28581C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6E68, &qword_26D28AEE8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_26D287578();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_26D287548();
  swift_retain_n();
  v12 = sub_26D287538();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a1;
  sub_26D27E180(0, 0, v10, a5, v13);
}

uint64_t sub_26D285948()
{
  v1 = OBJC_IVAR____TtCC12TelephonyRPC16VoicemailManager7Account_uuid;
  v2 = sub_26D2870E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC12TelephonyRPC16VoicemailManager7Account_accountDescription + 8);

  v4 = *(v0 + OBJC_IVAR____TtCC12TelephonyRPC16VoicemailManager7Account_abbreviatedAccountDescription + 8);

  v5 = *(v0 + OBJC_IVAR____TtCC12TelephonyRPC16VoicemailManager7Account_serviceName + 8);

  v6 = *(v0 + OBJC_IVAR____TtCC12TelephonyRPC16VoicemailManager7Account_isoCountryCode + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_26D285A6C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D285AA4()
{
  result = sub_26D2870E8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26D285B88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D27D10C;

  return sub_26D285700(a1, v4, v5, v6);
}

uint64_t sub_26D285C3C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26D285D34;

  return v7(a1);
}

uint64_t sub_26D285D34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26D285E2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D27D10C;

  return sub_26D285608(a1, v4, v5, v6);
}

uint64_t sub_26D285EE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26D285FAC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26D28657C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_26D285FAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26D2860B8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26D287688();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26D2860B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_26D286104(a1, a2);
  sub_26D286234(&unk_287EA40B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26D286104(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26D286320(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26D287688();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26D2874B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26D286320(v10, 0);
        result = sub_26D287658();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26D286234(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26D286394(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26D286320(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EB0, &qword_26D28AF78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26D286394(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F6EB0, &qword_26D28AF78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_26D286488(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D27C598;

  return sub_26D284798(a1, v4, v5, v6);
}

uint64_t sub_26D28653C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D28657C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26D2865D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D27D10C;

  return sub_26D285608(a1, v4, v5, v6);
}

uint64_t sub_26D28668C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D27D10C;

  return sub_26D285608(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26D286780(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D27D10C;

  return sub_26D2854EC(a1, v4, v5, v6);
}

id sub_26D286848@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCloudSyncAvailableOverride];
  *a2 = result;
  return result;
}

unint64_t sub_26D286894()
{
  result = qword_2804F7040;
  if (!qword_2804F7040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F7030, &qword_26D28B5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7040);
  }

  return result;
}

uint64_t sub_26D2868FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_OWORD *sub_26D286934(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_26D286980()
{
  result = [objc_allocWithZone(MEMORY[0x277D79778]) initWithStateSync:1 mailSync:0 delegate:0 delegateQueue:0];
  qword_2804F7A10 = result;
  return result;
}

id sub_26D2869C4()
{
  if (qword_2804F6E38 != -1)
  {
    swift_once();
  }

  v1 = qword_2804F7A10;

  return v1;
}

void NPHSetTmpDirPrefix_cold_1(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v4 = 136315394;
  v5 = "void NPHSetTmpDirPrefix(void)";
  v6 = 1024;
  v7 = v2;
  _os_log_error_impl(&dword_26D269000, a1, OS_LOG_TYPE_ERROR, "%s: failed, errno: %d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

void __deviceUnlockedSinceBoot_block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "dispatch_semaphore_t deviceUnlockedSinceBoot(void)_block_invoke";
  v1 = *MEMORY[0x277D85DE8];
}