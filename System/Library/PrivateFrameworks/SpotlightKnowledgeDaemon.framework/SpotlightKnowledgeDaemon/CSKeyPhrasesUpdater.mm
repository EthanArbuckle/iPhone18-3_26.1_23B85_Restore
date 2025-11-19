@interface CSKeyPhrasesUpdater
- (BOOL)handleDonation:(id)a3 turboEnabled:(BOOL)a4 completionHandler:(id)a5 cancelBlock:(id)a6;
- (BOOL)shouldHandleJournalItem:(id)a3 bundleID:(id)a4;
- (id)description;
- (id)excludeBundleIDs;
- (void)didCompleteJournal;
@end

@implementation CSKeyPhrasesUpdater

- (void)didCompleteJournal
{
  v2 = [MEMORY[0x277D65798] sharedProcessor];
  [v2 flushKeyphraser];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(CSKeyPhrasesUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, v5];

  return v6;
}

- (id)excludeBundleIDs
{
  v2 = [MEMORY[0x277D657A0] sharedContext];
  v3 = [v2 keyphraseExcludeBundles];

  return v3;
}

- (BOOL)shouldHandleJournalItem:(id)a3 bundleID:(id)a4
{
  v4 = a3;
  v12 = 0uLL;
  v13 = 0;
  [(CSEventDonationJournalItem *)v4 attrDictObj];
  if (_MDPlistDictionaryGetPlistObjectForKey() && ((v10 = v12, v11 = v13, PlistObjectType = _MDPlistGetPlistObjectType(), (PlistObjectType - 226) < 2) || PlistObjectType == 51 || PlistObjectType == 35))
  {
    v10 = v12;
    v11 = v13;
    v6 = _MDPlistNumberGetIntValue() != 0;
  }

  else
  {
    v6 = 0;
  }

  [(CSEventDonationJournalItem *)v4 attrDictObj];
  if (_MDPlistDictionaryGetPlistObjectForKey() && ((v10 = v12, v11 = v13, v7 = _MDPlistGetPlistObjectType(), (v7 - 226) < 2) || v7 == 51 || v7 == 35))
  {
    v10 = v12;
    v11 = v13;
    v8 = _MDPlistNumberGetIntValue() == 0;
  }

  else
  {
    v8 = 1;
  }

  return v6 && v8;
}

