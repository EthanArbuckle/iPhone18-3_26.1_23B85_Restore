@interface BRCCoreAnalyticsReporter
+ (BOOL)uploadLoadErrorsAsIndividualEvents:(id)a3 syncType:(id)a4 totalItemsCount:(unint64_t)a5 zoneCountsOnly:(BOOL)a6 isFolderSharingEnabled:(BOOL)a7 dsid:(id)a8 rampNumber:(id)a9;
+ (BOOL)uploadSyncErrorsAsIndividualEvents:(id)a3 syncType:(id)a4 totalItemsCount:(unint64_t)a5 zoneType:(id)a6 zoneCountsOnly:(BOOL)a7 isFolderSharingEnabled:(BOOL)a8 dsid:(id)a9 rampNumber:(id)a10;
+ (id)dictionaryForErrorsByZone:(id)a3 wantPrivateZone:(BOOL)a4;
+ (id)telemetryDictionaryToUploadForError:(id)a3 errorMessage:(id)a4 count:(id)a5 syncType:(id)a6 totalItemsCount:(id)a7 zoneType:(id)a8 zoneCountsOnly:(BOOL)a9 isFolderSharingEnabled:(BOOL)a10 dsid:(id)a11 rampNumber:(id)a12 lastFailureDate:(id)a13 pcsState:(id)a14;
+ (void)newAppTelemetryMetricEvent:(id)a3;
+ (void)sendTelemetryEvent:(id)a3 withReport:(id)a4;
+ (void)uploadMetricsReport:(id)a3;
@end

@implementation BRCCoreAnalyticsReporter

