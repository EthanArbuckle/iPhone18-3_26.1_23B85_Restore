@interface BRCSyncConsistencyReport
+ (void)cleanupApfsSnapshotWithMountFD:(int)d;
+ (void)cleanupApfsSnapshotWithMountPath:(id)path;
+ (void)generateReportWithSession:(id)session mangledIDs:(id)ds completion:(id)completion;
@end

@implementation BRCSyncConsistencyReport

uint64_t __91__BRCSyncConsistencyReport__finishReport_session_temporaryDBURL_mountFD_completionHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) wasAbleToRun])
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __91__BRCSyncConsistencyReport__finishReport_session_temporaryDBURL_mountFD_completionHandler___block_invoke_cold_1();
    }
  }

  else
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] Telemetry sync consistency report did not run%@", &v7, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)cleanupApfsSnapshotWithMountPath:(id)path
{
  pathCopy = path;
  v6 = open([path fileSystemRepresentation], 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    [self cleanupApfsSnapshotWithMountFD:v6];

    close(v7);
  }
}

+ (void)cleanupApfsSnapshotWithMountFD:(int)d
{
  v14 = 0;
  v4 = BRCUnmountAPFSSnapshot(@"iCloudDriveSyncConsistency", &v14);
  v5 = v14;
  v6 = v5;
  if ((v4 & 1) == 0 && ([v5 br_isPOSIXErrorCode:2] & 1) == 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      +[BRCSyncConsistencyReport cleanupApfsSnapshotWithMountFD:];
    }
  }

  v13 = v6;
  v9 = BRCDeleteAPFSSnapshot(d, @"iCloudDriveSyncConsistency", &v13);
  v10 = v13;

  if ((v9 & 1) == 0 && ([v10 br_isPOSIXErrorCode:2] & 1) == 0)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      +[BRCSyncConsistencyReport cleanupApfsSnapshotWithMountFD:];
    }
  }
}

