@interface AppTelemetryTimeSeriesEvent
+ (id)_errorsChainIfNecessaryForAppTelemetryIdentifier:(int)a3 error:(id)a4;
+ (id)itemStatsInvestigationWithFoundInfo:(id)a3;
+ (id)newConsistencyCheckerFailedEvent;
+ (id)newDBResetEventWithError:(id)a3 description:(id)a4;
+ (id)newDatabaseIDMismatchEventWithFPDatabaseID:(id)a3 cloudDocsDatabaseID:(id)a4;
+ (id)newDeepScanEventWithReason:(id)a3 appLibrary:(id)a4;
+ (id)newFSEventToSyncUpEventWithDuration:(double)a3;
+ (id)newFileBouncedManyTimes;
+ (id)newFromSqliteValue:(sqlite3_value *)a3;
+ (id)newFullyConsistentEvent;
+ (id)newMissingPushEventWithNumberOutOfSync:(unsigned int)a3 zonesType:(unsigned int)a4;
+ (id)newNonMigratedItemEvent:(id)a3 foundInfo:(id)a4;
+ (id)newQBSDirFaultsCountEvent:(unint64_t)a3 serverTruthDirFaultCount:(unint64_t)a4 serverTruthDirCount:(unint64_t)a5 timeSinceLogin:(unint64_t)a6 serverTruthTotalItemsCount:(unint64_t)a7 zonesNeverFullSync:(unint64_t)a8;
+ (id)newQBSOperationPrformanceEventWithTime:(double)a3 type:(id)a4 recordsFetched:(unint64_t)a5 recordsFetchedTotalMetadataSize:(unint64_t)a6 xattrsFetchedTotalSize:(unint64_t)a7;
+ (id)newReimportDomainFailureEventWithError:(id)a3 description:(id)a4;
+ (id)newShareSaveEventWithError:(id)a3;
+ (id)newUploadErrorForEventName:(id)a3 foundInfo:(id)a4;
+ (id)newUserDownloadEventWithDuration:(double)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsMagnitude:(id)a3;
- (int)magnitude;
- (unint64_t)hash;
- (void)_populateUUID:(id)a3;
- (void)clearOneofValuesForMagnitude;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMagnitude:(BOOL)a3;
- (void)setHasMagnitudeBool:(BOOL)a3;
- (void)setHasMagnitudeFloat:(BOOL)a3;
- (void)setHasMagnitudeInt:(BOOL)a3;
- (void)setHasMagnitudeLong:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setMagnitudeBool:(BOOL)a3;
- (void)setMagnitudeDouble:(double)a3;
- (void)setMagnitudeFloat:(float)a3;
- (void)setMagnitudeInt:(int)a3;
- (void)setMagnitudeLong:(int64_t)a3;
- (void)writeTo:(id)a3;
@end

@implementation AppTelemetryTimeSeriesEvent

+ (id)newFromSqliteValue:(sqlite3_value *)a3
{
  if (sqlite3_value_type(a3) != 4)
  {
    return 0;
  }

  v4 = objc_alloc(objc_opt_class());
  v5 = [MEMORY[0x277CBEA90] newFromSqliteValue:a3];
  v6 = [v4 initWithData:v5];

  return v6;
}

+ (id)_errorsChainIfNecessaryForAppTelemetryIdentifier:(int)a3 error:(id)a4
{
  v5 = a4;
  v6 = [BRCUserDefaults defaultsForMangledID:0];
  v7 = [v6 telemetryEventIdentifiersToReportErrorsChain];
  v8 = [v7 containsIndex:a3];

  v9 = 0;
  if (v8)
  {
    v10 = v5;
    v11 = [v10 userInfo];
    v12 = [v11 objectForKeyedSubscript:@"brc-error-for-errors-chain"];

    if (v12)
    {
      v13 = [v10 userInfo];
      v14 = [v13 objectForKeyedSubscript:@"brc-error-for-errors-chain"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        +[AppTelemetryTimeSeriesEvent(BRCAdditions) _errorsChainIfNecessaryForAppTelemetryIdentifier:error:];
      }

      v16 = [v10 userInfo];
      v17 = [v16 objectForKeyedSubscript:@"brc-error-for-errors-chain"];

      v10 = v17;
    }

    v24 = 0;
    v23 = 0;
    v18 = [v10 brc_getErrorsChainJSONStringWithErrorsCount:&v24 error:&v23];
    v19 = v18;
    if (v24 <= 2 || v18 == 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = v18;
    }

    v9 = v21;
  }

  return v9;
}

+ (id)newMissingPushEventWithNumberOutOfSync:(unsigned int)a3 zonesType:(unsigned int)a4
{
  v6 = [a1 newTelemetryEventWithIdentifier:3 zoneWithMangledID:0];
  [v6 setMagnitudeInt:a4 | (a3 << 8)];
  return v6;
}

+ (id)newDBResetEventWithError:(id)a3 description:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [BRCUserDefaults defaultsForMangledID:0];
  v9 = [a1 newTelemetryEventWithIdentifier:10 zoneWithMangledID:0 enhancedDrivePrivacyEnabled:objc_msgSend(v8 fromError:"supportsEnhancedDrivePrivacy") errorDescription:v7 itemIDString:{v6, 0}];

  [v9 setMagnitudeInt:1];
  return v9;
}

