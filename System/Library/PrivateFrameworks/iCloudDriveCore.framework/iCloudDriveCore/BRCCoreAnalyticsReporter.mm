@interface BRCCoreAnalyticsReporter
+ (BOOL)uploadLoadErrorsAsIndividualEvents:(id)events syncType:(id)type totalItemsCount:(unint64_t)count zoneCountsOnly:(BOOL)only isFolderSharingEnabled:(BOOL)enabled dsid:(id)dsid rampNumber:(id)number;
+ (BOOL)uploadSyncErrorsAsIndividualEvents:(id)events syncType:(id)type totalItemsCount:(unint64_t)count zoneType:(id)zoneType zoneCountsOnly:(BOOL)only isFolderSharingEnabled:(BOOL)enabled dsid:(id)dsid rampNumber:(id)self0;
+ (id)dictionaryForErrorsByZone:(id)zone wantPrivateZone:(BOOL)privateZone;
+ (id)telemetryDictionaryToUploadForError:(id)error errorMessage:(id)message count:(id)count syncType:(id)type totalItemsCount:(id)itemsCount zoneType:(id)zoneType zoneCountsOnly:(BOOL)only isFolderSharingEnabled:(BOOL)self0 dsid:(id)self1 rampNumber:(id)self2 lastFailureDate:(id)self3 pcsState:(id)self4;
+ (void)newAppTelemetryMetricEvent:(id)event;
+ (void)sendTelemetryEvent:(id)event withReport:(id)report;
+ (void)uploadMetricsReport:(id)report;
@end

@implementation BRCCoreAnalyticsReporter

