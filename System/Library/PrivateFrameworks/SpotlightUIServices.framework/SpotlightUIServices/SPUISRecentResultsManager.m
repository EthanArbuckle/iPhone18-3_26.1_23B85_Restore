@interface SPUISRecentResultsManager
+ (BOOL)isValidSearchString:(id)a3;
+ (id)updateResult:(id)a3 topic:(id)a4 queryContext:(id)a5;
+ (void)cacheResult:(id)a3 searchString:(id)a4;
+ (void)cacheSearchString:(id)a3;
+ (void)deleteResult:(id)a3 requiresRefresh:(BOOL)a4;
+ (void)preheat;
+ (void)sendRefreshNotification;
@end

@implementation SPUISRecentResultsManager

+ (void)preheat
{
  if (preheat_onceToken[0] != -1)
  {
    +[SPUISRecentResultsManager preheat];
  }

  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  v2 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v2 setMaxConcurrentOperationCount:1];
  [v2 setUnderlyingQueue:preheat_gCacheManagerQueue];
  v3 = [v5 addObserverForName:@"com.apple.LaunchServices.applicationRegistered" object:0 suspensionBehavior:3 queue:v2 usingBlock:&__block_literal_global_447];
  v4 = [v5 addObserverForName:@"com.apple.LaunchServices.applicationUnregistered" object:0 suspensionBehavior:3 queue:v2 usingBlock:&__block_literal_global_447];
}

void __36__SPUISRecentResultsManager_preheat__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("cacheManagerUpdateQueue", v2);
  v1 = preheat_gCacheManagerQueue;
  preheat_gCacheManagerQueue = v0;
}

void __36__SPUISRecentResultsManager_preheat__block_invoke_2()
{
  v0 = [MEMORY[0x277D658C0] currentApplications];
  [MEMORY[0x277D65788] updateApplicationContexts:v0];
}

+ (BOOL)isValidSearchString:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  LOBYTE(v4) = [v6 length] != 0;
  return v4;
}

+ (void)cacheSearchString:(id)a3
{
  v4 = a3;
  if ([a1 isValidSearchString:?])
  {
    [MEMORY[0x277D65788] cacheSuggestion:v4 type:30 score:&unk_287C59F48 searchString:v4];
  }
}

