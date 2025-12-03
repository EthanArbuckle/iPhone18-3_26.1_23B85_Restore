@interface CSSuggestedEventsUpdater
+ (BOOL)journalItemHasIntValue:(id)value forKey:(const char *)key;
+ (id)getAggregatedAttributeSet:(id)set;
+ (void)extractSuggestedEventsForRecord:(id)record bundle:(id)bundle uniqueID:(id)d serialNumber:(id)number service:(id)service timeout:(double)timeout completionHandler:(id)handler;
- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d;
- (id)description;
- (id)includeBundleIDs;
@end

@implementation CSSuggestedEventsUpdater

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  taskName = [(CSSuggestedEventsUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, taskName];

  return v6;
}

- (id)includeBundleIDs
{
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  suggestedEventsIncludeBundles = [mEMORY[0x277D657A0] suggestedEventsIncludeBundles];

  return suggestedEventsIncludeBundles;
}

+ (BOOL)journalItemHasIntValue:(id)value forKey:(const char *)key
{
  v10 = 0uLL;
  v11 = 0;
  [(CSEventDonationJournalItem *)value attrDictObj];
  strlen(key);
  PlistObjectForKey = _MDPlistDictionaryGetPlistObjectForKey();
  if (PlistObjectForKey)
  {
    v8 = v10;
    v9 = v11;
    PlistObjectType = _MDPlistGetPlistObjectType();
    LOBYTE(PlistObjectForKey) = ((PlistObjectType - 226) < 2 || PlistObjectType == 51 || PlistObjectType == 35) && (v8 = v10, v9 = v11, _MDPlistNumberGetIntValue());
  }

  return PlistObjectForKey;
}

- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d
{
  itemCopy = item;
  if ((([itemCopy hasTextContent] & 1) != 0 || objc_msgSend(itemCopy, "hasHTMLContent")) && +[CSSuggestedEventsUpdater journalItemNeedsSuggestedEvents:](CSSuggestedEventsUpdater, "journalItemNeedsSuggestedEvents:", itemCopy))
  {
    v5 = ![CSSuggestedEventsUpdater journalItemHasSuggestedEventsSN:itemCopy];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  v99 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  handlerCopy = handler;
  blockCopy = block;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v10 = SKGLogSuggestedEventsInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = donationCopy;
      *&buf[12] = 2080;
      *&buf[14] = [(CSEventListenerManager *)donationCopy journalMap];
      _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_DEFAULT, "**** handleDonation for %@ / %s", buf, 0x16u);
    }
  }

  context = objc_autoreleasePoolPush();
  v11 = SKGLogEventInit();
  spid = os_signpost_id_generate(v11);

  v12 = SKGLogEventInit();
  v13 = v12;
  v60 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v13, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CSSuggestedEventsUpdaterHandleDonation", "", buf, 2u);
  }

  v14 = objc_alloc_init(CSEventFeedback);
  [(CSEventFeedback *)v14 setIndexType:[(CSEventListenerManager *)donationCopy folderFd]];
  [(CSEventFeedback *)v14 start];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  suggestedEventsFetchAttributes = [mEMORY[0x277D657A0] suggestedEventsFetchAttributes];

  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](donationCopy)];
  v19 = [v17 initWithString:v18];

  [(CSEventFeedback *)v14 setBundleID:v19];
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  protectionClass = [(CSEventListenerDonation *)donationCopy protectionClass];
  v64 = [v20 initWithString:protectionClass];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[CSEventListenerManager totalJournalSize](donationCopy)];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v96 = __Block_byref_object_copy__7;
  v97 = __Block_byref_object_dispose__7;
  v98 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x2020000000;
  v85[3] = 0;
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __86__CSSuggestedEventsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
  v76[3] = &unk_27893CAC8;
  v76[4] = self;
  v23 = v19;
  v77 = v23;
  v24 = blockCopy;
  v82 = v24;
  v25 = donationCopy;
  v78 = v25;
  v83 = v85;
  v26 = v14;
  v79 = v26;
  v62 = suggestedEventsFetchAttributes;
  v80 = v62;
  v27 = v22;
  v81 = v27;
  v84 = buf;
  [v25 iterateItems:v76];
  v28 = v24[2](v24);
  if (v28)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v29 = SKGLogSuggestedEventsInit();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        taskName = [(CSSuggestedEventsUpdater *)self taskName];
        v31 = taskName;
        uTF8String = [taskName UTF8String];
        indexTypeName = [(CSEventListenerDonation *)v25 indexTypeName];
        totalJournalSize = [(CSEventListenerManager *)v25 totalJournalSize];
        *v87 = 136315650;
        selfCopy2 = uTF8String;
        v89 = 2080;
        v90 = indexTypeName;
        v91 = 2048;
        v92 = totalJournalSize;
        _os_log_impl(&dword_231B25000, v29, OS_LOG_TYPE_DEFAULT, "### cancelling %s due to expiration request while processing type='%s' sn:'%llu'", v87, 0x20u);
      }
    }

    [(CSEventFeedback *)v26 end];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