- (BOOL)handleDonation:(id)a3 turboEnabled:(BOOL)a4 completionHandler:(id)a5 cancelBlock:(id)a6
{
  v112 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v71 = a5;
  v66 = a6;
  context = objc_autoreleasePoolPush();
  v9 = SKGLogEventInit();
  spid = os_signpost_id_generate(v9);

  v10 = SKGLogEventInit();
  v11 = v10;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CSKeyphraseUpdaterHandleDonation", "", buf, 2u);
  }

  v12 = objc_alloc_init(CSEventFeedback);
  [(CSEventFeedback *)v12 setIndexType:[(CSEventListenerManager *)v8 folderFd]];
  [(CSEventFeedback *)v12 start];
  v13 = [MEMORY[0x277D657A0] sharedContext];
  v14 = [v13 keyphraseFetchAttributes];

  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](v8)];
  v17 = [v15 initWithString:v16];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = @"unknown";
  }

  [(CSEventFeedback *)v12 setBundleID:v18];
  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  v20 = [(CSEventListenerDonation *)v8 protectionClass];
  v21 = [v19 initWithString:v20];

  v22 = objc_alloc(MEMORY[0x277CCACA8]);
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalQueue](v8)];
  v24 = [v22 initWithString:v23];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[CSEventListenerManager totalJournalSize](v8)];
  *buf = 0;
  v99 = buf;
  v100 = 0x3032000000;
  v101 = __Block_byref_object_copy__3;
  v102 = __Block_byref_object_dispose__3;
  v103 = 0;
  v97[0] = 0;
  v97[1] = v97;
  v97[2] = 0x2020000000;
  v97[3] = 0;
  v96 = 0;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v26 = SKGLogKeyphraseInit();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(CSEventListenerDonation *)v8 indexTypeName];
      v28 = [(CSEventListenerManager *)v8 totalJournalSize];
      v29 = [v8 getItemCount];
      *v104 = 138413058;
      v105 = self;
      v106 = 2080;
      v107 = v27;
      v108 = 2048;
      v109 = v28;
      v110 = 1024;
      LODWORD(v111) = v29;
      _os_log_impl(&dword_231B25000, v26, OS_LOG_TYPE_DEFAULT, "### donation %@ %s sn:%llu total incoming %u items", v104, 0x26u);
    }
  }

  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
  v83[3] = &unk_27893D4F8;
  v83[4] = self;
  v68 = v17;
  v84 = v68;
  v30 = v66;
  v91 = v30;
  v31 = v8;
  v85 = v31;
  v92 = v97;
  v67 = v24;
  v86 = v67;
  v32 = v12;
  v87 = v32;
  v95 = a4;
  v64 = v14;
  v88 = v64;
  v33 = v21;
  v89 = v33;
  v34 = v25;
  v90 = v34;
  v93 = buf;
  v94 = &v96;
  [v31 iterateItems:v83];
  v73 = v30[2](v30);
  if (!v73)
  {
    v42 = *(v99 + 5);
    if (v42)
    {
      v63 = [v42 count];
    }

    else
    {
      v63 = 0;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v43 = SKGLogKeyphraseInit();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [(CSEventListenerDonation *)v31 indexTypeName];
        v45 = [(CSEventListenerManager *)v31 totalJournalSize];
        *v104 = 138413058;
        v105 = self;
        v106 = 2080;
        v107 = v44;
        v108 = 2048;
        v109 = v45;
        v110 = 2048;
        v111 = v63;
        _os_log_impl(&dword_231B25000, v43, OS_LOG_TYPE_DEFAULT, "### donation %@ %s sn:%llu found %lu items", v104, 0x2Au);
      }
    }

    if (![(CSEventListenerManager *)v31 throttled])
    {
      if (!v63)
      {
        goto LABEL_45;
      }

      v51 = [objc_alloc(MEMORY[0x277CC34A8]) _initWithName:@"KeyphraseUpdate" protectionClass:v33 bundleIdentifier:v68 options:32];
LABEL_40:
      if (v51)
      {
        v54 = SKGLogEventInit();
        v55 = os_signpost_id_generate(v54);

        v56 = SKGLogEventInit();
        v57 = v56;
        if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
        {
          *v82 = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v57, OS_SIGNPOST_INTERVAL_BEGIN, v55, "CSKeyphraseUpdaterHandleDonation", "", v82, 2u);
        }

        v58 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CSKeyphraseUpdaterTimeout" code:-1 userInfo:0];
        v59 = *(v99 + 5);
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_57;
        v74[3] = &unk_27893D520;
        v75 = v32;
        v76 = v31;
        v78 = v63;
        v79 = v55;
        v80 = spid;
        v77 = v71;
        v81 = v96;
        [v51 indexSearchableItems:v59 timeout:v58 timeoutError:v74 completion:3.0e11];

        v41 = 1;
LABEL_49:

        goto LABEL_50;
      }