+ (void)cacheResult:(id)a3 searchString:(id)a4
{
  v59 = a3;
  v6 = a4;
  if ([a1 isValidSearchString:v6])
  {
    switch([v59 type])
    {
      case 1u:
        v30 = [v59 completedQuery];
        if (v30)
        {
          goto LABEL_28;
        }

        v31 = [v59 completion];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
          goto LABEL_54;
        }

        v55 = [v59 title];
        v8 = [v55 text];

        goto LABEL_55;
      case 2u:
      case 3u:
      case 4u:
      case 0x14u:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v7 = [v59 resultBundleId];
        if (!v7)
        {
          break;
        }

        v8 = v7;
        v9 = [v59 applicationBundleIdentifier];
        if (!v9)
        {
          goto LABEL_49;
        }

        v10 = v9;
        v11 = [v59 sectionBundleIdentifier];
        if (!v11)
        {
          goto LABEL_48;
        }

        v12 = v11;
        v13 = [v59 identifier];

        if (!v13)
        {
          break;
        }

        v8 = *MEMORY[0x277CCA1A0];
        v10 = v59;
        v14 = [(__CFString *)v10 sectionBundleIdentifier];
        v15 = [v14 isEqualToString:*MEMORY[0x277D65BD0]];

        if ((v15 & 1) == 0)
        {
          v16 = [(__CFString *)v10 valueForAttribute:*MEMORY[0x277CC30B8] withType:objc_opt_class()];
          v17 = [v16 BOOLValue];

          if ((v17 & 1) == 0)
          {
            if (objc_opt_respondsToSelector())
            {
              v18 = [(__CFString *)v10 protectionClass];
            }

            else
            {
              v18 = 0;
            }

            v56 = MEMORY[0x277D65788];
            v57 = [(__CFString *)v10 identifier];
            v58 = [(__CFString *)v10 resultBundleId];
            [v56 cacheLocalResult:v10 identifier:v57 bundleIdentifier:v58 protectionClass:v18 searchString:v6];

            v8 = v18;
          }
        }

        goto LABEL_48;
      case 8u:
      case 0x18u:
      case 0x22u:
      case 0x23u:
        break;
      case 0xFu:
      case 0x10u:
      case 0x1Eu:
      case 0x1Fu:
        v8 = v59;
        v19 = [v8 completion];
        v20 = v19;
        if (v19)
        {
          v10 = v19;
        }

        else
        {
          v25 = [v8 title];
          v10 = [v25 text];
        }

        if ([(__CFString *)v10 length])
        {
          v26 = MEMORY[0x277D65788];
          v27 = [v8 type];
          v28 = MEMORY[0x277CCABB0];
          [v8 rankingScore];
          v29 = [v28 numberWithDouble:?];
          [v26 cacheSuggestion:v10 type:v27 score:v29 searchString:v6];
        }

        goto LABEL_48;
      case 0x11u:
      case 0x1Cu:
      case 0x1Du:
        v8 = v59;
        v10 = [v8 completion];
        if (!v10)
        {
          v21 = [v8 title];
          v22 = [v21 text];

          if (v22)
          {
            v10 = v22;
          }

          else
          {
            v10 = &stru_287C50EE8;
          }
        }

        [MEMORY[0x277D65788] cacheResult:v8 title:v10 searchString:v6];
        goto LABEL_48;
      case 0x20u:
        v41 = v59;
        v8 = v41;
        goto LABEL_37;
      case 0x24u:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v34 = [v59 resultBundleId];
        if (!v34)
        {
          break;
        }

        v8 = v34;
        v35 = [v59 applicationBundleIdentifier];
        if (!v35)
        {
          goto LABEL_49;
        }

        v10 = v35;
        v36 = [v59 sectionBundleIdentifier];
        if (!v36)
        {
          goto LABEL_48;
        }

        v37 = v36;
        v38 = [v59 identifier];

        if (!v38)
        {
          break;
        }

        v8 = v59;
        v39 = [v8 sectionBundleIdentifier];
        v40 = [v39 isEqualToString:*MEMORY[0x277D65BE8]];

        if (v40)
        {
          goto LABEL_49;
        }

        v41 = v8;
LABEL_37:
        v42 = [v41 completion];
        v43 = v42;
        if (v42)
        {
          v10 = v42;
        }

        else
        {
          v52 = [v8 title];
          v10 = [v52 text];
        }

        v48 = [v8 contactIdentifier];
        if (-[__CFString length](v10, "length") && [v48 length])
        {
          v53 = MEMORY[0x277D65788];
          v54 = MEMORY[0x277CCABB0];
          [v8 rankingScore];
          v51 = [v54 numberWithDouble:?];
          [v53 cacheContact:v10 contactIdentifier:v48 score:v51 searchString:v6];
LABEL_46:
        }

LABEL_48:
LABEL_49:

        break;
      case 0x25u:
      case 0x26u:
        v8 = v59;
        v23 = [v8 completion];
        v24 = v23;
        if (v23)
        {
          v10 = v23;
        }

        else
        {
          v44 = [v8 title];
          v10 = [v44 text];
        }

        if (![(__CFString *)v10 length])
        {
          goto LABEL_48;
        }

        v45 = MEMORY[0x277D65888];
        v46 = [v8 personQueryIdentifier];
        v47 = [v8 personIdentifier];
        v48 = [v45 updatePersonQueryIdentifier:v46 withPersonIdentifier:v47];

        v49 = MEMORY[0x277D65788];
        v50 = MEMORY[0x277CCABB0];
        [v8 rankingScore];
        v51 = [v50 numberWithDouble:?];
        [v49 cachePerson:v10 personQueryIdentifier:v48 score:v51 searchString:v6];
        goto LABEL_46;
      default:
        v30 = [v59 completion];
        if (v30)
        {
LABEL_28:
          v8 = v30;
        }

        else
        {
          v32 = [v59 title];
          v33 = [v32 text];
LABEL_54:
          v8 = v33;
LABEL_55:
        }

        if ([v8 length])
        {
          [MEMORY[0x277D65788] cacheResult:v59 title:v8 searchString:v6];
        }

        goto LABEL_49;
    }
  }
}

