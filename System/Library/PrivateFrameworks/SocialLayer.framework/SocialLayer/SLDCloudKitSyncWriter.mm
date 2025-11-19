@interface SLDCloudKitSyncWriter
+ (id)sharedInstance;
- (BOOL)_didHandleSyncError:(id)a3 retryBlock:(id)a4;
- (BOOL)syncEngine:(id)a3 shouldFetchChangesForZoneID:(id)a4;
- (id)_idForRecordIDString:(id)a3;
- (id)_recordIDsFromStrings:(id)a3;
- (id)recordIDStringOfSavedIDString:(id)a3;
- (id)recordZoneID;
- (id)syncEngine:(id)a3 recordToSaveForRecordID:(id)a4;
- (unint64_t)_batchNumberOfRecordIDString:(id)a3;
- (unint64_t)versionOfSavedIDString:(id)a3;
- (void)_savedRecord:(id)a3;
- (void)accountStatusChanged;
- (void)checkForAppChanges;
- (void)checkForAppChangesNow;
- (void)dealloc;
- (void)fetchAndProcessFreshHighlights;
- (void)handleMetadataSizeBecomingEligibleForSync;
- (void)initializeState;
- (void)invalidateHighlights;
- (void)invalidateHighlightsInternal;
- (void)nextTask;
- (void)reset;
- (void)syncEngine:(id)a3 didFetchRecord:(id)a4;
- (void)syncEngine:(id)a3 didSaveRecord:(id)a4;
- (void)syncEngine:(id)a3 didSaveRecordZone:(id)a4;
- (void)syncEngine:(id)a3 failedToDeleteRecordWithID:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 failedToFetchChangesForRecordZoneID:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 failedToSaveRecord:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 failedToSaveRecordZone:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 recordWithIDWasDeleted:(id)a4 recordType:(id)a5;
@end

@implementation SLDCloudKitSyncWriter

void __45__SLDCloudKitSyncWriter_invalidateHighlights__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    dispatch_source_cancel(WeakRetained[9]);
    v3 = WeakRetained[9];
    WeakRetained[9] = 0;

    [(dispatch_source_t *)WeakRetained invalidateHighlightsInternal];
  }
}

