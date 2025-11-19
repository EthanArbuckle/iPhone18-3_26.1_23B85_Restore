@interface PLUtilities
+ (BOOL)AppDeletionEnabled;
+ (BOOL)OverrideAllowlistEnabled;
+ (BOOL)PLCopyItemsFromPath:(id)a3 toPath:(id)a4;
+ (BOOL)PreUnlockTelemetryEnabled;
+ (BOOL)SwitchToIncrementalVacuumEnabled;
+ (BOOL)allowQueryFromPeer:(id)a3;
+ (BOOL)compressWithSource:(id)a3 withDestination:(id)a4 withLevel:(int)a5;
+ (BOOL)createAndChownDirectory:(id)a3;
+ (BOOL)createAndChownDirectoryIfDirectoryDoesNotExist:(id)a3;
+ (BOOL)decompressWithSource:(id)a3 withDestination:(id)a4 withRemoveSrc:(BOOL)a5;
+ (BOOL)deviceRebooted;
+ (BOOL)gasGaugeEnabled;
+ (BOOL)hasBattery;
+ (BOOL)hasGasGauge;
+ (BOOL)hasInternalKey;
+ (BOOL)hasInternalKey:(id)a3;
+ (BOOL)inBUIDemoMode;
+ (BOOL)isALSCurveHigherThanDefault;
+ (BOOL)isAppAnalyticsEnabled;
+ (BOOL)isEduMode;
+ (BOOL)isFullModeDaemon;
+ (BOOL)isHealthDataSubmissionAllowed;
+ (BOOL)isHeySiriEnabled;
+ (BOOL)isImproveFitnessPlusEnabled;
+ (BOOL)isLiteModeDaemon;
+ (BOOL)isPerfPowerMetricd;
+ (BOOL)isPowerexceptionsd;
+ (BOOL)isPowerlogHelperd;
+ (BOOL)isSafetyDataSubmissionAllowed;
+ (BOOL)isSiriEnabled;
+ (BOOL)isValidString:(id)a3;
+ (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 withName:(id)a5 error:(id *)a6;
+ (BOOL)runningAsMobileUser;
+ (BOOL)shouldCreateQuarantine;
+ (BOOL)shouldLogForEntryKey:(id)a3;
+ (BOOL)shouldLogPreUnlockTelemetry;
+ (double)getDefaultL0bThresholdForDeviceType;
+ (double)getLastSystemTimeOffset;
+ (double)getMachbaseTimeRatio;
+ (double)roundToSigFigDouble:(double)a3 withSigFig:(int)a4;
+ (double)scaledPowerBasedOnPoint:(double)a3 withPowerModel:(id)a4;
+ (id)JSONSanitizeDictionary:(id)a3;
+ (id)MavRevStringQuery;
+ (id)allSubClassesForClass:(Class)a3;
+ (id)binaryPathForPid:(int)a3;
+ (id)buildVersion;
+ (id)bundleIDFromProcessName:(id)a3;
+ (id)bundleIDFromURL:(id)a3;
+ (id)bundleVersionFromURL:(id)a3;
+ (id)cleanLaunchdApplicationMacOS:(id)a3;
+ (id)cleanLaunchdName:(id)a3;
+ (id)containerPath;
+ (id)crashReporterKey;
+ (id)dateFromTimeval:(timeval)a3;
+ (id)dateFromnSecEpoch:(unint64_t)a3;
+ (id)deviceBootArgs;
+ (id)deviceBootTime;
+ (id)deviceBootUUID;
+ (id)experimentGroup;
+ (id)extractDateStringAndUUIDStringFromFilePath:(id)a3;
+ (id)fullProcessNameForPid:(int)a3;
+ (id)generateAndUpdateSaltValue:(id)a3;
+ (id)generateHashValue:(id)a3 withSalt:(id)a4;
+ (id)getFirstBatteryTimestamp;
+ (id)getIdentifierFromEntry:(id)a3;
+ (id)getKVPairsForCASubmissionFromEntry:(id)a3;
+ (id)getLastBatteryTimestamp;
+ (id)getOverridableMonotonicNow;
+ (id)getPerfStatsForProcess:(id)a3;
+ (id)hashBundleID:(id)a3;
+ (id)hashString:(id)a3;
+ (id)intervalPeakCADictionaryForLaunchdName:(id)a3 intervalMaxKB:(unint64_t)a4;
+ (id)launchdNameToProcessName:(id)a3;
+ (id)mobileUserADG;
+ (id)modeForEntryKey:(id)a3 withKeyName:(id)a4;
+ (id)pUUIDForPid:(int)a3;
+ (id)powerModelForOperatorName:(id)a3;
+ (id)processNameForPid:(int)a3;
+ (id)runningAsUser;
+ (id)sanitizeCAPayload:(id)a3;
+ (id)shortUUIDString;
+ (id)supplementalBuildVersion;
+ (id)torchTypeString;
+ (id)workQueueForClass:(Class)a3;
+ (id)workQueueForKey:(id)a3;
+ (int)compressWithSourceStream:(__sFILE *)a3 withDestination:(__sFILE *)a4 withLevel:(int)a5;
+ (int)decompressWithSourceStream:(__sFILE *)a3 withDestinationStream:(__sFILE *)a4;
+ (int)grabSysctlValue:(id)a3;
+ (int)numFilesAtPath:(id)a3;
+ (int)pidForProcessName:(id)a3;
+ (int)remove:(int)a3 oldestFilesFromDirectory:(id)a4 containingFileNameSubstring:(id)a5;
+ (int64_t)compareFilesByKey:(id)a3 file1:(id)a4 file2:(id)a5 sortAscending:(BOOL)a6;
+ (jetsam_priority_info)getJetsamPriority:(int)a3;
+ (mach_timebase_info)getMachTimebase;
+ (process_memory_limit_info)getProcessMemoryLimit:(int)a3;
+ (signed)canLogMode:(id)a3 fullMode:(BOOL)a4;
+ (signed)connectionToQuarantine:(id)a3;
+ (signed)logModeForEntryKey:(id)a3 withKey:(id)a4 andValue:(id)a5;
+ (unint64_t)coalitionIDForPid:(int)a3;
+ (unint64_t)convertToBase10:(id)a3 fromBaseN:(int)a4;
+ (unint64_t)directorySize:(id)a3;
+ (unint64_t)getCurrMachAbsTimeInSecs;
+ (unint64_t)machTimeFromSeconds:(double)a3;
+ (unint64_t)maxProcessCount;
+ (unsigned)getHardwarePerfLevels;
+ (void)dispatchSyncIfNotCallerQueue:(id)a3 withBlock:(id)a4;
+ (void)exitWithReason:(signed __int16)a3 action:(signed __int16)a4;
+ (void)getCurrentMonotonicAndMachAbsTime:(id *)a3 machAbsTime:(unint64_t *)a4 machContTime:(unint64_t *)a5;
+ (void)getDefaultL0bThresholdForDeviceType;
+ (void)getLastSystemTimeOffset;
+ (void)isImproveFitnessPlusEnabled;
+ (void)maxProcessCount;
+ (void)postNotificationName:(id)a3 object:(id)a4 userInfo:(id)a5;
+ (void)quarantineToPath:(id)a3 action:(signed __int16)a4;
+ (void)refreshBUI;
+ (void)reportZlibResultToCA:(int)a3 forEvent:(id)a4;
+ (void)setMobileOwnerForFile:(id)a3;
@end

@implementation PLUtilities

+ (id)containerPath
{
  if (containerPath_onceToken != -1)
  {
    +[PLUtilities containerPath];
  }

  v3 = containerPath_containerPath;

  return v3;
}

void __28__PLUtilities_containerPath__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = container_system_group_path_for_identifier();
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
    v4 = containerPath_containerPath;
    containerPath_containerPath = v3;

    free(v2);
  }

  else
  {
    NSLog(&cfstr_ErrorFetchingG.isa, 1);
    [PLUtilities exitSafe:1];
  }

  objc_autoreleasePoolPop(v0);
}

+ (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 withName:(id)a5 error:(id *)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v22 = @"override-fileName";
    v23[0] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D02D08];
  v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v15 = OSAMoveFileForSubmissions();

  if (v15)
  {
    v16 = MEMORY[0x277CBEBC0];
    v17 = [v8 lastPathComponent];
    v18 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingPathComponent:v17];
    v19 = [v16 fileURLWithPath:v18];
    [PPSFileUtilities markAsPurgeable:v19 urgency:512 startDate:0];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (BOOL)PLCopyItemsFromPath:(id)a3 toPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v24 = 0;
  v8 = [v7 contentsOfDirectoryAtPath:v5 error:&v24];
  v9 = v24;
  if (v9)
  {
    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities PLCopyItemsFromPath:toPath:];
    }

    v11 = *(v26 + 24);
  }

  else
  {
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:1];
    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __42__PLUtilities_PLCopyItemsFromPath_toPath___block_invoke;
    v17[3] = &unk_279A5C688;
    v14 = v12;
    v18 = v14;
    v15 = v13;
    v19 = v15;
    v23 = &v25;
    v20 = v7;
    v21 = v5;
    v22 = v6;
    [v8 enumerateObjectsUsingBlock:v17];
    v11 = *(v26 + 24);
  }

  _Block_object_dispose(&v25, 8);
  return v11 & 1;
}

void __42__PLUtilities_PLCopyItemsFromPath_toPath___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 URLByAppendingPathComponent:v7];
  v9 = [*(a1 + 40) URLByAppendingPathComponent:v7];

  v10 = *(a1 + 48);
  v14 = 0;
  v11 = [v10 copyItemAtURL:v8 toURL:v9 error:&v14];
  v12 = v14;
  *(*(*(a1 + 72) + 8) + 24) = v11;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    [PPSFileUtilities markAsPurgeable:v9 urgency:512 startDate:0];
  }

  else
  {
    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __42__PLUtilities_PLCopyItemsFromPath_toPath___block_invoke_cold_1(a1);
    }

    *a4 = 1;
  }
}

+ (BOOL)createAndChownDirectory:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v14];
  v6 = v14;

  if (v5)
  {
    [PLUtilities setMobileOwnerForFile:v3];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"error=%@", v6];
    v8 = MEMORY[0x277D3F178];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLUtilities.m"];
    v10 = [v9 lastPathComponent];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLUtilities createAndChownDirectory:]"];
    [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:217];

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }
  }

  return v5;
}

+ (BOOL)createAndChownDirectoryIfDirectoryDoesNotExist:(id)a3
{
  v3 = a3;
  v8 = 0;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v8];

  v6 = 0;
  if ((v5 & 1) == 0)
  {
    v6 = [PLUtilities createAndChownDirectory:v3];
  }

  return v6;
}

+ (void)setMobileOwnerForFile:(id)a3
{
  v3 = a3;
  v4 = getpwnam("mobile");
  v5 = [v3 fileSystemRepresentation];

  pw_uid = v4->pw_uid;
  pw_gid = v4->pw_gid;

  chown(v5, pw_uid, pw_gid);
}