+ (void)deleteResult:(id)a3 requiresRefresh:(BOOL)a4
{
  v4 = a4;
  v61 = a3;
  v6 = [v61 type];
  if (v6 > 27)
  {
    if (v6 > 31)
    {
      v7 = v61;
      if (v6 > 36)
      {
        if (v6 != 37 && v6 != 38)
        {
          goto LABEL_46;
        }

        v9 = v61;
        v29 = [(__CFString *)v9 completion];
        v30 = v29;
        if (v29)
        {
          v16 = v29;
        }

        else
        {
          v48 = [(__CFString *)v9 title];
          v16 = [v48 text];
        }

        if (![(__CFString *)v16 length])
        {
LABEL_67:

          goto LABEL_68;
        }

        v49 = MEMORY[0x277D65888];
        v50 = [(__CFString *)v9 personQueryIdentifier];
        v51 = [(__CFString *)v9 personIdentifier];
        v36 = [v49 updatePersonQueryIdentifier:v50 withPersonIdentifier:v51];

        v52 = MEMORY[0x277D65788];
        v53 = MEMORY[0x277CCABB0];
        [(__CFString *)v9 rankingScore];
        v38 = [v53 numberWithDouble:?];
        [v52 deletePerson:v16 personQueryIdentifier:v36 score:v38];
      }

      else
      {
        if (v6 == 32)
        {
          v9 = v61;
          v46 = [(__CFString *)v9 completion];
          v47 = v46;
          if (v46)
          {
            v16 = v46;
          }

          else
          {
            v54 = [(__CFString *)v9 title];
            v16 = [v54 text];
          }

          v36 = [(__CFString *)v9 contactIdentifier];
          if (!-[__CFString length](v16, "length") || ![v36 length])
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v6 != 36)
          {
            goto LABEL_46;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_69;
          }

          v9 = v61;
          v22 = [(__CFString *)v9 contactIdentifier];

          if (!v22)
          {
            goto LABEL_68;
          }

          v23 = [(__CFString *)v9 completion];
          v24 = v23;
          if (v23)
          {
            v16 = v23;
          }

          else
          {
            v58 = [(__CFString *)v9 title];
            v16 = [v58 text];
          }

          v36 = [(__CFString *)v9 contactIdentifier];
        }

        v59 = MEMORY[0x277D65788];
        v60 = MEMORY[0x277CCABB0];
        [(__CFString *)v9 rankingScore];
        v38 = [v60 numberWithDouble:?];
        [v59 deleteContact:v16 contactIdentifier:v36 score:v38];
      }

LABEL_65:

LABEL_66:
      goto LABEL_67;
    }

    v7 = v61;
    if ((v6 - 28) < 2)
    {
      goto LABEL_29;
    }

    if ((v6 - 30) >= 2)
    {
      goto LABEL_46;
    }

    goto LABEL_27;
  }

  if (v6 > 14)
  {
    v7 = v61;
    if ((v6 - 15) >= 2)
    {
      if (v6 != 17)
      {
        if (v6 != 20)
        {
          goto LABEL_46;
        }

        goto LABEL_13;
      }

LABEL_29:
      v9 = v7;
      v16 = [(__CFString *)v9 completion];
      if (!v16)
      {
        v27 = [(__CFString *)v9 title];
        v28 = [v27 text];

        if (v28)
        {
          v16 = v28;
        }

        else
        {
          v16 = &stru_287C50EE8;
        }
      }

      [MEMORY[0x277D65788] deleteResult:v9 title:v16];
      goto LABEL_67;
    }

LABEL_27:
    v9 = v7;
    v25 = [(__CFString *)v9 completion];
    v26 = v25;
    if (v25)
    {
      v16 = v25;
    }

    else
    {
      v39 = [(__CFString *)v9 title];
      v16 = [v39 text];
    }

    if ([(__CFString *)v16 length])
    {
      v40 = MEMORY[0x277D65788];
      v41 = [(__CFString *)v9 type];
      v42 = MEMORY[0x277CCABB0];
      [(__CFString *)v9 rankingScore];
      v43 = [v42 numberWithDouble:?];
      [v40 deleteSuggestion:v16 type:v41 score:v43];
    }

    goto LABEL_67;
  }

  v7 = v61;
  if ((v6 - 2) >= 3)
  {
    if (v6 == 8)
    {
      v8 = MEMORY[0x277D65788];
      v9 = [v61 completion];
      v10 = [v61 type];
      v11 = MEMORY[0x277CCABB0];
      [v61 rankingScore];
      v12 = [v11 numberWithDouble:?];
      [v8 deleteSuggestion:v9 type:v10 score:v12];

LABEL_68:
      goto LABEL_69;
    }

LABEL_46:
    v9 = [v7 completion];
    if (!v9)
    {
      v44 = [v61 title];
      v45 = [v44 text];

      if (v45)
      {
        v9 = v45;
      }

      else
      {
        v9 = &stru_287C50EE8;
      }
    }

    [MEMORY[0x277D65788] deleteResult:v61 title:v9];
    goto LABEL_68;
  }