- (void)invalidateHighlightsInternal
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)nextTask
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchAndProcessFreshHighlights
{
  v2 = self;
  v189 = *MEMORY[0x277D85DE8];
  v3 = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(v3);

  v106 = os_transaction_create();
  v4 = SLDaemonLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "#SLDCK beginning fetchAndProcessFreshHighlights", buf, 2u);
  }

  v5 = objc_opt_new();
  v6 = *&v2->_freshHighlightsGenerated;
  *&v2->_freshHighlightsGenerated = v5;

  v7 = [(SLDCloudKitSyncBase *)v2 persistence];
  v8 = [v7 objectForKeyedSubscript:@"savedIDs"];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v176 objects:v188 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v177;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v177 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(SLDCloudKitSyncWriter *)v2 recordIDStringOfSavedIDString:*(*(&v176 + 1) + 8 * i)];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v176 objects:v188 count:16];
    }

    while (v12);
  }

  v105 = v10;

  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v20 = [(SLDCloudKitSyncBase *)v2 getIncrementedBatchNumber];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke;
  aBlock[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
  aBlock[4] = v20;
  v21 = _Block_copy(aBlock);
  v174[0] = MEMORY[0x277D85DD0];
  v174[1] = 3221225472;
  v174[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_2;
  v174[3] = &unk_2789272E0;
  v174[4] = v2;
  v22 = _Block_copy(v174);
  v172[0] = MEMORY[0x277D85DD0];
  v172[1] = 3221225472;
  v172[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_3;
  v172[3] = &unk_278927308;
  v172[4] = v2;
  v23 = v16;
  v173 = v23;
  v24 = _Block_copy(v172);
  v168[0] = MEMORY[0x277D85DD0];
  v168[1] = 3221225472;
  v168[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_4;
  v168[3] = &unk_278927330;
  v168[4] = v2;
  v98 = v9;
  v169 = v98;
  v111 = v23;
  v170 = v111;
  v25 = v21;
  v171 = v25;
  v26 = _Block_copy(v168);
  v161[0] = MEMORY[0x277D85DD0];
  v161[1] = 3221225472;
  v161[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_5;
  v161[3] = &unk_278927358;
  v104 = v17;
  v162 = v104;
  v163 = v2;
  v27 = v26;
  v164 = v27;
  v28 = v25;
  v165 = v28;
  v29 = v22;
  v166 = v29;
  v30 = v24;
  v167 = v30;
  v31 = _Block_copy(v161);
  v159[0] = MEMORY[0x277D85DD0];
  v159[1] = 3221225472;
  v159[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_6;
  v159[3] = &unk_278927380;
  v101 = v31;
  v160 = v101;
  v32 = _Block_copy(v159);
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 3221225472;
  v150[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_7;
  v150[3] = &unk_2789273D0;
  v100 = v32;
  v154 = v100;
  v103 = v18;
  v151 = v103;
  v102 = v19;
  v152 = v102;
  v153 = v2;
  v33 = v27;
  v155 = v33;
  v34 = v28;
  v156 = v34;
  v35 = v29;
  v157 = v35;
  v36 = v30;
  v158 = v36;
  v37 = _Block_copy(v150);
  v145[0] = MEMORY[0x277D85DD0];
  v145[1] = 3221225472;
  v145[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_3_486;
  v145[3] = &unk_2789273F8;
  v145[4] = v2;
  v38 = v33;
  v146 = v38;
  v39 = v34;
  v147 = v39;
  v40 = v35;
  v148 = v40;
  v41 = v36;
  v149 = v41;
  v42 = _Block_copy(v145);
  v43 = objc_opt_new();
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_499;
  v136[3] = &unk_278927420;
  v97 = v42;
  v139 = v97;
  v96 = v43;
  v137 = v96;
  v99 = v37;
  v140 = v99;
  v138 = v2;
  v110 = v38;
  v141 = v110;
  v109 = v39;
  v142 = v109;
  v108 = v40;
  v143 = v108;
  v107 = v41;
  v144 = v107;
  v44 = _Block_copy(v136);
  v45 = objc_opt_new();
  v46 = [(SLDCloudKitSyncBase *)v2 persistence];
  v47 = [v46 objectForKeyedSubscript:@"lastKnownApps"];

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = v47;
  v48 = [obj countByEnumeratingWithState:&v132 objects:v187 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v133;
    v112 = *MEMORY[0x277D3A750];
    v113 = *v133;
    v114 = v2;
    do
    {
      v51 = 0;
      v115 = v49;
      do
      {
        if (*v133 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v52 = *(*(&v132 + 1) + 8 * v51);
        context = objc_autoreleasePoolPush();
        if ([&unk_28469BD80 containsObject:v52])
        {
          v53 = objc_opt_new();
          v54 = v52;
          v119 = v54;
          if ([@"com.apple.TVWatchList" isEqual:v54])
          {

            v119 = @"com.apple.tv";
          }

          v118 = v51;
          v55 = SLDaemonLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v184 = v119;
            v185 = 2112;
            v186 = v54;
            _os_log_debug_impl(&dword_231772000, v55, OS_LOG_TYPE_DEBUG, "#SLDCK Asking Portrait for %@ highlights (requested app identifier: %@)", buf, 0x16u);
          }

          v56 = objc_opt_new();
          v131 = 0;
          v129[0] = MEMORY[0x277D85DD0];
          v129[1] = 3221225472;
          v129[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_531;
          v129[3] = &unk_278927448;
          v57 = v53;
          v130 = v57;
          [v56 iterRankedHighlightsWithLimit:100 client:v119 variant:v112 error:&v131 block:v129];
          v117 = v131;

          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v58 = v57;
          v59 = [v58 countByEnumeratingWithState:&v125 objects:v182 count:16];
          if (v59)
          {
            v60 = v59;
            v61 = *v126;
            do
            {
              for (j = 0; j != v60; ++j)
              {
                if (*v126 != v61)
                {
                  objc_enumerationMutation(v58);
                }

                v63 = *(*(&v125 + 1) + 8 * j);
                v64 = objc_autoreleasePoolPush();
                v65 = v44[2](v44, v63, v54);
                if (v65)
                {
                  [v45 addObject:v65];
                }

                objc_autoreleasePoolPop(v64);
              }

              v60 = [v58 countByEnumeratingWithState:&v125 objects:v182 count:16];
            }

            while (v60);
          }

          v50 = v113;
          v2 = v114;
          v49 = v115;
          v51 = v118;
        }

        else
        {
          v58 = SLDaemonLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v184 = v52;
            v185 = 2112;
            v186 = &unk_28469BD80;
            _os_log_error_impl(&dword_231772000, v58, OS_LOG_TYPE_ERROR, "#SLDCK Ignoring sync request for app identifier not in allowlist: %@ (allowed: %@)", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(context);
        ++v51;
      }

      while (v51 != v49);
      v49 = [obj countByEnumeratingWithState:&v132 objects:v187 count:16];
    }

    while (v49);
  }

  v66 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v181 = v66;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v181 count:1];
  v68 = [v111 sortedArrayUsingDescriptors:v67];

  v69 = [v45 arrayByAddingObjectsFromArray:v68];
  v70 = [v69 componentsJoinedByString:@"\n"];
  v71 = [(SLDCloudKitSyncBase *)v2 idStringForType:@"index" uniqueString:v70];

  v72 = (*(v110 + 2))(v110, v71);
  if (!v72)
  {
    v72 = (*(v109 + 2))(v109, v71);
    v73 = objc_alloc(MEMORY[0x277CBC5A0]);
    v74 = [(SLDCloudKitSyncWriter *)v2 recordZoneID];
    v75 = [v73 initWithRecordType:@"index" zoneID:v74];

    v76 = (*(v108 + 2))(v108, v72);
    [v75 setRecordID:v76];

    v77 = [v75 encryptedValues];
    [v77 setObject:v68 forKeyedSubscript:@"recordIDs"];

    v78 = [v75 encryptedValues];
    [v78 setObject:v45 forKeyedSubscript:@"highlights"];

    (*(v107 + 2))(v107, v75);
  }

  v79 = [(SLDCloudKitSyncBase *)v2 persistence];
  v80 = [v79 objectForKeyedSubscript:@"savedIDs"];
  v81 = v80;
  if (!v80)
  {
    v80 = MEMORY[0x277CBEC10];
  }

  v82 = [v80 mutableCopy];

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v83 = v98;
  v84 = [v83 countByEnumeratingWithState:&v121 objects:v180 count:16];
  if (v84)
  {
    v85 = v84;
    v86 = *v122;
    do
    {
      for (k = 0; k != v85; ++k)
      {
        if (*v122 != v86)
        {
          objc_enumerationMutation(v83);
        }

        v88 = [(SLDCloudKitSyncWriter *)v2 _idForRecordIDString:*(*(&v121 + 1) + 8 * k)];
        [v82 setObject:0 forKeyedSubscript:v88];
      }

      v85 = [v83 countByEnumeratingWithState:&v121 objects:v180 count:16];
    }

    while (v85);
  }

  v89 = [(SLDCloudKitSyncBase *)v2 persistence];
  [v89 setObject:v82 forKeyedSubscript:@"savedIDs"];

  v90 = [(SLDCloudKitSyncBase *)v2 syncEngine];
  v91 = [*&v2->_freshHighlightsGenerated allKeys];
  v92 = [(SLDCloudKitSyncWriter *)v2 _recordIDsFromStrings:v91];
  v93 = [v83 allObjects];
  v94 = [(SLDCloudKitSyncWriter *)v2 _recordIDsFromStrings:v93];
  [v90 addRecordIDsToSave:v92 recordIDsToDelete:v94];

  *(&v2->super._saltLocked + 1) = 1;
  [(SLDCloudKitSyncWriter *)v2 nextTask];

  v95 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SLDCloudKitSyncWriter sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __39__SLDCloudKitSyncWriter_sharedInstance__block_invoke()
{
  v3 = objc_opt_new();
  v0 = [MEMORY[0x277CBC218] containerWithIdentifier:@"com.apple.SocialLayer"];
  [v3 setContainer:v0];

  [v3 setName:@"ckwriter"];
  v1 = [(SLDCloudKitSyncBase *)[SLDCloudKitSyncWriter alloc] initWithConfiguration:v3];
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;
}

- (void)initializeState
{
  v6.receiver = self;
  v6.super_class = SLDCloudKitSyncWriter;
  [(SLDCloudKitSyncBase *)&v6 initializeState];
  *(&self->super._saltLocked + 1) = 0;
  *(&self->super._saltLocked + 2) = 0;
  v3 = *&self->_freshHighlightsGenerated;
  *&self->_freshHighlightsGenerated = 0;

  [(SLDCloudKitSyncWriter *)self checkForAppChangesNow];
  v4 = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SLDCloudKitSyncWriter_initializeState__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(v4, block);
}

- (unint64_t)versionOfSavedIDString:(id)a3
{
  v4 = a3;
  v5 = [(SLDCloudKitSyncBase *)self persistence];
  v6 = [v5 objectForKeyedSubscript:@"savedIDs"];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectAtIndexedSubscript:0];
      v10 = [v9 unsignedIntegerValue];
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)recordIDStringOfSavedIDString:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SLDCloudKitSyncBase *)self persistence];
  v6 = [v5 objectForKeyedSubscript:@"savedIDs"];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = v7;
    if (v7)
    {
      v15[0] = v4;
      v9 = [v7 objectAtIndexedSubscript:1];
      v10 = [v9 stringValue];
      v15[1] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
      v12 = [v11 componentsJoinedByString:@"!"];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (unint64_t)_batchNumberOfRecordIDString:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"!" options:6];
  v6 = [v3 substringFromIndex:v4 + v5];

  v7 = [v6 longLongValue];
  return v7;
}

- (id)_idForRecordIDString:(id)a3
{
  v3 = a3;
  v4 = [v3 substringToIndex:{objc_msgSend(v3, "rangeOfString:options:", @"!", 6)}];

  return v4;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"%@!%tu", v4, *(a1 + 32)];

  return v5;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBC5D0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) recordZoneID];
  v7 = [v5 initWithRecordName:v4 zoneID:v6];

  return v7;
}

void __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addMetadataToRecord:v4];
  v5 = *(a1 + 40);
  v6 = [v4 recordID];
  v7 = [v6 recordName];
  [v5 addObject:v7];

  v8 = *(*(a1 + 32) + 64);
  v10 = [v4 recordID];
  v9 = [v10 recordName];
  [v8 setObject:v4 forKeyedSubscript:v9];
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 versionOfSavedIDString:v4] == 7)
  {
    v5 = [*(a1 + 32) recordIDStringOfSavedIDString:v4];

    [*(a1 + 40) removeObject:v5];
    [*(a1 + 48) addObject:v5];
  }

  else
  {
    v5 = (*(*(a1 + 56) + 16))();

    v6 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v5];

    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v6 = v5;
  v5 = v6;