+ (void)uploadMetricsReport:(id)report
{
  v57[7] = *MEMORY[0x277D85DE8];
  reportCopy = report;
  if (+[BRCAnalyticsReporter isTelemetryReportingEnabled])
  {
    v5 = [BRCUserDefaults defaultsForMangledID:0];
    isBlacklistedFromFolderSharing = [v5 isBlacklistedFromFolderSharing];

    syncUpErrorsByMangledID = [reportCopy syncUpErrorsByMangledID];
    v8 = [self dictionaryForErrorsByZone:syncUpErrorsByMangledID wantPrivateZone:0];

    clientTruthTotalItemsCount = [reportCopy clientTruthTotalItemsCount];
    dsid = [reportCopy dsid];
    rampNumber = [reportCopy rampNumber];
    v55 = v8;
    v52 = [self uploadSyncErrorsAsIndividualEvents:v8 syncType:@"syncUp" totalItemsCount:clientTruthTotalItemsCount zoneType:@"shared" zoneCountsOnly:1 isFolderSharingEnabled:isBlacklistedFromFolderSharing ^ 1u dsid:dsid rampNumber:rampNumber];

    syncUpErrorsByMangledID2 = [reportCopy syncUpErrorsByMangledID];
    v13 = [self dictionaryForErrorsByZone:syncUpErrorsByMangledID2 wantPrivateZone:1];

    clientTruthTotalItemsCount2 = [reportCopy clientTruthTotalItemsCount];
    dsid2 = [reportCopy dsid];
    rampNumber2 = [reportCopy rampNumber];
    v54 = v13;
    v50 = [self uploadSyncErrorsAsIndividualEvents:v13 syncType:@"syncUp" totalItemsCount:clientTruthTotalItemsCount2 zoneType:@"private" zoneCountsOnly:1 isFolderSharingEnabled:isBlacklistedFromFolderSharing ^ 1u dsid:dsid2 rampNumber:rampNumber2];

    syncDownErrorsByMangledID = [reportCopy syncDownErrorsByMangledID];
    v18 = [self dictionaryForErrorsByZone:syncDownErrorsByMangledID wantPrivateZone:0];

    clientTruthTotalItemsCount3 = [reportCopy clientTruthTotalItemsCount];
    dsid3 = [reportCopy dsid];
    rampNumber3 = [reportCopy rampNumber];
    v53 = v18;
    v49 = [self uploadSyncErrorsAsIndividualEvents:v18 syncType:@"syncDown" totalItemsCount:clientTruthTotalItemsCount3 zoneType:@"shared" zoneCountsOnly:1 isFolderSharingEnabled:isBlacklistedFromFolderSharing ^ 1u dsid:dsid3 rampNumber:rampNumber3];

    syncUpErrorsByMangledID3 = [reportCopy syncUpErrorsByMangledID];
    v23 = [self dictionaryForErrorsByZone:syncUpErrorsByMangledID3 wantPrivateZone:1];

    clientTruthTotalItemsCount4 = [reportCopy clientTruthTotalItemsCount];
    dsid4 = [reportCopy dsid];
    rampNumber4 = [reportCopy rampNumber];
    v51 = v23;
    v27 = [self uploadSyncErrorsAsIndividualEvents:v23 syncType:@"syncDown" totalItemsCount:clientTruthTotalItemsCount4 zoneType:@"private" zoneCountsOnly:1 isFolderSharingEnabled:isBlacklistedFromFolderSharing ^ 1u dsid:dsid4 rampNumber:rampNumber4];

    uploadFailures = [reportCopy uploadFailures];
    clientTruthTotalItemsCount5 = [reportCopy clientTruthTotalItemsCount];
    dsid5 = [reportCopy dsid];
    rampNumber5 = [reportCopy rampNumber];
    v32 = [self uploadLoadErrorsAsIndividualEvents:uploadFailures syncType:@"upload" totalItemsCount:clientTruthTotalItemsCount5 zoneCountsOnly:0 isFolderSharingEnabled:isBlacklistedFromFolderSharing ^ 1u dsid:dsid5 rampNumber:rampNumber5];

    downloadFailures = [reportCopy downloadFailures];
    clientTruthTotalItemsCount6 = [reportCopy clientTruthTotalItemsCount];
    dsid6 = [reportCopy dsid];
    rampNumber6 = [reportCopy rampNumber];
    v37 = [self uploadLoadErrorsAsIndividualEvents:downloadFailures syncType:@"download" totalItemsCount:clientTruthTotalItemsCount6 zoneCountsOnly:0 isFolderSharingEnabled:isBlacklistedFromFolderSharing ^ 1u dsid:dsid6 rampNumber:rampNumber6];

    syncUpFailures = [reportCopy syncUpFailures];
    clientTruthTotalItemsCount7 = [reportCopy clientTruthTotalItemsCount];
    dsid7 = [reportCopy dsid];
    rampNumber7 = [reportCopy rampNumber];
    v42 = [self uploadLoadErrorsAsIndividualEvents:syncUpFailures syncType:@"itemSyncUp" totalItemsCount:clientTruthTotalItemsCount7 zoneCountsOnly:0 isFolderSharingEnabled:isBlacklistedFromFolderSharing ^ 1u dsid:dsid7 rampNumber:rampNumber7];

    if ((v52 & 1) == 0 && (v50 & 1) == 0 && (v49 & 1) == 0 && (v27 & 1) == 0 && (v32 & 1) == 0 && (v37 & 1) == 0 && (v42 & 1) == 0)
    {
      v56[0] = @"ErrorName";
      v56[1] = @"ErrorCount";
      v57[0] = @"success";
      v57[1] = &unk_2837B0B80;
      v57[2] = @"success";
      v56[2] = @"SyncType";
      v56[3] = @"TotalItemsCount";
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(reportCopy, "clientTruthTotalItemsCount")}];
      v57[3] = v43;
      v56[4] = @"FolderSharingEnabled";
      v44 = [MEMORY[0x277CCABB0] numberWithBool:isBlacklistedFromFolderSharing ^ 1u];
      v57[4] = v44;
      v56[5] = @"DSID";
      dsid8 = [reportCopy dsid];
      v57[5] = dsid8;
      v56[6] = @"RampNumber";
      rampNumber8 = [reportCopy rampNumber];
      v57[6] = rampNumber8;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:7];

      [self sendTelemetryEvent:@"com.apple.iCloudDrive.syncStatus" withReport:v47];
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