LABEL_13:
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v14 = [v61 resultBundleId];
  v9 = v14;
  if ((isKindOfClass & 1) == 0)
  {
    if (!v14)
    {
      goto LABEL_69;
    }

    v31 = [v61 sectionBundleIdentifier];
    if (!v31)
    {
      goto LABEL_68;
    }

    v32 = v31;
    v33 = [v61 sectionBundleIdentifier];
    v34 = [v33 isEqualToString:*MEMORY[0x277D65C60]];

    if (!v34)
    {
      goto LABEL_69;
    }

    v35 = [v61 resultBundleId];
    v9 = [v35 componentsSeparatedByString:@":"];

    if ([(__CFString *)v9 count]!= 2)
    {
      goto LABEL_68;
    }

    v16 = [(__CFString *)v9 firstObject];
    v36 = [(__CFString *)v9 lastObject];
    v37 = MEMORY[0x277D65788];
    v38 = [v61 identifier];
    [v37 deleteLocalResult:v61 identifier:v38 bundleIdentifier:v36 protectionClass:v16];
    goto LABEL_65;
  }

  if (!v14)
  {
    goto LABEL_69;
  }

  v15 = [v61 applicationBundleIdentifier];
  if (!v15)
  {
    goto LABEL_68;
  }

  v16 = v15;
  v17 = [v61 sectionBundleIdentifier];
  if (!v17)
  {
    goto LABEL_67;
  }

  v18 = v17;
  v19 = [v61 identifier];

  if (v19)
  {
    v20 = v61;
    if (objc_opt_respondsToSelector())
    {
      v21 = [v20 protectionClass];
    }

    else
    {
      v21 = 0;
    }

    v55 = MEMORY[0x277D65788];
    v56 = [v20 identifier];
    v57 = [v20 resultBundleId];
    [v55 deleteLocalResult:v20 identifier:v56 bundleIdentifier:v57 protectionClass:v21];

    goto LABEL_71;
  }

LABEL_69:
  if (v4)
  {
    [a1 sendRefreshNotification];
  }

LABEL_71:
}