LABEL_5:

  return v6;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_5(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, [v3 bytes], objc_msgSend(v3, "length"));
    CC_SHA256_Final(v38, &c);
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v38 length:16];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = v5;
    goto LABEL_22;
  }

  v7 = CGImageSourceCreateWithData(v3, 0);
  if (v7)
  {
    v8 = v7;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
    CFRelease(v8);
    if (ImageAtIndex)
    {
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(ImageAtIndex);
      if (Width * Height <= 16384.0)
      {
        Image = CGImageRetain(ImageAtIndex);
      }

      else
      {
        v12 = Width / Height;
        v13 = sqrt(16384.0 / v12);
        v14 = fmax(round(v12 * v13), 1.0);
        v15 = fmax(round(v13), 1.0);
        RGB = CGColorSpaceGetRGB();
        v17 = CGBitmapContextCreate(0, v14, v15, 8uLL, 0, RGB, 1u);
        if (!v17)
        {
          CFRelease(ImageAtIndex);
          goto LABEL_21;
        }

        v18 = v17;
        CGContextSetInterpolationQuality(v17, kCGInterpolationHigh);
        v42.origin.x = 0.0;
        v42.origin.y = 0.0;
        v42.size.width = v14;
        v42.size.height = v15;
        CGContextDrawImage(v18, v42, ImageAtIndex);
        Image = CGBitmapContextCreateImage(v18);
        CFRelease(v18);
      }

      CGImageRelease(ImageAtIndex);
      if (Image)
      {
        v20 = objc_opt_new();
        v21 = CGImageDestinationCreateWithData(v20, @"public.jpeg", 1uLL, 0);
        if (v21)
        {
          v22 = v21;
          *v38 = *MEMORY[0x277CD2D48];
          v23 = [MEMORY[0x277CCABB0] numberWithDouble:{0.8, *v38}];
          *c.count = v23;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&c forKeys:v38 count:1];
          CGImageDestinationAddImage(v22, Image, v24);

          CFRelease(Image);
          v25 = CGImageDestinationFinalize(v22);
          CFRelease(v22);
          if (v25)
          {
            v26 = [(__CFData *)v20 copy];

            if (v26)
            {
              v27 = [*(a1 + 40) idStringForType:@"image" uniqueData:v26];
              v28 = (*(*(a1 + 48) + 16))();
              if (v28)
              {
                v29 = v28;
                [*(a1 + 32) setObject:v28 forKeyedSubscript:v4];
                v6 = v29;
              }

              else
              {
                v32 = (*(*(a1 + 56) + 16))();
                v33 = objc_alloc(MEMORY[0x277CBC5A0]);
                v34 = [*(a1 + 40) recordZoneID];
                v35 = [v33 initWithRecordType:@"image" zoneID:v34];

                v36 = (*(*(a1 + 64) + 16))();
                [v35 setRecordID:v36];

                v37 = [v35 encryptedValues];
                [v37 setObject:v26 forKeyedSubscript:@"compressed"];

                [*(a1 + 32) setObject:v32 forKeyedSubscript:v4];
                (*(*(a1 + 72) + 16))();
                v6 = v32;
              }

              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }

        else
        {
          CGImageRelease(Image);
        }
      }
    }
  }

LABEL_21:
  v6 = 0;
LABEL_22:

  v30 = *MEMORY[0x277D85DE8];

  return v6;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [v8 objectForKeyedSubscript:v7];
    if (v10)
    {
      v11 = [MEMORY[0x277CBEB68] null];
      v12 = [v11 isEqual:v10];

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_6_cold_1();
        }

        v13 = v10;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v9[2](v9);
      if (v15)
      {
        v13 = (*(*(a1 + 32) + 16))();
        if (v13)
        {
          [v8 setObject:v13 forKeyedSubscript:v7];
        }

        else
        {
          v17 = [MEMORY[0x277CBEB68] null];
          [v8 setObject:v17 forKeyedSubscript:v7];
        }
      }

      else
      {
        v16 = [MEMORY[0x277CBEB68] null];
        [v8 setObject:v16 forKeyedSubscript:v7];

        v13 = 0;
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_7(void *a1, void *a2)
{
  v83[9] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [SLPerson alloc];
  v5 = [v3 sender];
  v82 = 0;
  v6 = [(SLPerson *)v4 initWithPortraitPerson:v5 error:&v82];
  v7 = v82;

  if (v7)
  {
    v8 = SLDaemonLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_7_cold_1();
    }

    v9 = 0;
  }

  else
  {
    v10 = [(SLPerson *)v6 contact];
    v11 = a1[7];
    v12 = [v10 identifier];
    v13 = a1[4];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_436;
    v80[3] = &unk_2789273A8;
    v76 = v10;
    v81 = v76;
    v14 = (*(v11 + 16))(v11, v12, v13, v80);

    v15 = a1[7];
    v16 = [v3 groupPhotoPath];
    v17 = v3;
    v18 = v16;
    v19 = a1[5];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_2_438;
    v78[3] = &unk_2789273A8;
    v74 = v17;
    v20 = v17;
    v79 = v20;
    (*(v15 + 16))(v15, v18, v19, v78);
    v21 = v73 = a1;
    v77 = v21;

    v22 = [v20 identifier];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &stru_28468DAB8;
    }

    v83[0] = v24;
    v25 = [v20 sourceAppDisplayName];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &stru_28468DAB8;
    }

    v83[1] = v27;
    if ([v20 isStarred])
    {
      v28 = @"1";
    }

    else
    {
      v28 = @"0";
    }

    v83[2] = v28;
    if ([v20 isFromMe])
    {
      v29 = @"1";
    }

    else
    {
      v29 = @"0";
    }

    v83[3] = v29;
    v30 = [(SLPerson *)v6 handle];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = &stru_28468DAB8;
    }

    v83[4] = v32;
    v33 = [(SLPerson *)v6 displayName];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = &stru_28468DAB8;
    }

    v83[5] = v35;
    v36 = [(SLPerson *)v6 shortDisplayName];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = &stru_28468DAB8;
    }

    v75 = v14;
    if (v14)
    {
      v39 = v14;
    }

    else
    {
      v39 = &stru_28468DAB8;
    }

    v83[6] = v38;
    v83[7] = v39;
    if (v21)
    {
      v40 = v21;
    }

    else
    {
      v40 = &stru_28468DAB8;
    }

    v83[8] = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:9];

    v42 = v73[6];
    v43 = [v41 componentsJoinedByString:@"\n"];
    v44 = [v42 idStringForType:@"attribution" uniqueString:v43];

    v45 = (*(v73[8] + 16))();
    if (v45)
    {
      v9 = v45;
    }

    else
    {
      v72 = (*(v73[9] + 16))();
      v46 = objc_alloc(MEMORY[0x277CBC5A0]);
      v47 = [v73[6] recordZoneID];
      v48 = [v46 initWithRecordType:@"attribution" zoneID:v47];

      v49 = (*(v73[10] + 16))();
      [v48 setRecordID:v49];

      v50 = [v20 identifier];
      v51 = [v48 encryptedValues];
      [v51 setObject:v50 forKeyedSubscript:@"identifier"];

      v52 = [v20 sourceAppDisplayName];
      v53 = [v48 encryptedValues];
      [v53 setObject:v52 forKeyedSubscript:@"sourceAppDisplayName"];

      v54 = MEMORY[0x277CCABB0];
      v55 = [v20 timestamp];
      [v55 timeIntervalSinceReferenceDate];
      v56 = [v54 numberWithDouble:?];
      v57 = [v48 encryptedValues];
      [v57 setObject:v56 forKeyedSubscript:@"timestamp"];

      v58 = [(SLPerson *)v6 handle];
      v59 = [v48 encryptedValues];
      [v59 setObject:v58 forKeyedSubscript:@"handle"];

      v60 = [(SLPerson *)v6 displayName];
      v61 = [v48 encryptedValues];
      [v61 setObject:v60 forKeyedSubscript:@"displayName"];

      v62 = [(SLPerson *)v6 shortDisplayName];
      v63 = [v48 encryptedValues];
      [v63 setObject:v62 forKeyedSubscript:@"shortDisplayName"];

      v64 = [v48 encryptedValues];
      [v64 setObject:v75 forKeyedSubscript:@"contactPhoto"];

      v65 = [v48 encryptedValues];
      [v65 setObject:v21 forKeyedSubscript:@"groupPhoto"];

      v66 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v20, "isStarred")}];
      v67 = [v48 encryptedValues];
      [v67 setObject:v66 forKeyedSubscript:@"starred"];

      v68 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v20, "isFromMe")}];
      v69 = [v48 encryptedValues];
      [v69 setObject:v68 forKeyedSubscript:@"fromMe"];

      (*(v73[11] + 16))();
      v9 = v72;
    }

    v8 = v76;
    v7 = 0;
    v3 = v74;
  }

  v70 = *MEMORY[0x277D85DE8];

  return v9;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_2_438(uint64_t a1)
{
  v1 = MEMORY[0x277CBEA90];
  v2 = [*(a1 + 32) groupPhotoPath];
  v3 = [v1 dataWithContentsOfURL:v2 options:1 error:0];

  return v3;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_3_486(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v5 dataUsingEncoding:4];
  v7 = [v4 idStringForType:@"entity" uniqueData:v6];

  v8 = (*(*(a1 + 40) + 16))();
  if (v8)
  {
    v9 = v8;
    v10 = v9;
  }

  else
  {
    v9 = (*(*(a1 + 48) + 16))();
    v11 = objc_alloc(MEMORY[0x277CBC5A0]);
    v12 = [*(a1 + 32) recordZoneID];
    v13 = [v11 initWithRecordType:@"entity" zoneID:v12];

    v14 = (*(*(a1 + 56) + 16))();
    [v13 setRecordID:v14];

    v15 = [v3 identifier];
    v16 = [v13 encryptedValues];
    [v16 setObject:v15 forKeyedSubscript:@"identifier"];

    v17 = [v3 resourceURL];
    v18 = [v17 absoluteString];
    v19 = [v13 encryptedValues];
    [v19 setObject:v18 forKeyedSubscript:@"resourceURL"];

    v20 = [v3 supplementaryData];
    LODWORD(v18) = SLDValidateSupplementaryData(v20);

    if (v18)
    {
      v21 = MEMORY[0x277CCAAB0];
      v22 = [v3 supplementaryData];
      v28 = 0;
      v23 = [v21 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v28];
      v24 = v28;

      if (v24)
      {
        v25 = SLDaemonLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_3_486_cold_1();
        }

        v10 = 0;
      }

      else
      {
        v26 = [v13 encryptedValues];
        [v26 setObject:v23 forKeyedSubscript:@"supplementaryData"];

        (*(*(a1 + 64) + 16))();
        v10 = v9;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_499(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 48) + 16))();
  if (v7)
  {
    v54 = v7;
    v56 = v6;
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v9 = [v5 attributionIdentifiers];
    v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v55 = v5;
    v11 = [v5 attributionIdentifiers];
    v12 = [v11 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v60;
      do
      {
        v15 = 0;
        do
        {
          if (*v60 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v59 + 1) + 8 * v15);
          v17 = *(a1 + 32);
          v58 = 0;
          v18 = [v17 attributionForIdentifier:v16 error:&v58];
          v19 = v58;
          if (v19)
          {
            v20 = SLDaemonLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v65 = v16;
              v66 = 2112;
              v67 = v19;
              _os_log_fault_impl(&dword_231772000, v20, OS_LOG_TYPE_FAULT, "#SLDCK portrait store couldn't retrieve attribution %@ (err: %@)", buf, 0x16u);
            }

LABEL_10:

            goto LABEL_11;
          }

          if (v18)
          {
            v20 = (*(*(a1 + 56) + 16))();
            if (v20)
            {
              [v10 addObject:v20];
            }

            goto LABEL_10;
          }

LABEL_11:

          ++v15;
        }

        while (v13 != v15);
        v21 = [v11 countByEnumeratingWithState:&v59 objects:v68 count:16];
        v13 = v21;
      }

      while (v21);
    }

    v22 = [v55 timestamp];
    [v22 timeIntervalSinceReferenceDate];
    v24 = v23;

    v25 = [v55 score];
    v26 = objc_opt_new();
    [v26 setUsesSignificantDigits:1];
    [v26 setMaximumSignificantDigits:14];
    [v26 setMinimumSignificantDigits:14];
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &unk_28469BD50;
    }

    v28 = [v26 stringFromNumber:v27];
    v63[0] = v54;
    v63[1] = v56;
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
    v30 = [v29 stringValue];
    v63[2] = v30;
    v63[3] = v28;
    v57 = v28;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
    v32 = [v10 sortedArrayUsingSelector:sel_compare_];
    v33 = [v31 arrayByAddingObjectsFromArray:v32];

    v34 = *(a1 + 40);
    v35 = [v33 componentsJoinedByString:@"\n"];
    v36 = [v34 idStringForType:@"highlight" uniqueString:v35];

    v37 = (*(*(a1 + 64) + 16))();
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      (*(*(a1 + 72) + 16))();
      v39 = v53 = v33;
      v40 = objc_alloc(MEMORY[0x277CBC5A0]);
      v41 = [*(a1 + 40) recordZoneID];
      v42 = [v40 initWithRecordType:@"highlight" zoneID:v41];

      v43 = (*(*(a1 + 80) + 16))();
      [v42 setRecordID:v43];

      v44 = [v42 encryptedValues];
      [v44 setObject:v54 forKeyedSubscript:@"entity"];

      v45 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
      v46 = [v42 encryptedValues];
      [v46 setObject:v45 forKeyedSubscript:@"timestamp"];

      v47 = [v42 encryptedValues];
      [v47 setObject:v10 forKeyedSubscript:@"attributions"];

      v48 = [v42 encryptedValues];
      [v48 setObject:v56 forKeyedSubscript:@"applicationIdentifier"];

      v49 = [v42 encryptedValues];
      [v49 setObject:v25 forKeyedSubscript:@"score"];

      (*(*(a1 + 88) + 16))();
      v50 = v39;
      v33 = v53;
      v38 = v50;
    }

    v5 = v55;
    v6 = v56;
    v7 = v54;
  }

  else
  {
    v38 = 0;
  }

  v51 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)_recordIDsFromStrings:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([v4 count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v7 = [(SLDCloudKitSyncWriter *)self recordZoneID];
    if (v7)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = v4;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            v14 = objc_alloc(MEMORY[0x277CBC5D0]);
            v15 = [v14 initWithRecordName:v13 zoneID:{v7, v20}];
            [v6 addObject:v15];
          }

          v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v10);
      }

      v16 = v6;
    }

    else
    {
      v17 = SLDaemonLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [SLDCloudKitSyncWriter _recordIDsFromStrings:];
      }

      v16 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)recordZoneID
{
  v3 = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SLDCloudKitSyncBase *)self persistence];
  v5 = [v4 objectForKeyedSubscript:@"recordZoneID"];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBC5F8]);
    v7 = [v6 initWithZoneName:v5 ownerName:*MEMORY[0x277CBBF28]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)reset
{
  v3 = SLDaemonLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "#SLDCK RESET RESET RESET!", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = SLDCloudKitSyncWriter;
  [(SLDCloudKitSyncBase *)&v4 reset];
  [(SLDCloudKitSyncWriter *)self nextTask];
}