+ (void)uploadMetricsReport:(id)a3
{
  v57[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[BRCAnalyticsReporter isTelemetryReportingEnabled])
  {
    v5 = [BRCUserDefaults defaultsForMangledID:0];
    v6 = [v5 isBlacklistedFromFolderSharing];

    v7 = [v4 syncUpErrorsByMangledID];
    v8 = [a1 dictionaryForErrorsByZone:v7 wantPrivateZone:0];

    v9 = [v4 clientTruthTotalItemsCount];
    v10 = [v4 dsid];
    v11 = [v4 rampNumber];
    v55 = v8;
    v52 = [a1 uploadSyncErrorsAsIndividualEvents:v8 syncType:@"syncUp" totalItemsCount:v9 zoneType:@"shared" zoneCountsOnly:1 isFolderSharingEnabled:v6 ^ 1u dsid:v10 rampNumber:v11];

    v12 = [v4 syncUpErrorsByMangledID];
    v13 = [a1 dictionaryForErrorsByZone:v12 wantPrivateZone:1];

    v14 = [v4 clientTruthTotalItemsCount];
    v15 = [v4 dsid];
    v16 = [v4 rampNumber];
    v54 = v13;
    v50 = [a1 uploadSyncErrorsAsIndividualEvents:v13 syncType:@"syncUp" totalItemsCount:v14 zoneType:@"private" zoneCountsOnly:1 isFolderSharingEnabled:v6 ^ 1u dsid:v15 rampNumber:v16];

    v17 = [v4 syncDownErrorsByMangledID];
    v18 = [a1 dictionaryForErrorsByZone:v17 wantPrivateZone:0];

    v19 = [v4 clientTruthTotalItemsCount];
    v20 = [v4 dsid];
    v21 = [v4 rampNumber];
    v53 = v18;
    v49 = [a1 uploadSyncErrorsAsIndividualEvents:v18 syncType:@"syncDown" totalItemsCount:v19 zoneType:@"shared" zoneCountsOnly:1 isFolderSharingEnabled:v6 ^ 1u dsid:v20 rampNumber:v21];

    v22 = [v4 syncUpErrorsByMangledID];
    v23 = [a1 dictionaryForErrorsByZone:v22 wantPrivateZone:1];

    v24 = [v4 clientTruthTotalItemsCount];
    v25 = [v4 dsid];
    v26 = [v4 rampNumber];
    v51 = v23;
    v27 = [a1 uploadSyncErrorsAsIndividualEvents:v23 syncType:@"syncDown" totalItemsCount:v24 zoneType:@"private" zoneCountsOnly:1 isFolderSharingEnabled:v6 ^ 1u dsid:v25 rampNumber:v26];

    v28 = [v4 uploadFailures];
    v29 = [v4 clientTruthTotalItemsCount];
    v30 = [v4 dsid];
    v31 = [v4 rampNumber];
    v32 = [a1 uploadLoadErrorsAsIndividualEvents:v28 syncType:@"upload" totalItemsCount:v29 zoneCountsOnly:0 isFolderSharingEnabled:v6 ^ 1u dsid:v30 rampNumber:v31];

    v33 = [v4 downloadFailures];
    v34 = [v4 clientTruthTotalItemsCount];
    v35 = [v4 dsid];
    v36 = [v4 rampNumber];
    v37 = [a1 uploadLoadErrorsAsIndividualEvents:v33 syncType:@"download" totalItemsCount:v34 zoneCountsOnly:0 isFolderSharingEnabled:v6 ^ 1u dsid:v35 rampNumber:v36];

    v38 = [v4 syncUpFailures];
    v39 = [v4 clientTruthTotalItemsCount];
    v40 = [v4 dsid];
    v41 = [v4 rampNumber];
    v42 = [a1 uploadLoadErrorsAsIndividualEvents:v38 syncType:@"itemSyncUp" totalItemsCount:v39 zoneCountsOnly:0 isFolderSharingEnabled:v6 ^ 1u dsid:v40 rampNumber:v41];

    if ((v52 & 1) == 0 && (v50 & 1) == 0 && (v49 & 1) == 0 && (v27 & 1) == 0 && (v32 & 1) == 0 && (v37 & 1) == 0 && (v42 & 1) == 0)
    {
      v56[0] = @"ErrorName";
      v56[1] = @"ErrorCount";
      v57[0] = @"success";
      v57[1] = &unk_2837B0B80;
      v57[2] = @"success";
      v56[2] = @"SyncType";
      v56[3] = @"TotalItemsCount";
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "clientTruthTotalItemsCount")}];
      v57[3] = v43;
      v56[4] = @"FolderSharingEnabled";
      v44 = [MEMORY[0x277CCABB0] numberWithBool:v6 ^ 1u];
      v57[4] = v44;
      v56[5] = @"DSID";
      v45 = [v4 dsid];
      v57[5] = v45;
      v56[6] = @"RampNumber";
      v46 = [v4 rampNumber];
      v57[6] = v46;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:7];

      [a1 sendTelemetryEvent:@"com.apple.iCloudDrive.syncStatus" withReport:v47];
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

+ (id)dictionaryForErrorsByZone:(id)a3 wantPrivateZone:(BOOL)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__BRCCoreAnalyticsReporter_dictionaryForErrorsByZone_wantPrivateZone___block_invoke;
  v9[3] = &unk_278508518;
  v11 = a4;
  v7 = v6;
  v10 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __70__BRCCoreAnalyticsReporter_dictionaryForErrorsByZone_wantPrivateZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  if (*(a1 + 40) == [a2 isPrivate])
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v9];
    if (v5)
    {
      v6 = [*(a1 + 32) objectForKeyedSubscript:v9];
      v7 = [v6 intValue] + 1;
    }

    else
    {
      v7 = 1;
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }
}

