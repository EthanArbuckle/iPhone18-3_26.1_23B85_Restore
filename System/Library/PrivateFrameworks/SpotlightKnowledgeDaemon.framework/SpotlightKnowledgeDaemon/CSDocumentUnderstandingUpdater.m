@interface CSDocumentUnderstandingUpdater
- (BOOL)handleDonation:(id)a3 turboEnabled:(BOOL)a4 completionHandler:(id)a5 cancelBlock:(id)a6;
- (BOOL)journalItemHasDocUnderstandingSN:(id)a3;
- (BOOL)journalItemIsSupportedDocument:(id)a3;
- (BOOL)journalItemNeedsDocUnderstanding:(id)a3;
- (BOOL)shouldHandleJournalItem:(id)a3 bundleID:(id)a4;
- (id)description;
- (id)getStrForDUPersonalIDType:(int64_t)a3;
- (id)includeBundleIDs;
- (int64_t)getItemDocumentType:(id)a3;
@end

@implementation CSDocumentUnderstandingUpdater

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(CSDocumentUnderstandingUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, v5];

  return v6;
}

- (id)includeBundleIDs
{
  v2 = [MEMORY[0x277D657A0] sharedContext];
  v3 = [v2 docUnderstandingIncludeBundles];

  return v3;
}

- (BOOL)journalItemNeedsDocUnderstanding:(id)a3
{
  v8 = 0uLL;
  v9 = 0;
  [(CSEventDonationJournalItem *)a3 attrDictObj];
  PlistObjectForKey = _MDPlistDictionaryGetPlistObjectForKey();
  if (PlistObjectForKey)
  {
    v6 = v8;
    v7 = v9;
    PlistObjectType = _MDPlistGetPlistObjectType();
    LOBYTE(PlistObjectForKey) = ((PlistObjectType - 226) < 2 || PlistObjectType == 51 || PlistObjectType == 35) && (v6 = v8, v7 = v9, _MDPlistNumberGetIntValue());
  }

  return PlistObjectForKey;
}

- (BOOL)journalItemHasDocUnderstandingSN:(id)a3
{
  v8 = 0uLL;
  v9 = 0;
  [(CSEventDonationJournalItem *)a3 attrDictObj];
  PlistObjectForKey = _MDPlistDictionaryGetPlistObjectForKey();
  if (PlistObjectForKey)
  {
    v6 = v8;
    v7 = v9;
    PlistObjectType = _MDPlistGetPlistObjectType();
    LOBYTE(PlistObjectForKey) = ((PlistObjectType - 226) < 2 || PlistObjectType == 51 || PlistObjectType == 35) && (v6 = v8, v7 = v9, _MDPlistNumberGetIntValue());
  }

  return PlistObjectForKey;
}

- (BOOL)journalItemIsSupportedDocument:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8 = 0uLL;
  v9 = 0;
  [(CSEventDonationJournalItem *)v3 attrDictObj];
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    v6 = v8;
    v7 = v9;
    if (_MDPlistGetPlistObjectType() == 240)
    {
      v6 = v8;
      v7 = v9;
      _MDPlistArrayIterate();
    }
  }

  v4 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

uint64_t __65__CSDocumentUnderstandingUpdater_journalItemIsSupportedDocument___block_invoke(uint64_t result, __int128 *a2)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    v3 = *a2;
    v4 = *(a2 + 2);
    result = _MDPlistNumberGetIntValue();
    if (result <= 11245)
    {
      if (result != 492 && result != 960)
      {
        return result;
      }

LABEL_8:
      *(*(*(v2 + 32) + 8) + 24) = 1;
      return result;
    }

    if (result == 12539 || result == 11246)
    {
      goto LABEL_8;
    }
  }

  return result;
}