+ (BOOL)compressWithSource:(id)a3 withDestination:(id)a4 withLevel:(int)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PLLogZlib();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_DEFAULT, "compressWithSource: source file = %@, destination file = %@", &v21, 0x16u);
  }

  v9 = fopen([v6 UTF8String], "r");
  if (!v9)
  {
    v16 = PLLogZlib();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities compressWithSource:withDestination:withLevel:];
    }

    goto LABEL_18;
  }

  v10 = v9;
  v11 = fopen([v7 UTF8String], "w");
  v12 = PLLogZlib();
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities compressWithSource:withDestination:withLevel:];
    }

    v15 = v10;
    goto LABEL_17;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[PLUtilities compressWithSource:withDestination:withLevel:];
  }

  if ([PLUtilities compressWithSourceStream:v10 withDestination:v11 withLevel:4])
  {
    v14 = PLLogZlib();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities compressWithSource:withDestination:withLevel:];
    }

    fclose(v10);
    v15 = v11;
LABEL_17:
    fclose(v15);
LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  fclose(v10);
  fclose(v11);
  v20 = PLLogZlib();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_DEFAULT, "compressWithSource: successfully decompressed %@ to %@", &v21, 0x16u);
  }

  v17 = 1;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (int)compressWithSourceStream:(__sFILE *)a3 withDestination:(__sFILE *)a4 withLevel:(int)a5
{
  v19[1024] = *MEMORY[0x277D85DE8];
  memset(&v17, 0, sizeof(v17));
  v8 = deflateInit2_(&v17, a5, 8, 31, 8, 0, "1.2.12", 112);
  if (v8)
  {
    v9 = v8;
    [a1 reportZlibResultToCA:v8 forEvent:@"com.apple.powerlog.zlib.compress"];
  }

  else
  {
LABEL_3:
    v10 = fread(v19, 1uLL, 0x2000uLL, a3);
    if (v10 >= 0xFFFFFFFF)
    {
      +[PLUtilities compressWithSourceStream:withDestination:withLevel:];
    }

    v17.avail_in = v10;
    if (!ferror(a3))
    {
      v11 = feof(a3);
      v17.next_in = v19;
      while (1)
      {
        v17.avail_out = 0x2000;
        v17.next_out = __ptr;
        v12 = deflate(&v17, 4 * (v11 != 0));
        if (v12 == -2)
        {
          +[PLUtilities compressWithSourceStream:withDestination:withLevel:];
        }

        v13 = v12;
        v14 = 0x2000 - v17.avail_out;
        if (fwrite(__ptr, 1uLL, v14, a4) != v14 || ferror(a4))
        {
          break;
        }

        if (v17.avail_out)
        {
          if (v17.avail_in)
          {
            +[PLUtilities compressWithSourceStream:withDestination:withLevel:];
          }

          if (v11)
          {
            if (v13 != 1)
            {
              +[PLUtilities compressWithSourceStream:withDestination:withLevel:];
            }

            deflateEnd(&v17);
            v9 = 0;
            goto LABEL_15;
          }

          goto LABEL_3;
        }
      }
    }

    v9 = -1;
    [a1 reportZlibResultToCA:0xFFFFFFFFLL forEvent:{@"com.apple.powerlog.zlib.compress", v17.next_in}];
    deflateEnd(&v17);
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)decompressWithSource:(id)a3 withDestination:(id)a4 withRemoveSrc:(BOOL)a5
{
  v5 = a5;
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = [v7 pathExtension];
  v11 = [v9 stringWithFormat:@".%@", v10];

  v12 = [v11 isEqualToString:@".gz"];
  v13 = PLLogZlib();
  v14 = v13;
  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities decompressWithSource:withDestination:withRemoveSrc:];
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v7;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEFAULT, "decompressWithSource: source file = %@, destination file = %@", buf, 0x16u);
  }

  v15 = fopen([v7 UTF8String], "r");
  if (!v15)
  {
    v22 = PLLogZlib();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities decompressWithSource:withDestination:withRemoveSrc:];
    }

    goto LABEL_20;
  }

  v16 = v15;
  v17 = fopen([v8 UTF8String], "w");
  v18 = PLLogZlib();
  v19 = v18;
  if (!v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities decompressWithSource:withDestination:withRemoveSrc:];
    }

    fclose(v16);
    goto LABEL_24;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    +[PLUtilities decompressWithSource:withDestination:withRemoveSrc:];
  }

  if ([PLUtilities decompressWithSourceStream:v16 withDestinationStream:v17])
  {
    v20 = PLLogZlib();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities decompressWithSource:withDestination:withRemoveSrc:];
    }

    fclose(v16);
    fclose(v17);
    v21 = [MEMORY[0x277CCAA00] defaultManager];
    v29 = 0;
    [v21 removeItemAtPath:v8 error:&v29];
    v22 = v29;

    if (v22)
    {
      v23 = PLLogZlib();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        +[PLUtilities decompressWithSource:withDestination:withRemoveSrc:];
      }
    }

LABEL_20:

LABEL_24:
    v24 = 0;
    goto LABEL_25;
  }

  fclose(v16);
  fclose(v17);
  v27 = PLLogZlib();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v7;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEFAULT, "decompressWithSource: successfully decompressed %@ to %@", buf, 0x16u);
  }

  if (v5)
  {
    v28 = [MEMORY[0x277CCAA00] defaultManager];
    [v28 removeItemAtPath:v7 error:0];
  }

  v24 = 1;
LABEL_25:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (int)decompressWithSourceStream:(__sFILE *)a3 withDestinationStream:(__sFILE *)a4
{
  v18[1024] = *MEMORY[0x277D85DE8];
  memset(&strm.avail_in, 0, 104);
  strm.avail_in = 0;
  strm.next_in = 0;
  v7 = inflateInit2_(&strm, 31, "1.2.12", 112);
  if (v7)
  {
    [a1 reportZlibResultToCA:v7 forEvent:@"com.apple.powerlog.zlib.decompress"];
  }

  else
  {
    while (2)
    {
      v8 = fread(v18, 1uLL, 0x2000uLL, a3);
      strm.avail_in = v8;
      if (ferror(a3))
      {
LABEL_18:
        LODWORD(v7) = -1;
        v12 = a1;
        v13 = 0xFFFFFFFFLL;
LABEL_16:
        [v12 reportZlibResultToCA:v13 forEvent:@"com.apple.powerlog.zlib.decompress"];
        inflateEnd(&strm);
      }

      else
      {
        if (v8)
        {
          strm.next_in = v18;
          do
          {
            strm.avail_out = 0x2000;
            strm.next_out = __ptr;
            v9 = inflate(&strm, 0);
            v7 = v9;
            if ((v9 + 4) < 2)
            {
              goto LABEL_15;
            }

            if (v9 == 2)
            {
              v7 = 4294967293;
LABEL_15:
              v12 = a1;
              v13 = v7;
              goto LABEL_16;
            }

            if (v9 == -2)
            {
              +[PLUtilities decompressWithSourceStream:withDestinationStream:];
            }

            v10 = 0x2000 - strm.avail_out;
            if (fwrite(__ptr, 1uLL, v10, a4) != v10 || ferror(a4))
            {
              goto LABEL_18;
            }
          }

          while (!strm.avail_out);
          if (v7 != 1)
          {
            continue;
          }

          v11 = 0;
        }

        else
        {
          v11 = v7 != 1;
          if (v7 >= 2)
          {
            [a1 reportZlibResultToCA:v7 forEvent:@"com.apple.powerlog.zlib.decompress"];
            v11 = 1;
          }
        }

        inflateEnd(&strm);
        LODWORD(v7) = v11 << 31 >> 31;
      }

      break;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (void)reportZlibResultToCA:(int)a3 forEvent:(id)a4
{
  v4 = a4;
  v5 = PLLogZlib();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[PLUtilities reportZlibResultToCA:forEvent:];
  }

  AnalyticsSendEventLazy();
}

id __45__PLUtilities_reportZlibResultToCA_forEvent___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"errorID";
  v1 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)extractDateStringAndUUIDStringFromFilePath:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"."];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 substringToIndex:v4];
    v7 = [v6 componentsSeparatedByString:@"_"];
    if ([v7 count] >= 2)
    {
      v5 = [v7 subarrayWithRange:{objc_msgSend(v7, "count") - 2, 2}];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (unint64_t)directorySize:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 subpathsOfDirectoryAtPath:v3 error:0];
  v6 = [v5 objectEnumerator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v10 = [v3 stringByAppendingPathComponent:v8];
      v11 = [v4 attributesOfItemAtPath:v10 error:0];

      v9 += [v11 fileSize];
      v12 = [v6 nextObject];

      v8 = v12;
    }

    while (v12);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int)numFilesAtPath:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:&v11];
  v6 = v11;
  if (v6)
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities numFilesAtPath:];
    }

    v8 = -1;
  }

  else
  {
    v8 = [v5 count];
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v3;
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEFAULT, "Num files at %@ = %d", buf, 0x12u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (int64_t)compareFilesByKey:(id)a3 file1:(id)a4 file2:(id)a5 sortAscending:(BOOL)a6
{
  v6 = a6;
  v17 = 0;
  v9 = a5;
  v10 = a3;
  [a4 getResourceValue:&v17 forKey:v10 error:0];
  v11 = v17;
  v16 = 0;
  [v9 getResourceValue:&v16 forKey:v10 error:0];

  v12 = v16;
  if (v6)
  {
    v13 = v11;
  }

  else
  {
    v13 = v16;
    v12 = v11;
  }

  v14 = [v13 compare:v12];

  return v14;
}

+ (int)remove:(int)a3 oldestFilesFromDirectory:(id)a4 containingFileNameSubstring:(id)a5
{
  v43[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  if (a3 >= 1 && v7)
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = __Block_byref_object_copy__6;
    v34[4] = __Block_byref_object_dispose__6;
    v35 = 0;
    v11 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    v43[0] = *MEMORY[0x277CBE7C0];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    v33 = 0;
    v13 = [v10 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:v12 options:4 error:&v33];
    v14 = v33;

    if (v14)
    {
      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[PLUtilities remove:oldestFilesFromDirectory:containingFileNameSubstring:];
      }

      v9 = *(v37 + 6);
    }

    else
    {
      v16 = [MEMORY[0x277CBEB18] array];
      if (v8)
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke;
        v30[3] = &unk_279A5C6D0;
        v17 = v8;
        v31 = v17;
        v18 = v16;
        v32 = v18;
        [v13 enumerateObjectsUsingBlock:v30];
        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          +[PLUtilities remove:oldestFilesFromDirectory:containingFileNameSubstring:].cold.2(v17, v42, [v18 count], v19);
        }

        v20 = v31;
      }

      else
      {
        v18 = [MEMORY[0x277CBEB18] arrayWithArray:v13];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          +[PLUtilities remove:oldestFilesFromDirectory:containingFileNameSubstring:];
        }
      }

      v21 = [v18 sortedArrayUsingComparator:&__block_literal_global_86];
      v22 = [v21 subarrayWithRange:{0, a3}];
      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = v22;
        _os_log_impl(&dword_25EE51000, v23, OS_LOG_TYPE_INFO, "Removing files: %@", buf, 0xCu);
      }

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_87;
      v26[3] = &unk_279A5C718;
      v28 = v34;
      v27 = v10;
      v29 = &v36;
      [v22 enumerateObjectsUsingBlock:v26];
      v9 = *(v37 + 6);
    }

    _Block_object_dispose(v34, 8);
  }

  _Block_object_dispose(&v36, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

void __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 lastPathComponent];
  v4 = [v3 containsString:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

uint64_t __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_83(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v19 = 0;
  v6 = *MEMORY[0x277CBE7C0];
  v18 = 0;
  [v4 getResourceValue:&v19 forKey:v6 error:&v18];
  v7 = v19;
  v8 = v18;
  v16 = 0;
  v17 = 0;
  [v5 getResourceValue:&v17 forKey:v6 error:&v16];
  v9 = v17;
  v10 = v16;
  if (v8 | v10)
  {
    if (v8)
    {
      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_83_cold_1();
      }
    }

    if (v10)
    {
      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_83_cold_1();
      }
    }

    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_83_cold_3();
    }

    v14 = 0;
  }

  else
  {
    v14 = [v7 compare:v9];
  }

  return v14;
}

