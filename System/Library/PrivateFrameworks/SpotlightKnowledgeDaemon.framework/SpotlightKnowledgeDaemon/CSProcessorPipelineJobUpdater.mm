@interface CSProcessorPipelineJobUpdater
- (BOOL)handleDonation:(id)a3 turboEnabled:(BOOL)a4 completionHandler:(id)a5 cancelBlock:(id)a6;
- (BOOL)shouldHandleJournalItem:(id)a3 bundleID:(id)a4;
- (CSProcessorPipelineJobUpdater)initWithJournalJob:(id)a3;
- (id)description;
- (id)excludeBundleIDs;
- (id)excludeContentTypes;
- (id)includeBundleIDs;
- (id)includeContentTypes;
- (id)taskName;
- (unint64_t)eventFlags;
@end

@implementation CSProcessorPipelineJobUpdater

- (CSProcessorPipelineJobUpdater)initWithJournalJob:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = CSProcessorPipelineJobUpdater;
  v6 = [(CSProcessorPipelineJobUpdater *)&v22 init];
  if (v6)
  {
    v7 = [v5 name];
    v8 = [v7 lowercaseString];

    objc_storeStrong(&v6->_job, a3);
    v9 = objc_alloc_init(CSEventListenerConfig);
    taskConfig = v6->_taskConfig;
    v6->_taskConfig = v9;

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"task-%@", v8];
    [(CSEventListenerConfig *)v6->_taskConfig setName:v11];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.spotlightkowledged.task.%@", v8];
    [(CSEventListenerConfig *)v6->_taskConfig setTaskIdentifier:v12];

    v13 = [v5 requiredBundleIDs];
    [(CSEventListenerConfig *)v6->_taskConfig setIncludeBundleIDs:v13];

    v14 = [v5 excludedBundleIDs];
    [(CSEventListenerConfig *)v6->_taskConfig setExcludeBundleIDs:v14];

    v15 = [v5 bgstOptions];
    v16 = [v15 objectForKeyedSubscript:@"priority"];
    if (v16 && (v17 = v16, [v15 objectForKeyedSubscript:@"priority"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"immediate"), v18, v17, (v19 & 1) != 0))
    {
      v20 = 4;
    }

    else
    {
      v20 = 64;
    }

    [(CSEventListenerConfig *)v6->_taskConfig setEventFlags:v20];
    [(CSEventListenerConfig *)v6->_taskConfig setTaskOptions:v15];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(CSProcessorPipelineJobUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, v5];

  return v6;
}

- (id)taskName
{
  v2 = [(CSProcessorPipelineJobUpdater *)self taskConfig];
  v3 = [v2 name];

  return v3;
}

- (unint64_t)eventFlags
{
  v2 = [(CSProcessorPipelineJobUpdater *)self taskConfig];
  v3 = [v2 eventFlags];

  return v3;
}

- (id)includeBundleIDs
{
  v2 = [(CSProcessorPipelineJobUpdater *)self taskConfig];
  v3 = [v2 includeBundleIDs];

  return v3;
}

- (id)excludeBundleIDs
{
  v2 = [(CSProcessorPipelineJobUpdater *)self taskConfig];
  v3 = [v2 excludeBundleIDs];

  return v3;
}

- (id)includeContentTypes
{
  v2 = [(CSProcessorPipelineJobUpdater *)self taskConfig];
  v3 = [v2 includeContentTypes];

  return v3;
}

- (id)excludeContentTypes
{
  v2 = [(CSProcessorPipelineJobUpdater *)self taskConfig];
  v3 = [v2 excludeContentTypes];

  return v3;
}