+ (id)newReimportDomainFailureEventWithError:(id)a3 description:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [BRCUserDefaults defaultsForMangledID:0];
  v9 = [a1 newTelemetryEventWithIdentifier:43 zoneWithMangledID:0 enhancedDrivePrivacyEnabled:objc_msgSend(v8 fromError:"supportsEnhancedDrivePrivacy") errorDescription:v7 itemIDString:{v6, 0}];

  [v9 setMagnitudeInt:1];
  return v9;
}

+ (id)newShareSaveEventWithError:(id)a3
{
  v3 = [a1 _newTelemetryEventWithIdentifier:47 error:a3];
  [v3 setMagnitudeInt:1];
  return v3;
}

+ (id)newFSEventToSyncUpEventWithDuration:(double)a3
{
  v4 = [a1 newTelemetryEventWithIdentifier:19 zoneWithMangledID:0];
  [v4 setMagnitudeDouble:a3];
  return v4;
}

+ (id)newUserDownloadEventWithDuration:(double)a3
{
  v4 = [a1 newTelemetryEventWithIdentifier:20 zoneWithMangledID:0];
  [v4 setMagnitudeDouble:a3];
  return v4;
}

+ (id)newDeepScanEventWithReason:(id)a3 appLibrary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 newTelemetryEventWithIdentifier:24 zoneWithMangledID:0];
  [v8 setMagnitudeInt:1];
  v9 = [v6 dataUsingEncoding:4];

  v10 = [v8 investigation];
  [v10 setZoneName:v9];

  v11 = [v8 investigation];
  [v11 setReason:v7];

  return v8;
}

+ (id)newQBSOperationPrformanceEventWithTime:(double)a3 type:(id)a4 recordsFetched:(unint64_t)a5 recordsFetchedTotalMetadataSize:(unint64_t)a6 xattrsFetchedTotalSize:(unint64_t)a7
{
  v12 = a4;
  v13 = [a1 newTelemetryEventWithIdentifier:32 zoneWithMangledID:0];
  [v13 setMagnitudeDouble:(a7 + a6) / a3];
  v14 = [v13 investigation];
  v15 = [v14 qbsPerformance];
  [v15 setOperationType:v12];

  v16 = [v13 investigation];
  v17 = [v16 qbsPerformance];
  [v17 setRecordsFetched:a5];

  v18 = [v13 investigation];
  v19 = [v18 qbsPerformance];
  [v19 setRecordsFetchedTotalMetadataSize:a6];

  v20 = [v13 investigation];
  v21 = [v20 qbsPerformance];
  [v21 setXattrsFetchedTotalSize:a7];

  return v13;
}

+ (id)newFileBouncedManyTimes
{
  v2 = [a1 newTelemetryEventWithIdentifier:29 zoneWithMangledID:0];
  [v2 setMagnitudeInt:1];
  return v2;
}

+ (id)newFullyConsistentEvent
{
  v2 = [a1 newTelemetryEventWithIdentifier:100 zoneWithMangledID:0];
  [v2 setMagnitudeInt:1];
  return v2;
}

+ (id)newConsistencyCheckerFailedEvent
{
  v2 = [a1 newTelemetryEventWithIdentifier:107 zoneWithMangledID:0];
  [v2 setMagnitudeInt:1];
  return v2;
}

+ (id)newQBSDirFaultsCountEvent:(unint64_t)a3 serverTruthDirFaultCount:(unint64_t)a4 serverTruthDirCount:(unint64_t)a5 timeSinceLogin:(unint64_t)a6 serverTruthTotalItemsCount:(unint64_t)a7 zonesNeverFullSync:(unint64_t)a8
{
  v14 = objc_alloc_init(AppTelemetryTimeSeriesEvent);
  v15 = objc_alloc_init(AppTelemetryInvestigation);
  [(AppTelemetryTimeSeriesEvent *)v14 setInvestigation:v15];

  v16 = objc_alloc_init(AppTelemetryQBSInvestigation);
  v17 = [(AppTelemetryTimeSeriesEvent *)v14 investigation];
  [v17 setQbsInvestigation:v16];

  [(AppTelemetryTimeSeriesEvent *)v14 setTelemetrySchema:28];
  [(AppTelemetryTimeSeriesEvent *)v14 setTimestamp:time(0)];
  v18 = [(AppTelemetryTimeSeriesEvent *)v14 investigation];
  v19 = [v18 qbsInvestigation];
  [v19 setClientTruthDirFaultCount:a3];

  v20 = [(AppTelemetryTimeSeriesEvent *)v14 investigation];
  v21 = [v20 qbsInvestigation];
  [v21 setServerTruthDirFaultCount:a4];

  v22 = [(AppTelemetryTimeSeriesEvent *)v14 investigation];
  v23 = [v22 qbsInvestigation];
  [v23 setServerTruthDirCount:a5];

  v24 = [(AppTelemetryTimeSeriesEvent *)v14 investigation];
  v25 = [v24 qbsInvestigation];
  [v25 setTimeSinceLogin:a6];

  v26 = [(AppTelemetryTimeSeriesEvent *)v14 investigation];
  v27 = [v26 qbsInvestigation];
  [v27 setServerTruthTotalItemsCount:a7];

  if (a8)
  {
    v28 = [BRCUserDefaults defaultsForMangledID:0];
    v29 = [v28 qbsExpectedItemsFetchedPerInterval];
    [v28 qbsExpectedItemsFetchedCheckInterval];
    if (v29 * (a6 / v30) > a7)
    {
      v31 = a8;
    }

    else
    {
      v31 = -a8;
    }

    [(AppTelemetryTimeSeriesEvent *)v14 setMagnitudeInt:v31];
  }

  else
  {
    [(AppTelemetryTimeSeriesEvent *)v14 setMagnitudeInt:0];
  }

  return v14;
}