void __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_87(void *a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 5);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = a1[4];
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  [v7 removeItemAtURL:v3 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (*(*(a1[5] + 8) + 40))
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_87_cold_1(v3, v4);
    }
  }

  else
  {
    ++*(*(a1[6] + 8) + 24);
  }
}

+ (id)workQueueForClass:(Class)a3
{
  v3 = NSStringFromClass(a3);
  v4 = [PLUtilities workQueueForKey:v3];

  return v4;
}

+ (id)workQueueForKey:(id)a3
{
  v3 = a3;
  if (workQueueForKey__sOnceTokenWorkQueue != -1)
  {
    +[PLUtilities workQueueForKey:];
  }

  v4 = workQueueForKey__workQueueDictionary;
  objc_sync_enter(v4);
  if (v3)
  {
    v5 = [workQueueForKey__workQueueDictionary objectForKeyedSubscript:v3];
    if (!v5)
    {
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_attr_make_with_qos_class(v6, workQueueForKey__qos, 0);

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.powerlog.workqueue.%@", v3];
      v5 = dispatch_queue_create([v8 UTF8String], v7);

      [workQueueForKey__workQueueDictionary setObject:v5 forKeyedSubscript:v3];
    }
  }

  else
  {
    v5 = [workQueueForKey__workQueueDictionary objectForKeyedSubscript:@"__GeneralWorkQueue__"];
  }

  objc_sync_exit(v4);

  return v5;
}

void __31__PLUtilities_workQueueForKey___block_invoke()
{
  v0 = 25;
  if (!+[PLUtilities isPowerlogHelperd])
  {
    if (+[PLUtilities isPerfPowerMetricd])
    {
      v0 = 25;
    }

    else
    {
      v0 = 9;
    }
  }

  workQueueForKey__qos = v0;
  v1 = objc_opt_new();
  v2 = workQueueForKey__workQueueDictionary;
  workQueueForKey__workQueueDictionary = v1;

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v3, workQueueForKey__qos, 0);

  v4 = dispatch_queue_create("com.apple.powerlog.workqueue.general", attr);
  [workQueueForKey__workQueueDictionary setObject:v4 forKeyedSubscript:@"__GeneralWorkQueue__"];
}

+ (void)dispatchSyncIfNotCallerQueue:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  label = dispatch_queue_get_label(0);
  v7 = dispatch_queue_get_label(a3);
  if (!strcmp(label, v7))
  {
    v5[2](v5);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__PLUtilities_dispatchSyncIfNotCallerQueue_withBlock___block_invoke;
    block[3] = &unk_279A5C740;
    v9 = v5;
    dispatch_sync(a3, block);
  }
}

+ (void)postNotificationName:(id)a3 object:(id)a4 userInfo:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (postNotificationName_object_userInfo__onceToken != -1)
  {
    +[PLUtilities postNotificationName:object:userInfo:];
  }

  v10 = postNotificationName_object_userInfo__notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__PLUtilities_postNotificationName_object_userInfo___block_invoke_2;
  block[3] = &unk_279A5C768;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, block);
}

uint64_t __52__PLUtilities_postNotificationName_object_userInfo___block_invoke()
{
  postNotificationName_object_userInfo__notificationQueue = [PLUtilities workQueueForKey:@"PostNotificationQueue"];

  return MEMORY[0x2821F96F8]();
}

void __52__PLUtilities_postNotificationName_object_userInfo___block_invoke_2(void *a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:a1[4] object:a1[5] userInfo:a1[6]];
}

+ (double)getMachbaseTimeRatio
{
  if (getMachbaseTimeRatio_once != -1)
  {
    +[PLUtilities getMachbaseTimeRatio];
  }

  return *&getMachbaseTimeRatio_ratio;
}

uint64_t __35__PLUtilities_getMachbaseTimeRatio__block_invoke()
{
  info = 0;
  result = mach_timebase_info(&info);
  if (result)
  {
    result = _os_assumes_log();
    v3 = 1.0;
  }

  else
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    v3 = v1 / v2;
  }

  getMachbaseTimeRatio_ratio = *&v3;
  return result;
}

+ (unint64_t)machTimeFromSeconds:(double)a3
{
  if (a3 < 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      +[PLUtilities machTimeFromSeconds:];
    }

    return 0;
  }

  +[PLUtilities getMachbaseTimeRatio];
  if (v4 == 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities machTimeFromSeconds:];
    }

    return 0;
  }

  v6 = a3 * 1000000000.0 / v4;
  if (v6 >= 1.84467441e19)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities machTimeFromSeconds:];
    }

    return -1;
  }

  else
  {
    if (v6 < 0.0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        +[PLUtilities machTimeFromSeconds:];
      }

      return 0;
    }

    return v6;
  }
}

+ (id)dateFromTimeval:(timeval)a3
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:a3.tv_usec / 1000000.0 + a3.tv_sec];
  v4 = [v3 convertFromSystemToMonotonic];

  return v4;
}

+ (id)dateFromnSecEpoch:(unint64_t)a3
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:a3 / 1000000000.0];
  v4 = [v3 convertFromSystemToMonotonic];

  return v4;
}

+ (id)deviceBootTime
{
  if (deviceBootTime_onceToken != -1)
  {
    +[PLUtilities deviceBootTime];
  }

  v3 = deviceBootTime_bootTime;

  return [v3 convertFromSystemToMonotonic];
}

void __29__PLUtilities_deviceBootTime__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  *v6 = 0x1500000001;
  v5 = 16;
  if (sysctl(v6, 2u, &v3, &v5, 0, 0) != -1)
  {
    v0 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v4 / 1000000.0 + v3];
    v1 = deviceBootTime_bootTime;
    deviceBootTime_bootTime = v0;
  }

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)deviceBootUUID
{
  v28 = *MEMORY[0x277D85DE8];
  memset(v27, 0, sizeof(v27));
  v26 = 37;
  v2 = sysctlbyname("kern.bootsessionuuid", v27, &v26, 0, 0);
  if (v2)
  {
    if (v2 == -1)
    {
      +[PLUtilities deviceBootUUID];
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v3 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __29__PLUtilities_deviceBootUUID__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v3;
      if (deviceBootUUID_defaultOnce != -1)
      {
        dispatch_once(&deviceBootUUID_defaultOnce, block);
      }

      if (deviceBootUUID_classDebugEnabled == 1)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to get system boot session uuid %d", *__error()];
        v5 = MEMORY[0x277D3F178];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLUtilities.m"];
        v7 = [v6 lastPathComponent];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLUtilities deviceBootUUID]"];
        [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:803];

        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v10 = 0;
LABEL_17:

        goto LABEL_19;
      }
    }

    v10 = 0;
  }

  else
  {
    v27[36] = 0;
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v27];
    v10 = [v11 initWithUUIDString:v12];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v13 = objc_opt_class();
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __29__PLUtilities_deviceBootUUID__block_invoke_118;
      v23 = &__block_descriptor_40_e5_v8__0lu32l8;
      v24 = v13;
      if (deviceBootUUID_defaultOnce_116 != -1)
      {
        dispatch_once(&deviceBootUUID_defaultOnce_116, &v20);
      }

      if (deviceBootUUID_classDebugEnabled_117 == 1)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"system boot session uuid: %@", v10, v20, v21, v22, v23, v24];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLUtilities.m"];
        v16 = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLUtilities deviceBootUUID]"];
        [v14 logMessage:v4 fromFile:v16 fromFunction:v17 fromLineNumber:808];

        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        goto LABEL_17;
      }
    }
  }

LABEL_19:
  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __29__PLUtilities_deviceBootUUID__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  deviceBootUUID_classDebugEnabled = result;
  return result;
}

uint64_t __29__PLUtilities_deviceBootUUID__block_invoke_118(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  deviceBootUUID_classDebugEnabled_117 = result;
  return result;
}

+ (BOOL)deviceRebooted
{
  if (deviceRebooted_onceToken != -1)
  {
    +[PLUtilities deviceRebooted];
  }

  return deviceRebooted___deviceRebooted;
}

void __29__PLUtilities_deviceRebooted__block_invoke()
{
  v4 = +[PLUtilities deviceBootUUID];
  if (!v4)
  {
    deviceRebooted___deviceRebooted = 0;
    goto LABEL_9;
  }

  v0 = [MEMORY[0x277D3F180] objectForKey:@"BootSessionUUID"];
  if (v0)
  {
    v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v0];
    deviceRebooted___deviceRebooted = [v1 isEqual:v4] ^ 1;

    if ((deviceRebooted___deviceRebooted & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    deviceRebooted___deviceRebooted = 1;
  }

  v2 = MEMORY[0x277D3F180];
  v3 = [v4 UUIDString];
  [v2 setObject:v3 forKey:@"BootSessionUUID" saveToDisk:1];

LABEL_8:
LABEL_9:
}

+ (double)getLastSystemTimeOffset
{
  v2 = [MEMORY[0x277D3F230] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F618]];
  v3 = [MEMORY[0x277D3F2A0] sharedCore];
  v4 = [v3 storage];
  v5 = [v4 lastEntryForKey:v2];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D3F620]];
  [v6 doubleValue];
  v8 = v7;

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[PLUtilities getLastSystemTimeOffset];
  }

  return v8;
}

+ (id)getFirstBatteryTimestamp
{
  v2 = [MEMORY[0x277D3F2A0] sharedCore];
  v3 = [v2 storage];
  v4 = [v3 firstEntryForKey:@"PLBatteryAgent_EventBackward_Battery"];

  v5 = [v4 entryDate];

  return v5;
}

+ (id)getLastBatteryTimestamp
{
  v2 = [MEMORY[0x277D3F2A0] sharedCore];
  v3 = [v2 storage];
  v4 = [v3 lastEntryForKey:@"PLBatteryAgent_EventBackward_Battery"];

  v5 = [v4 entryDate];

  return v5;
}

+ (id)getOverridableMonotonicNow
{
  if (+[PLUtilities inBUIDemoMode])
  {
    v2 = [MEMORY[0x277D3F180] objectForKey:@"BUI_DEMO_QUERY_TIME" forApplicationID:@"com.apple.powerlogd" synchronize:1];
    v3 = [MEMORY[0x277D3F180] objectForKey:@"BUI_DEMO_QUERY_TIME_OFFSET" forApplicationID:@"com.apple.powerlogd" synchronize:1];
    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v2 doubleValue];
      v5 = v4;
    }

    else
    {
      v7 = +[PLUtilities getLastBatteryTimestamp];
      v8 = [v7 convertFromMonotonicToSystem];
      [v8 timeIntervalSince1970];
      v5 = v9;
    }

    v10 = 0.0;
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 doubleValue];
        v10 = v11;
      }
    }

    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v5 + v10];
    v6 = [v12 convertFromSystemToMonotonic];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] monotonicDate];
  }

  return v6;
}