- (void)accountStatusChanged
{
  v3.receiver = self;
  v3.super_class = SLDCloudKitSyncWriter;
  [(SLDCloudKitSyncBase *)&v3 accountStatusChanged];
  [(SLDCloudKitSyncWriter *)self nextTask];
}

- (void)handleMetadataSizeBecomingEligibleForSync
{
  v5.receiver = self;
  v5.super_class = SLDCloudKitSyncWriter;
  [(SLDCloudKitSyncBase *)&v5 handleMetadataSizeBecomingEligibleForSync];
  v3 = SLDaemonLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "#SLDCK nextTask: sync engine metadata should be small enough now", v4, 2u);
  }

  [(SLDCloudKitSyncWriter *)self nextTask];
}

- (void)checkForAppChanges
{
  v3 = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(v3);

  if (!*(&self->super._saltLocked + 2))
  {
    *(&self->super._saltLocked + 2) = 1;
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, 10000000000);
    v5 = [(SLDCloudKitSyncBase *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__SLDCloudKitSyncWriter_checkForAppChanges__block_invoke;
    v6[3] = &unk_278925C50;
    objc_copyWeak(&v7, &location);
    dispatch_after(v4, v5, v6);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __43__SLDCloudKitSyncWriter_checkForAppChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[59] == 1)
  {
    WeakRetained[59] = 0;
    v2 = WeakRetained;
    [WeakRetained checkForAppChangesNow];
    WeakRetained = v2;
  }
}

- (void)checkForAppChangesNow
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SLDCloudKitSyncBase *)self persistence];
  v5 = [v4 objectForKeyedSubscript:@"readers"];

  v6 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v5 allValues];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addObjectsFromArray:*(*(&v23 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v9);
  }

  v12 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
  v31 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v14 = [v6 sortedArrayUsingDescriptors:v13];

  v15 = [(SLDCloudKitSyncBase *)self persistence];
  v16 = [v15 objectForKeyedSubscript:@"lastKnownApps"];
  v17 = [v16 isEqual:v14];

  if ((v17 & 1) == 0)
  {
    v18 = SLDaemonLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(SLDCloudKitSyncBase *)self persistence];
      v20 = [v19 objectForKeyedSubscript:@"lastKnownApps"];
      *buf = 138412546;
      v28 = v20;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_231772000, v18, OS_LOG_TYPE_DEFAULT, "#SLDCK app list changed (prev %@, now %@)", buf, 0x16u);
    }

    v21 = [(SLDCloudKitSyncBase *)self persistence];
    [v21 setObject:v14 forKeyedSubscript:@"lastKnownApps"];

    [(SLDCloudKitSyncWriter *)self invalidateHighlightsInternal];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_didHandleSyncError:(id)a3 retryBlock:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 domain];
  if ([v9 isEqual:*MEMORY[0x277CBBF50]])
  {
  }

  else
  {
    v10 = [v6 domain];
    v11 = [v10 isEqual:*MEMORY[0x277CBBF98]];

    if (!v11)
    {
      v17 = [v6 domain];
      v18 = [v17 isEqual:*MEMORY[0x277CCA050]];

      if (!v18 || ([v6 code] | 2) != 0x1003 || !v7)
      {
        goto LABEL_21;
      }

      v19 = SLDaemonLogHandle();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  v12 = [v6 code];
  switch(v12)
  {
    case 18:
      v21 = [(SLDCloudKitSyncBase *)self persistence];
      [v21 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"incompatibleVersion"];

      goto LABEL_23;
    case 34:
      if (!v7)
      {
        break;
      }

      v19 = SLDaemonLogHandle();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

LABEL_19:
      [SLDCloudKitSyncWriter _didHandleSyncError:retryBlock:];
LABEL_20:

      v7[2](v7);
LABEL_23:
      [(SLDCloudKitSyncWriter *)self nextTask];
LABEL_24:
      v20 = 1;
      goto LABEL_25;
    case 112:
      v13 = SLDaemonLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SLDCloudKitSyncWriter _didHandleSyncError:retryBlock:];
      }

      v14 = [(SLDCloudKitSyncWriter *)self recordZoneID];
      [(SLDCloudKitSyncWriter *)self reset];
      if (v14)
      {
        v15 = [(SLDCloudKitSyncBase *)self syncEngine];
        v24[0] = v14;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
        [v15 addRecordZonesToSave:0 recordZoneIDsToDelete:v16];
      }

      [(SLDCloudKitSyncWriter *)self nextTask];

      goto LABEL_24;
  }