+ (id)telemetryDictionaryToUploadForError:(id)a3 errorMessage:(id)a4 count:(id)a5 syncType:(id)a6 totalItemsCount:(id)a7 zoneType:(id)a8 zoneCountsOnly:(BOOL)a9 isFolderSharingEnabled:(BOOL)a10 dsid:(id)a11 rampNumber:(id)a12 lastFailureDate:(id)a13 pcsState:(id)a14
{
  v41 = a4;
  v37 = a8;
  v40 = a11;
  v39 = a13;
  v38 = a14;
  v19 = MEMORY[0x277CCACA8];
  v20 = a12;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a3;
  v25 = [v24 domain];
  v26 = MEMORY[0x277CCABB0];
  v27 = [v24 code];

  v28 = [v26 numberWithInteger:v27];
  v29 = [v19 stringWithFormat:@"%@%@", v25, v28];;

  v30 = objc_opt_new();
  v31 = [MEMORY[0x277CCABB0] numberWithBool:a10];
  [v30 setObject:v31 forKey:@"FolderSharingEnabled"];

  [v30 setObject:v29 forKey:@"ErrorName"];
  if (a9)
  {
    v32 = @"ZoneErrorCount";
  }

  else
  {
    v32 = @"ErrorCount";
  }

  [v30 setObject:v23 forKey:v32];

  [v30 setObject:v22 forKey:@"SyncType"];
  [v30 setObject:v21 forKey:@"TotalItemsCount"];

  if (v37)
  {
    [v30 setObject:v37 forKey:@"ZoneType"];
  }

  [v30 setObject:v40 forKey:@"DSID"];
  [v30 setObject:v20 forKey:@"RampNumber"];

  if (v39)
  {
    v33 = MEMORY[0x277CCACA8];
    [v39 timeIntervalSinceReferenceDate];
    v35 = [v33 stringWithFormat:@"%f", v34];
    [v30 setObject:v35 forKey:@"LastErrorTimestamp"];
  }

  if (v38)
  {
    [v30 setObject:v38 forKey:@"ChainedFiles"];
  }

  if (v41)
  {
    [v30 setObject:v41 forKey:@"ErrorMessage"];
  }

  return v30;
}

+ (BOOL)uploadSyncErrorsAsIndividualEvents:(id)a3 syncType:(id)a4 totalItemsCount:(unint64_t)a5 zoneType:(id)a6 zoneCountsOnly:(BOOL)a7 isFolderSharingEnabled:(BOOL)a8 dsid:(id)a9 rampNumber:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a9;
  v20 = a10;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __151__BRCCoreAnalyticsReporter_uploadSyncErrorsAsIndividualEvents_syncType_totalItemsCount_zoneType_zoneCountsOnly_isFolderSharingEnabled_dsid_rampNumber___block_invoke;
  v26[3] = &unk_278508540;
  v32 = a1;
  v21 = v17;
  v27 = v21;
  v33 = a5;
  v22 = v18;
  v28 = v22;
  v34 = a7;
  v35 = a8;
  v23 = v19;
  v29 = v23;
  v24 = v20;
  v30 = v24;
  v31 = &v36;
  [v16 enumerateKeysAndObjectsUsingBlock:v26];
  LOBYTE(v17) = *(v37 + 24);

  _Block_object_dispose(&v36, 8);
  return v17;
}

void __151__BRCCoreAnalyticsReporter_uploadSyncErrorsAsIndividualEvents_syncType_totalItemsCount_zoneType_zoneCountsOnly_isFolderSharingEnabled_dsid_rampNumber___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 error];
  v19 = *(a1 + 72);
  v20 = v7;
  v8 = [v7 brc_cloudKitErrorMessage];
  v18 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 80)];
  v10 = *(a1 + 88);
  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = [v6 isPCSChained];

  v15 = @"unchained";
  if (v14)
  {
    v15 = @"chain sent";
  }

  LOWORD(v17) = v10;
  v16 = [v19 telemetryDictionaryToUploadForError:v20 errorMessage:v8 count:v5 syncType:v18 totalItemsCount:v9 zoneType:v12 zoneCountsOnly:v17 isFolderSharingEnabled:v11 dsid:v13 rampNumber:0 lastFailureDate:v15 pcsState:?];

  [*(a1 + 72) sendTelemetryEvent:@"com.apple.iCloudDrive.syncStatus" withReport:v16];
  *(*(*(a1 + 64) + 8) + 24) = 1;
}