+ (void)getCurrentMonotonicAndMachAbsTime:(id *)a3 machAbsTime:(unint64_t *)a4 machContTime:(unint64_t *)a5
{
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v8 = [a1 getMachTimebase];
  if (mach_get_times())
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__PLUtilities_getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime___block_invoke_146;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v9;
      if (getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__defaultOnce_144 != -1)
      {
        dispatch_once(&getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__defaultOnce_144, block);
      }

      if (getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__classDebugEnabled_145 == 1)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"mach_get_times() call failed."];
        v11 = MEMORY[0x277D3F178];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLUtilities.m"];
        v13 = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLUtilities getCurrentMonotonicAndMachAbsTime:machAbsTime:machContTime:]"];
        [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:898];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    *a3 = [MEMORY[0x277CBEAA8] monotonicDate];
    if (a4)
    {
      *a4 = mach_absolute_time() * *v8 / v8[1];
    }

    if (a5)
    {
      *a5 = mach_continuous_time() * *v8 / v8[1];
    }
  }

  else
  {
    v16 = [PLUtilities dateFromTimeval:v31, (v32 / 1000)];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __74__PLUtilities_getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime___block_invoke;
      v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v28[4] = v17;
      if (getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__defaultOnce != -1)
      {
        dispatch_once(&getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__defaultOnce, v28);
      }

      if (getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__classDebugEnabled == 1)
      {
        v18 = MEMORY[0x277CCACA8];
        v19 = [MEMORY[0x277CBEAA8] monotonicDate];
        v20 = [v18 stringWithFormat:@"Converted monotonic time: %@, reference monotonic time: %@.", v16, v19];

        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLUtilities.m"];
        v23 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLUtilities getCurrentMonotonicAndMachAbsTime:machAbsTime:machContTime:]"];
        [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:887];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v26 = v16;
    *a3 = v16;
    if (a4)
    {
      *a4 = v30 * *v8 / v8[1];
    }

    if (a5)
    {
      *a5 = v29 * *v8 / v8[1];
    }
  }
}

uint64_t __74__PLUtilities_getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__classDebugEnabled = result;
  return result;
}

uint64_t __74__PLUtilities_getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime___block_invoke_146(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__classDebugEnabled_145 = result;
  return result;
}

+ (mach_timebase_info)getMachTimebase
{
  if (getMachTimebase_onceToken != -1)
  {
    +[PLUtilities getMachTimebase];
  }

  return &getMachTimebase_machTimeInfo;
}

double __30__PLUtilities_getMachTimebase__block_invoke()
{
  if (mach_timebase_info(&getMachTimebase_machTimeInfo))
  {
    _os_assumes_log();
  }

  else if (dword_28148EF74)
  {
    return result;
  }

  *&result = 0x100000001;
  getMachTimebase_machTimeInfo = 0x100000001;
  return result;
}

+ (unint64_t)getCurrMachAbsTimeInSecs
{
  v3 = mach_absolute_time();
  v4 = [a1 getMachTimebase];
  return v3 * *v4 / v4[1] / 0x3B9ACA00;
}

+ (signed)connectionToQuarantine:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 filePath];
    v6 = [v5 hasSuffix:@".PLSQL"];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v8 = [v4 filePath];
      v9 = [v8 hasSuffix:@".EPSQL"];

      if (v9)
      {
        v7 = 2;
      }

      else
      {
        v10 = [v4 filePath];
        v11 = [v10 hasSuffix:@".CESQL"];

        if (v11)
        {
          v7 = 3;
        }

        else
        {
          v12 = [v4 filePath];
          v13 = [v12 hasSuffix:@".XCSQL"];

          if (v13)
          {
            v7 = 4;
          }

          else
          {
            v14 = [v4 filePath];
            v15 = [v14 hasSuffix:@".BGSQL"];

            if (v15)
            {
              v7 = 5;
            }

            else
            {
              v7 = 0;
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)exitWithReason:(signed __int16)a3 action:(signed __int16)a4
{
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PLUtilities_exitWithReason_action___block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v8 = a3;
  v9 = a4;
  dispatch_async(v6, block);
}

void __37__PLUtilities_exitWithReason_action___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"exitReason=%i", *(a1 + 32)];
    v3 = MEMORY[0x277D3F178];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLUtilities.m"];
    v5 = [v4 lastPathComponent];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLUtilities exitWithReason:action:]_block_invoke"];
    [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:978];

    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = v2;
      _os_log_debug_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 34);
  if (+[PLUtilities PreUnlockTelemetryEnabled])
  {
    v9 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277D3F2A0] sharedCore];
    v11 = [v10 storage];
    v9 = [v11 storageLocked];
  }

  v12 = *(a1 + 32);
  if (v12 <= 99 && (v9 & 1) == 0)
  {
    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") && !+[PLUtilities isPowerexceptionsd])
    {
      v13 = [MEMORY[0x277D3F2A0] sharedCore];
      v14 = [v13 storage];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"ExitReason=%i", *(a1 + 32)];
      [v14 blockingFlushCachesWithReason:v15];
    }

    goto LABEL_21;
  }

  if (v12 < 1001)
  {
LABEL_21:
    v22 = 0;
    goto LABEL_45;
  }

  v16 = +[PLUtilities containerPath];
  v17 = [v16 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
  [PLUtilities createAndChownDirectory:v17];

  v18 = +[PLUtilities containerPath];
  v19 = [v18 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
  [PLUtilities createAndChownDirectory:v19];

  v20 = 0;
  v21 = *(a1 + 32);
  if (v21 > 0x3ED)
  {
    if (*(a1 + 32) <= 0x3EFu)
    {
      if (v21 == 1006)
      {
        v22 = @"PLExitReasonMonotonicTime";
        v8 = 6;
        v20 = @"%@MonotonicTimePowerlog_%f%@";
        v23 = @"com.apple.power.error.monotonicTimeDB";
        goto LABEL_39;
      }

      if (v21 == 1007)
      {
        v22 = @"PLExitReasonSQLVersionMismatch";
        v20 = @"%@SQLVersionMismatchPowerlog_%f%@";
        v23 = @"com.apple.power.error.SQLVersionMismatchDB";
        goto LABEL_39;
      }
    }

    else
    {
      switch(v21)
      {
        case 0x3F0u:
          v22 = @"PLExitReasonNewFileRequired";
          v20 = @"%@NewFileRequiredPowerlog_%f%@";
          v23 = @"com.apple.power.error.NewFileRequiredDB";
          goto LABEL_39;
        case 0x3F1u:
          v22 = @"kPLExitReasonDescKernelTime";
          v8 = 6;
          v20 = @"%@KernelTimePowerlog_%f%@";
          v23 = @"com.apple.power.error.kernelTimeDB";
          goto LABEL_39;
        case 0x3F2u:
          v22 = @"PLExitReasonDescPowerlogReset";
          v20 = @"%@PowerlogReset_%f%@";
          v23 = @"com.apple.power.error.PowerlogReset";
          goto LABEL_39;
      }
    }
  }

  else
  {
    if (*(a1 + 32) <= 0x3EAu)
    {
      if (v21 == 1001)
      {
        v22 = @"PLExitReasonCorrupt";
        v20 = @"%@CorruptPowerlog_%f%@";
        v23 = @"com.apple.power.error.corruptDB";
      }

      else
      {
        v22 = 0;
        if (v21 != 1002)
        {
          goto LABEL_40;
        }

        v8 = 0;
        v22 = @"PLExitReasonSubmissionTimeout";
        v20 = @"%@SubmissionTimeoutPowerlog_%f%@";
        v23 = @"com.apple.power.error.SubmissionTimeoutDB";
      }

      goto LABEL_39;
    }

    switch(v21)
    {
      case 0x3EBu:
        v22 = @"PLExitReasonArchiveTimeout";
        v20 = @"%@ArchiveTimeoutPowerlog_%f%@";
        v23 = @"com.apple.power.error.ArchiveTimeoutDB";
        goto LABEL_39;
      case 0x3ECu:
        v22 = @"PLExitReasonArchiveMaxAttempts";
        v20 = @"%@ArchiveMaxAttemptsPowerlog_%f%@";
        v23 = @"com.apple.power.error.ArchiveMaxAttemptsDB";
        goto LABEL_39;
      case 0x3EDu:
        v22 = @"PLExitReasonTooLarge";
        v20 = @"%@TooLargePowerlog_%f%@";
        v23 = @"com.apple.power.error.tooLargeDB";
LABEL_39:
        MEMORY[0x25F8D18D0](v23, 1);
        AnalyticsSendEventLazy();
        goto LABEL_40;
    }
  }

  v22 = 0;
LABEL_40:
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") || +[PLUtilities isPowerexceptionsd])
  {
    v8 = 0;
  }

  [PLUtilities quarantineToPath:v20 action:v8];
  [MEMORY[0x277D3F180] setObject:0 forKey:@"PLUUID" saveToDisk:1];
LABEL_45:
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") && !+[PLUtilities isPowerexceptionsd])
  {
    v24 = MEMORY[0x277D3F180];
    v25 = [MEMORY[0x277CCABB0] numberWithShort:*(a1 + 32)];
    [v24 setObject:v25 forKey:@"PLExitReasonKey" saveToDisk:1];
  }

  v26 = *(a1 + 32);
  if (v26 >= 1001)
  {
    v27 = PLLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v29 = v22;
      v30 = 1024;
      v31 = v8;
      _os_log_fault_impl(&dword_25EE51000, v27, OS_LOG_TYPE_FAULT, "Exiting due to %{public}@ action=%d", buf, 0x12u);
    }

    LOWORD(v26) = *(a1 + 32);
  }

  exit(v26 > 99);
}