- (BOOL)shouldHandleJournalItem:(id)a3 bundleID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7 && ([v6 isUserActivity] & 1) == 0)
  {
    v9 = self->_job;
    v10 = [(SKDJournalProcessingJob *)v9 requiredAttributes];
    v11 = [v10 count];

    if (v11)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v12 = [(SKDJournalProcessingJob *)v9 requiredAttributes];
      v8 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v13 = *v18;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v12);
            }

            if ([v6 containsAttribute:*(*(&v17 + 1) + 8 * i)])
            {
              LOBYTE(v8) = 1;
              goto LABEL_15;
            }
          }

          v8 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)handleDonation:(id)a3 turboEnabled:(BOOL)a4 completionHandler:(id)a5 cancelBlock:(id)a6
{
  v141 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v88 = a5;
  v9 = a6;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v10 = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = [(CSEventListenerManager *)v8 journalMap];
      _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_DEFAULT, "**** handleDonation for %@ / %s", buf, 0x16u);
    }
  }

  v82 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](v8)];
  v13 = [v11 initWithString:v12];

  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v15 = [(CSEventListenerDonation *)v8 protectionClass];
  v85 = [v14 initWithString:v15];

  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalQueue](v8)];
  v18 = [v16 initWithString:v17];

  v19 = self->_job;
  v20 = [(SKDBaseJob *)v19 name];
  v84 = [v20 capitalizedString];

  v21 = [SKGUpdaterStore instanceForIndexType:[(CSEventListenerManager *)v8 folderFd]];
  v22 = SKGLogEventInit();
  spid = os_signpost_id_generate(v22);

  v23 = SKGLogEventInit();
  v24 = v23;
  v80 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v24, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CSPipelineUpdaterHandleDonation", "", buf, 2u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v138 = __Block_byref_object_copy__5;
  v139 = __Block_byref_object_dispose__5;
  v140 = 0;
  v124 = 0;
  v125 = &v124;
  v126 = 0x2020000000;
  v127 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
  aBlock[3] = &unk_27893D638;
  v25 = v21;
  v120 = v25;
  v26 = v13;
  v121 = v26;
  v27 = v18;
  v122 = v27;
  v123 = &v124;
  v28 = _Block_copy(aBlock);
  [(SKDBaseItemProcessingJob *)v19 startBatch];
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2;
  v109[3] = &unk_27893D688;
  v109[4] = self;
  v83 = v26;
  v110 = v83;
  v92 = v25;
  v111 = v92;
  v117 = &v124;
  v96 = v27;
  v112 = v96;
  v113 = v8;
  v29 = v19;
  v114 = v29;
  v81 = v28;
  v115 = v81;
  v118 = buf;
  v87 = v9;
  v116 = v87;
  v89 = v113;
  [v113 iterateItems:v109];
  [(SKDBaseItemProcessingJob *)v29 endBatch];
  v95 = v29;
  if ([*(*&buf[8] + 40) count])
  {
    context = objc_autoreleasePoolPush();
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    obj = *(*&buf[8] + 40);
    v30 = [obj countByEnumeratingWithState:&v105 objects:v136 count:16];
    if (v30)
    {
      v97 = 0;
      v94 = *v106;
      while (2)
      {
        v93 = v30;
        for (i = 0; i != v93; ++i)
        {
          if (*v106 != v94)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v105 + 1) + 8 * i);
          v33 = [(SKDBaseCSItemProcessingJob *)v95 processCSItemRecord:v32, context];
          if ([v33 status] == 3)
          {

            v48 = 1;
            goto LABEL_27;
          }

          v34 = [v33 searchableItem];
          if (v34)
          {
            v35 = v97;
            if (!v97)
            {
              v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            v97 = v35;
            [v35 addObject:v34];
          }

          v36 = [v33 attributes];
          v37 = [v36 objectForKeyedSubscript:@"kMDItemTextContentLanguage"];

          if (v37)
          {
            v38 = [(SKDCSItemRecord *)v32 bundleID];
            v39 = v38;
            v40 = [v38 UTF8String];
            v41 = [(SKDCSItemRecord *)v32 uniqueID];
            v42 = v41;
            v43 = [v41 UTF8String];
            v44 = v96;
            v45 = [v96 UTF8String];
            v46 = v125[3];
            v47 = v37;
            [v92 writeLanguageForBundleID:v40 identifier:v43 UUID:v45 serialNumber:v46 language:{objc_msgSend(v37, "UTF8String")}];
          }
        }

        v30 = [obj countByEnumeratingWithState:&v105 objects:v136 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }

      v48 = 0;
    }

    else
    {
      v48 = 0;
      v97 = 0;
    }

LABEL_27:

    objc_autoreleasePoolPop(context);
    if (v48)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v97 = 0;
  }

  if (v87[2]())
  {
LABEL_29:
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v49 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [(CSProcessorPipelineJobUpdater *)self taskConfig];
        v51 = [v50 name];
        v52 = v51;
        v53 = [v51 UTF8String];
        v54 = [(CSEventListenerDonation *)v89 indexTypeName];
        v55 = [(CSEventListenerManager *)v89 totalJournalSize];
        *v128 = 136315650;
        v129 = v53;
        v130 = 2080;
        v131 = v54;
        v132 = 2048;
        v133 = v55;
        _os_log_impl(&dword_231B25000, v49, OS_LOG_TYPE_DEFAULT, "### cancelling %s due to expiration request while processing type='%s' sn:'%llu'", v128, 0x20u);
      }
    }

    v56 = SKGLogEventInit();
    v57 = v56;
    if (v80 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
    {
      *v128 = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v57, OS_SIGNPOST_INTERVAL_END, spid, "CSUpdaterHandleDonation", "", v128, 2u);
    }

    (*(v88 + 2))(v88, 0, 0, 0);
    goto LABEL_69;
  }

  if (v97)
  {
    v58 = [v97 count];
  }

  else
  {
    v58 = 0;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v59 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      v60 = [(CSEventListenerDonation *)v89 indexTypeName];
      v61 = [(CSEventListenerManager *)v89 totalJournalSize];
      *v128 = 138413058;
      v129 = self;
      v130 = 2080;
      v131 = v60;
      v132 = 2048;
      v133 = v61;
      v134 = 2048;
      v135 = v58;
      _os_log_impl(&dword_231B25000, v59, OS_LOG_TYPE_INFO, "### donation %@ %s sn:%llu found %lu items", v128, 0x2Au);
    }
  }

  if ([(CSEventListenerManager *)v89 throttled])
  {
    v62 = [(CSEventListenerDonation *)v89 homePathHash];
    v63 = getCSBasePathForId(v62);
    if (v63)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v64 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = v63;
          v66 = [v63 UTF8String];
          *v128 = 136315138;
          v129 = v66;
          _os_log_impl(&dword_231B25000, v64, OS_LOG_TYPE_DEFAULT, "Creating CSManagedSearchableIndex for path = %s", v128, 0xCu);
        }
      }

      if (v58)
      {
        v67 = [objc_alloc(MEMORY[0x277CC3448]) initWithPath:v63];
LABEL_59:

        goto LABEL_60;
      }
    }

    else if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v68 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = [(CSEventListenerDonation *)v89 homePathHash];
        [CSDocumentUnderstandingUpdater handleDonation:v128 turboEnabled:v69 completionHandler:v68 cancelBlock:?];
      }
    }

    v67 = 0;
    goto LABEL_59;
  }

  if (!v58)
  {
    goto LABEL_65;
  }

  v67 = [objc_alloc(MEMORY[0x277CC34A8]) _initWithName:v84 protectionClass:v85 bundleIdentifier:v83 options:32];