- (void)_populateUUID:(id)a3
{
  v4 = a3;
  v5 = [(AppTelemetryTimeSeriesEvent *)self telemetrySchema];
  v6 = [(AppTelemetryTimeSeriesEvent *)self investigation];
  v7 = v6;
  if (v5 < 0x190)
  {
    [v6 setEventGroupUUID:v4];
  }

  else
  {
    [v6 setMigrationUUID:v4];
  }
}

+ (id)itemStatsInvestigationWithFoundInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AppTelemetryItemStatsInvestigation);
  v5 = [v3 objectForKey:*MEMORY[0x277CC61E0]];
  v6 = v5;
  if (v5)
  {
    -[AppTelemetryItemStatsInvestigation setItemNumber:](v4, "setItemNumber:", [v5 longLongValue]);
  }

  v7 = [v3 objectForKey:*MEMORY[0x277CC6218]];
  v8 = v7;
  if (v7)
  {
    -[AppTelemetryItemStatsInvestigation setStMode:](v4, "setStMode:", [v7 longLongValue]);
  }

  v9 = [v3 objectForKey:*MEMORY[0x277CC61A8]];
  v10 = v9;
  if (v9)
  {
    -[AppTelemetryItemStatsInvestigation setStFlags:](v4, "setStFlags:", [v9 longLongValue]);
  }

  v11 = [v3 objectForKey:*MEMORY[0x277CC61F8]];
  v12 = v11;
  if (v11)
  {
    -[AppTelemetryItemStatsInvestigation setHasMoreLinks:](v4, "setHasMoreLinks:", [v11 longLongValue]);
  }

  v13 = [v3 objectForKey:*MEMORY[0x277CC6208]];
  v14 = v13;
  if (v13)
  {
    -[AppTelemetryItemStatsInvestigation setHasAcls:](v4, "setHasAcls:", [v13 BOOLValue]);
  }

  v15 = [v3 objectForKey:*MEMORY[0x277CC6228]];
  v16 = v15;
  if (v15)
  {
    -[AppTelemetryItemStatsInvestigation setParentHasAcls:](v4, "setParentHasAcls:", [v15 BOOLValue]);
  }

  v17 = [v3 objectForKey:*MEMORY[0x277CC61C8]];
  v18 = v17;
  if (v17)
  {
    -[AppTelemetryItemStatsInvestigation setDataProtectionClass:](v4, "setDataProtectionClass:", [v17 intValue]);
  }

  v19 = [v3 objectForKey:*MEMORY[0x277CC6200]];
  v20 = v19;
  if (v19)
  {
    -[AppTelemetryItemStatsInvestigation setIsUnderDirStatFolder:](v4, "setIsUnderDirStatFolder:", [v19 BOOLValue]);
  }

  v21 = [v3 objectForKey:*MEMORY[0x277CC61D8]];
  v22 = v21;
  if (v21)
  {
    -[AppTelemetryItemStatsInvestigation setStatDocID:](v4, "setStatDocID:", [v21 longLongValue]);
  }

  v23 = [v3 objectForKey:*MEMORY[0x277CC6210]];
  v24 = v23;
  if (v23)
  {
    -[AppTelemetryItemStatsInvestigation setStatLogicalSize:](v4, "setStatLogicalSize:", [v23 longLongValue]);
  }

  v25 = [v3 objectForKey:*MEMORY[0x277CC6230]];
  v26 = v25;
  if (v25)
  {
    -[AppTelemetryItemStatsInvestigation setStatPhysicalSize:](v4, "setStatPhysicalSize:", [v25 longLongValue]);
  }

  v27 = [v3 objectForKey:*MEMORY[0x277CC61D0]];
  v28 = v27;
  if (v27)
  {
    -[AppTelemetryItemStatsInvestigation setStatDirEntryCount:](v4, "setStatDirEntryCount:", [v27 longLongValue]);
  }

  v29 = [v3 objectForKey:*MEMORY[0x277CC6240]];
  v30 = v29;
  if (v29)
  {
    -[AppTelemetryItemStatsInvestigation setIsOwnedByLoggedInUser:](v4, "setIsOwnedByLoggedInUser:", [v29 unsignedIntValue] == 0);
    -[AppTelemetryItemStatsInvestigation setIsOwnedByRoot:](v4, "setIsOwnedByRoot:", [v30 unsignedIntValue] == 1);
  }

  v31 = [v3 objectForKey:*MEMORY[0x277CC61E8]];
  v32 = v31;
  if (v31)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v31, "intValue")}];
    v34 = [v33 stringValue];
    [(AppTelemetryItemStatsInvestigation *)v4 setFinderInfoFlagsBase64:v34];
  }

  v35 = [v3 objectForKey:*MEMORY[0x277CC6238]];
  v36 = v35;
  if (v35)
  {
    -[AppTelemetryItemStatsInvestigation setIsResourceFork:](v4, "setIsResourceFork:", [v35 BOOLValue]);
  }

  v37 = [v3 objectForKey:*MEMORY[0x277CC61C0]];
  v38 = v37;
  if (v37)
  {
    -[AppTelemetryItemStatsInvestigation setSyncRootEnum:](v4, "setSyncRootEnum:", [v37 intValue]);
  }

  v39 = [v3 objectForKey:*MEMORY[0x277CC61B0]];
  v40 = v39;
  if (v39)
  {
    -[AppTelemetryItemStatsInvestigation setBTime:](v4, "setBTime:", [v39 longLongValue]);
  }

  v41 = [v3 objectForKey:*MEMORY[0x277CC61B8]];
  v42 = v41;
  if (v41)
  {
    -[AppTelemetryItemStatsInvestigation setBTimeIsBusy:](v4, "setBTimeIsBusy:", [v41 BOOLValue]);
  }

  v43 = [v3 objectForKey:*MEMORY[0x277CC6220]];
  v44 = v43;
  if (v43)
  {
    -[AppTelemetryItemStatsInvestigation setMTime:](v4, "setMTime:", [v43 longLongValue]);
  }

  v45 = [v3 objectForKey:*MEMORY[0x277CC6270]];
  v46 = v45;
  if (v45)
  {
    -[AppTelemetryItemStatsInvestigation setXattrCount:](v4, "setXattrCount:", [v45 intValue]);
  }

  v47 = [v3 objectForKey:*MEMORY[0x277CC6268]];
  v48 = v47;
  if (v47)
  {
    -[AppTelemetryItemStatsInvestigation setCompressionType:](v4, "setCompressionType:", [v47 intValue]);
  }

  v49 = [v3 objectForKey:*MEMORY[0x277CC6290]];
  v50 = v49;
  if (v49)
  {
    -[AppTelemetryItemStatsInvestigation setIsQuarantined:](v4, "setIsQuarantined:", [v49 BOOLValue]);
  }

  v51 = [v3 objectForKey:*MEMORY[0x277CC6280]];
  v52 = v51;
  if (v51)
  {
    -[AppTelemetryItemStatsInvestigation setXattrHasDemotion:](v4, "setXattrHasDemotion:", [v51 BOOLValue]);
  }

  v53 = [v3 objectForKey:*MEMORY[0x277CC6288]];
  v54 = v53;
  if (v53)
  {
    -[AppTelemetryItemStatsInvestigation setXattrHasPromotion:](v4, "setXattrHasPromotion:", [v53 BOOLValue]);
  }

  v55 = [v3 objectForKey:*MEMORY[0x277CC6278]];
  v56 = v55;
  if (v55)
  {
    -[AppTelemetryItemStatsInvestigation setXattrHasBeforeBounce:](v4, "setXattrHasBeforeBounce:", [v55 BOOLValue]);
  }

  v57 = [v3 objectForKey:*MEMORY[0x277CC6178]];
  if (v57)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AppTelemetryItemStatsInvestigation *)v4 setUtType:v57];
    }
  }

  v58 = [v3 objectForKey:*MEMORY[0x277CC6160]];
  v59 = v58;
  if (v58)
  {
    -[AppTelemetryItemStatsInvestigation setFileNameLength:](v4, "setFileNameLength:", [v58 longLongValue]);
  }

  v60 = [v3 objectForKey:*MEMORY[0x277CC6170]];
  v61 = v60;
  if (v60)
  {
    -[AppTelemetryItemStatsInvestigation setPathLength:](v4, "setPathLength:", [v60 longLongValue]);
  }

  v62 = [v3 objectForKey:*MEMORY[0x277CC6150]];
  v63 = v62;
  if (v62)
  {
    -[AppTelemetryItemStatsInvestigation setIsAppleDouble:](v4, "setIsAppleDouble:", [v62 BOOLValue]);
  }

  v64 = [v3 objectForKey:*MEMORY[0x277CC6168]];
  v65 = v64;
  if (v64)
  {
    -[AppTelemetryItemStatsInvestigation setPathDepth:](v4, "setPathDepth:", [v64 longLongValue]);
  }

  v66 = [v3 objectForKey:*MEMORY[0x277CC6148]];
  if (v66)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AppTelemetryItemStatsInvestigation *)v4 setFileNameExtension:v66];
    }
  }

  v67 = [v3 objectForKey:*MEMORY[0x277CC6180]];
  if (v67)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AppTelemetryItemStatsInvestigation *)v4 setNameUnicodeNorm:v67];
    }
  }

  v68 = [v3 objectForKey:*MEMORY[0x277CC6158]];
  v69 = v68;
  if (v68)
  {
    -[AppTelemetryItemStatsInvestigation setNameIsTrashed:](v4, "setNameIsTrashed:", [v68 BOOLValue]);
  }

  v70 = [v3 objectForKey:*MEMORY[0x277CC6258]];
  v71 = v70;
  if (v70)
  {
    -[AppTelemetryItemStatsInvestigation setReadErrorCode:](v4, "setReadErrorCode:", [v70 longLongValue]);
  }

  v72 = [v3 objectForKey:*MEMORY[0x277CC6250]];
  v73 = v72;
  if (v72)
  {
    -[AppTelemetryItemStatsInvestigation setSysPageSize:](v4, "setSysPageSize:", [v72 longLongValue]);
  }

  v74 = [v3 objectForKey:*MEMORY[0x277CC6260]];
  v75 = v74;
  if (v74)
  {
    -[AppTelemetryItemStatsInvestigation setSysUID:](v4, "setSysUID:", [v74 longLongValue]);
  }

  v76 = [v3 objectForKey:*MEMORY[0x277CC6248]];
  v77 = v76;
  if (v76)
  {
    -[AppTelemetryItemStatsInvestigation setSysDocIDResolutionOK:](v4, "setSysDocIDResolutionOK:", [v76 BOOLValue]);
  }

  v78 = *MEMORY[0x277CC6190];
  v79 = [v3 objectForKey:*MEMORY[0x277CC6190]];
  v80 = v79;
  if (v79)
  {
    -[AppTelemetryItemStatsInvestigation setIsPurgable:](v4, "setIsPurgable:", [v79 BOOLValue]);
  }

  v81 = [v3 objectForKey:v78];
  v82 = [v3 objectForKey:*MEMORY[0x277CC6198]];
  v83 = v82;
  if (v82)
  {
    -[AppTelemetryItemStatsInvestigation setPurgeGenCount:](v4, "setPurgeGenCount:", [v82 longLongValue]);
  }

  v84 = [v3 objectForKey:*MEMORY[0x277CC6188]];
  v85 = v84;
  if (v84)
  {
    -[AppTelemetryItemStatsInvestigation setPurgeATime:](v4, "setPurgeATime:", [v84 longLongValue]);
  }

  v86 = [v3 objectForKey:*MEMORY[0x277CC61A0]];
  v87 = v86;
  if (v86)
  {
    -[AppTelemetryItemStatsInvestigation setPurgeSyncRoot:](v4, "setPurgeSyncRoot:", [v86 longLongValue]);
  }

  v88 = [v3 objectForKey:*MEMORY[0x277CC61F0]];
  v89 = v88;
  if (v88)
  {
    -[AppTelemetryItemStatsInvestigation setFsGenCount:](v4, "setFsGenCount:", [v88 longLongValue]);
  }

  v90 = [v3 objectForKey:*MEMORY[0x277CC60B8]];
  v91 = v90;
  if (v90)
  {
    -[AppTelemetryItemStatsInvestigation setDbErrorCode:](v4, "setDbErrorCode:", [v90 longLongValue]);
  }

  v92 = [v3 objectForKey:*MEMORY[0x277CC60C0]];
  if (v92)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AppTelemetryItemStatsInvestigation *)v4 setDbErrorDomain:v92];
    }
  }

  v93 = [v3 objectForKey:*MEMORY[0x277CC60A8]];
  v94 = v93;
  if (v93)
  {
    -[AppTelemetryItemStatsInvestigation setDbCapabilities:](v4, "setDbCapabilities:", [v93 longLongValue]);
  }

  v95 = [v3 objectForKey:*MEMORY[0x277CC6118]];
  v96 = v95;
  if (v95)
  {
    -[AppTelemetryItemStatsInvestigation setDbTransferState:](v4, "setDbTransferState:", [v95 longLongValue]);
  }

  v97 = [v3 objectForKey:*MEMORY[0x277CC6110]];
  v98 = v97;
  if (v97)
  {
    -[AppTelemetryItemStatsInvestigation setDbSharingState:](v4, "setDbSharingState:", [v97 longLongValue]);
  }

  v99 = [v3 objectForKey:*MEMORY[0x277CC6100]];
  v100 = v99;
  if (v99)
  {
    -[AppTelemetryItemStatsInvestigation setDbIsApplibrary:](v4, "setDbIsApplibrary:", [v99 BOOLValue]);
  }

  v101 = [v3 objectForKey:*MEMORY[0x277CC60B0]];
  v102 = v101;
  if (v101)
  {
    -[AppTelemetryItemStatsInvestigation setDbEffectiveContentPolicy:](v4, "setDbEffectiveContentPolicy:", [v101 longLongValue]);
  }

  v103 = [v3 objectForKey:*MEMORY[0x277CC6108]];
  v104 = v103;
  if (v103)
  {
    -[AppTelemetryItemStatsInvestigation setDbIsPackage:](v4, "setDbIsPackage:", [v103 BOOLValue]);
  }

  v105 = [v3 objectForKey:*MEMORY[0x277CC60E8]];
  v106 = v105;
  if (v105)
  {
    -[AppTelemetryItemStatsInvestigation setDbFsContentStatus:](v4, "setDbFsContentStatus:", [v105 longLongValue]);
  }

  v107 = [v3 objectForKey:*MEMORY[0x277CC60C8]];
  v108 = v107;
  if (v107)
  {
    -[AppTelemetryItemStatsInvestigation setDbFpContentStatus:](v4, "setDbFpContentStatus:", [v107 longLongValue]);
  }

  v109 = [v3 objectForKey:*MEMORY[0x277CC60F8]];
  v110 = v109;
  if (v109)
  {
    -[AppTelemetryItemStatsInvestigation setDbFsImportStatus:](v4, "setDbFsImportStatus:", [v109 longLongValue]);
  }

  v111 = [v3 objectForKey:*MEMORY[0x277CC60D8]];
  v112 = v111;
  if (v111)
  {
    -[AppTelemetryItemStatsInvestigation setDbFpImportStatus:](v4, "setDbFpImportStatus:", [v111 longLongValue]);
  }

  v113 = [v3 objectForKey:*MEMORY[0x277CC60F0]];
  v114 = v113;
  if (v113)
  {
    -[AppTelemetryItemStatsInvestigation setDbFsDeletionStatus:](v4, "setDbFsDeletionStatus:", [v113 longLongValue]);
  }

  v115 = [v3 objectForKey:*MEMORY[0x277CC60D0]];
  v116 = v115;
  if (v115)
  {
    -[AppTelemetryItemStatsInvestigation setDbFpDeletionStatus:](v4, "setDbFpDeletionStatus:", [v115 longLongValue]);
  }

  v117 = [v3 objectForKey:*MEMORY[0x277CC6130]];
  v118 = v117;
  if (v117)
  {
    -[AppTelemetryItemStatsInvestigation setDiagFailuresBitmap:](v4, "setDiagFailuresBitmap:", [v117 longLongValue]);
  }

  v119 = [v3 objectForKey:*MEMORY[0x277CC6120]];
  v120 = v119;
  if (v119)
  {
    -[AppTelemetryItemStatsInvestigation setDiagErrorCode:](v4, "setDiagErrorCode:", [v119 longLongValue]);
  }

  v121 = [v3 objectForKey:*MEMORY[0x277CC6138]];
  v122 = v121;
  if (v121)
  {
    -[AppTelemetryItemStatsInvestigation setDiagUnderlyingErrorCode:](v4, "setDiagUnderlyingErrorCode:", [v121 longLongValue]);
  }

  v123 = [v3 objectForKey:*MEMORY[0x277CC6128]];
  if (v123)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AppTelemetryItemStatsInvestigation *)v4 setDiagErrorDomain:v123];
    }
  }

  v124 = [v3 objectForKey:*MEMORY[0x277CC6140]];
  if (v124)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AppTelemetryItemStatsInvestigation *)v4 setDiagUnderlyingErrorDomain:v124];
    }
  }

  v125 = [v3 objectForKey:*MEMORY[0x277CC6080]];
  v126 = v125;
  if (v125)
  {
    -[AppTelemetryItemStatsInvestigation setApfsAvailableSpace:](v4, "setApfsAvailableSpace:", [v125 longLongValue]);
  }

  v127 = [v3 objectForKey:*MEMORY[0x277CC6098]];
  v128 = v127;
  if (v127)
  {
    -[AppTelemetryItemStatsInvestigation setApfsFlags:](v4, "setApfsFlags:", [v127 longLongValue]);
  }

  v129 = [v3 objectForKey:*MEMORY[0x277CC6088]];
  v130 = v129;
  if (v129)
  {
    -[AppTelemetryItemStatsInvestigation setApfsBlockSize:](v4, "setApfsBlockSize:", [v129 longLongValue]);
  }

  v131 = [v3 objectForKey:*MEMORY[0x277CC60A0]];
  v132 = v131;
  if (v131)
  {
    -[AppTelemetryItemStatsInvestigation setApfsRole:](v4, "setApfsRole:", [v131 longLongValue]);
  }

  v133 = [v3 objectForKey:*MEMORY[0x277CC6090]];
  v134 = v133;
  if (v133)
  {
    -[AppTelemetryItemStatsInvestigation setApfsEncrypted:](v4, "setApfsEncrypted:", [v133 BOOLValue]);
  }

  v135 = v4;
  return v4;
}