+ (id)updateResult:(id)a3 topic:(id)a4 queryContext:(id)a5
{
  v78 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = SPUISRecentsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 resultBundleId];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_26B882000, v10, OS_LOG_TYPE_DEFAULT, "updateResult withResultBUndleId: %@", &buf, 0xCu);
  }

  v12 = SPUISRecentsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(SPUISRecentResultsManager *)v8 updateResult:v12 topic:v13 queryContext:v14, v15, v16, v17, v18];
  }

  v19 = [v7 sectionBundleIdentifier];
  v20 = [v19 isEqualToString:*MEMORY[0x277D65C60]];

  if (v20)
  {
    v21 = SPUISGeneralLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_26B882000, v21, OS_LOG_TYPE_DEFAULT, "recent result", &buf, 2u);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__1;
    v76 = __Block_byref_object_dispose__1;
    v77 = 0;
    v22 = [v7 resultBundleId];
    v23 = [v22 componentsSeparatedByString:@":"];
    v24 = [v23 mutableCopy];

    if ([v24 count] >= 2)
    {
      v25 = [v24 firstObject];
      [v24 removeObjectAtIndex:0];
      v26 = [v24 componentsJoinedByString:&stru_287C50EE8];
      if ((SSScreenTimeStatusForBundleIDWithCompletionHandler() & 1) == 0 && (SSHiddenStatusForBundleIDWithCompletionHandler() & 1) == 0)
      {
        v27 = [v7 identifier];
        v58 = +[SPUISResultBuilder fetchAttributes];
        v61 = v9;
        v28 = dispatch_group_create();
        dispatch_group_enter(v28);
        v60 = [MEMORY[0x277CC34A8] defaultSearchableIndex];
        v72 = v27;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __61__SPUISRecentResultsManager_updateResult_topic_queryContext___block_invoke;
        v62[3] = &unk_279D0C138;
        v57 = v27;
        v63 = v57;
        v64 = v26;
        v65 = v25;
        v66 = v58;
        v67 = v7;
        p_buf = &buf;
        v68 = v61;
        v30 = v28;
        v69 = v30;
        v59 = v66;
        [v60 slowFetchAttributes:v66 protectionClass:v65 bundleID:v64 identifiers:v29 completionHandler:v62];

        v9 = v61;
        v31 = v30;

        v32 = dispatch_time(0, 750000000);
        v33 = dispatch_group_wait(v30, v32);
        v34 = SPUISRecentsLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v35 = [MEMORY[0x277CCABB0] numberWithLong:{v33, v57}];
          [SPUISRecentResultsManager updateResult:v35 topic:v71 queryContext:v34];
        }
      }
    }

    v36 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
    goto LABEL_32;
  }

  v37 = [v7 sectionBundleIdentifier];
  v38 = [v37 isEqualToString:*MEMORY[0x277D65C58]];

  if (v38)
  {
    v39 = SPUISRecentsLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_26B882000, v39, OS_LOG_TYPE_DEFAULT, "recent dictionary result", &buf, 2u);
    }

    v40 = [SPUISResultBuilder resultBuilderWithResult:v7];
    v36 = [v40 buildResult];
    v41 = [v36 compactCard];
    v42 = [v41 cardSections];
    v43 = [v42 firstObject];
    [v43 setShouldUseCompactDisplay:1];

    [v36 setShouldUseCompactDisplay:1];
    [v36 setUsesCompactDisplay:1];
    [v36 setInlineCard:0];

    goto LABEL_32;
  }

  v44 = [v7 sectionBundleIdentifier];
  v45 = [v44 isEqualToString:*MEMORY[0x277D65C68]];

  if (v45)
  {
    v46 = SPUISRecentsLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_26B882000, v46, OS_LOG_TYPE_DEFAULT, "recent suggestion", &buf, 2u);
    }

    v47 = [SPUISSuggestionResultBuilder buildResultWithResult:v7 queryContext:v9];
    goto LABEL_31;
  }

  v48 = [v7 identifier];
  if (v48)
  {

LABEL_27:
    v51 = SPUISRecentsLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [SPUISRecentResultsManager updateResult:v51 topic:? queryContext:?];
    }

    [v7 setUsesCompactDisplay:1];
LABEL_30:
    v47 = v7;