+ (void)quarantineToPath:(id)a3 action:(signed __int16)a4
{
  v4 = a4;
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSince1970];
  v8 = v7;

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v57 = v4;
    _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_DEFAULT, "quarantine action: %hd", buf, 8u);
  }

  if (v4 == 6 || v4 == 1)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = +[PLUtilities containerPath];
    v13 = [v12 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
    v14 = [v11 stringWithFormat:v5, v13, v8, @".PLSQL"];

    v15 = [MEMORY[0x277D3F280] sharedSQLStorage];
    v16 = [v15 PLSQLConnection];
    [v9 setObject:v16 forKeyedSubscript:v14];
  }

  else
  {
    v14 = 0;
  }

  if ((v4 | 4) == 6)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = +[PLUtilities containerPath];
    v19 = [v18 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
    v20 = [v17 stringWithFormat:v5, v19, v8, @".EPSQL"];

    v21 = [MEMORY[0x277D3F280] sharedSQLStorage];
    v22 = [v21 EPSQLConnection];
    [v9 setObject:v22 forKeyedSubscript:v20];

    v14 = v20;
  }

  if (v4 == 6 || v4 == 3)
  {
    v23 = MEMORY[0x277CCACA8];
    v24 = +[PLUtilities containerPath];
    v25 = [v24 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
    v26 = [v23 stringWithFormat:v5, v25, v8, @".CESQL"];

    v27 = [MEMORY[0x277D3F280] sharedSQLStorage];
    v28 = [v27 CESQLConnection];
    [v9 setObject:v28 forKeyedSubscript:v26];

    v14 = v26;
  }

  if ((v4 | 2) == 6)
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = +[PLUtilities containerPath];
    v31 = [v30 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
    v32 = [v29 stringWithFormat:v5, v31, v8, @".XCSQL"];

    v33 = [MEMORY[0x277D3F280] sharedSQLStorage];
    v34 = [v33 XCSQLConnection];
    [v9 setObject:v34 forKeyedSubscript:v32];

    v14 = v32;
  }

  if ((v4 - 5) <= 1u)
  {
    v35 = MEMORY[0x277CCACA8];
    v36 = +[PLUtilities containerPath];
    v37 = [v36 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
    v38 = [v35 stringWithFormat:v5, v37, v8, @".BGSQL"];

    v39 = [MEMORY[0x277D3F280] sharedSQLStorage];
    v40 = [v39 BGSQLConnection];
    [v9 setObject:v40 forKeyedSubscript:v38];

    v14 = v38;
  }

  v41 = +[PLUtilities shouldCreateQuarantine];
  v42 = PLLogCommon();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v57 = v41;
    _os_log_impl(&dword_25EE51000, v42, OS_LOG_TYPE_DEFAULT, "should quarantine: %d", buf, 8u);
  }

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __39__PLUtilities_quarantineToPath_action___block_invoke;
  v53[3] = &unk_279A5C7B0;
  v43 = v9;
  v54 = v43;
  v55 = v41;
  [v43 enumerateKeysAndObjectsUsingBlock:v53];
  if ([MEMORY[0x277D3F180] fullMode] && (v4 == 6 || v4 == 1))
  {
    v44 = MEMORY[0x277CCACA8];
    v45 = +[PLUtilities containerPath];
    v46 = [v45 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
    v47 = [v44 stringWithFormat:v5, v46, v8, @".PLSQL"];

    v48 = [v47 lastPathComponent];
    v49 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingString:v48];

    v50 = [v47 lastPathComponent];
    [PLUtilities moveItemAtPath:v47 toPath:v49 withName:v50 error:0];

    v51 = [MEMORY[0x277CBEBC0] fileURLWithPath:v49];
    [PPSFileUtilities markAsPurgeable:v51 urgency:512 startDate:0];

    v14 = v47;
  }

  v52 = *MEMORY[0x277D85DE8];
}

void __39__PLUtilities_quarantineToPath_action___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __39__PLUtilities_quarantineToPath_action___block_invoke_cold_1(v4, v5);
  }

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __39__PLUtilities_quarantineToPath_action___block_invoke_cold_2();
  }

  if (*(a1 + 40) == 1)
  {
    [v4 moveDatabaseToPath:v3];
    [objc_opt_class() removeAdditionalFiles:v3];
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
    [PPSFileUtilities markAsPurgeable:v7 urgency:512 startDate:0];
  }

  else
  {
    [v4 truncateDB];
  }
}

+ (BOOL)shouldCreateQuarantine
{
  v2 = +[PLUtilities containerPath];
  v3 = [v2 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
  v4 = [PLUtilities numFilesAtPath:v3];

  if (v4 > 9)
  {
    return 0;
  }

  v6 = +[PLUtilities containerPath];
  v7 = [v6 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
  v8 = [PLUtilities numFilesAtPath:v7];

  return v8 < 0xA;
}

+ (BOOL)allowQueryFromPeer:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  xpc_connection_get_audit_token();
  memset(token, 0, 32);
  v4 = SecTaskCreateWithAuditToken(0, token);
  if (!v4)
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities allowQueryFromPeer:];
    }

    goto LABEL_20;
  }

  v5 = v4;
  CodeSignStatus = SecTaskGetCodeSignStatus(v4);
  v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.private.perfpowerservices.query.internal", 0);
  CFRelease(v5);
  v8 = PLLogCommon();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    pid = xpc_connection_get_pid(v3);
    v11 = [PLUtilities processNameForPid:pid];
    v12 = [PLUtilities bundleIDFromPid:pid];
    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *token = 67109890;
      *&token[4] = pid;
      *&token[8] = 2112;
      *&token[10] = v11;
      *&token[18] = 2112;
      *&token[20] = v12;
      *&token[28] = 1024;
      *&token[30] = CodeSignStatus;
      _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_INFO, "query from pid:%d procName:%@ bundleID:%@ csStatus:%d", token, 0x22u);
    }
  }

  if ((CodeSignStatus & 0xC000001) == 0x4000001)
  {
    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *token = 67109120;
      *&token[4] = CodeSignStatus;
      v15 = "allowing query %d";
      v16 = v14;
      v17 = 8;
LABEL_15:
      _os_log_impl(&dword_25EE51000, v16, OS_LOG_TYPE_INFO, v15, token, v17);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!v7 || ![MEMORY[0x277D3F208] internalBuild])
  {
    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *token = 67109120;
      *&token[4] = CodeSignStatus;
      _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_INFO, "query denied %d", token, 8u);
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *token = 0;
    v15 = "alloiwng query becaues internal build and has proper entitlements";
    v16 = v14;
    v17 = 2;
    goto LABEL_15;
  }

LABEL_16:

  v18 = 1;
LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)getPerfStatsForProcess:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 monotonicDate];
  v6 = [v5 dateByAddingTimeInterval:-86400.0];
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[PLUtilities getPerfStatsForProcess:];
  }

  v8 = MEMORY[0x277CCACA8];
  [v6 timeIntervalSince1970];
  v10 = v9;
  [v5 timeIntervalSince1970];
  v12 = [v8 stringWithFormat:@"SELECT LaunchdName AS BundleID, SUM(cpu_time) AS cpu_seconds, SUM(cpu_instructions) AS cpu_instructions, SUM(cpu_cycles) AS cpu_cycles FROM %@ where LaunchdName = '%@' AND timestamp >= %f and timestamp < %f", @"PLCoalitionAgent_EventInterval_CoalitionInterval", v4, v10, v11];

  v13 = PLLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v12;
    _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_DEFAULT, "[Perf Stats Query] %@", buf, 0xCu);
  }

  v14 = [MEMORY[0x277D3F210] sharedSQLiteConnection];
  v15 = [v14 performQuery:v12];

  if ([v15 count] && (objc_msgSend(v15, "firstObject"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectForKeyedSubscript:", @"BundleID"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isNil"), v17, v16, !v18))
  {
    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v15 firstObject];
      *buf = 138412290;
      v26 = v22;
      _os_log_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEFAULT, "Report perf stats to CA for %@", buf, 0xCu);
    }

    v20 = [v15 firstObject];
  }

  else
  {
    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities getPerfStatsForProcess:];
    }

    v20 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)getIdentifierFromEntry:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"BundleId"];
  if ([v4 isEqualToString:&stru_287103958])
  {
    v5 = [v3 objectForKeyedSubscript:@"LaunchdName"];
    v6 = [PLUtilities launchdNameToProcessName:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else if ([v5 length] > 9)
    {
      v8 = [v5 substringFromIndex:10];
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

+ (id)launchdNameToProcessName:(id)a3
{
  v3 = launchdNameToProcessName__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[PLUtilities launchdNameToProcessName:];
  }

  v5 = [launchdNameToProcessName__launchdNameToProcessNameDict objectForKeyedSubscript:v4];

  return v5;
}

void __40__PLUtilities_launchdNameToProcessName___block_invoke()
{
  v0 = launchdNameToProcessName__launchdNameToProcessNameDict;
  launchdNameToProcessName__launchdNameToProcessNameDict = &unk_287148040;
}

+ (id)binaryPathForPid:(int)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:proc_pidpath(a3 encoding:{buffer, 0x1000u), 4}];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)bundleIDFromProcessName:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 length])
  {
    if (bundleIDFromProcessName__onceToken != -1)
    {
      +[PLUtilities bundleIDFromProcessName:];
    }

    v4 = [bundleIDFromProcessName__processNameToBundleID objectForKeyedSubscript:v3];

    if (v4)
    {
      v5 = [bundleIDFromProcessName__processNameToBundleID objectForKeyedSubscript:v3];
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __39__PLUtilities_bundleIDFromProcessName___block_invoke_2;
      v15[3] = &unk_279A5C7D8;
      v7 = v3;
      v16 = v7;
      v8 = MEMORY[0x25F8D2750](v15);
      v9 = (v8)[2](v8, @"PLProcessMonitorAgent_EventForward_ProcessID", *MEMORY[0x277D3F560]);
      v10 = v9;
      if (v9 && (v11 = *MEMORY[0x277D3F4D0], [v9 objectForKeyedSubscript:*MEMORY[0x277D3F4D0]], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
      {
        v13 = [v10 objectForKeyedSubscript:v11];
      }

      else
      {
        v14 = (v8)[2](v8, @"PLApplicationAgent_EventNone_AllApps", @"AppExecutable");

        v13 = [v14 objectForKeyedSubscript:@"AppBundleId"];
        v10 = v14;
      }

      [bundleIDFromProcessName__processNameToBundleID setObject:v13 forKeyedSubscript:v7];

      v5 = [bundleIDFromProcessName__processNameToBundleID objectForKeyedSubscript:v7];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __39__PLUtilities_bundleIDFromProcessName___block_invoke()
{
  bundleIDFromProcessName__processNameToBundleID = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

id __39__PLUtilities_bundleIDFromProcessName___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D3F260];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithKey:v6 withValue:*(a1 + 32) withComparisonOperation:0];

  v9 = [MEMORY[0x277D3F2A0] sharedCore];
  v10 = [v9 storage];
  v15[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [v10 lastEntryForKey:v7 withComparisons:v11 isSingleton:1];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)bundleIDFromURL:(id)a3
{
  if (a3)
  {
    v3 = *MEMORY[0x277CBECE8];
    Unique = _CFBundleCreateUnique();
    v5 = Unique;
    if (Unique)
    {
      v6 = CFBundleGetIdentifier(Unique);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)bundleVersionFromURL:(id)a3
{
  if (a3)
  {
    v3 = *MEMORY[0x277CBECE8];
    Unique = _CFBundleCreateUnique();
    v5 = Unique;
    if (Unique)
    {
      v6 = CFBundleGetValueForInfoDictionaryKey(Unique, *MEMORY[0x277CBEC50]);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int)pidForProcessName:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = proc_listpids(1u, 0, 0, 0);
  if ((v4 & 0x80000000) != 0)
  {
    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities pidForProcessName:];
    }

    goto LABEL_13;
  }

  v5 = v4;
  v6 = v4;
  v7 = malloc_type_malloc(v4, 0x100004052888210uLL);
  if (!v7)
  {
    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities pidForProcessName:];
    }

LABEL_13:
    LODWORD(v11) = -1;
    goto LABEL_14;
  }

  v8 = v7;
  memset(v7, 255, v6);
  v9 = proc_listpids(1u, 0, v8, v5);
  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    +[PLUtilities pidForProcessName:];
  }

  if (v9 >= 4)
  {
    if (v9 >> 2 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v9 >> 2;
    }

    v16 = v8;
    while (1)
    {
      v17 = *v16++;
      v11 = v17;
      if (v17 >= 1)
      {
        v18 = [PLUtilities fullProcessNameForPid:v11];
        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v22 = v18;
          v23 = 1024;
          v24 = v11;
          _os_log_debug_impl(&dword_25EE51000, v19, OS_LOG_TYPE_DEBUG, "checking %@ (%d)", buf, 0x12u);
        }

        v20 = [v18 isEqualToString:v3];
        if (v20)
        {
          break;
        }
      }

      if (!--v15)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    LODWORD(v11) = -1;
  }

  free(v8);
  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[PLUtilities pidForProcessName:];
  }

LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)processNameForPid:(int)a3
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 512);
  v6 = 648;
  *v7 = 0xE00000001;
  v8 = 1;
  v9 = a3;
  if (sysctl(v7, 4u, v10, &v6, 0, 0) < 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v10[15] + 3];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)fullProcessNameForPid:(int)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3 < 1 || (bzero(buffer, 0x1000uLL), proc_pidpath(a3, buffer, 0x1000u) < 1))
  {
    v4 = 0;
  }

  else
  {
    buffer[4095] = 0;
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:basename(buffer)];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)pUUIDForPid:(int)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v3 = proc_pidinfo(a3, 17, 1uLL, v7, 56);
  v4 = 0;
  if (v3 == 56)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v7];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (unint64_t)maxProcessCount
{
  v4 = 8;
  v5 = 0;
  if (!sysctlbyname("kern.maxproc", &v5, &v4, 0, 0))
  {
    return v5;
  }

  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[PLUtilities maxProcessCount];
  }

  return 0;
}