LABEL_60:
  if (v67)
  {
    v70 = SKGLogEventInit();
    v71 = os_signpost_id_generate(v70);

    v72 = SKGLogEventInit();
    v73 = v72;
    if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
    {
      *v104 = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v73, OS_SIGNPOST_INTERVAL_BEGIN, v71, "CSUpdaterHandleDonation", "", v104, 2u);
    }

    v74 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CSUpdaterTimeout" code:-1 userInfo:0];
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_38;
    v98[3] = &unk_27893D6B0;
    v99 = v89;
    v101 = v58;
    v102 = v71;
    v103 = spid;
    v100 = v88;
    [v67 indexSearchableItems:v97 timeout:v74 timeoutError:v98 completion:3.0e11];

    goto LABEL_69;
  }

LABEL_65:
  v75 = SKGLogEventInit();
  v76 = v75;
  if (v80 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
  {
    *v104 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v76, OS_SIGNPOST_INTERVAL_END, spid, "CSUpdaterHandleDonation", "", v104, 2u);
  }

  (*(v88 + 2))(v88, 0, 0, 0);
LABEL_69:

  _Block_object_dispose(&v124, 8);
  _Block_object_dispose(buf, 8);

  objc_autoreleasePoolPop(v82);
  v77 = *MEMORY[0x277D85DE8];
  return 1;
}

id __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v9 isEqualToString:@"kMDItemTextContentLanguage"])
  {
    v10 = [*(a1 + 32) readLanguageFromBundleID:objc_msgSend(*(a1 + 40) identifier:"UTF8String") UUID:objc_msgSend(v8 serialNumber:{"UTF8String"), objc_msgSend(*(a1 + 48), "UTF8String"), *(*(*(a1 + 56) + 8) + 24)}];
LABEL_17:
    v15 = v10;
    goto LABEL_19;
  }

  if ([v9 isEqualToString:@"kMDItemHTMLContentData"])
  {
    if ([v7 hasHTMLContent])
    {
      v11 = *MEMORY[0x277CBECE8];
      [(CSEventDonationJournalItem *)v7 htmlObj];
LABEL_9:
      v10 = MDJournalReaderMDPlistObjectCopy();
      goto LABEL_17;
    }
  }

  else if ([v9 isEqualToString:@"kMDItemTextContent"])
  {
    if ([v7 hasTextContent])
    {
      v12 = *MEMORY[0x277CBECE8];
      [(CSEventDonationJournalItem *)v7 contentObj];
      goto LABEL_9;
    }
  }

  else
  {
    if ([v9 isEqualToString:@"kMDItemExtraData"])
    {
      v21 = 0uLL;
      v22 = 0;
      [(CSEventDonationJournalItem *)v7 customDictObj];
      if (!v20)
      {
        goto LABEL_18;
      }

      v13 = *(a1 + 40);
      if (!SKGBundleIsWallet())
      {
        goto LABEL_18;
      }

      [(CSEventDonationJournalItem *)v7 customDictObj];
    }

    else
    {
      v21 = 0uLL;
      v22 = 0;
      [(CSEventDonationJournalItem *)v7 attrDictObj];
    }

    [v9 UTF8String];
    strlen([v9 UTF8String]);
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      v14 = *MEMORY[0x277CBECE8];
      v17 = v21;
      v18 = v22;
      v10 = _MDPlistContainerCopyObject();
      goto LABEL_17;
    }
  }