+ (void)generateReportWithSession:(id)session mangledIDs:(id)ds completion:(id)completion
{
  v136 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dsCopy = ds;
  completionCopy = completion;
  v11 = objc_alloc_init(BRCSyncConsistencyReport);
  v12 = [BRCUserDefaults defaultsForMangledID:0];
  v13 = +[BRCSystemResourcesManager manager];
  volume = [sessionCopy volume];
  v15 = [v13 hasEnoughSpaceForDevice:{objc_msgSend(volume, "deviceID")}];

  if (v15)
  {
    v93 = completionCopy;
    selfCopy = self;
    v91 = v12;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v17 = MEMORY[0x277CBEBC0];
    sessionDirPath = [sessionCopy sessionDirPath];
    v19 = [sessionDirPath stringByAppendingPathComponent:@"telemetry-db"];
    v20 = [v17 fileURLWithPath:v19];

    if ([v20 checkResourceIsReachableAndReturnError:0])
    {
      [defaultManager removeItemAtURL:v20 error:0];
    }

    v90 = defaultManager;
    [defaultManager createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:0];
    serverTruthWorkloop = [sessionCopy serverTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke;
    block[3] = &unk_2784FF478;
    v22 = sessionCopy;
    v126 = v22;
    v23 = v20;
    v127 = v23;
    dispatch_async_and_wait(serverTruthWorkloop, block);

    clientTruthWorkloop = [v22 clientTruthWorkloop];
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_2;
    v122[3] = &unk_2784FF478;
    v25 = v22;
    v123 = v25;
    v92 = v23;
    v124 = v92;
    dispatch_async_and_wait(clientTruthWorkloop, v122);

    volume2 = [v25 volume];
    mountPath = [volume2 mountPath];

    v28 = [BRCUserDefaults defaultsForMangledID:0];
    LODWORD(v23) = [v28 syncConsistencyCheckerSnapshotting];

    if (!v23)
    {
      v34 = @"/";
      v36 = -1;
LABEL_11:
      BRDiskCheckerServiceConnection();
      v84 = v83 = v34;
      v39 = [MEMORY[0x277CBEBC0] fileURLWithPath:v34];
      mobileDocumentsURL = [MEMORY[0x277CFAE38] mobileDocumentsURL];
      path = [mobileDocumentsURL path];
      v82 = v39;
      v42 = [v39 URLByAppendingPathComponent:path];

      v85 = dsCopy;
      v86 = mountPath;
      v89 = v36;
      v81 = v42;
      if (dsCopy && [dsCopy count])
      {
        v118[0] = MEMORY[0x277D85DD0];
        v118[1] = 3221225472;
        v118[2] = __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_738;
        v118[3] = &unk_278500428;
        v119 = v42;
        v43 = [dsCopy br_transform:v118];
      }

      else
      {
        v129 = v42;
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
      }

      v44 = objc_opt_new();
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v45 = v43;
      v46 = [v45 countByEnumeratingWithState:&v114 objects:v128 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v115;
        while (2)
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v115 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v114 + 1) + 8 * i);
            v113 = 0;
            v51 = [MEMORY[0x277CC6438] wrapperWithURL:v50 readonly:1 error:&v113];
            v52 = v113;
            if (v52)
            {
              lastError = v11->_lastError;
              v11->_lastError = v52;
              v59 = v52;

              completionCopy = v93;
              v33 = v92;
              [selfCopy _finishReport:v11 session:v25 temporaryDBURL:v92 mountFD:v89 completionHandler:v93];

              v60 = v45;
              goto LABEL_32;
            }

            [v44 addObject:v51];
          }

          v47 = [v45 countByEnumeratingWithState:&v114 objects:v128 count:16];
          if (v47)
          {
            continue;
          }

          break;
        }
      }

      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_2_740;
      v111[3] = &unk_278500450;
      v53 = v25;
      v112 = v53;
      v54 = [dsCopy br_transform:v111];
      v110 = 0;
      v33 = v92;
      v55 = [MEMORY[0x277CC6438] wrapperWithURL:v92 readonly:0 error:&v110];
      v56 = v110;
      v57 = v110;
      if (v57)
      {
        objc_storeStrong(&v11->_lastError, v56);
        [selfCopy _finishReport:v11 session:v53 temporaryDBURL:v92 mountFD:v89 completionHandler:v93];
      }

      else
      {
        v103[0] = MEMORY[0x277D85DD0];
        v103[1] = 3221225472;
        v103[2] = __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_3;
        v103[3] = &unk_278500478;
        v77 = v11;
        v104 = v77;
        v108 = selfCopy;
        v68 = v53;
        v105 = v68;
        v76 = v92;
        v106 = v76;
        v109 = v89;
        v75 = v93;
        v107 = v75;
        v80 = [v84 remoteObjectProxyWithErrorHandler:v103];
        syncConsistencyFileChecksumRate = [v91 syncConsistencyFileChecksumRate];
        syncConsistencyPackageChecksumRate = [v91 syncConsistencyPackageChecksumRate];
        syncConsistencyMaxEventsCount = [v91 syncConsistencyMaxEventsCount];
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_742;
        v95[3] = &unk_2785004A0;
        v96 = v77;
        v101 = selfCopy;
        v97 = v68;
        v98 = v76;
        v102 = v89;
        v100 = v75;
        v99 = v84;
        [v80 checkTreeConsistencyWithDatabaseURL:v55 rootURLWrappers:v44 fileChecksumRatePerThousand:syncConsistencyFileChecksumRate packageChecksumRatePerThousand:syncConsistencyPackageChecksumRate maxEventsCount:syncConsistencyMaxEventsCount forZoneRowIDs:v54 reply:v95];
      }

      v60 = v112;
      dsCopy = v85;
      completionCopy = v93;
LABEL_32:
      mountPath = v86;

      v67 = v90;
      v12 = v91;
      v62 = v83;
      goto LABEL_37;
    }

    v29 = open([mountPath fileSystemRepresentation], 0);
    if ((v29 & 0x80000000) != 0)
    {
      v61 = v11->_lastError;
      v11->_lastError = 0;

      completionCopy = v93;
      v33 = v92;
      [selfCopy _finishReport:v11 session:v25 temporaryDBURL:v92 mountFD:v29 completionHandler:v93];
      v62 = @"/";
    }

    else
    {
      [selfCopy cleanupApfsSnapshotWithMountFD:v29];
      v121 = 0;
      v30 = BRCGenerateAPFSSnapshot(v29, @"iCloudDriveSyncConsistency", &v121);
      v31 = v121;
      v32 = v31;
      v33 = v92;
      if (!v30)
      {
        v87 = mountPath;
        v63 = brc_bread_crumbs();
        v64 = brc_default_log();
        if (os_log_type_enabled(v64, 0x90u))
        {
          *buf = 138412802;
          v131 = v87;
          v132 = 2112;
          v133 = v32;
          v134 = 2112;
          v135 = v63;
          _os_log_error_impl(&dword_223E7A000, v64, 0x90u, "[ERROR] Failed to generate snapshot at %@ - %@%@", buf, 0x20u);
        }

        v65 = v11->_lastError;
        v11->_lastError = v32;
        v66 = v32;

        completionCopy = v93;
        [selfCopy _finishReport:v11 session:v25 temporaryDBURL:v92 mountFD:v29 completionHandler:v93];

        v62 = @"/";
        v67 = v90;
        v12 = v91;
        mountPath = v87;
        goto LABEL_37;
      }

      v120 = v31;
      v88 = v29;
      v34 = BRCMountAPFSSnapshot(v29, @"iCloudDriveSyncConsistency", &v120);
      v35 = v120;

      if (v34)
      {

        v36 = v88;
        goto LABEL_11;
      }

      v69 = brc_bread_crumbs();
      v70 = brc_default_log();
      if (os_log_type_enabled(v70, 0x90u))
      {
        *buf = 138412802;
        v131 = mountPath;
        v132 = 2112;
        v133 = v35;
        v134 = 2112;
        v135 = v69;
        _os_log_error_impl(&dword_223E7A000, v70, 0x90u, "[ERROR] Failed to mount snapshot at %@ - %@%@", buf, 0x20u);
      }

      v71 = v11->_lastError;
      v11->_lastError = v35;
      v72 = v35;

      completionCopy = v93;
      [selfCopy _finishReport:v11 session:v25 temporaryDBURL:v92 mountFD:v88 completionHandler:v93];

      v62 = 0;
    }

    v67 = v90;
    v12 = v91;