+ (id)newNonMigratedItemEvent:(id)a3 foundInfo:(id)a4
{
  v5 = a4;
  v6 = [AppTelemetryTimeSeriesEvent newIntEvent:403 UUID:a3 value:1];
  v7 = [AppTelemetryTimeSeriesEvent itemStatsInvestigationWithFoundInfo:v5];

  v8 = [v6 investigation];
  [v8 setItemStatsInvestigation:v7];

  return v6;
}

+ (id)newUploadErrorForEventName:(id)a3 foundInfo:(id)a4
{
  v5 = a4;
  v6 = [AppTelemetryTimeSeriesEvent newIntEvent:210 UUID:a3 value:1];
  v7 = [AppTelemetryTimeSeriesEvent itemStatsInvestigationWithFoundInfo:v5];

  v8 = [v6 investigation];
  [v8 setItemStatsInvestigation:v7];

  return v6;
}

+ (id)newDatabaseIDMismatchEventWithFPDatabaseID:(id)a3 cloudDocsDatabaseID:(id)a4
{
  v5 = a4;
  v6 = [AppTelemetryTimeSeriesEvent newIntEvent:38 UUID:a3 value:1];
  v7 = [v6 investigation];
  [v7 setMigrationUUID:v5];

  return v6;
}

- (void)setMagnitudeFloat:(float)a3
{
  [(AppTelemetryTimeSeriesEvent *)self clearOneofValuesForMagnitude];
  *&self->_has |= 8u;
  self->_magnitude = 1;
  *&self->_has |= 0x10u;
  self->_magnitudeFloat = a3;
}