+ (BOOL)uploadLoadErrorsAsIndividualEvents:(id)a3 syncType:(id)a4 totalItemsCount:(unint64_t)a5 zoneCountsOnly:(BOOL)a6 isFolderSharingEnabled:(BOOL)a7 dsid:(id)a8 rampNumber:(id)a9
{
  v81 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v64 = a4;
  v63 = a8;
  v62 = a9;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v11;
  v46 = [v11 countByEnumeratingWithState:&v74 objects:v80 count:16];
  v12 = 0;
  if (v46)
  {
    v45 = *v75;
    do
    {
      v13 = 0;
      do
      {
        if (*v75 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v13;
        v14 = *(*(&v74 + 1) + 8 * v13);
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v65 = v14;
        v15 = [v14 shareDBErrorCountByPCSAndEDPState];
        v16 = [v15 allKeys];

        v48 = v16;
        v52 = [v16 countByEnumeratingWithState:&v70 objects:v79 count:16];
        if (v52)
        {
          v50 = *v71;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v71 != v50)
              {
                objc_enumerationMutation(v48);
              }

              v18 = *(*(&v70 + 1) + 8 * i);
              v56 = [v65 error];
              v54 = [v65 error];
              v19 = [v54 brc_cloudKitErrorMessage];
              v20 = [v65 shareDBErrorCountByPCSAndEDPState];
              v21 = [v20 objectForKeyedSubscript:v18];
              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
              v23 = [v65 lastFailureDate];
              v24 = [v18 left];
              v25 = [v24 intValue] - 1;
              v26 = @"unknown";
              if (v25 <= 3)
              {
                v26 = off_278508560[v25];
              }

              BYTE1(v43) = a7;
              LOBYTE(v43) = a6;
              v27 = [a1 telemetryDictionaryToUploadForError:v56 errorMessage:v19 count:v21 syncType:v64 totalItemsCount:v22 zoneType:@"shared" zoneCountsOnly:v43 isFolderSharingEnabled:v63 dsid:v62 rampNumber:v23 lastFailureDate:v26 pcsState:?];

              [a1 sendTelemetryEvent:@"com.apple.iCloudDrive.syncStatus" withReport:v27];
            }

            v52 = [v48 countByEnumeratingWithState:&v70 objects:v79 count:16];
          }

          while (v52);
          v12 = 1;
        }

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v28 = [v65 privateDBErrorCountByPCSAndEDPState];
        v29 = [v28 allKeys];

        v49 = v29;
        v53 = [v29 countByEnumeratingWithState:&v66 objects:v78 count:16];
        if (v53)
        {
          v51 = *v67;
          do
          {
            for (j = 0; j != v53; ++j)
            {
              if (*v67 != v51)
              {
                objc_enumerationMutation(v49);
              }

              v31 = *(*(&v66 + 1) + 8 * j);
              v57 = [v65 error];
              v55 = [v65 error];
              v32 = [v55 brc_cloudKitErrorMessage];
              v33 = [v65 privateDBErrorCountByPCSAndEDPState];
              v34 = [v33 objectForKeyedSubscript:v31];
              v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
              v36 = [v65 lastFailureDate];
              v37 = [v31 left];
              v38 = [v37 intValue] - 1;
              v39 = @"unknown";
              if (v38 <= 3)
              {
                v39 = off_278508560[v38];
              }

              BYTE1(v43) = a7;
              LOBYTE(v43) = a6;
              v40 = [a1 telemetryDictionaryToUploadForError:v57 errorMessage:v32 count:v34 syncType:v64 totalItemsCount:v35 zoneType:@"private" zoneCountsOnly:v43 isFolderSharingEnabled:v63 dsid:v62 rampNumber:v36 lastFailureDate:v39 pcsState:?];

              [a1 sendTelemetryEvent:@"com.apple.iCloudDrive.syncStatus" withReport:v40];
            }

            v53 = [v49 countByEnumeratingWithState:&v66 objects:v78 count:16];
          }

          while (v53);
          v12 = 1;
        }

        v13 = v47 + 1;
      }

      while (v47 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
    }

    while (v46);
  }

  v41 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