LABEL_31:
    v36 = v47;
    goto LABEL_32;
  }

  v49 = [v7 sectionBundleIdentifier];
  v50 = v49 == 0;

  if (!v50)
  {
    goto LABEL_27;
  }

  v54 = SPUISRecentsLog();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_26B882000, v54, OS_LOG_TYPE_DEFAULT, "fallback result from topic", &buf, 2u);
  }

  v55 = [MEMORY[0x277D65788] resultFromTopic:v8];
  if (!v55)
  {
    goto LABEL_30;
  }

  v56 = SPUISRecentsLog();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_26B882000, v56, OS_LOG_TYPE_DEFAULT, "successfully created fallback search result", &buf, 2u);
  }

  v36 = [SPUISSuggestionResultBuilder buildResultWithResult:v55 queryContext:v9];

LABEL_32:
  v52 = *MEMORY[0x277D85DE8];

  return v36;
}

void __61__SPUISRecentResultsManager_updateResult_topic_queryContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 firstObject];
  v5 = SPUISRecentsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __61__SPUISRecentResultsManager_updateResult_topic_queryContext___block_invoke_cold_1(v5);
  }

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (SSFetchAttributeValueIsValid(), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = objc_alloc(MEMORY[0x277D65850]);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = [v3 firstObject];
    v14 = [v8 initWithIdentifier:v9 bundleIdentifier:v10 protectionClass:v11 attributeKeys:v12 attributeValues:v13 type:objc_msgSend(*(a1 + 64) completion:{"type"), 0}];

    v15 = SPUISRecentsLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __61__SPUISRecentResultsManager_updateResult_topic_queryContext___block_invoke_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    [v14 setShouldUseCompactDisplay:1];
    if ([v14 type] == 36 || objc_msgSend(v14, "type") == 32)
    {
      v22 = [SPUISSuggestionResultBuilder buildResultWithResult:v14 queryContext:*(a1 + 72)];
      v23 = *(*(a1 + 88) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    else
    {
      v24 = [SPUISResultBuilder resultBuilderWithResult:v14];
      v32 = [v24 buildResult];
      v33 = *(*(a1 + 88) + 8);
      v34 = *(v33 + 40);
      *(v33 + 40) = v32;

      v35 = [*(*(*(a1 + 88) + 8) + 40) compactCard];
      v36 = [v35 cardSections];
      v37 = [v36 firstObject];
      [v37 setShouldUseCompactDisplay:1];

      [*(*(*(a1 + 88) + 8) + 40) setShouldUseCompactDisplay:1];
      [*(*(*(a1 + 88) + 8) + 40) setUsesCompactDisplay:1];
      [*(*(*(a1 + 88) + 8) + 40) setInlineCard:0];
    }
  }

  else
  {
    v25 = SPUISRecentsLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __61__SPUISRecentResultsManager_updateResult_topic_queryContext___block_invoke_cold_3(a1, v25, v26, v27, v28, v29, v30, v31);
    }

    [SPUISRecentResultsManager deleteResult:*(a1 + 64) requiresRefresh:0];
  }

  dispatch_group_leave(*(a1 + 80));
}

+ (void)sendRefreshNotification
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"com.apple.spotlight.refreshZKW" object:0];
}

+ (void)updateResult:(uint64_t)a3 topic:(uint64_t)a4 queryContext:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_26B882000, a2, a3, "updateResult withTopic: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)updateResult:(void *)a1 topic:(uint8_t *)buf queryContext:(os_log_t)log .cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_26B882000, log, OS_LOG_TYPE_DEBUG, "waited for group didFail: %@", buf, 0xCu);
}

void __61__SPUISRecentResultsManager_updateResult_topic_queryContext___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_26B882000, a2, a3, "got csResult: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__SPUISRecentResultsManager_updateResult_topic_queryContext___block_invoke_cold_3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 56));
  OUTLINED_FUNCTION_0_1(&dword_26B882000, a2, a3, "fetchAttributes was not an array: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end