- (BOOL)shouldHandleJournalItem:(id)a3 bundleID:(id)a4
{
  v5 = a3;
  if ([(CSDocumentUnderstandingUpdater *)self journalItemNeedsDocUnderstanding:v5])
  {
    v6 = ![(CSDocumentUnderstandingUpdater *)self journalItemHasDocUnderstandingSN:v5];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (int64_t)getItemDocumentType:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8 = 0uLL;
  v9 = 0;
  [(CSEventDonationJournalItem *)v3 attrDictObj];
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    v6 = v8;
    v7 = v9;
    if (_MDPlistGetPlistObjectType() == 240)
    {
      v6 = v8;
      v7 = v9;
      _MDPlistArrayIterate();
    }
  }

  v4 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v4;
}

uint64_t __54__CSDocumentUnderstandingUpdater_getItemDocumentType___block_invoke(uint64_t result, __int128 *a2)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v3 = result;
    v5 = *a2;
    v7 = *(a2 + 2);
    result = _MDPlistGetPlistObjectType();
    if ((result - 226) < 2 || result == 51 || result == 35)
    {
      v6 = *a2;
      v8 = *(a2 + 2);
      result = _MDPlistNumberGetIntValue();
      switch(result)
      {
        case 960:
          v4 = 1;
          break;
        case 12539:
          v4 = 2;
          break;
        case 11246:
          v4 = 3;
          break;
        default:
          return result;
      }

      *(*(*(v3 + 32) + 8) + 24) = v4;
    }
  }

  return result;
}

- (id)getStrForDUPersonalIDType:(int64_t)a3
{
  if (a3 > 0xD)
  {
    return &stru_2846CE8D8;
  }

  else
  {
    return off_27893CB10[a3];
  }
}

- (BOOL)handleDonation:(id)a3 turboEnabled:(BOOL)a4 completionHandler:(id)a5 cancelBlock:(id)a6
{
  v102 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v63 = a5;
  v10 = a6;
  context = objc_autoreleasePoolPush();
  v11 = SKGLogEventInit();
  spid = os_signpost_id_generate(v11);

  v12 = SKGLogEventInit();
  v13 = v12;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v13, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CSDocUnderstandingUpdaterHandleDonation", "", buf, 2u);
  }

  v14 = objc_alloc_init(CSEventFeedback);
  [(CSEventFeedback *)v14 setIndexType:[(CSEventListenerManager *)v9 folderFd]];
  [(CSEventFeedback *)v14 start];
  v15 = [MEMORY[0x277D657A0] sharedContext];
  v16 = [v15 docUnderstandingFetchAttributes];

  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](v9)];
  v19 = [v17 initWithString:v18];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = @"unknown";
  }

  [(CSEventFeedback *)v14 setBundleID:v20, spid - 1];
  v21 = objc_alloc(MEMORY[0x277CCACA8]);
  v22 = [(CSEventListenerDonation *)v9 protectionClass];
  v60 = [v21 initWithString:v22];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[CSEventListenerManager totalJournalSize](v9)];
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  *buf = 0;
  v85 = buf;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__0;
  v88 = __Block_byref_object_dispose__0;
  v89 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x2020000000;
  v83[3] = 0;
  v57 = dispatch_time(0, 0);
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
  v74[3] = &unk_27893CAC8;
  v74[4] = self;
  v24 = v19;
  v75 = v24;
  v25 = v10;
  v80 = v25;
  v26 = v9;
  v76 = v26;
  v81 = v83;
  v27 = v14;
  v77 = v27;
  v58 = v16;
  v78 = v58;
  v28 = v23;
  v79 = v28;
  v82 = buf;
  [v26 iterateItems:v74];
  LODWORD(v16) = v25[2](v25);
  if (!v16)
  {
    v91[3] = dispatch_time(0, 0) - v57;
    v56 = [*(v85 + 5) count];
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v35 = SKGLogDocUnderstandingInit();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [(CSEventListenerDonation *)v26 indexTypeName];
        v37 = [(CSEventListenerManager *)v26 totalJournalSize];
        *v94 = 138413058;
        v95 = self;
        v96 = 2080;
        v97 = v36;
        v98 = 2048;
        v99 = v37;
        v100 = 2048;
        v101 = v56;
        _os_log_impl(&dword_231B25000, v35, OS_LOG_TYPE_DEFAULT, "### %@ donation %s sn:%llu found %lu items", v94, 0x2Au);
      }
    }

    if (![(CSEventListenerManager *)v26 throttled])
    {
      if (!v56)
      {
        goto LABEL_38;
      }

      v43 = [objc_alloc(MEMORY[0x277CC34A8]) _initWithName:@"DocumentUnderstandingUpdate" protectionClass:v60 bundleIdentifier:v24 options:32];
LABEL_33:
      if (v43)
      {
        v46 = SKGLogEventInit();
        v47 = os_signpost_id_generate(v46);

        v48 = SKGLogEventInit();
        v49 = v48;
        if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
        {
          *v73 = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v49, OS_SIGNPOST_INTERVAL_BEGIN, v47, "CSDocUnderstandingUpdaterIndexItems", "", v73, 2u);
        }

        v50 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CSDocUnderstandingUpdaterTimeout" code:-1 userInfo:0];
        v51 = *(v85 + 5);
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_104;
        v64[3] = &unk_27893CAF0;
        v68 = &v90;
        v69 = v57;
        v65 = v27;
        v66 = v26;
        v70 = v56;
        v71 = v47;
        v72 = spid;
        v67 = v63;
        [v43 indexSearchableItems:v51 timeout:v50 timeoutError:v64 completion:3.0e11];

        v34 = 1;
LABEL_42:

        goto LABEL_43;
      }