LABEL_21:
  v20 = 0;
LABEL_25:

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)syncEngine:(id)a3 didSaveRecordZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SLDCloudKitSyncWriter_syncEngine_didSaveRecordZone___block_invoke;
  block[3] = &unk_278927298;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __54__SLDCloudKitSyncWriter_syncEngine_didSaveRecordZone___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) syncEngine];

  if (v3 == v4)
  {
    v5 = [*(a1 + 40) persistence];
    v6 = [v5 objectForKeyedSubscript:@"recordZoneID"];
    v8 = *(a1 + 48);
    v7 = a1 + 48;
    v9 = [v8 zoneID];
    v10 = [v9 zoneName];
    v11 = [v6 isEqual:v10];

    if (v11)
    {
      v12 = [*v2 persistence];
      v13 = [v12 objectForKeyedSubscript:@"recordZoneIDSaved"];
      v14 = [v13 BOOLValue];

      if ((v14 & 1) == 0)
      {
        v15 = SLDaemonLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __54__SLDCloudKitSyncWriter_syncEngine_didSaveRecordZone___block_invoke_cold_2();
        }

        v16 = [*v2 persistence];
        [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"recordZoneIDSaved"];

        [*v2 nextTask];
      }
    }

    else
    {
      v17 = SLDaemonLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __54__SLDCloudKitSyncWriter_syncEngine_didSaveRecordZone___block_invoke_cold_1(v7, v2, v17);
      }
    }
  }
}