- (void)setHasMagnitudeFloat:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setMagnitudeDouble:(double)a3
{
  [(AppTelemetryTimeSeriesEvent *)self clearOneofValuesForMagnitude];
  *&self->_has |= 8u;
  self->_magnitude = 2;
  *&self->_has |= 1u;
  self->_magnitudeDouble = a3;
}

- (void)setMagnitudeInt:(int)a3
{
  [(AppTelemetryTimeSeriesEvent *)self clearOneofValuesForMagnitude];
  *&self->_has |= 8u;
  self->_magnitude = 3;
  *&self->_has |= 0x20u;
  self->_magnitudeInt = a3;
}

- (void)setHasMagnitudeInt:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setMagnitudeBool:(BOOL)a3
{
  [(AppTelemetryTimeSeriesEvent *)self clearOneofValuesForMagnitude];
  *&self->_has |= 8u;
  self->_magnitude = 4;
  *&self->_has |= 0x40u;
  self->_magnitudeBool = a3;
}

- (void)setHasMagnitudeBool:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setMagnitudeLong:(int64_t)a3
{
  [(AppTelemetryTimeSeriesEvent *)self clearOneofValuesForMagnitude];
  *&self->_has |= 8u;
  self->_magnitude = 5;
  *&self->_has |= 2u;
  self->_magnitudeLong = a3;
}