+ (void)newAppTelemetryMetricEvent:(id)a3
{
  v21 = a3;
  if (!+[BRCAnalyticsReporter isTelemetryReportingEnabled])
  {
    goto LABEL_40;
  }

  v4 = objc_opt_new();
  v5 = [v21 telemetrySchema];
  v6 = 0;
  v7 = 1;
  if (v5 > 4)
  {
    if (v5 == 5)
    {
      if ([v21 hasMagnitudeInt])
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v21, "magnitudeInt")];
        [v4 setObject:v12 forKey:@"eventCount"];
      }

      v7 = 0;
      v6 = @"com.apple.iCloudDrive.appTelemetry.droppedEvent";
    }

    else
    {
      v8 = v21;
      if (v5 == 6)
      {
        if ([v21 hasMagnitudeInt])
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v21, "magnitudeInt")];
          [v4 setObject:v14 forKey:@"data"];
        }

        v7 = 0;
        v6 = @"com.apple.iCloudDrive.appTelemetry.testEvent";
      }

      else
      {
        if (v5 != 7)
        {
          goto LABEL_34;
        }

        if ([v21 hasMagnitudeBool])
        {
          if ([v21 magnitudeBool])
          {
            v10 = @"true";
          }

          else
          {
            v10 = @"false";
          }

          [v4 setObject:v10 forKey:@"sharedAliasInSharedFolder"];
        }

        v7 = 0;
        v6 = @"com.apple.iCloudDrive.appTelemetry.shareAliasInSharedFolder";
      }
    }
  }

  else if (v5 == 2)
  {
    if ([v21 hasMagnitudeInt])
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v21, "magnitudeInt")];
      [v4 setObject:v11 forKey:@"mismatchCount"];
    }

    v7 = 0;
    v6 = @"com.apple.iCloudDrive.appTelemetry.folderSharingCountMismatch";
  }

  else
  {
    v8 = v21;
    if (v5 == 3)
    {
      if ([v21 hasMagnitudeInt])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v21, "magnitudeInt")];
        [v4 setObject:v13 forKey:@"numberOfZonesOutOfSync"];
      }

      v7 = 0;
      v6 = @"com.apple.iCloudDrive.appTelemetry.missingPush";
    }

    else
    {
      if (v5 != 4)
      {
        goto LABEL_34;
      }

      if ([v21 hasMagnitudeBool])
      {
        if ([v21 magnitudeBool])
        {
          v9 = @"true";
        }

        else
        {
          v9 = @"false";
        }

        [v4 setObject:v9 forKey:@"permanentlyInconsistent"];
      }

      v7 = 0;
      v6 = @"com.apple.iCloudDrive.appTelemetry.permanentlyInconsistent";
    }
  }

  v8 = v21;
LABEL_34:
  if ([v8 hasInvestigation])
  {
    v15 = [v21 investigation];
    v16 = [v15 hasZoneName];

    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = [v21 investigation];
      v19 = [v18 zoneName];
      v20 = [v17 initWithData:v19 encoding:4];

      [v4 setObject:v20 forKey:@"zoneName"];
    }
  }

  if ((v7 & 1) == 0)
  {
    [a1 sendTelemetryEvent:v6 withReport:v4];
  }

LABEL_40:
}

+ (void)sendTelemetryEvent:(id)a3 withReport:(id)a4
{
  v5 = a4;
  v6 = a3;
  AnalyticsIsEventUsed();
  v8 = v5;
  v7 = v5;
  AnalyticsSendEventLazy();
}

@end