LABEL_50:
    v54 = 0;
    goto LABEL_51;
  }

  v35 = *(*&buf[8] + 40);
  if (v35)
  {
    v61 = [v35 count];
  }

  else
  {
    v61 = 0;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v36 = SKGLogSuggestedEventsInit();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      indexTypeName2 = [(CSEventListenerDonation *)v25 indexTypeName];
      totalJournalSize2 = [(CSEventListenerManager *)v25 totalJournalSize];
      *v87 = 138413058;
      selfCopy2 = self;
      v89 = 2080;
      v90 = indexTypeName2;
      v91 = 2048;
      v92 = totalJournalSize2;
      v93 = 2048;
      v94 = v61;
      _os_log_impl(&dword_231B25000, v36, OS_LOG_TYPE_DEFAULT, "### donation %@ %s sn:%llu found %lu items", v87, 0x2Au);
    }
  }

  if ([(CSEventListenerManager *)v25 throttled])
  {
    homePathHash = [(CSEventListenerDonation *)v25 homePathHash];
    v40 = getCSBasePathForId(homePathHash);
    if (v40)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v41 = SKGLogSuggestedEventsInit();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v40;
          uTF8String2 = [v40 UTF8String];
          *v87 = 136315138;
          selfCopy2 = uTF8String2;
          _os_log_impl(&dword_231B25000, v41, OS_LOG_TYPE_DEFAULT, "Creating CSManagedSearchableIndex for path = %s", v87, 0xCu);
        }
      }

      if (v61)
      {
        v44 = [objc_alloc(MEMORY[0x277CC3448]) initWithPath:v40];
LABEL_36:

        goto LABEL_37;
      }
    }

    else if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v45 = SKGLogSuggestedEventsInit();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        homePathHash2 = [(CSEventListenerDonation *)v25 homePathHash];
        [CSDocumentUnderstandingUpdater handleDonation:v86 turboEnabled:homePathHash2 completionHandler:v45 cancelBlock:?];
      }
    }

    v44 = 0;
    goto LABEL_36;
  }

  if (!v61)
  {
    goto LABEL_46;
  }

  v44 = [objc_alloc(MEMORY[0x277CC34A8]) _initWithName:@"SuggestedEventsUpdate" protectionClass:v64 bundleIdentifier:v23 options:32];
LABEL_37:
  if (!v44)
  {
LABEL_46:
    v55 = SKGLogEventInit();
    v56 = v55;
    if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
    {
      *v87 = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v56, OS_SIGNPOST_INTERVAL_END, spid, "CSSuggestedEventsUpdaterHandleDonation", "", v87, 2u);
    }

    [(CSEventFeedback *)v26 end];
    goto LABEL_50;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v47 = SKGLogSuggestedEventsInit();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      indexTypeName3 = [(CSEventListenerDonation *)v25 indexTypeName];
      *v87 = 138413058;
      selfCopy2 = self;
      v89 = 2080;
      v90 = indexTypeName3;
      v91 = 2112;
      v92 = v27;
      v93 = 2048;
      v94 = v61;
      _os_log_debug_impl(&dword_231B25000, v47, OS_LOG_TYPE_DEBUG, "### %@ %s sn: %@ found %lu items", v87, 0x2Au);
    }
  }

  v48 = SKGLogEventInit();
  v49 = os_signpost_id_generate(v48);

  v50 = SKGLogEventInit();
  v51 = v50;
  if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
  {
    *v87 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v49, "CSSuggestedEventsUpdaterIndexItems", "", v87, 2u);
  }

  v52 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CSSuggestedEventsUpdaterTimeout" code:-1 userInfo:0];
  v53 = *(*&buf[8] + 40);
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __86__CSSuggestedEventsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_99;
  v68[3] = &unk_27893D888;
  v69 = v26;
  v70 = v25;
  v71 = v27;
  v73 = v61;
  v74 = v49;
  v75 = spid;
  v72 = handlerCopy;
  [v44 indexSearchableItems:v53 timeout:v52 timeoutError:v68 completion:3.0e11];

  v54 = 1;