- (void)syncEngine:(id)a3 failedToSaveRecordZone:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SLDCloudKitSyncBase *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke;
  v15[3] = &unk_278927470;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

void __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = [*(a1 + 40) persistence];
    v5 = [v4 objectForKeyedSubscript:@"recordZoneIDSaved"];
    v6 = [v5 BOOLValue];

    if ((v6 & 1) == 0)
    {
      v7 = [*(a1 + 40) persistence];
      v8 = [v7 objectForKeyedSubscript:@"recordZoneID"];
      v9 = [*(a1 + 48) zoneID];
      v10 = [v9 zoneName];
      v11 = [v8 isEqual:v10];

      if (v11)
      {
        v12 = SLDaemonLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke_cold_1(a1);
        }

        v13 = *(a1 + 40);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke_565;
        v20[3] = &unk_278925CF0;
        v20[4] = v13;
        v14 = *(a1 + 56);
        v21 = *(a1 + 48);
        if (([v13 _didHandleSyncError:v14 retryBlock:v20] & 1) == 0)
        {
          v15 = *MEMORY[0x277CBBF50];
          v16 = [*(a1 + 56) domain];
          LODWORD(v15) = [v15 isEqual:v16];

          if (v15 && ((v17 = [*(a1 + 56) code], v17 == 32) || v17 == 9))
          {
            v18 = *(a1 + 40);
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke_2;
            v19[3] = &unk_278925D90;
            v19[4] = v18;
            [v18 checkForAccountChangesNowWithCompletion:v19];
          }

          else
          {
            [*(a1 + 40) nextTask];
          }
        }
      }
    }
  }
}

void __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke_565(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) syncEngine];
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 addRecordZonesToSave:v3 recordZoneIDsToDelete:0];

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);

  return [v3 nextTask];
}

- (id)syncEngine:(id)a3 recordToSaveForRecordID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  v8 = [(SLDCloudKitSyncBase *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke;
  v13[3] = &unk_278927498;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v17 = &v18;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = *(*(a1 + 40) + 64);
    if (v4)
    {
      v6 = *(a1 + 48);
      v5 = (a1 + 48);
      v7 = [v6 recordName];
      v8 = [v4 objectForKeyedSubscript:v7];
      v9 = *(v5[1] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = *(*(v5[1] + 8) + 40);
      v12 = SLDaemonLogHandle();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        if (v13)
        {
          __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke_cold_1(v5);
        }
      }

      else if (v13)
      {
        __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke_cold_2(v5);
      }
    }

    else
    {
      v12 = SLDaemonLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke_cold_3(a1);
      }
    }
  }
}

- (void)_savedRecord:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 recordID];
  v7 = [v6 recordName];

  v8 = SLDaemonLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SLDCloudKitSyncWriter _savedRecord:v4];
  }

  v9 = [*&self->_freshHighlightsGenerated objectForKeyedSubscript:v7];

  if (v9)
  {
    [*&self->_freshHighlightsGenerated setObject:0 forKeyedSubscript:v7];
    v10 = [(SLDCloudKitSyncBase *)self persistence];
    v11 = [v10 objectForKeyedSubscript:@"savedIDs"];
    v12 = v11;
    if (!v11)
    {
      v11 = MEMORY[0x277CBEC10];
    }

    v13 = [v11 mutableCopy];

    v14 = [(SLDCloudKitSyncWriter *)self _batchNumberOfRecordIDString:v7];
    v15 = [v4 objectForKeyedSubscript:@"version"];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v14, v15}];
    v27[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v18 = [(SLDCloudKitSyncWriter *)self _idForRecordIDString:v7];
    [v13 setObject:v17 forKeyedSubscript:v18];

    v19 = [(SLDCloudKitSyncBase *)self persistence];
    [v19 setObject:v13 forKeyedSubscript:@"savedIDs"];

    v20 = SLDaemonLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [SLDCloudKitSyncWriter _savedRecord:v4];
    }

    [(SLDCloudKitSyncWriter *)self nextTask];
  }

  else
  {
    v21 = [(SLDCloudKitSyncWriter *)self recordIDStringOfSavedIDString:v7];
    v13 = v21;
    if (v21 && ([v21 isEqual:v7] & 1) != 0)
    {
      v22 = SLDaemonLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [SLDCloudKitSyncWriter _savedRecord:v4];
      }
    }

    else
    {
      v23 = SLDaemonLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [SLDCloudKitSyncWriter _savedRecord:v4];
      }

      v22 = [(SLDCloudKitSyncBase *)self syncEngine];
      v24 = [v4 recordID];
      v28[0] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      [v22 addRecordIDsToSave:MEMORY[0x277CBEBF8] recordIDsToDelete:v25];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(id)a3 didSaveRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SLDCloudKitSyncWriter_syncEngine_didSaveRecord___block_invoke;
  block[3] = &unk_278927298;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __50__SLDCloudKitSyncWriter_syncEngine_didSaveRecord___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 _savedRecord:v5];
  }
}