+ (unint64_t)coalitionIDForPid:(int)a3
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v3 = proc_pidinfo(a3, 20, 1uLL, v5, 40);
  if (v3 == 40)
  {
    return *&v5[0];
  }

  else
  {
    return -v3;
  }
}

+ (BOOL)isLiteModeDaemon
{
  if (isLiteModeDaemon_onceToken != -1)
  {
    +[PLUtilities isLiteModeDaemon];
  }

  return isLiteModeDaemon_isLiteModeDaemon;
}

void __31__PLUtilities_isLiteModeDaemon__block_invoke()
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v2 processName];
  v1 = +[PLUtilities liteModeDaemonName];
  isLiteModeDaemon_isLiteModeDaemon = [v0 isEqualToString:v1];
}

+ (BOOL)isFullModeDaemon
{
  if (isFullModeDaemon_onceToken != -1)
  {
    +[PLUtilities isFullModeDaemon];
  }

  return isFullModeDaemon_isFullModeDaemon;
}

void __31__PLUtilities_isFullModeDaemon__block_invoke()
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v2 processName];
  v1 = +[PLUtilities fullModeDaemonName];
  isFullModeDaemon_isFullModeDaemon = [v0 isEqualToString:v1];
}

+ (BOOL)isPowerlogHelperd
{
  if (isPowerlogHelperd_onceToken != -1)
  {
    +[PLUtilities isPowerlogHelperd];
  }

  return isPowerlogHelperd_isPowerlogHelperd;
}

void __32__PLUtilities_isPowerlogHelperd__block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  isPowerlogHelperd_isPowerlogHelperd = [v0 isEqualToString:@"powerlogHelperd"];
}

+ (BOOL)isPerfPowerMetricd
{
  if (isPerfPowerMetricd_onceToken != -1)
  {
    +[PLUtilities isPerfPowerMetricd];
  }

  return isPerfPowerMetricd_isPerfPowerMetricd;
}

void __33__PLUtilities_isPerfPowerMetricd__block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  isPerfPowerMetricd_isPerfPowerMetricd = [v0 isEqualToString:@"perfpowermetricd"];
}

+ (BOOL)isPowerexceptionsd
{
  if (isPowerexceptionsd_onceToken != -1)
  {
    +[PLUtilities isPowerexceptionsd];
  }

  return isPowerexceptionsd_isPowerexceptionsd;
}

void __33__PLUtilities_isPowerexceptionsd__block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  isPowerexceptionsd_isPowerexceptionsd = [v0 isEqualToString:@"powerexceptionsd"];
}

+ (BOOL)runningAsMobileUser
{
  if (runningAsMobileUser_onceToken != -1)
  {
    +[PLUtilities runningAsMobileUser];
  }

  return runningAsMobileUser_runningAsMobileUser;
}

void __34__PLUtilities_runningAsMobileUser__block_invoke()
{
  v0 = +[PLUtilities runningAsUser];
  runningAsMobileUser_runningAsMobileUser = [v0 caseInsensitiveCompare:@"mobile"] == 0;
}

+ (id)runningAsUser
{
  if (runningAsUser_onceToken == -1)
  {
  }

  else
  {
    +[PLUtilities runningAsUser];
  }

  return NSUserName();
}

uint64_t __28__PLUtilities_runningAsUser__block_invoke()
{
  runningAsUser_userName = NSUserName();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)shouldLogPreUnlockTelemetry
{
  v2 = +[PLUtilities PreUnlockTelemetryEnabled];
  if (v2)
  {
    v3 = [MEMORY[0x277D3F2A0] sharedCore];
    v4 = [v3 storage];
    v5 = [v4 storageLocked];

    LOBYTE(v2) = v5;
  }

  return v2;
}

+ (BOOL)AppDeletionEnabled
{
  if (AppDeletionEnabled_onceToken != -1)
  {
    +[PLUtilities AppDeletionEnabled];
  }

  return AppDeletionEnabled_appDeletionEnabled;
}

uint64_t __33__PLUtilities_AppDeletionEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  AppDeletionEnabled_appDeletionEnabled = result;
  return result;
}

+ (BOOL)SwitchToIncrementalVacuumEnabled
{
  if (SwitchToIncrementalVacuumEnabled_onceToken != -1)
  {
    +[PLUtilities SwitchToIncrementalVacuumEnabled];
  }

  return SwitchToIncrementalVacuumEnabled_incrementalVacuumEnabled;
}

uint64_t __47__PLUtilities_SwitchToIncrementalVacuumEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  SwitchToIncrementalVacuumEnabled_incrementalVacuumEnabled = result;
  return result;
}

+ (BOOL)PreUnlockTelemetryEnabled
{
  if (PreUnlockTelemetryEnabled_onceToken != -1)
  {
    +[PLUtilities PreUnlockTelemetryEnabled];
  }

  return PreUnlockTelemetryEnabled_preUnlockTelemetryEnabled;
}

uint64_t __40__PLUtilities_PreUnlockTelemetryEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  PreUnlockTelemetryEnabled_preUnlockTelemetryEnabled = result;
  return result;
}

+ (BOOL)OverrideAllowlistEnabled
{
  if (OverrideAllowlistEnabled_onceToken != -1)
  {
    +[PLUtilities OverrideAllowlistEnabled];
  }

  return OverrideAllowlistEnabled_overrideAllowlistEnabled;
}

uint64_t __39__PLUtilities_OverrideAllowlistEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  OverrideAllowlistEnabled_overrideAllowlistEnabled = result;
  return result;
}

+ (BOOL)gasGaugeEnabled
{
  if ([MEMORY[0x277D3F180] isDevBoard])
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D3F208] isiPod] ^ 1;
  }
}

+ (BOOL)hasGasGauge
{
  if (hasGasGauge_onceToken != -1)
  {
    +[PLUtilities hasGasGauge];
  }

  return hasGasGauge___hasGasGauge;
}

uint64_t __26__PLUtilities_hasGasGauge__block_invoke()
{
  result = MGGetBoolAnswer();
  hasGasGauge___hasGasGauge = result;
  return result;
}

+ (BOOL)hasBattery
{
  if (hasBattery_onceToken != -1)
  {
    +[PLUtilities hasBattery];
  }

  return hasBattery___hasBattery;
}

void __25__PLUtilities_hasBattery__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  hasBattery___hasBattery = MGGetBoolAnswer();
  v0 = PLLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = hasBattery___hasBattery;
    _os_log_impl(&dword_25EE51000, v0, OS_LOG_TYPE_DEFAULT, "Battery detected: %d", v2, 8u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

+ (BOOL)inBUIDemoMode
{
  if (inBUIDemoMode_defaultOnce != -1)
  {
    +[PLUtilities inBUIDemoMode];
  }

  return inBUIDemoMode_demoMode;
}

void __28__PLUtilities_inBUIDemoMode__block_invoke()
{
  v0 = [MEMORY[0x277D3F180] objectForKey:@"BUI_DEMO_MODE" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  inBUIDemoMode_demoMode = [v0 BOOLValue];
}

+ (BOOL)isHeySiriEnabled
{
  if (isHeySiriEnabled_onceToken != -1)
  {
    +[PLUtilities isHeySiriEnabled];
  }

  return isHeySiriEnabled_retValue;
}

void __31__PLUtilities_isHeySiriEnabled__block_invoke()
{
  v0 = CFPreferencesCopyValue(@"VoiceTrigger Enabled", @"com.apple.voicetrigger", @"mobile", *MEMORY[0x277CBF030]);
  if (v0)
  {
    v1 = v0;
    isHeySiriEnabled_retValue = [v0 BOOLValue];
    v0 = v1;
  }
}

+ (BOOL)isSiriEnabled
{
  if (isSiriEnabled_onceToken != -1)
  {
    +[PLUtilities isSiriEnabled];
  }

  return isSiriEnabled_retValue;
}

void __28__PLUtilities_isSiriEnabled__block_invoke()
{
  v0 = CFPreferencesCopyValue(@"Assistant Enabled", @"com.apple.assistant.support", @"mobile", *MEMORY[0x277CBF030]);
  if (v0)
  {
    v1 = v0;
    isSiriEnabled_retValue = [v0 BOOLValue];
    v0 = v1;
  }
}

+ (BOOL)isHealthDataSubmissionAllowed
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isHealthDataSubmissionAllowed];

  return v3;
}

+ (BOOL)isSafetyDataSubmissionAllowed
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isSafetyDataSubmissionAllowed];

  return v3;
}

+ (BOOL)isImproveFitnessPlusEnabled
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[PLUtilities isImproveFitnessPlusEnabled];
  }

  return 0;
}

+ (BOOL)isAppAnalyticsEnabled
{
  if (isAppAnalyticsEnabled_onceToken != -1)
  {
    +[PLUtilities isAppAnalyticsEnabled];
  }

  return isAppAnalyticsEnabled_appAnalyticsEnabled;
}

uint64_t __36__PLUtilities_isAppAnalyticsEnabled__block_invoke()
{
  result = AppAnalyticsEnabled();
  isAppAnalyticsEnabled_appAnalyticsEnabled = result;
  return result;
}

+ (BOOL)isEduMode
{
  v2 = MKBUserTypeDeviceMode();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D28AD0]];
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D28B20]];
    if ([v4 isEqualToString:*MEMORY[0x277D28AD8]])
    {
      v6 = [v5 isEqualToString:*MEMORY[0x277D28B18]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (double)getDefaultL0bThresholdForDeviceType
{
  v2 = objc_opt_new();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 copyPropertyForKey:@"AABConstraints"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v4 objectForKeyedSubscript:@"L0b"];
        v6 = v5;
        if (v5)
        {
          [v5 doubleValue];
          v8 = v7 * 1.15;
          v9 = PLLogCommon();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            +[PLUtilities getDefaultL0bThresholdForDeviceType];
          }
        }

        else
        {
          v9 = PLLogCommon();
          v8 = -1.0;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            +[PLUtilities getDefaultL0bThresholdForDeviceType];
          }
        }
      }

      else
      {
        v6 = PLLogCommon();
        v8 = -1.0;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          +[PLUtilities getDefaultL0bThresholdForDeviceType];
        }
      }
    }

    else
    {
      v6 = PLLogCommon();
      v8 = -1.0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[PLUtilities getDefaultL0bThresholdForDeviceType];
      }
    }
  }

  else
  {
    v4 = PLLogCommon();
    v8 = -1.0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities getDefaultL0bThresholdForDeviceType];
    }
  }

  return v8;
}