LABEL_51:

  _Block_object_dispose(v85, 8);
  _Block_object_dispose(buf, 8);

  objc_autoreleasePoolPop(context);
  v57 = *MEMORY[0x277D85DE8];
  return v28 | v54;
}

uint64_t __86__CSSuggestedEventsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) shouldHandleJournalItem:v3 bundleID:*(a1 + 40)] & 1) == 0)
  {
    v12 = (*(*(a1 + 80) + 16))();
    objc_autoreleasePoolPop(v4);
    goto LABEL_28;
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
      v14 = [*(a1 + 56) canProcessEvent:&unk_2846E7950];

      v49 = 0;
      if (v14)
      {
        v15 = [v3 attributesForKeys:*(a1 + 64) bundleID:*(a1 + 40)];
        if (v15)
        {
          v16 = [MEMORY[0x277D65798] sharedProcessor];
          v17 = [v16 canProcessEventForRecord:v15 bundleIdentifier:*(a1 + 40)];

          if ((v17 & 1) == 0)
          {
LABEL_27:

            objc_autoreleasePoolPop(v4);
            v12 = (*(*(a1 + 80) + 16))();
            goto LABEL_28;
          }

          v18 = [MEMORY[0x277D65798] sharedProcessor];
          v19 = [v18 suggestedEventsRecordNeedsProcessing:v15 bundleID:*(a1 + 40) isUpdate:0 hasTextContent:objc_msgSend(v3 shouldClear:"hasTextContent") shouldMarkComplete:{0, &v49}];

          if (*(a1 + 40))
          {
            if ((v49 & 1) == 0 && v19 == 1)
            {
              v20 = SKGLogEventInit();
              v21 = os_signpost_id_generate(v20);

              v22 = SKGLogEventInit();
              v23 = v22;
              if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_231B25000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "CSSuggestedEventsUpdaterProcessSingleItem", "", buf, 2u);
              }

              v24 = *(a1 + 32);
              v43 = objc_opt_class();
              v25 = *(a1 + 40);
              v41 = v25;
              v42 = *(a1 + 72);
              v26 = [MEMORY[0x277D02118] serviceForSpotlightKnowledge];
              v44[0] = MEMORY[0x277D85DD0];
              v44[1] = 3221225472;
              v44[2] = __86__CSSuggestedEventsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_87;
              v44[3] = &unk_27893D860;
              v45 = v7;
              v27 = *(a1 + 40);
              v28 = *(a1 + 96);
              v46 = v27;
              v47 = v28;
              v48 = v21;
              [v43 extractSuggestedEventsForRecord:v15 bundle:v41 uniqueID:v45 serialNumber:v42 service:v26 timeout:v44 completionHandler:600.0];

              v29 = v45;
LABEL_26:

              goto LABEL_27;
            }
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
      v49 = 0;
    }

    v29 = objc_alloc_init(MEMORY[0x277CC34B8]);
    [v29 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsSuggestedEvents"];
    if (v49 == 1)
    {
      v30 = MEMORY[0x277CCABB0];
      v31 = [MEMORY[0x277D657A0] sharedContext];
      v32 = [v30 numberWithInteger:{objc_msgSend(v31, "suggestedEventsVersion")}];
      [v29 setAttribute:v32 forKey:@"kMDItemSuggestedEventsVersion"];

      updateAttributeSetForEvents(v29, @"_kMDItemSuggestedEventsSN", *(a1 + 72));
    }

    v33 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v7 domainIdentifier:0 attributeSet:v29];
    [v33 setBundleID:*(a1 + 40)];
    [v33 setIsUpdate:1];
    v34 = *(*(*(a1 + 96) + 8) + 40);
    objc_sync_enter(v34);
    [*(*(*(a1 + 96) + 8) + 40) addObject:v33];
    objc_sync_exit(v34);

    [*(a1 + 56) logFlag:10 message:@"ignored"];
    goto LABEL_26;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v11 = SKGLogSuggestedEventsInit();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v37 = *(a1 + 32);
      v38 = [(CSEventListenerManager *)*(a1 + 48) totalJournalSize];
      v39 = *(*(*(a1 + 88) + 8) + 24);
      v40 = [(CSEventListenerManager *)*(a1 + 48) journalMap];
      *buf = 138413314;
      v51 = v37;
      v52 = 2048;
      v53 = v38;
      v54 = 2048;
      v55 = v39;
      v56 = 2080;
      v57 = v40;
      v58 = 2112;
      v59 = v7;
      _os_log_debug_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEBUG, "%@ SKIPPING item serialNumber:%llu < latestSerialNumber:%llu | bundle:%s identifier:%@", buf, 0x34u);
    }
  }

  v12 = (*(*(a1 + 80) + 16))();

  objc_autoreleasePoolPop(v4);