- (void)syncEngine:(id)a3 failedToSaveRecord:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SLDCloudKitSyncBase *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke;
  v15[3] = &unk_278927470;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

void __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = [*(a1 + 48) recordID];
    v5 = [v4 zoneID];
    v6 = [v5 zoneName];
    v7 = [*(a1 + 40) persistence];
    v8 = [v7 objectForKeyedSubscript:@"recordZoneID"];
    v9 = [v6 isEqual:v8];

    v10 = SLDaemonLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v11)
      {
        __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke_cold_2(a1 + 48);
      }

      v12 = *(a1 + 40);
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke_566;
      v28 = &unk_278925CF0;
      v29 = v12;
      v13 = *(a1 + 56);
      v30 = *(a1 + 48);
      if ([v12 _didHandleSyncError:v13 retryBlock:&v25])
      {
        goto LABEL_22;
      }

      v14 = *MEMORY[0x277CBBF50];
      v15 = [*(a1 + 56) domain];
      LODWORD(v14) = [v14 isEqual:v15];

      if (v14)
      {
        v16 = [*(a1 + 56) code];
        if (v16 <= 25)
        {
          if (v16 != 9)
          {
            if (v16 == 14)
            {
              [*(a1 + 40) _savedRecord:*(a1 + 48)];
            }

            goto LABEL_21;
          }

          goto LABEL_19;
        }

        if (v16 != 26 && v16 != 28)
        {
          if (v16 != 32)
          {
            goto LABEL_21;
          }

LABEL_19:
          [*(a1 + 40) checkForAccountChanges];
          v17 = *(*(a1 + 40) + 64);
          v18 = [*(a1 + 48) recordID];
          v19 = [v18 recordName];
          v20 = [v17 objectForKeyedSubscript:v19];

          if (v20)
          {
            v21 = [*(a1 + 40) syncEngine];
            v22 = [*(a1 + 48) recordID];
            v31[0] = v22;
            v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
            [v21 addRecordIDsToSave:v23 recordIDsToDelete:0];
          }

          goto LABEL_21;
        }

        [*(a1 + 40) reset];
      }

LABEL_21:
      [*(a1 + 40) nextTask];
LABEL_22:

      goto LABEL_23;
    }

    if (v11)
    {
      __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke_cold_1(a1 + 48);
    }
  }

LABEL_23:
  v24 = *MEMORY[0x277D85DE8];
}

void __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke_566(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v3 = [*(a1 + 40) recordID];
    v4 = [v3 recordName];
    v5 = [v1 objectForKeyedSubscript:v4];

    if (v5)
    {
      v6 = [*(a1 + 32) syncEngine];
      v7 = [*(a1 + 40) recordID];
      v10[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [v6 addRecordIDsToSave:v8 recordIDsToDelete:0];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(id)a3 failedToDeleteRecordWithID:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SLDCloudKitSyncBase *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__SLDCloudKitSyncWriter_syncEngine_failedToDeleteRecordWithID_error___block_invoke;
  v15[3] = &unk_278927470;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

void __69__SLDCloudKitSyncWriter_syncEngine_failedToDeleteRecordWithID_error___block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = [*(a1 + 48) zoneID];
    v5 = [v4 zoneName];
    v6 = [*(a1 + 40) persistence];
    v7 = [v6 objectForKeyedSubscript:@"recordZoneID"];
    v8 = [v5 isEqual:v7];

    if (v8)
    {
      v9 = SLDaemonLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __69__SLDCloudKitSyncWriter_syncEngine_failedToDeleteRecordWithID_error___block_invoke_cold_1((a1 + 48));
      }

      v10 = *(a1 + 40);
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __69__SLDCloudKitSyncWriter_syncEngine_failedToDeleteRecordWithID_error___block_invoke_567;
      v26 = &unk_278925CF0;
      v27 = v10;
      v11 = *(a1 + 56);
      v28 = *(a1 + 48);
      if ([v10 _didHandleSyncError:v11 retryBlock:&v23])
      {
        goto LABEL_17;
      }

      v12 = [*(a1 + 56) domain];
      v13 = [v12 isEqual:*MEMORY[0x277CBBF50]];

      if (v13)
      {
        v14 = [*(a1 + 56) code];
        if (v14 <= 27)
        {
          if (v14 != 9)
          {
            if (v14 != 26)
            {
              goto LABEL_16;
            }

LABEL_13:
            v15 = [*(a1 + 48) zoneID];
            v16 = [v15 zoneName];
            v17 = [*(a1 + 40) persistence];
            v18 = [v17 objectForKeyedSubscript:@"recordZoneID"];
            v19 = [v16 isEqual:v18];

            if (v19)
            {
              [*(a1 + 40) reset];
            }

            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (v14 == 32)
        {
LABEL_15:
          [*(a1 + 40) checkForAccountChanges];
          v20 = [*(a1 + 40) syncEngine];
          v29[0] = *(a1 + 48);
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
          [v20 addRecordIDsToSave:0 recordIDsToDelete:v21];

          goto LABEL_16;
        }

        if (v14 == 28)
        {
          goto LABEL_13;
        }
      }

LABEL_16:
      [*(a1 + 40) nextTask];
LABEL_17:
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __69__SLDCloudKitSyncWriter_syncEngine_failedToDeleteRecordWithID_error___block_invoke_567(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) syncEngine];
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 addRecordIDsToSave:0 recordIDsToDelete:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)syncEngine:(id)a3 shouldFetchChangesForZoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = [(SLDCloudKitSyncBase *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__SLDCloudKitSyncWriter_syncEngine_shouldFetchChangesForZoneID___block_invoke;
  v12[3] = &unk_2789274C0;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v12);

  LOBYTE(v7) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v7;
}

void __64__SLDCloudKitSyncWriter_syncEngine_shouldFetchChangesForZoneID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v5 = [*(a1 + 48) zoneName];
    v6 = [@"readers" isEqual:v5];

    v4 = *(*(a1 + 56) + 8);
    if (v6)
    {
      *(v4 + 24) = 1;
      return;
    }
  }

  else
  {
    v4 = *(*(a1 + 56) + 8);
  }

  *(v4 + 24) = 0;
}

- (void)syncEngine:(id)a3 didFetchRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SLDCloudKitSyncWriter_syncEngine_didFetchRecord___block_invoke;
  block[3] = &unk_278927298;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __51__SLDCloudKitSyncWriter_syncEngine_didFetchRecord___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = SLDaemonLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 48) recordID];
      v23 = 138412290;
      v24 = v5;
      _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "#SLDCK fetched %@", &v23, 0xCu);
    }

    v6 = [*(a1 + 48) recordID];
    v7 = [v6 zoneID];
    v8 = [v7 zoneName];
    v9 = [@"readers" isEqual:v8];

    if (v9)
    {
      if ([*(a1 + 40) recordSupportsOurVersion:*(a1 + 48)])
      {
        v10 = [*(a1 + 48) recordType];
        v11 = [@"reader" isEqual:v10];

        if (v11)
        {
          v12 = [*(a1 + 40) persistence];
          v13 = [v12 objectForKeyedSubscript:@"readers"];
          v14 = v13;
          if (!v13)
          {
            v13 = MEMORY[0x277CBEC10];
          }

          v15 = [v13 mutableCopy];

          v16 = [*(a1 + 48) encryptedValues];
          v17 = [v16 objectForKeyedSubscript:@"applicationIdentifiers"];
          v18 = [*(a1 + 48) recordID];
          v19 = [v18 recordName];
          [v15 setObject:v17 forKeyedSubscript:v19];

          v20 = SLDaemonLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            __51__SLDCloudKitSyncWriter_syncEngine_didFetchRecord___block_invoke_cold_1((a1 + 48));
          }

          v21 = [*(a1 + 40) persistence];
          [v21 setObject:v15 forKeyedSubscript:@"readers"];

          [*(a1 + 40) checkForAppChanges];
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(id)a3 recordWithIDWasDeleted:(id)a4 recordType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SLDCloudKitSyncBase *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__SLDCloudKitSyncWriter_syncEngine_recordWithIDWasDeleted_recordType___block_invoke;
  v15[3] = &unk_278927470;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

void __70__SLDCloudKitSyncWriter_syncEngine_recordWithIDWasDeleted_recordType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v13 = [*(a1 + 48) zoneID];
    v4 = [v13 zoneName];
    if ([@"readers" isEqual:v4])
    {
      v5 = [@"reader" isEqual:*(a1 + 56)];

      if (v5)
      {
        v6 = SLDaemonLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __70__SLDCloudKitSyncWriter_syncEngine_recordWithIDWasDeleted_recordType___block_invoke_cold_1((a1 + 48));
        }

        v7 = [*(a1 + 40) persistence];
        v8 = [v7 objectForKeyedSubscript:@"readers"];
        v9 = v8;
        if (!v8)
        {
          v8 = MEMORY[0x277CBEC10];
        }

        v10 = [v8 mutableCopy];

        v11 = [*(a1 + 48) recordName];
        [v10 setObject:0 forKeyedSubscript:v11];

        v12 = [*(a1 + 40) persistence];
        [v12 setObject:v10 forKeyedSubscript:@"readers"];

        [*(a1 + 40) checkForAppChanges];
      }
    }

    else
    {
    }
  }
}