LABEL_38:
      [(CSEventFeedback *)v27 end];
      v52 = SKGLogEventInit();
      v43 = v52;
      if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
      {
        *v73 = 0;
        _os_signpost_emit_with_name_impl(&dword_231B25000, v43, OS_SIGNPOST_INTERVAL_END, spid, "CSDocUnderstandingUpdaterHandleDonation", "", v73, 2u);
      }

      v34 = 0;
      goto LABEL_42;
    }

    v38 = [(CSEventListenerDonation *)v26 homePathHash];
    v39 = getCSBasePathForId(v38);
    if (v39)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v40 = SKGLogDocUnderstandingInit();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v39;
          v42 = [v39 UTF8String];
          *v94 = 136315138;
          v95 = v42;
          _os_log_impl(&dword_231B25000, v40, OS_LOG_TYPE_DEFAULT, "Creating CSManagedSearchableIndex for path = %s", v94, 0xCu);
        }
      }

      if (v56)
      {
        v43 = [objc_alloc(MEMORY[0x277CC3448]) initWithPath:v39 bundleId:v24];
LABEL_32:

        goto LABEL_33;
      }
    }

    else if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v44 = SKGLogDocUnderstandingInit();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = [(CSEventListenerDonation *)v26 homePathHash];
        [CSDocumentUnderstandingUpdater handleDonation:v94 turboEnabled:v45 completionHandler:v44 cancelBlock:?];
      }
    }

    v43 = 0;
    goto LABEL_32;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v29 = SKGLogDocUnderstandingInit();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      spida = v16;
      v30 = [(CSDocumentUnderstandingUpdater *)self taskName];
      v31 = v30;
      v32 = [v30 UTF8String];
      v16 = [(CSEventListenerDonation *)v26 indexTypeName];
      v33 = [(CSEventListenerManager *)v26 totalJournalSize];
      *v94 = 138413058;
      v95 = self;
      v96 = 2080;
      v97 = v32;
      v98 = 2080;
      v99 = v16;
      v100 = 2048;
      v101 = v33;
      _os_log_impl(&dword_231B25000, v29, OS_LOG_TYPE_DEFAULT, "### %@ cancelling %s due to expiration request while processing type='%s' sn:'%llu'", v94, 0x2Au);

      LOBYTE(v16) = spida;
    }
  }

  [(CSEventFeedback *)v27 end];
  (*(v63 + 2))(v63, 0, 0, 0);
  v34 = 0;