LABEL_28:

  v35 = *MEMORY[0x277D85DE8];
  return v12;
}

void __86__CSSuggestedEventsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_87(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:a1[4] domainIdentifier:0 attributeSet:v5];
  [v6 setBundleID:a1[5]];
  [v6 setIsUpdate:1];
  v7 = *(*(a1[6] + 8) + 40);
  objc_sync_enter(v7);
  [*(*(a1[6] + 8) + 40) addObject:v6];
  objc_sync_exit(v7);

  if (a2)
  {
    v8 = SKGLogEventInit();
    v9 = v8;
    v10 = a1[7];
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CSSuggestedEventsUpdaterProcessSingleItem", "", v11, 2u);
    }
  }
}

void __86__CSSuggestedEventsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_99(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) logFlag:22 message:@"completed"];
  }

  [*(a1 + 32) end];
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogSuggestedEventsInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __86__CSSuggestedEventsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_99_cold_1(a1, v4);
    }
  }

  v5 = SKGLogEventInit();
  v6 = v5;
  v7 = *(a1 + 72);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CSSuggestedEventsUpdaterIndexItems", "", buf, 2u);
  }

  v8 = SKGLogEventInit();
  v9 = v8;
  v10 = *(a1 + 80);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CSSuggestedEventsUpdaterHandleDonation", "", v12, 2u);
  }

  v11 = *(a1 + 64);
  (*(*(a1 + 56) + 16))();
}

+ (void)extractSuggestedEventsForRecord:(id)record bundle:(id)bundle uniqueID:(id)d serialNumber:(id)number service:(id)service timeout:(double)timeout completionHandler:(id)handler
{
  v61 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  bundleCopy = bundle;
  dCopy = d;
  numberCopy = number;
  v18 = recordCopy;
  v19 = numberCopy;
  serviceCopy = service;
  handlerCopy = handler;
  v21 = objc_alloc(MEMORY[0x277CC34B0]);
  v22 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v18];
  v23 = [v21 initWithUniqueIdentifier:dCopy domainIdentifier:0 attributeSet:v22];

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v24 = dispatch_group_create();
  dispatch_group_enter(v24);
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v25 = SKGLogSuggestedEventsInit();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v39 = v18;
      attributeSet = [v23 attributeSet];
      title = [attributeSet title];
      v26 = CSRedactString();
      attributeSet2 = [v23 attributeSet];
      contentSnippet = [attributeSet2 contentSnippet];
      v29 = CSRedactString();
      *buf = 138413058;
      v54 = bundleCopy;
      v55 = 2112;
      v56 = dCopy;
      v57 = 2112;
      v58 = v26;
      v59 = 2112;
      v60 = v29;
      _os_log_impl(&dword_231B25000, v25, OS_LOG_TYPE_INFO, "### calling suggested events for %@ / %@, title: %@, snippet: %@", buf, 0x2Au);

      v18 = v39;
    }
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __123__CSSuggestedEventsUpdater_extractSuggestedEventsForRecord_bundle_uniqueID_serialNumber_service_timeout_completionHandler___block_invoke;
  v44[3] = &unk_27893D8B0;
  v48 = &v49;
  v30 = v24;
  v45 = v30;
  v31 = v19;
  v46 = v31;
  v32 = handlerCopy;
  v47 = v32;
  [serviceCopy extractAttributesAndDonate:v23 withCompletion:v44];
  if (v30)
  {
    v33 = v50 + 24;
    v34 = dispatch_time(0, (timeout * 1000000000.0));
    atomic_store(dispatch_group_wait(v30, v34) != 0, v33);
    v35 = atomic_load(v50 + 24);
    if (v35)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v36 = SKGLogSuggestedEventsInit();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          +[CSSuggestedEventsUpdater extractSuggestedEventsForRecord:bundle:uniqueID:serialNumber:service:timeout:completionHandler:];
        }
      }

      v37 = objc_alloc_init(MEMORY[0x277CC34B8]);
      [v37 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsSuggestedEvents"];
      [v37 setAttribute:&unk_2846E7968 forKey:@"kMDItemSuggestedEventsErrorCode"];
      (*(v32 + 2))(v32, 0, v37);
    }
  }

  _Block_object_dispose(&v49, 8);
  v38 = *MEMORY[0x277D85DE8];
}