- (void)setHasMagnitudeLong:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)magnitude
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_magnitude;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMagnitude:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsMagnitude:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"magnitude_float"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"magnitude_double"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"magnitude_int"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"magnitude_BOOL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"magnitude_long"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForMagnitude
{
  *&self->_has &= ~8u;
  self->_magnitude = 0;
  *&self->_has &= ~0x10u;
  self->_magnitudeFloat = 0.0;
  *&self->_has &= ~1u;
  self->_magnitudeDouble = 0.0;
  *&self->_has &= ~0x20u;
  self->_magnitudeInt = 0;
  *&self->_has &= ~0x40u;
  self->_magnitudeBool = 0;
  *&self->_has &= ~2u;
  self->_magnitudeLong = 0;
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AppTelemetryTimeSeriesEvent;
  v4 = [(AppTelemetryTimeSeriesEvent *)&v8 description];
  v5 = [(AppTelemetryTimeSeriesEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_telemetrySchema];
  [v3 setObject:v4 forKey:@"telemetrySchema"];

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *&v5 = self->_magnitudeFloat;
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    [v3 setObject:v11 forKey:@"magnitude_float"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_magnitudeDouble];
  [v3 setObject:v12 forKey:@"magnitude_double"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_magnitudeInt];
  [v3 setObject:v13 forKey:@"magnitude_int"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_magnitudeBool];
  [v3 setObject:v14 forKey:@"magnitude_BOOL"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_magnitudeLong];
  [v3 setObject:v15 forKey:@"magnitude_long"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  magnitude = self->_magnitude;
  if (magnitude >= 6)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_magnitude];
  }

  else
  {
    v17 = off_278506AE8[magnitude];
  }

  [v3 setObject:v17 forKey:@"magnitude"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];
  }