LABEL_43:

  _Block_object_dispose(v83, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v90, 8);
  objc_autoreleasePoolPop(context);

  v53 = *MEMORY[0x277D85DE8];
  return v16 | v34;
}

uint64_t __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) shouldHandleJournalItem:v3 bundleID:*(a1 + 40)] & 1) == 0)
  {
    v12 = (*(*(a1 + 80) + 16))();
    objc_autoreleasePoolPop(v4);
    goto LABEL_37;
  }

  [(CSEventDonationJournalItem *)v3 identifier];
  v5 = *MEMORY[0x277CBECE8];
  v6 = MDJournalReaderMDPlistObjectCopy();
  v7 = [v6 mutableCopy];

  v8 = [SKGUpdaterStore instanceForIndexType:[(CSEventListenerManager *)*(a1 + 48) folderFd]];
  if (!v8 || (v9 = -[CSEventListenerManager journalMap](*(a1 + 48)), v10 = v7, *(*(*(a1 + 88) + 8) + 24) = [v8 readSerialNumberFromBundleID:v9 identifier:objc_msgSend(v7 UUID:"UTF8String") listenerType:{-[CSEventListenerManager journalQueue](*(a1 + 48)), objc_msgSend(*(a1 + 32), "eventType")}], -[CSEventListenerManager totalJournalSize](*(a1 + 48)) >= *(*(*(a1 + 88) + 8) + 24)))
  {
    [*(a1 + 56) setNumItemsInBatch:{objc_msgSend(*(a1 + 56), "numItemsInBatch") + 1}];
    v13 = [MEMORY[0x277D65798] sharedProcessor];
    if ([v13 canProcessEvent])
    {
      v14 = [*(a1 + 56) canProcessEvent:&unk_2846E7578];

      v65 = 0;
      if (v14)
      {
        v15 = [v3 attributesForKeys:*(a1 + 64) bundleID:*(a1 + 40)];
        if (v15)
        {
          v16 = [MEMORY[0x277D65798] sharedProcessor];
          v17 = [v16 canProcessEventForRecord:v15 bundleIdentifier:*(a1 + 40)];

          if ((v17 & 1) == 0)
          {
LABEL_36:

            objc_autoreleasePoolPop(v4);
            v12 = (*(*(a1 + 80) + 16))();
            goto LABEL_37;
          }

          v18 = [MEMORY[0x277D65798] sharedProcessor];
          v19 = [v18 docUnderstandingRecordNeedsProcessing:v15 bundleID:*(a1 + 40) isUpdate:0 hasTextContent:objc_msgSend(v3 shouldClear:"hasTextContent") shouldMarkComplete:{0, &v65}];

          if ((v65 & 1) == 0 && v19 == 1)
          {
            v20 = SKGLogEventInit();
            spid = os_signpost_id_generate(v20);

            v21 = SKGLogEventInit();
            v22 = v21;
            if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_231B25000, v22, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CSDocUnderstandingUpdaterProcessSingleItem", "", buf, 2u);
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(v73) = 0;
            v23 = dispatch_group_create();
            dispatch_group_enter(v23);
            v24 = [MEMORY[0x277D65798] sharedProcessor];
            v55 = [v24 copyStringValueFromRecord:v15 key:@"_kMDItemOCRContentLevel1"];

            v25 = [*(a1 + 32) getItemDocumentType:v3];
            v26 = [objc_alloc(MEMORY[0x277D06978]) initWithText:v55 documentType:v25];
            v54 = v26;
            if (SKGLogGetCurrentLoggingLevel() >= 4)
            {
              v27 = SKGLogDocUnderstandingInit();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = [*(a1 + 32) getStrForDUPersonalIDType:v25];
                v29 = CSRedactString();
                *v66 = 138412802;
                v67 = v7;
                v68 = 2112;
                v69 = v28;
                v70 = 2112;
                v71 = v29;
                _os_log_impl(&dword_231B25000, v27, OS_LOG_TYPE_DEFAULT, "### DUInformationExtractor personal ID extraction request started for id: %@, documentType: %@, text: %@", v66, 0x20u);
              }

              v26 = v54;
            }

            v30 = [MEMORY[0x277D06970] sharedExtractor];
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_84;
            v57[3] = &unk_27893CAA0;
            v62 = buf;
            v31 = v23;
            v58 = v31;
            v59 = *(a1 + 72);
            v32 = v7;
            v60 = v32;
            v33 = *(a1 + 40);
            v34 = *(a1 + 96);
            v61 = v33;
            v63 = v34;
            v64 = spid;
            [v30 requestExtractionOfPersonalIDFromDocument:v26 completion:v57];

            if (v31)
            {
              v35 = (*&buf[8] + 24);
              v36 = dispatch_time(0, 600000000000);
              atomic_store(dispatch_group_wait(v31, v36) != 0, v35);
              v37 = atomic_load((*&buf[8] + 24));
              if (v37)
              {
                if (SKGLogGetCurrentLoggingLevel() >= 2)
                {
                  v38 = SKGLogSuggestedEventsInit();
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_cold_1(v38);
                  }
                }

                v39 = objc_alloc_init(MEMORY[0x277CC34B8]);
                [v39 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsDocumentUnderstanding"];
                [v39 setAttribute:&unk_2846E7590 forKey:@"kMDItemDocumentUnderstandingErrorCode"];
                v40 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v32 domainIdentifier:0 attributeSet:v39];
                [v40 setBundleID:*(a1 + 40)];
                [v40 setIsUpdate:1];
                v41 = *(*(*(a1 + 96) + 8) + 40);
                objc_sync_enter(v41);
                [*(*(*(a1 + 96) + 8) + 40) addObject:v40];
                objc_sync_exit(v41);
              }
            }

            _Block_object_dispose(buf, 8);
            goto LABEL_36;
          }
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {

      v15 = 0;
      v65 = 0;
    }

    v42 = objc_alloc_init(MEMORY[0x277CC34B8]);
    [v42 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsDocumentUnderstanding"];
    if (v65 == 1)
    {
      v43 = MEMORY[0x277CCABB0];
      v44 = [MEMORY[0x277D657A0] sharedContext];
      v45 = [v43 numberWithInteger:{objc_msgSend(v44, "documentUnderstandingVersion")}];
      [v42 setAttribute:v45 forKey:@"kMDItemDocumentUnderstandingVersion"];

      updateAttributeSetForEvents(v42, @"_kMDItemDocumentUnderstandingSN", *(a1 + 72));
    }

    v46 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v7 domainIdentifier:0 attributeSet:v42];
    [v46 setBundleID:*(a1 + 40)];
    [v46 setIsUpdate:1];
    v47 = *(*(*(a1 + 96) + 8) + 40);
    objc_sync_enter(v47);
    [*(*(*(a1 + 96) + 8) + 40) addObject:v46];
    objc_sync_exit(v47);

    [*(a1 + 56) logFlag:10 message:@"ignored"];
    goto LABEL_36;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v11 = SKGLogDocUnderstandingInit();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v50 = *(a1 + 32);
      v51 = [(CSEventListenerManager *)*(a1 + 48) totalJournalSize];
      v52 = *(*(*(a1 + 88) + 8) + 24);
      v53 = [(CSEventListenerManager *)*(a1 + 48) journalMap];
      *buf = 138413314;
      *&buf[4] = v50;
      *&buf[12] = 2048;
      *&buf[14] = v51;
      *&buf[22] = 2048;
      v73 = v52;
      v74 = 2080;
      v75 = v53;
      v76 = 2112;
      v77 = v7;
      _os_log_debug_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEBUG, "### %@ SKIPPING item serialNumber:%llu < latestSerialNumber:%llu | bundle:%s identifier:%@", buf, 0x34u);
    }
  }

  v12 = (*(*(a1 + 80) + 16))();

  objc_autoreleasePoolPop(v4);