void __123__CSSuggestedEventsUpdater_extractSuggestedEventsForRecord_bundle_uniqueID_serialNumber_service_timeout_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = atomic_load((*(a1[7] + 8) + 24));
  if (v8)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v9 = SKGLogSuggestedEventsInit();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CSSuggestedEventsUpdater extractSuggestedEventsForRecord:bundle:uniqueID:serialNumber:service:timeout:completionHandler:];
      }
    }

    v10 = a1[4];
    if (v10)
    {
      dispatch_group_leave(v10);
    }

    goto LABEL_33;
  }

  if (!v6)
  {
    v16 = [CSSuggestedEventsUpdater getAggregatedAttributeSet:v5];
    if (!v16)
    {
      v16 = objc_alloc_init(MEMORY[0x277CC34B8]);
    }

    goto LABEL_29;
  }

  v11 = [v6 domain];
  v12 = [v11 isEqualToString:*MEMORY[0x277D02208]];

  if (!v12)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v14 = SKGLogSuggestedEventsInit();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        v15 = 0;
LABEL_22:

        goto LABEL_28;
      }

LABEL_20:
      __123__CSSuggestedEventsUpdater_extractSuggestedEventsForRecord_bundle_uniqueID_serialNumber_service_timeout_completionHandler___block_invoke_cold_1();
      goto LABEL_21;
    }

LABEL_27:
    v15 = 0;
    goto LABEL_28;
  }

  v13 = [v7 code];
  if (v13 > 0xD || ((1 << v13) & 0x2150) == 0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v14 = SKGLogSuggestedEventsInit();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_27;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v14 = SKGLogSuggestedEventsInit();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v7;
      _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEFAULT, "### SGSuggestionsService event extraction refused with error: %@", &v24, 0xCu);
    }

    v15 = 1;
    goto LABEL_22;
  }

  v15 = 1;
LABEL_28:
  v16 = objc_alloc_init(MEMORY[0x277CC34B8]);
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
  [v16 setAttribute:v17 forKey:@"kMDItemSuggestedEventsErrorCode"];

  if (v15)
  {
LABEL_29:
    v18 = MEMORY[0x277CCABB0];
    v19 = [MEMORY[0x277D657A0] sharedContext];
    v20 = [v18 numberWithInteger:{objc_msgSend(v19, "suggestedEventsVersion")}];
    [v16 setAttribute:v20 forKey:@"kMDItemSuggestedEventsVersion"];

    updateAttributeSetForEvents(v16, @"_kMDItemSuggestedEventsSN", a1[5]);
  }

  [v16 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsSuggestedEvents"];
  v21 = getSystemVersionString();
  [v16 setAttribute:v21 forKey:@"kMDItemSuggestedEventsBuildVersion"];

  (*(a1[6] + 16))();
  v22 = a1[4];
  if (v22)
  {
    dispatch_group_leave(v22);
  }

LABEL_33:
  v23 = *MEMORY[0x277D85DE8];
}

+ (id)getAggregatedAttributeSet:(id)set
{
  v28 = *MEMORY[0x277D85DE8];
  setCopy = set;
  if ([setCopy count])
  {
    v4 = [setCopy objectAtIndexedSubscript:0];
    attributeDictionary = [v4 attributeDictionary];
    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    suggestedEventsAllowListAttributes = [mEMORY[0x277D657A0] suggestedEventsAllowListAttributes];
    v8 = filterDictionaryWithTheAllowlist(attributeDictionary, suggestedEventsAllowListAttributes);

    v22 = v8;
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v8];
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = setCopy;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          attributeDictionary2 = [*(*(&v23 + 1) + 8 * i) attributeDictionary];
          v17 = [attributeDictionary2 objectForKey:@"kMDItemEventType"];

          if (v17)
          {
            [v10 addObject:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    allObjects = [v10 allObjects];
    [v9 setObject:allObjects forKey:@"kMDItemDetectedEventTypes"];

    v19 = [objc_alloc(MEMORY[0x277CC34B8]) initWithMutableDictionary:v9];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __86__CSSuggestedEventsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_99_cold_1(uint64_t *a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [(CSEventListenerDonation *)a1[5] indexTypeName];
  v5 = a1[6];
  v6 = a1[8];
  v8 = 136315650;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2048;
  v13 = v6;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "### %s sn: %@ updated %lu items", &v8, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __123__CSSuggestedEventsUpdater_extractSuggestedEventsForRecord_bundle_uniqueID_serialNumber_service_timeout_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end