LABEL_45:
      [(CSEventFeedback *)v32 end];
      v60 = SKGLogEventInit();
      v51 = v60;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
      {
        *v82 = 0;
        _os_signpost_emit_with_name_impl(&dword_231B25000, v51, OS_SIGNPOST_INTERVAL_END, spid, "CSKeyphraseUpdaterHandleDonation", "", v82, 2u);
      }

      v41 = 0;
      goto LABEL_49;
    }

    v46 = [(CSEventListenerDonation *)v31 homePathHash];
    v47 = getCSBasePathForId(v46);
    if (v47)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v48 = SKGLogKeyphraseInit();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = v47;
          v50 = [v47 UTF8String];
          *v104 = 136315138;
          v105 = v50;
          _os_log_impl(&dword_231B25000, v48, OS_LOG_TYPE_DEFAULT, "Creating CSManagedSearchableIndex for path = %s", v104, 0xCu);
        }
      }

      if (v63)
      {
        v51 = [objc_alloc(MEMORY[0x277CC3448]) initWithPath:v47];
LABEL_39:

        goto LABEL_40;
      }
    }

    else if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v52 = SKGLogKeyphraseInit();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = [(CSEventListenerDonation *)v31 homePathHash];
        [CSDocumentUnderstandingUpdater handleDonation:v104 turboEnabled:v53 completionHandler:v52 cancelBlock:?];
      }
    }

    v51 = 0;
    goto LABEL_39;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v35 = SKGLogKeyphraseInit();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [(CSKeyPhrasesUpdater *)self taskName];
      v37 = v36;
      v38 = [v36 UTF8String];
      v39 = [(CSEventListenerDonation *)v31 indexTypeName];
      v40 = [(CSEventListenerManager *)v31 totalJournalSize];
      *v104 = 136315650;
      v105 = v38;
      v106 = 2080;
      v107 = v39;
      v108 = 2048;
      v109 = v40;
      _os_log_impl(&dword_231B25000, v35, OS_LOG_TYPE_DEFAULT, "### cancelling %s due to expiration request while processing type='%s' sn:'%llu'", v104, 0x20u);
    }
  }

  [(CSEventFeedback *)v32 end];
  (*(v71 + 2))(v71, 0, 0, 0);
  v41 = 0;
LABEL_50:

  _Block_object_dispose(v97, 8);
  _Block_object_dispose(buf, 8);

  objc_autoreleasePoolPop(context);
  v61 = *MEMORY[0x277D85DE8];
  return v73 | v41;
}