LABEL_18:
  v15 = 0;
LABEL_19:

  return v15;
}

uint64_t __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (![*(a1 + 32) shouldHandleJournalItem:v3 bundleID:*(a1 + 40)])
  {
LABEL_9:
    objc_autoreleasePoolPop(v4);
    v10 = 0;
    goto LABEL_13;
  }

  v5 = *MEMORY[0x277CBECE8];
  [(CSEventDonationJournalItem *)v3 identifier];
  v6 = MDJournalReaderMDPlistObjectCopy();
  v7 = [v6 mutableCopy];

  v8 = *(a1 + 48);
  if (v8)
  {
    *(*(*(a1 + 96) + 8) + 24) = [v8 readSerialNumberFromBundleID:objc_msgSend(*(a1 + 40) identifier:"UTF8String") UUID:objc_msgSend(v7 listenerType:{"UTF8String"), objc_msgSend(*(a1 + 56), "UTF8String"), objc_msgSend(*(a1 + 32), "eventType")}];
    if ([(CSEventListenerManager *)*(a1 + 64) totalJournalSize]< *(*(*(a1 + 96) + 8) + 24))
    {
      if (SKGLogGetCurrentLoggingLevel() >= 7)
      {
        v9 = SKGLogScheduledReceiverInit();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(a1 + 32);
          v22 = [(CSEventListenerManager *)*(a1 + 64) totalJournalSize];
          v23 = *(*(*(a1 + 96) + 8) + 24);
          v24 = [(CSEventListenerManager *)*(a1 + 64) journalMap];
          *buf = 138413314;
          v30 = v21;
          v31 = 2048;
          v32 = v22;
          v33 = 2048;
          v34 = v23;
          v35 = 2080;
          v36 = v24;
          v37 = 2112;
          v38 = v7;
          _os_log_debug_impl(&dword_231B25000, v9, OS_LOG_TYPE_DEBUG, "%@ SKIPPING item serialNumber:%llu < latestSerialNumber:%llu | bundle:%s identifier:%@", buf, 0x34u);
        }
      }

      goto LABEL_9;
    }
  }

  v11 = *(a1 + 40);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_28;
  v25[3] = &unk_27893D660;
  v12 = *(a1 + 72);
  v28 = *(a1 + 80);
  v26 = v3;
  v13 = v7;
  v27 = v13;
  v14 = [v12 itemRecordForUniqueID:v13 bundleID:v11 attributeProviderBlock:v25];
  v15 = *(*(*(a1 + 104) + 8) + 40);
  if (!v15)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = *(*(a1 + 104) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v15 = *(*(*(a1 + 104) + 8) + 40);
  }

  [v15 addObject:v14];

  objc_autoreleasePoolPop(v4);
  v10 = (*(*(a1 + 88) + 16))();
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

void __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_38(void *a1, void *a2)
{
  v3 = a2;
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_38_cold_1(a1, v4);
    }
  }

  v5 = SKGLogEventInit();
  v6 = v5;
  v7 = a1[7];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CSUpdaterHandleDonation", "", buf, 2u);
  }

  v8 = SKGLogEventInit();
  v9 = v8;
  v10 = a1[8];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CSUpdaterHandleDonation", "", v12, 2u);
  }

  v11 = a1[6];
  (*(a1[5] + 16))();
}

void __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_38_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [(CSEventListenerDonation *)*(a1 + 32) indexTypeName];
  v5 = [(CSEventListenerManager *)*(a1 + 32) totalJournalSize];
  v6 = *(a1 + 48);
  v8 = 136315650;
  v9 = v4;
  v10 = 2048;
  v11 = v5;
  v12 = 2048;
  v13 = v6;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "### %s sn:%llu updated %lu items", &v8, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

@end