LABEL_37:

    goto LABEL_38;
  }

  v37 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:28];
  v38 = v11->_lastError;
  v11->_lastError = v37;

  [self _finishReport:v11 session:sessionCopy temporaryDBURL:0 mountFD:0xFFFFFFFFLL completionHandler:completionCopy];
LABEL_38:

  v73 = *MEMORY[0x277D85DE8];
}

void __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverDB];
  [v2 flush];

  v4 = [*(a1 + 32) serverDB];
  v3 = [*(a1 + 40) URLByAppendingPathComponent:@"server.db"];
  [v4 backupToURL:v3 progress:0];
}

void __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) clientDB];
  [v2 flush];

  v4 = [*(a1 + 32) clientDB];
  v3 = [*(a1 + 40) URLByAppendingPathComponent:@"client.db"];
  [v4 backupToURL:v3 progress:0];
}

id __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_2_740(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CFAE60];
  v4 = a2;
  v5 = [[v3 alloc] initWithMangledString:v4];

  v6 = [v2 appLibraryByMangledID:v5];
  v7 = [v6 zoneRowID];

  return v7;
}

void __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      __81__BRCAnalyticsReporter__resumePausedTreeConsistencyCheckOperationWithSystemTask___block_invoke_cold_1();
    }

    objc_storeStrong((*(a1 + 32) + 32), a2);
    [*(a1 + 64) _finishReport:*(a1 + 32) session:*(a1 + 40) temporaryDBURL:*(a1 + 48) mountFD:*(a1 + 72) completionHandler:*(a1 + 56)];
  }
}

void __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_742(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(a1 + 32) + 32), a4);
  }

  else
  {
    [*(a1 + 56) invalidate];
    *(*(a1 + 32) + 8) = 1;
    v29 = v7;
    if (v7)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v35;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v35 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [[AppTelemetryTimeSeriesEvent alloc] initWithData:*(*(&v34 + 1) + 8 * i)];
            [v10 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v13);
      }

      v17 = *(a1 + 32);
      v18 = *(v17 + 16);
      *(v17 + 16) = v10;

      v7 = v29;
    }

    if (v8)
    {
      v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v20 = v8;
      v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v31;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v31 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [[AppTelemetryTimeSeriesEvent alloc] initWithData:*(*(&v30 + 1) + 8 * j)];
            [v19 addObject:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v22);
      }

      v26 = *(a1 + 32);
      v27 = *(v26 + 24);
      *(v26 + 24) = v19;

      v7 = v29;
    }
  }

  [*(a1 + 72) _finishReport:*(a1 + 32) session:*(a1 + 40) temporaryDBURL:*(a1 + 48) mountFD:*(a1 + 80) completionHandler:*(a1 + 64)];

  v28 = *MEMORY[0x277D85DE8];
}

void __91__BRCSyncConsistencyReport__finishReport_session_temporaryDBURL_mountFD_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*v0 telemetryErrorEvents];
  [v2 count];
  v3 = [*v1 telemetryWarningEvents];
  [v3 count];
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)cleanupApfsSnapshotWithMountFD:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Failed to unmount old snapshot - %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)cleanupApfsSnapshotWithMountFD:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Failed to delete old snapshot - %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end