LABEL_9:
  investigation = self->_investigation;
  if (investigation)
  {
    v9 = [(AppTelemetryInvestigation *)investigation dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"investigation"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  telemetrySchema = self->_telemetrySchema;
  v14 = v4;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    magnitudeFloat = self->_magnitudeFloat;
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if (has)
  {
    magnitudeDouble = self->_magnitudeDouble;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  v9 = v14;
  if ((has & 0x20) != 0)
  {
    magnitudeInt = self->_magnitudeInt;
    PBDataWriterWriteInt32Field();
    v9 = v14;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  magnitudeBool = self->_magnitudeBool;
  PBDataWriterWriteBOOLField();
  v9 = v14;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  magnitudeLong = self->_magnitudeLong;
  PBDataWriterWriteInt64Field();
  v9 = v14;
  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v9 = v14;
  }

LABEL_10:
  if (self->_investigation)
  {
    PBDataWriterWriteSubmessage();
    v9 = v14;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 8) != 0)
  {
    v4[10] = self->_magnitude;
    *(v4 + 60) |= 8u;
  }

  v4[13] = self->_telemetrySchema;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[11] = LODWORD(self->_magnitudeFloat);
    *(v4 + 60) |= 0x10u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 1) = *&self->_magnitudeDouble;
  *(v4 + 60) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4[12] = self->_magnitudeInt;
  *(v4 + 60) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 56) = self->_magnitudeBool;
  *(v4 + 60) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  *(v4 + 2) = self->_magnitudeLong;
  *(v4 + 60) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    *(v4 + 3) = self->_timestamp;
    *(v4 + 60) |= 4u;
  }