uint64_t __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) shouldHandleJournalItem:v3 bundleID:*(a1 + 40)])
  {
    v5 = *MEMORY[0x277CBECE8];
    [(CSEventDonationJournalItem *)v3 identifier];
    v6 = MDJournalReaderMDPlistObjectCopy();
    v7 = [v6 mutableCopy];

    v8 = [SKGUpdaterStore instanceForIndexType:[(CSEventListenerManager *)*(a1 + 48) folderFd]];
    if (v8)
    {
      *(*(*(a1 + 104) + 8) + 24) = [v8 readSerialNumberFromBundleID:-[CSEventListenerManager journalMap](*(a1 + 48)) identifier:objc_msgSend(v7 UUID:"UTF8String") listenerType:{objc_msgSend(*(a1 + 56), "UTF8String"), objc_msgSend(*(a1 + 32), "eventType")}];
      if ([(CSEventListenerManager *)*(a1 + 48) totalJournalSize]< *(*(*(a1 + 104) + 8) + 24))
      {
        if (SKGLogGetCurrentLoggingLevel() >= 7)
        {
          v9 = SKGLogKeyphraseInit();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v44 = *(a1 + 32);
            v45 = [(CSEventListenerManager *)*(a1 + 48) totalJournalSize];
            v46 = *(*(*(a1 + 104) + 8) + 24);
            v47 = *(a1 + 40);
            *buf = 138413314;
            v76 = v44;
            v77 = 2048;
            v78 = v45;
            v79 = 2048;
            v80 = v46;
            v81 = 2112;
            v82 = v47;
            v83 = 2112;
            v84 = v7;
            _os_log_debug_impl(&dword_231B25000, v9, OS_LOG_TYPE_DEBUG, "%@ SKIPPING item serialNumber:%llu < latestSerialNumber:%llu | bundle:%@ identifier:%@", buf, 0x34u);
          }
        }

        v10 = (*(*(a1 + 96) + 16))();

        goto LABEL_10;
      }
    }

    [*(a1 + 64) setNumItemsInBatch:{objc_msgSend(*(a1 + 64), "numItemsInBatch") + 1}];
    if (*(a1 + 128))
    {
      v11 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277D65798] sharedProcessor];
      if ([v12 canProcessEvent])
      {
        v11 = [*(a1 + 64) canProcessEvent:&unk_2846E77E8] ^ 1;
      }

      else
      {
        v11 = 1;
      }
    }

    v13 = [(CSEventDonationJournalItem *)v3 flags];
    v74 = 0;
    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v15 = v13;
      v14 = [v3 attributesForKeys:*(a1 + 72) bundleID:*(a1 + 40)];
      if (v14)
      {
        v16 = [MEMORY[0x277D65798] sharedProcessor];
        v17 = [v16 canProcessEventForRecord:v14 bundleIdentifier:*(a1 + 40)];

        if (!v17)
        {
LABEL_36:

          objc_autoreleasePoolPop(v4);
          v10 = (*(*(a1 + 96) + 16))();
          goto LABEL_37;
        }

        v18 = [MEMORY[0x277D65798] sharedProcessor];
        v19 = [v18 needsSKGJournalKeyphrasesRecord:v14 bundleID:*(a1 + 40) protectionClass:*(a1 + 80) recordHasText:objc_msgSend(v3 shouldMarkComplete:"hasTextContent") isUpdate:{&v74, v15 & 1}];

        if ((v74 & 1) == 0)
        {
          if (v19)
          {
            v20 = SKGLogEventInit();
            v21 = os_signpost_id_generate(v20);

            v22 = SKGLogEventInit();
            v23 = v22;
            v52 = v21 - 1;
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_231B25000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "CSKeyphrasesUpdaterProcessSingleItem", "", buf, 2u);
            }

            spid = v21;

            v24 = [MEMORY[0x277D65798] sharedProcessor];
            v49 = *(a1 + 80);
            v50 = *(a1 + 40);
            v51 = *(a1 + 120);
            v67[0] = MEMORY[0x277D85DD0];
            v67[1] = 3221225472;
            v67[2] = __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_30;
            v67[3] = &unk_27893D480;
            v72 = *(a1 + 96);
            v68 = v8;
            v69 = *(a1 + 48);
            v70 = v7;
            v25 = *(a1 + 56);
            v26 = *(a1 + 104);
            v71 = v25;
            v73 = v26;
            v61[0] = MEMORY[0x277D85DD0];
            v61[1] = 3221225472;
            v61[2] = __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2;
            v61[3] = &unk_27893D4A8;
            v62 = v68;
            v63 = *(a1 + 48);
            v64 = v70;
            v27 = *(a1 + 56);
            v28 = *(a1 + 104);
            v65 = v27;
            v66 = v28;
            v55[0] = MEMORY[0x277D85DD0];
            v55[1] = 3221225472;
            v55[2] = __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_3;
            v55[3] = &unk_27893D4D0;
            v56 = *(a1 + 64);
            v57 = *(a1 + 40);
            v58 = *(a1 + 88);
            v29 = v64;
            v30 = *(a1 + 112);
            v59 = v29;
            v60 = v30;
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_45;
            v53[3] = &unk_27893CC50;
            v54 = *(a1 + 96);
            [v24 enumerateProcessedItemsFromRecord:v14 referenceIdentifier:v29 bundleIdentifier:v50 protectionClass:v49 processorFlags:516 workCost:v51 fetchCachedLanguageBlock:v67 cacheLanguageBlock:v61 processedItemBlock:v55 cancelBlock:v53];

            v31 = SKGLogEventInit();
            v32 = v31;
            if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_231B25000, v32, OS_SIGNPOST_INTERVAL_END, spid, "CSKeyphrasesUpdaterProcessSingleItem", "", buf, 2u);
            }

            v33 = v72;
            goto LABEL_35;
          }
        }
      }
    }

    v33 = objc_alloc_init(MEMORY[0x277CC34B8]);
    [v33 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsKeyphrases"];
    if (v74 == 1)
    {
      v34 = MEMORY[0x277CCABB0];
      v35 = [MEMORY[0x277D657A0] sharedContext];
      v36 = [v34 numberWithInteger:{objc_msgSend(v35, "keyphraseVersion")}];
      [v33 setAttribute:v36 forKey:@"kMDItemKeyphraseVersion"];

      updateAttributeSetForEvents(v33, @"_kMDItemKeyphrasesSN", *(a1 + 88));
    }

    v37 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v7 domainIdentifier:0 attributeSet:v33];
    [v37 setBundleID:*(a1 + 40)];
    [v37 setIsUpdate:1];
    v38 = *(*(*(a1 + 112) + 8) + 40);
    if (!v38)
    {
      v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v40 = *(*(a1 + 112) + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;

      v38 = *(*(*(a1 + 112) + 8) + 40);
    }

    [v38 addObject:v37];
    [*(a1 + 64) logFlag:10 message:@"ignored"];

LABEL_35:
    goto LABEL_36;
  }

  v10 = (*(*(a1 + 96) + 16))();