LABEL_37:

  v48 = *MEMORY[0x277D85DE8];
  return v12;
}

void __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = atomic_load((*(*(a1 + 64) + 8) + 24));
  if (v8)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v9 = SKGLogDocUnderstandingInit();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_84_cold_2(v9);
      }
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      dispatch_group_leave(v10);
    }
  }

  else
  {
    if (v6)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v11 = SKGLogDocUnderstandingInit();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_84_cold_1(v7, v11);
        }
      }

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
      [0 setAttribute:v12 forKey:@"kMDItemDocumentUnderstandingErrorCode"];

      v13 = objc_alloc_init(MEMORY[0x277CC34B8]);
    }

    else
    {
      v13 = [v5 spotlightOntologyAttributes];
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x277CC34B8]);
      }

      v14 = MEMORY[0x277CCABB0];
      v15 = [MEMORY[0x277D657A0] sharedContext];
      v16 = [v14 numberWithInteger:{objc_msgSend(v15, "documentUnderstandingVersion")}];
      [v13 setAttribute:v16 forKey:@"kMDItemDocumentUnderstandingVersion"];

      updateAttributeSetForEvents(v13, @"_kMDItemDocumentUnderstandingSN", *(a1 + 40));
    }

    [v13 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsDocumentUnderstanding"];
    v17 = getSystemVersionString();
    [v13 setAttribute:v17 forKey:@"kMDItemDocumentUnderstandingBuildVersion"];

    v18 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:*(a1 + 48) domainIdentifier:0 attributeSet:v13];
    [v18 setBundleID:*(a1 + 56)];
    [v18 setIsUpdate:1];
    v19 = *(*(*(a1 + 72) + 8) + 40);
    objc_sync_enter(v19);
    [*(*(*(a1 + 72) + 8) + 40) addObject:v18];
    objc_sync_exit(v19);

    v20 = SKGLogEventInit();
    v21 = v20;
    v22 = *(a1 + 80);
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v21, OS_SIGNPOST_INTERVAL_END, v22, "CSDocUnderstandingUpdaterProcessSingleItem", "", v23, 2u);
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_104(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 56) + 8) + 24) = dispatch_time(0, 0) - *(a1 + 64);
  if (!v3)
  {
    [*(a1 + 32) logFlag:22 message:@"completed"];
  }

  [*(a1 + 32) end];
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogDocUnderstandingInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_104_cold_1(a1, v4);
    }
  }

  v5 = SKGLogEventInit();
  v6 = v5;
  v7 = *(a1 + 80);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CSDocUnderstandingUpdaterIndexItems", "", buf, 2u);
  }

  v8 = SKGLogEventInit();
  v9 = v8;
  v10 = *(a1 + 88);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CSDocUnderstandingUpdaterHandleDonation", "", v13, 2u);
  }

  v11 = *(a1 + 72);
  v12 = *(*(*(a1 + 56) + 8) + 24);
  (*(*(a1 + 48) + 16))();
}

- (void)handleDonation:(os_log_t)log turboEnabled:completionHandler:cancelBlock:.cold.1(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "Error fetching CSManagedSearchableIndex path for id %d", buf, 8u);
}

void __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_84_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231B25000, a2, OS_LOG_TYPE_ERROR, "### DUInformationExtractor personal ID extraction request failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_104_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [(CSEventListenerDonation *)*(a1 + 40) indexTypeName];
  v5 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
  v6 = *(a1 + 72);
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