- (void)syncEngine:(id)a3 failedToFetchChangesForRecordZoneID:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SLDCloudKitSyncBase *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__SLDCloudKitSyncWriter_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke;
  v15[3] = &unk_278927470;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

void __78__SLDCloudKitSyncWriter_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v5 = SLDaemonLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "#SLDCK Failed to fetch changes for zone %@: %@", buf, 0x16u);
    }

    v8 = [*(a1 + 56) domain];
    if ([v8 isEqual:*MEMORY[0x277CBBF50]])
    {
    }

    else
    {
      v9 = [*(a1 + 56) domain];
      v10 = [v9 isEqual:*MEMORY[0x277CBBF98]];

      if (!v10)
      {
        goto LABEL_2;
      }
    }

    if ([*(a1 + 56) code] == 112)
    {
      v11 = [*(a1 + 48) zoneName];
      v12 = [@"readers" isEqual:v11];

      if (v12)
      {
        v13 = SLDaemonLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __78__SLDCloudKitSyncWriter_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke_cold_1();
        }

        v14 = [*(a1 + 40) syncEngine];
        v16 = *(a1 + 48);
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
        [v14 addRecordZonesToSave:0 recordZoneIDsToDelete:v15];
      }
    }
  }

LABEL_2:
  v4 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)invalidateHighlights
{
  v3 = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SLDCloudKitSyncWriter_invalidateHighlights__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __45__SLDCloudKitSyncWriter_invalidateHighlights__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (v3)
  {
    dispatch_suspend(v3);
  }

  else
  {
    objc_initWeak(&location, v2);
    v4 = [*(a1 + 32) queue];
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    *(v6 + 72) = v5;

    v8 = os_transaction_create();
    v9 = *(*(a1 + 32) + 72);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__SLDCloudKitSyncWriter_invalidateHighlights__block_invoke_2;
    handler[3] = &unk_278926DB0;
    v14 = v8;
    v10 = v8;
    objc_copyWeak(&v15, &location);
    dispatch_source_set_event_handler(v9, handler);
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
  }

  v11 = *(*(a1 + 32) + 72);
  v12 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_resume(*(*(a1 + 32) + 72));
}

void __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_7_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_3_486_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_16();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_recordIDsFromStrings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_didHandleSyncError:retryBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_didHandleSyncError:retryBlock:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__SLDCloudKitSyncWriter_syncEngine_didSaveRecordZone___block_invoke_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v6 = [OUTLINED_FUNCTION_8(a1) zoneID];
  v7 = [v6 zoneName];
  v8 = [*a2 persistence];
  v9 = [v8 objectForKeyedSubscript:@"recordZoneID"];
  v12 = 138412546;
  v13 = v7;
  OUTLINED_FUNCTION_6_0();
  v14 = v10;
  _os_log_error_impl(&dword_231772000, a3, OS_LOG_TYPE_ERROR, "#SLDCK unexpected record zone saved (was %@, expected %@)", &v12, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __54__SLDCloudKitSyncWriter_syncEngine_didSaveRecordZone___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke_cold_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_savedRecord:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_savedRecord:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_savedRecord:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_savedRecord:(void *)a1 .cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_8(a1) recordID];
  v3 = [v2 zoneID];
  v4 = [v3 zoneName];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_8(a1) recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __69__SLDCloudKitSyncWriter_syncEngine_failedToDeleteRecordWithID_error___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__SLDCloudKitSyncWriter_syncEngine_didFetchRecord___block_invoke_cold_1(id *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_8(a1) recordID];
  v4 = [*a1 encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"applicationIdentifiers"];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __70__SLDCloudKitSyncWriter_syncEngine_recordWithIDWasDeleted_recordType___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__SLDCloudKitSyncWriter_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end