LABEL_10:
  if (self->_investigation)
  {
    v6 = v4;
    [v4 setInvestigation:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 40) = self->_magnitude;
    *(v5 + 60) |= 8u;
  }

  *(v5 + 52) = self->_telemetrySchema;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 44) = self->_magnitudeFloat;
    *(v5 + 60) |= 0x10u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 8) = self->_magnitudeDouble;
  *(v5 + 60) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 48) = self->_magnitudeInt;
  *(v5 + 60) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    *(v5 + 16) = self->_magnitudeLong;
    *(v5 + 60) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_14:
  *(v5 + 56) = self->_magnitudeBool;
  *(v5 + 60) |= 0x40u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((has & 4) != 0)
  {
LABEL_9:
    *(v5 + 24) = self->_timestamp;
    *(v5 + 60) |= 4u;
  }

LABEL_10:
  v8 = [(AppTelemetryInvestigation *)self->_investigation copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  v5 = *(v4 + 60);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 60) & 8) == 0 || self->_magnitude != *(v4 + 10))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 60) & 8) != 0)
  {
    goto LABEL_43;
  }

  if (self->_telemetrySchema != *(v4 + 13))
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 60) & 0x10) == 0 || self->_magnitudeFloat != *(v4 + 11))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 60) & 0x10) != 0)
  {
    goto LABEL_43;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_magnitudeDouble != *(v4 + 1))
    {
      goto LABEL_43;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 60) & 0x20) == 0 || self->_magnitudeInt != *(v4 + 12))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 60) & 0x20) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 0x40) == 0)
  {
    if ((*(v4 + 60) & 0x40) == 0)
    {
      goto LABEL_25;
    }

LABEL_43:
    v8 = 0;
    goto LABEL_44;
  }

  if ((*(v4 + 60) & 0x40) == 0)
  {
    goto LABEL_43;
  }

  v6 = *(v4 + 56);
  if (self->_magnitudeBool)
  {
    if ((*(v4 + 56) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_43;
  }

LABEL_25:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_magnitudeLong != *(v4 + 2))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 60) & 4) == 0 || self->_timestamp != *(v4 + 3))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 60) & 4) != 0)
  {
    goto LABEL_43;
  }

  investigation = self->_investigation;
  if (investigation | *(v4 + 4))
  {
    v8 = [(AppTelemetryInvestigation *)investigation isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_44:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_magnitude;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  magnitudeFloat = self->_magnitudeFloat;
  if (magnitudeFloat < 0.0)
  {
    magnitudeFloat = -magnitudeFloat;
  }

  *v6.i32 = floorf(magnitudeFloat + 0.5);
  v10 = (magnitudeFloat - *v6.i32) * 1.8447e19;
  *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v6 = vbslq_s8(v11, v7, v6);
  v12 = 2654435761u * *v6.i32;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabsf(v10);
  }

LABEL_9:
  if (*&self->_has)
  {
    magnitudeDouble = self->_magnitudeDouble;
    if (magnitudeDouble < 0.0)
    {
      magnitudeDouble = -magnitudeDouble;
    }

    *v6.i64 = floor(magnitudeDouble + 0.5);
    v15 = (magnitudeDouble - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v7, v6).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v17 = 2654435761 * self->_magnitudeInt;
  }

  else
  {
    v17 = 0;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v18 = 2654435761 * self->_magnitudeBool;
  }

  else
  {
    v18 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v20 = 2654435761 * self->_magnitudeLong;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_27;
    }

LABEL_29:
    v21 = 0;
    goto LABEL_30;
  }

  v20 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_29;
  }

LABEL_27:
  v21 = 2654435761u * self->_timestamp;
LABEL_30:
  telemetrySchema = self->_telemetrySchema;
  return (2654435761 * telemetrySchema) ^ v8 ^ v12 ^ v13 ^ v17 ^ v18 ^ v20 ^ v21 ^ [(AppTelemetryInvestigation *)self->_investigation hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*(v4 + 60) & 8) != 0)
  {
    self->_magnitude = *(v4 + 10);
    *&self->_has |= 8u;
  }

  self->_telemetrySchema = *(v4 + 13);
  v6 = *(v4 + 60);
  if ((v6 & 0x10) != 0)
  {
    self->_magnitudeFloat = *(v4 + 11);
    *&self->_has |= 0x10u;
    v6 = *(v4 + 60);
    if ((v6 & 1) == 0)
    {
LABEL_5:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v4 + 60) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_magnitudeDouble = *(v4 + 1);
  *&self->_has |= 1u;
  v6 = *(v4 + 60);
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_magnitudeInt = *(v4 + 12);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 60);
  if ((v6 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_magnitudeBool = *(v4 + 56);
  *&self->_has |= 0x40u;
  v6 = *(v4 + 60);
  if ((v6 & 2) == 0)
  {
LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  self->_magnitudeLong = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 60) & 4) != 0)
  {
LABEL_9:
    self->_timestamp = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_10:
  investigation = self->_investigation;
  v8 = v5[4];
  if (investigation)
  {
    if (v8)
    {
      [(AppTelemetryInvestigation *)investigation mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(AppTelemetryTimeSeriesEvent *)self setInvestigation:?];
  }

  MEMORY[0x2821F96F8]();
}

@end