LABEL_10:
  objc_autoreleasePoolPop(v4);
LABEL_37:

  v42 = *MEMORY[0x277D85DE8];
  return v10;
}

id __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_30(uint64_t a1)
{
  if ((*(*(a1 + 64) + 16))())
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 32) readLanguageFromBundleID:-[CSEventListenerManager journalMap](*(a1 + 40)) identifier:objc_msgSend(*(a1 + 48) UUID:"UTF8String") serialNumber:{objc_msgSend(*(a1 + 56), "UTF8String"), *(*(*(a1 + 72) + 8) + 24)}];
  }

  return v2;
}

uint64_t __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [(CSEventListenerManager *)v4 journalMap];
  v7 = [*(a1 + 48) UTF8String];
  v8 = [*(a1 + 56) UTF8String];
  v9 = *(*(*(a1 + 64) + 8) + 24);
  v10 = [v5 UTF8String];

  return [v3 writeLanguageForBundleID:v6 identifier:v7 UUID:v8 serialNumber:v9 language:v10];
}

uint64_t __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 didMakePIRCall] && objc_msgSend(v3, "errorCallingPIR"))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v31 = &unk_2846E7800;
    v32[0] = &unk_2846E7818;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    [v4 logErrorItemForBundleID:v5 counts:v6];
  }

  v7 = attributeSetForProcessedItem(v3);
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CC3468] sharedInstance];
    v10 = [v3 bundleIdentifier];
    [v9 logWithBundleID:v10 indexOperation:7 itemCount:1 code:0];

    v11 = [v3 keyphrasesCount];
    v12 = [v3 breadcrumbsCount];
    v13 = [v3 didMakePIRCall];
    v28 = *(a1 + 32);
    v14 = [v3 bundleIdentifier];
    v15 = [v3 textContentLanguage];
    v16 = [v3 textContentSize];
    v29[0] = &unk_2846E77E8;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    v30[0] = v17;
    v29[1] = &unk_2846E7830;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    v30[1] = v18;
    v29[2] = &unk_2846E7848;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    v30[2] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
    [v28 logProcessedItemForBundleID:v14 language:v15 textSize:v16 counts:v20];

    updateAttributeSetForEvents(v8, @"_kMDItemKeyphrasesSN", *(a1 + 48));
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CC34B8]);
    [*(a1 + 32) logFlag:10 message:@"ignored"];
  }

  [v8 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsKeyphrases"];
  v21 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:*(a1 + 56) domainIdentifier:0 attributeSet:v8];
  [v21 setBundleID:*(a1 + 40)];
  [v21 setIsUpdate:1];
  v22 = *(*(*(a1 + 64) + 8) + 40);
  if (!v22)
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = *(*(a1 + 64) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    v22 = *(*(*(a1 + 64) + 8) + 40);
  }

  [v22 addObject:v21];

  v26 = *MEMORY[0x277D85DE8];
  return 1;
}

void __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) logFlag:22 message:@"completed"];
  }

  [*(a1 + 32) end];
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogKeyphraseInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_57_cold_1(a1, v4);
    }
  }

  v5 = SKGLogEventInit();
  v6 = v5;
  v7 = *(a1 + 64);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CSKeyphraseUpdaterHandleDonation", "", buf, 2u);
  }

  v8 = SKGLogEventInit();
  v9 = v8;
  v10 = *(a1 + 72);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CSKeyphraseUpdaterHandleDonation", "", v13, 2u);
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 80);
  (*(*(a1 + 48) + 16))();
}

void __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_57_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [(CSEventListenerDonation *)*(a1 + 40) indexTypeName];
  v5 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
  v6 = *(a1 + 56);
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