+ (id)dictionaryForErrorsByZone:(id)zone wantPrivateZone:(BOOL)privateZone
{
  zoneCopy = zone;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__BRCCoreAnalyticsReporter_dictionaryForErrorsByZone_wantPrivateZone___block_invoke;
  v9[3] = &unk_278508518;
  privateZoneCopy = privateZone;
  v7 = v6;
  v10 = v7;
  [zoneCopy enumerateKeysAndObjectsUsingBlock:v9];

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

+ (id)telemetryDictionaryToUploadForError:(id)error errorMessage:(id)message count:(id)count syncType:(id)type totalItemsCount:(id)itemsCount zoneType:(id)zoneType zoneCountsOnly:(BOOL)only isFolderSharingEnabled:(BOOL)self0 dsid:(id)self1 rampNumber:(id)self2 lastFailureDate:(id)self3 pcsState:(id)self4
{
  messageCopy = message;
  zoneTypeCopy = zoneType;
  dsidCopy = dsid;
  dateCopy = date;
  stateCopy = state;
  v19 = MEMORY[0x277CCACA8];
  numberCopy = number;
  itemsCountCopy = itemsCount;
  typeCopy = type;
  countCopy = count;
  errorCopy = error;
  domain = [errorCopy domain];
  v26 = MEMORY[0x277CCABB0];
  code = [errorCopy code];

  v28 = [v26 numberWithInteger:code];
  v29 = [v19 stringWithFormat:@"%@%@", domain, v28];;

  v30 = objc_opt_new();
  v31 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  [v30 setObject:v31 forKey:@"FolderSharingEnabled"];

  [v30 setObject:v29 forKey:@"ErrorName"];
  if (only)
  {
    v32 = @"ZoneErrorCount";
  }

  else
  {
    v32 = @"ErrorCount";
  }

  [v30 setObject:countCopy forKey:v32];

  [v30 setObject:typeCopy forKey:@"SyncType"];
  [v30 setObject:itemsCountCopy forKey:@"TotalItemsCount"];

  if (zoneTypeCopy)
  {
    [v30 setObject:zoneTypeCopy forKey:@"ZoneType"];
  }

  [v30 setObject:dsidCopy forKey:@"DSID"];
  [v30 setObject:numberCopy forKey:@"RampNumber"];

  if (dateCopy)
  {
    v33 = MEMORY[0x277CCACA8];
    [dateCopy timeIntervalSinceReferenceDate];
    v35 = [v33 stringWithFormat:@"%f", v34];
    [v30 setObject:v35 forKey:@"LastErrorTimestamp"];
  }

  if (stateCopy)
  {
    [v30 setObject:stateCopy forKey:@"ChainedFiles"];
  }

  if (messageCopy)
  {
    [v30 setObject:messageCopy forKey:@"ErrorMessage"];
  }

  return v30;
}

+ (BOOL)uploadSyncErrorsAsIndividualEvents:(id)events syncType:(id)type totalItemsCount:(unint64_t)count zoneType:(id)zoneType zoneCountsOnly:(BOOL)only isFolderSharingEnabled:(BOOL)enabled dsid:(id)dsid rampNumber:(id)self0
{
  eventsCopy = events;
  typeCopy = type;
  zoneTypeCopy = zoneType;
  dsidCopy = dsid;
  numberCopy = number;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __151__BRCCoreAnalyticsReporter_uploadSyncErrorsAsIndividualEvents_syncType_totalItemsCount_zoneType_zoneCountsOnly_isFolderSharingEnabled_dsid_rampNumber___block_invoke;
  v26[3] = &unk_278508540;
  selfCopy = self;
  v21 = typeCopy;
  v27 = v21;
  countCopy = count;
  v22 = zoneTypeCopy;
  v28 = v22;
  onlyCopy = only;
  enabledCopy = enabled;
  v23 = dsidCopy;
  v29 = v23;
  v24 = numberCopy;
  v30 = v24;
  v31 = &v36;
  [eventsCopy enumerateKeysAndObjectsUsingBlock:v26];
  LOBYTE(typeCopy) = *(v37 + 24);

  _Block_object_dispose(&v36, 8);
  return typeCopy;
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

+ (BOOL)uploadLoadErrorsAsIndividualEvents:(id)events syncType:(id)type totalItemsCount:(unint64_t)count zoneCountsOnly:(BOOL)only isFolderSharingEnabled:(BOOL)enabled dsid:(id)dsid rampNumber:(id)number
{
  v81 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  typeCopy = type;
  dsidCopy = dsid;
  numberCopy = number;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = eventsCopy;
  v46 = [eventsCopy countByEnumeratingWithState:&v74 objects:v80 count:16];
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
        shareDBErrorCountByPCSAndEDPState = [v14 shareDBErrorCountByPCSAndEDPState];
        allKeys = [shareDBErrorCountByPCSAndEDPState allKeys];

        v48 = allKeys;
        v52 = [allKeys countByEnumeratingWithState:&v70 objects:v79 count:16];
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
              error = [v65 error];
              error2 = [v65 error];
              brc_cloudKitErrorMessage = [error2 brc_cloudKitErrorMessage];
              shareDBErrorCountByPCSAndEDPState2 = [v65 shareDBErrorCountByPCSAndEDPState];
              v21 = [shareDBErrorCountByPCSAndEDPState2 objectForKeyedSubscript:v18];
              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:count];
              lastFailureDate = [v65 lastFailureDate];
              left = [v18 left];
              v25 = [left intValue] - 1;
              v26 = @"unknown";
              if (v25 <= 3)
              {
                v26 = off_278508560[v25];
              }

              BYTE1(v43) = enabled;
              LOBYTE(v43) = only;
              v27 = [self telemetryDictionaryToUploadForError:error errorMessage:brc_cloudKitErrorMessage count:v21 syncType:typeCopy totalItemsCount:v22 zoneType:@"shared" zoneCountsOnly:v43 isFolderSharingEnabled:dsidCopy dsid:numberCopy rampNumber:lastFailureDate lastFailureDate:v26 pcsState:?];

              [self sendTelemetryEvent:@"com.apple.iCloudDrive.syncStatus" withReport:v27];
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
        privateDBErrorCountByPCSAndEDPState = [v65 privateDBErrorCountByPCSAndEDPState];
        allKeys2 = [privateDBErrorCountByPCSAndEDPState allKeys];

        v49 = allKeys2;
        v53 = [allKeys2 countByEnumeratingWithState:&v66 objects:v78 count:16];
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
              error3 = [v65 error];
              error4 = [v65 error];
              brc_cloudKitErrorMessage2 = [error4 brc_cloudKitErrorMessage];
              privateDBErrorCountByPCSAndEDPState2 = [v65 privateDBErrorCountByPCSAndEDPState];
              v34 = [privateDBErrorCountByPCSAndEDPState2 objectForKeyedSubscript:v31];
              v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:count];
              lastFailureDate2 = [v65 lastFailureDate];
              left2 = [v31 left];
              v38 = [left2 intValue] - 1;
              v39 = @"unknown";
              if (v38 <= 3)
              {
                v39 = off_278508560[v38];
              }

              BYTE1(v43) = enabled;
              LOBYTE(v43) = only;
              v40 = [self telemetryDictionaryToUploadForError:error3 errorMessage:brc_cloudKitErrorMessage2 count:v34 syncType:typeCopy totalItemsCount:v35 zoneType:@"private" zoneCountsOnly:v43 isFolderSharingEnabled:dsidCopy dsid:numberCopy rampNumber:lastFailureDate2 lastFailureDate:v39 pcsState:?];

              [self sendTelemetryEvent:@"com.apple.iCloudDrive.syncStatus" withReport:v40];
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

+ (void)newAppTelemetryMetricEvent:(id)event
{
  eventCopy = event;
  if (!+[BRCAnalyticsReporter isTelemetryReportingEnabled])
  {
    goto LABEL_40;
  }

  v4 = objc_opt_new();
  telemetrySchema = [eventCopy telemetrySchema];
  v6 = 0;
  v7 = 1;
  if (telemetrySchema > 4)
  {
    if (telemetrySchema == 5)
    {
      if ([eventCopy hasMagnitudeInt])
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(eventCopy, "magnitudeInt")];
        [v4 setObject:v12 forKey:@"eventCount"];
      }

      v7 = 0;
      v6 = @"com.apple.iCloudDrive.appTelemetry.droppedEvent";
    }

    else
    {
      v8 = eventCopy;
      if (telemetrySchema == 6)
      {
        if ([eventCopy hasMagnitudeInt])
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(eventCopy, "magnitudeInt")];
          [v4 setObject:v14 forKey:@"data"];
        }

        v7 = 0;
        v6 = @"com.apple.iCloudDrive.appTelemetry.testEvent";
      }

      else
      {
        if (telemetrySchema != 7)
        {
          goto LABEL_34;
        }

        if ([eventCopy hasMagnitudeBool])
        {
          if ([eventCopy magnitudeBool])
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

  else if (telemetrySchema == 2)
  {
    if ([eventCopy hasMagnitudeInt])
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(eventCopy, "magnitudeInt")];
      [v4 setObject:v11 forKey:@"mismatchCount"];
    }

    v7 = 0;
    v6 = @"com.apple.iCloudDrive.appTelemetry.folderSharingCountMismatch";
  }

  else
  {
    v8 = eventCopy;
    if (telemetrySchema == 3)
    {
      if ([eventCopy hasMagnitudeInt])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(eventCopy, "magnitudeInt")];
        [v4 setObject:v13 forKey:@"numberOfZonesOutOfSync"];
      }

      v7 = 0;
      v6 = @"com.apple.iCloudDrive.appTelemetry.missingPush";
    }

    else
    {
      if (telemetrySchema != 4)
      {
        goto LABEL_34;
      }

      if ([eventCopy hasMagnitudeBool])
      {
        if ([eventCopy magnitudeBool])
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

  v8 = eventCopy;
LABEL_34:
  if ([v8 hasInvestigation])
  {
    investigation = [eventCopy investigation];
    hasZoneName = [investigation hasZoneName];

    if (hasZoneName)
    {
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      investigation2 = [eventCopy investigation];
      zoneName = [investigation2 zoneName];
      v20 = [v17 initWithData:zoneName encoding:4];

      [v4 setObject:v20 forKey:@"zoneName"];
    }
  }

  if ((v7 & 1) == 0)
  {
    [self sendTelemetryEvent:v6 withReport:v4];
  }

LABEL_40:
}

+ (void)sendTelemetryEvent:(id)event withReport:(id)report
{
  reportCopy = report;
  eventCopy = event;
  AnalyticsIsEventUsed();
  v8 = reportCopy;
  v7 = reportCopy;
  AnalyticsSendEventLazy();
}

@end