+ (BOOL)isALSCurveHigherThanDefault
{
  +[PLUtilities getDefaultL0bThresholdForDeviceType];
  v3 = v2;
  v4 = CFPreferencesCopyValue(@"BKALSUserPreferences", @"com.apple.backboardd", @"mobile", *MEMORY[0x277CBF030]);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"L0b"];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      v9 = v8 > v3;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)hashString:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__PLUtilities_hashString___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v4 = hashString__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&hashString__onceToken, block);
  }

  v6 = [a1 generateHashValue:v5 withSalt:hashString__salt];

  return v6;
}

uint64_t __26__PLUtilities_hashString___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] objectExistsForKey:@"PLSalt"])
  {
    [MEMORY[0x277D3F180] objectForKey:@"PLSalt" synchronize:1];
  }

  else
  {
    [*(a1 + 32) generateAndUpdateSaltValue:@"PLSalt"];
  }
  hashString__salt = ;

  return MEMORY[0x2821F96F8]();
}

+ (id)hashBundleID:(id)a3
{
  v4 = a3;
  if (!saltBundleID)
  {
    if ([MEMORY[0x277D3F180] objectExistsForKey:@"PLSaltBundleID"])
    {
      [MEMORY[0x277D3F180] objectForKey:@"PLSaltBundleID" synchronize:1];
    }

    else
    {
      [a1 generateAndUpdateSaltValue:@"PLSaltBundleID"];
    }
    v5 = ;
    v6 = saltBundleID;
    saltBundleID = v5;
  }

  v7 = [a1 generateHashValue:v4 withSalt:saltBundleID];

  return v7;
}

+ (id)generateAndUpdateSaltValue:(id)a3
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [v3 UUID];
  v6 = [v5 UUIDString];

  [MEMORY[0x277D3F180] setObject:v6 forKey:v4 saveToDisk:1];
  LODWORD(v5) = [v4 isEqualToString:@"PLSaltBundleID"];

  if (v5)
  {
    objc_storeStrong(&saltBundleID, v6);
  }

  return v6;
}

+ (id)generateHashValue:(id)a3 withSalt:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", a3, a4];
  v5 = [v4 UTF8String];

  *md = 0;
  v11 = 0;
  v6 = strlen(v5);
  CC_MD5(v5, v6, md);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X", md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], v11, BYTE1(v11), BYTE2(v11), BYTE3(v11), BYTE4(v11), BYTE5(v11), BYTE6(v11), HIBYTE(v11)];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)shouldLogForEntryKey:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D3F290] PPSEnabled:v3] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F180], "fullMode"))
  {
    v4 = 1;
  }

  else
  {
    v5 = +[PLUtilities getAllowblocklist];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:v3];
      v4 = v7 != 0;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (signed)canLogMode:(id)a3 fullMode:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v4)
  {
    if ([@"NO" isEqualToString:v5])
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (([@"HF" isEqualToString:v5] & 1) == 0)
    {
      if (([@"HB" isEqualToString:v5] & 1) == 0)
      {
        v6 = 0;
        goto LABEL_15;
      }

LABEL_13:
      v6 = 4;
      goto LABEL_17;
    }

LABEL_11:
    v6 = 2;
    goto LABEL_17;
  }

  if ([@"YES" isEqualToString:v5])
  {
    v6 = 0;
    goto LABEL_17;
  }

  if ([@"HL" isEqualToString:v5] & 1) != 0 || (objc_msgSend(@"HF", "isEqualToString:", v5))
  {
    goto LABEL_11;
  }

  if ([@"HB" isEqualToString:v5])
  {
    goto LABEL_13;
  }

  v6 = 1;
LABEL_15:
  if ([@"TR" isEqualToString:v5])
  {
    v6 = 3;
  }

LABEL_17:

  return v6;
}

+ (signed)logModeForEntryKey:(id)a3 withKey:(id)a4 andValue:(id)a5
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D3F290] PPSEnabled:v6])
  {
    v8 = 0;
  }

  else
  {
    v9 = [PLUtilities modeForEntryKey:v6 withKeyName:v7];
    if (!v9)
    {
      v10 = [PLUtilities modeForEntryKey:v6 withKeyName:@"__Allow_Dynamic__"];
      v11 = v10;
      if (v10)
      {
        if ([v10 BOOLValue])
        {
          v9 = @"YES";
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    v8 = +[PLUtilities canLogMode:fullMode:](PLUtilities, "canLogMode:fullMode:", v9, [MEMORY[0x277D3F180] fullMode]);
  }

  return v8;
}

+ (id)modeForEntryKey:(id)a3 withKeyName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[PLUtilities getAllowblocklist];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:v5];

    if (v9)
    {
      v10 = [v8 objectForKeyedSubscript:v5];
      v9 = [v10 objectForKeyedSubscript:v6];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)buildVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)supplementalBuildVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)crashReporterKey
{
  if (crashReporterKey_onceToken != -1)
  {
    +[PLUtilities crashReporterKey];
  }

  v3 = crashReporterKey_crkey;

  return v3;
}

uint64_t __31__PLUtilities_crashReporterKey__block_invoke()
{
  crashReporterKey_crkey = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (id)mobileUserADG
{
  v2 = CFPreferencesCopyValue(@"AutomatedDeviceGroup", @"com.apple.da", @"mobile", *MEMORY[0x277CBF030]);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)experimentGroup
{
  if (experimentGroup_onceToken != -1)
  {
    +[PLUtilities experimentGroup];
  }

  v3 = experimentGroup_expGroup;

  return v3;
}

void __30__PLUtilities_experimentGroup__block_invoke()
{
  v2 = [MEMORY[0x277D36B80] sharedInstance];
  v0 = [v2 experimentGroup];
  v1 = experimentGroup_expGroup;
  experimentGroup_expGroup = v0;
}

+ (BOOL)hasInternalKey
{
  if (hasInternalKey_onceToken != -1)
  {
    +[PLUtilities hasInternalKey];
  }

  return hasInternalKey__hasInternalAccount;
}

void __29__PLUtilities_hasInternalKey__block_invoke()
{
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v1 = [MEMORY[0x277D36B80] sharedInstance];
    v0 = [v1 internalKey];
    hasInternalKey__hasInternalAccount = [PLUtilities hasInternalKey:v0];
  }
}

+ (BOOL)hasInternalKey:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 componentsSeparatedByString:@""];;
    if ([v4 count] == 2)
    {
      v5 = [v4 objectAtIndexedSubscript:0];
      v6 = [v5 length] != 0;
    }

    else
    {
      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[PLUtilities hasInternalKey:].cold.1(v3, v10, [v4 count], v7);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)deviceBootArgs
{
  if (deviceBootArgs_onceToken != -1)
  {
    +[PLUtilities deviceBootArgs];
  }

  v3 = deviceBootArgs_bootArgs;

  return v3;
}

void __29__PLUtilities_deviceBootArgs__block_invoke()
{
  size = 0;
  if (sysctlbyname("kern.bootargs", 0, &size, 0, 0))
  {
    v0 = PLLogCommon();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __29__PLUtilities_deviceBootArgs__block_invoke_cold_1();
    }
  }

  v1 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (sysctlbyname("kern.bootargs", v1, &size, 0, 0))
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __29__PLUtilities_deviceBootArgs__block_invoke_cold_2();
    }

    free(v1);
  }

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
  v4 = [v3 strip];

  free(v1);
  v5 = deviceBootArgs_bootArgs;
  deviceBootArgs_bootArgs = v4;
}

+ (id)allSubClassesForClass:(Class)a3
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"**allSubclassesFire!**"];
    v5 = MEMORY[0x277D3F178];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLUtilities.m"];
    v7 = [v6 lastPathComponent];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLUtilities allSubClassesForClass:]"];
    [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2147];

    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }
  }

  v10 = [MEMORY[0x277CBEB18] array];
  outCount = 0;
  v11 = objc_copyClassList(&outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Superclass = v11[i];
      do
      {
        Superclass = class_getSuperclass(Superclass);
      }

      while (Superclass && Superclass != a3);
      if (Superclass)
      {
        [v10 addObject:v11[i]];
      }
    }
  }

  free(v11);

  return v10;
}

+ (double)roundToSigFigDouble:(double)a3 withSigFig:(int)a4
{
  result = 0.0;
  if (a3 != 0.0)
  {
    v7 = -a3;
    if (a3 >= 0.0)
    {
      v7 = a3;
    }

    v8 = log10(v7);
    v9 = __exp10((a4 - vcvtpd_s64_f64(v8)));
    return round(v9 * a3) / v9;
  }

  return result;
}

+ (id)shortUUIDString
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];

  if ([v3 length] >= 8)
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(v3, "length") - 8}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)JSONSanitizeDictionary:(id)a3
{
  v3 = a3;
  if (([MEMORY[0x277CCAAA0] isValidJSONObject:v3] & 1) == 0)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Non JSON-able object:%@", v3];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLUtilities.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLUtilities JSONSanitizeDictionary:]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2198];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    v10 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __38__PLUtilities_JSONSanitizeDictionary___block_invoke;
    v14[3] = &unk_279A5C800;
    v11 = v10;
    v15 = v11;
    [v3 enumerateKeysAndObjectsUsingBlock:v14];
    v12 = v11;

    v3 = v12;
  }

  return v3;
}

void __38__PLUtilities_JSONSanitizeDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v6 isNil] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x277CCABB0];
      [v6 timeIntervalSince1970];
      v8 = [v7 numberWithDouble:?];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
    }

    else if ([MEMORY[0x277CCAAA0] isValidJSONObject:v6])
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"JSON: unable to serialize key=%@ value=%@", v5, v6];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLUtilities.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLUtilities JSONSanitizeDictionary:]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:2209];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

+ (BOOL)isValidString:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 isEqualToString:&stru_287103958] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)getKVPairsForCASubmissionFromEntry:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 dictionary];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__PLUtilities_getKVPairsForCASubmissionFromEntry___block_invoke;
  v9[3] = &unk_279A5C800;
  v7 = v5;
  v10 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __50__PLUtilities_getKVPairsForCASubmissionFromEntry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
    }
  }
}

+ (jetsam_priority_info)getJetsamPriority:(int)a3
{
  v6 = *MEMORY[0x277D85DE8];
  if (memorystatus_control() == 128)
  {
    v3 = mach_absolute_time();
    v4 = 0x100000000;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities getJetsamPriority:];
    }

    v4 = 0x1FFFFFFFFLL;
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = *MEMORY[0x277D85DE8];
  result.var2 = v3;
  result.var0 = v4;
  result.var1 = BYTE4(v4);
  return result;
}

+ (process_memory_limit_info)getProcessMemoryLimit:(int)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (memorystatus_control() != 24 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[PLUtilities getProcessMemoryLimit:];
  }

  if (memorystatus_control())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities getProcessMemoryLimit:];
    }

    v4 = 0;
    v5 = 0;
    v6 = -1;
  }

  else
  {
    v6 = v9;
    v4 = (v11 != 0) << 48;
    v5 = (BYTE4(v9) & 1) << 32;
  }

  if (v6 != v14 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v16 = a3;
    v17 = 1024;
    v18 = v6;
    v19 = 1024;
    v20 = v14;
    _os_log_impl(&dword_25EE51000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "memory limits do not match for pid %i (get_prio_list=%i, get_memlimit_props=%i)", buf, 0x14u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return (v4 | 0x10000000000 | v5 | v6);
}

+ (id)cleanLaunchdApplicationMacOS:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
  if (([v3 count] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = &stru_287103958;
  }

  else
  {
    v5 = &stru_287103958;
    v6 = 1;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:v6];
      v4 = [(__CFString *)v5 stringByAppendingString:v7];

      if ([v3 count] - 2 > ++v6)
      {
        v8 = [(__CFString *)v4 stringByAppendingString:@"."];

        v4 = v8;
      }

      v5 = v4;
    }

    while ([v3 count] - 2 > v6);
  }

  return v4;
}

+ (id)cleanLaunchdName:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v16 = 0;
    goto LABEL_44;
  }

  v5 = [v3 hasPrefix:@"system/"];
  v6 = [v4 hasPrefix:@"user/"];
  v7 = [v4 hasPrefix:@"gui/"];
  v8 = [v4 hasPrefix:@"pid/"];
  v9 = v4;
  if ([v9 length] <= 0x23)
  {
    v11 = 0;
LABEL_22:

    v15 = v9;
    goto LABEL_23;
  }

  v10 = [v9 substringFromIndex:{objc_msgSend(v9, "length") - 36}];
  v11 = v10;
  if (!v10 || [v10 length] != 36 || objc_msgSend(v11, "characterAtIndex:", 8) != 45 || objc_msgSend(v11, "characterAtIndex:", 13) != 45 || objc_msgSend(v11, "characterAtIndex:", 18) != 45 || objc_msgSend(v11, "characterAtIndex:", 23) != 45)
  {
    goto LABEL_22;
  }

  if (stringIsUUID_onceToken != -1)
  {
    +[PLUtilities cleanLaunchdName:];
  }

  [v11 componentsSeparatedByString:@"-"];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v26)
  {
    v25 = *v28;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:*(*(&v27 + 1) + 8 * i)];
        v14 = [stringIsUUID_hexChars isSupersetOfSet:v13];

        if (!v14)
        {

          goto LABEL_22;
        }
      }

      v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v9 substringToIndex:{objc_msgSend(v9, "length") - 37}];

LABEL_23:
  if (v5)
  {
    v17 = [v15 substringFromIndex:{objc_msgSend(@"system/", "length")}];
    if (!v17)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (((v6 | v8 | v7) & 1) == 0)
    {
      goto LABEL_40;
    }

    v18 = [v15 componentsSeparatedByString:@"/"];
    if ([v18 count] == 3)
    {
      v19 = [v18 objectAtIndexedSubscript:2];
      v20 = v19;
      if (v6 && [v19 hasPrefix:@"UIKitApplication:"])
      {
        v21 = [v20 substringWithRange:{objc_msgSend(@"UIKitApplication:", "length"), objc_msgSend(v20, "length") - objc_msgSend(@"UIKitApplication:", "length") - 17}];
      }

      else if (v7 && [v20 hasPrefix:@"application."])
      {
        v21 = [PLUtilities cleanLaunchdApplicationMacOS:v20];
      }

      else
      {
        v21 = v20;
      }

      v17 = v21;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
LABEL_40:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        +[PLUtilities cleanLaunchdName:];
      }

      v17 = 0;
      goto LABEL_43;
    }
  }

  if ([v17 containsString:@"/"])
  {

    goto LABEL_40;
  }

LABEL_43:
  v16 = v17;

LABEL_44:
  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)intervalPeakCADictionaryForLaunchdName:(id)a3 intervalMaxKB:(unint64_t)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB38];
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = @"UNKNOWN";
  }

  v14[0] = @"launchd_name";
  v14[1] = @"interval_peak_footprint_kb";
  v15[0] = v6;
  v7 = MEMORY[0x277CCABB0];
  v8 = a3;
  v9 = [v7 numberWithUnsignedLongLong:a4];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [v5 dictionaryWithDictionary:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (void)refreshBUI
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.powerlogd.refreshBUI", 0, 0, 4u);
  }
}

+ (unint64_t)convertToBase10:(id)a3 fromBaseN:(int)a4
{
  v5 = a3;
  v6 = [v5 length];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = a4;
    v10 = -v6;
    v11 = v6 - 1;
    do
    {
      v12 = [v5 characterAtIndex:v7];
      if ((v12 - 65) >= 0x1A)
      {
        v13 = v12 - 48;
      }

      else
      {
        v13 = (v12 - 55);
      }

      v8 = (v8 + v13 * pow(v9, v11));
      ++v7;
      --v11;
    }

    while (v10 + v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)sanitizeCAPayload:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 rangeOfString:{@"-", v15}] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [v5 objectForKeyedSubscript:v10];
          v12 = [v10 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
          [v4 setObject:v11 forKey:v12];

          [v4 removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (int)grabSysctlValue:(id)a3
{
  v3 = a3;
  v10 = 0;
  v9 = 4;
  v4 = sysctlbyname([v3 UTF8String], &v10, &v9, 0, 0);
  v5 = PLLogCommon();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities grabSysctlValue:];
    }

    v7 = -1;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(PLUtilities *)v3 grabSysctlValue:?];
    }

    v7 = v10;
  }

  return v7;
}

+ (double)scaledPowerBasedOnPoint:(double)a3 withPowerModel:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = 0.0;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && a3 > 0.0 && v5 != 0)
  {
    v8 = [v5 allKeys];
    v9 = [v8 sortedArrayUsingSelector:sel_compareFloat_];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v35;
LABEL_8:
      v15 = 0;
      v16 = v13;
      while (1)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v34 + 1) + 8 * v15);
        [v17 doubleValue];
        v19 = v18;
        v13 = v17;
        if (v19 > a3)
        {
          break;
        }

        ++v15;
        v16 = v13;
        if (v12 == v15)
        {
          v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v12)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      if (!v13)
      {
        goto LABEL_19;
      }

      v20 = [v5 objectForKeyedSubscript:v16];
      [v20 doubleValue];
      v22 = v21;

      v23 = [v5 objectForKeyedSubscript:v13];
      [v23 doubleValue];
      v25 = v24;

      [v16 doubleValue];
      v27 = a3 - v26;
      [v13 doubleValue];
      v29 = v28;
      [v16 doubleValue];
      v6 = v22 + v27 / (v29 - v30) * (v25 - v22);
    }

    else
    {
      v13 = 0;
LABEL_18:

      v16 = v13;
LABEL_19:
      v13 = [v5 objectForKeyedSubscript:{v16, v34}];
      [v13 doubleValue];
      v6 = v31;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)powerModelForOperatorName:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v4 = MEMORY[0x277CBEC10];
  }

  else
  {
    v5 = getPowermodels();
    v4 = [v5 objectForKeyedSubscript:v3];
  }

  return v4;
}

+ (id)torchTypeString
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && torchTypeString_onceToken != -1)
  {
    +[PLUtilities torchTypeString];
  }

  v2 = torchTypeString__torchTypeString;

  return v2;
}

uint64_t __30__PLUtilities_torchTypeString__block_invoke()
{
  v0 = [MEMORY[0x277D3F208] kPLTorchClassOfDevice];
  if ((v0 - 1007002) > 2)
  {
    v1 = @"N41";
  }

  else
  {
    v1 = off_279A5C988[v0 - 1007002];
  }

  torchTypeString__torchTypeString = v1;

  return MEMORY[0x2821F96F8]();
}

+ (id)MavRevStringQuery
{
  if (MavRevStringQuery_onceToken != -1)
  {
    +[PLUtilities MavRevStringQuery];
  }

  v3 = MavRevStringQuery_plMavRevString;

  return v3;
}

uint64_t __32__PLUtilities_MavRevStringQuery__block_invoke()
{
  v0 = [MEMORY[0x277D3F208] kPLBasebandClassOfDevice];
  if ((v0 - 1003001) > 0x13)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_279A5C9A0[v0 - 1003001];
  }

  MavRevStringQuery_plMavRevString = v1;

  return MEMORY[0x2821F96F8]();
}

+ (unsigned)getHardwarePerfLevels
{
  if (getHardwarePerfLevels_levels_once != -1)
  {
    +[PLUtilities getHardwarePerfLevels];
  }

  return getHardwarePerfLevels_perf_levels;
}

void __36__PLUtilities_getHardwarePerfLevels__block_invoke()
{
  v1 = 4;
  if (sysctlbyname("hw.nperflevels", &getHardwarePerfLevels_perf_levels, &v1, 0, 0))
  {
    getHardwarePerfLevels_perf_levels = 0;
    v0 = PLLogCommon();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      __36__PLUtilities_getHardwarePerfLevels__block_invoke_cold_1();
    }
  }
}

+ (void)PLCopyItemsFromPath:toPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__PLUtilities_PLCopyItemsFromPath_toPath___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)setPermissionsForFile:toValue:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)setPermissionsForFile:toValue:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Successfully set permissions for file %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)compressWithSource:withDestination:withLevel:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)compressWithSource:withDestination:withLevel:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)compressWithSource:withDestination:withLevel:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)compressWithSource:withDestination:withLevel:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)decompressWithSource:withDestination:withRemoveSrc:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)decompressWithSource:withDestination:withRemoveSrc:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)decompressWithSource:withDestination:withRemoveSrc:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)decompressWithSource:withDestination:withRemoveSrc:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)decompressWithSource:withDestination:withRemoveSrc:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)decompressWithSource:withDestination:withRemoveSrc:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)reportZlibResultToCA:forEvent:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)numFilesAtPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)remove:oldestFilesFromDirectory:containingFileNameSubstring:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)remove:(uint64_t)a3 oldestFilesFromDirectory:(os_log_t)log containingFileNameSubstring:.cold.2(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "Found %lu files with %@ in the name", buf, 0x16u);
}

+ (void)remove:oldestFilesFromDirectory:containingFileNameSubstring:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_83_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_83_cold_3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6_1();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_87_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)machTimeFromSeconds:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)machTimeFromSeconds:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)machTimeFromSeconds:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)machTimeFromSeconds:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0(&dword_25EE51000, MEMORY[0x277D86220], v0, "Attempted to convert negative seconds (%f) to mach time. Returning 0.", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getLastSystemTimeOffset
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Returning last known system time offset %f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__PLUtilities_quarantineToPath_action___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 filePath];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "Quarantine src: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __39__PLUtilities_quarantineToPath_action___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Quarantine dst: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)allowQueryFromPeer:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getPerfStatsForProcess:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6_1();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)getPerfStatsForProcess:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)pidForProcessName:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "searching for procName %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)pidForProcessName:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_1();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)pidForProcessName:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)pidForProcessName:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)maxProcessCount
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)isDaemonOrAppleXPCService:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isDaemonOrAppleXPCService:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [PLUtilities bundleIDFromPid:a2];
  v10 = [PLUtilities processNameForPid:a2];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x22u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)isImproveFitnessPlusEnabled
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getDefaultL0bThresholdForDeviceType
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)hasInternalKey:(uint64_t)a3 .cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_25EE51000, log, OS_LOG_TYPE_ERROR, "invalid internal key: %{private}@ resulting in %lu components", buf, 0x16u);
}

+ (void)hasInternalKey:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __29__PLUtilities_deviceBootArgs__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __29__PLUtilities_deviceBootArgs__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getJetsamPriority:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getProcessMemoryLimit:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)cleanLaunchdName:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, MEMORY[0x277D86220], v0, "cleanLaunchdName: Unknown launchd service name: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)grabSysctlValue:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)grabSysctlValue:(uint64_t)a1 .cold.2(uint64_t a1, unsigned int *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_6_1();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void __36__PLUtilities_getHardwarePerfLevels__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end