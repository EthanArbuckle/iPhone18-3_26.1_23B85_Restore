@interface SPUISRecentResultsManager
+ (BOOL)isValidSearchString:(id)string;
+ (id)updateResult:(id)result topic:(id)topic queryContext:(id)context;
+ (void)cacheResult:(id)result searchString:(id)string;
+ (void)cacheSearchString:(id)string;
+ (void)deleteResult:(id)result requiresRefresh:(BOOL)refresh;
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

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  v2 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v2 setMaxConcurrentOperationCount:1];
  [v2 setUnderlyingQueue:preheat_gCacheManagerQueue];
  v3 = [defaultCenter addObserverForName:@"com.apple.LaunchServices.applicationRegistered" object:0 suspensionBehavior:3 queue:v2 usingBlock:&__block_literal_global_447];
  v4 = [defaultCenter addObserverForName:@"com.apple.LaunchServices.applicationUnregistered" object:0 suspensionBehavior:3 queue:v2 usingBlock:&__block_literal_global_447];
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

+ (BOOL)isValidSearchString:(id)string
{
  v3 = MEMORY[0x277CCA900];
  stringCopy = string;
  whitespaceAndNewlineCharacterSet = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [stringCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  LOBYTE(stringCopy) = [v6 length] != 0;
  return stringCopy;
}

+ (void)cacheSearchString:(id)string
{
  stringCopy = string;
  if ([self isValidSearchString:?])
  {
    [MEMORY[0x277D65788] cacheSuggestion:stringCopy type:30 score:&unk_287C59F48 searchString:stringCopy];
  }
}

+ (void)cacheResult:(id)result searchString:(id)string
{
  resultCopy = result;
  stringCopy = string;
  if ([self isValidSearchString:stringCopy])
  {
    switch([resultCopy type])
    {
      case 1u:
        completedQuery = [resultCopy completedQuery];
        if (completedQuery)
        {
          goto LABEL_28;
        }

        completion = [resultCopy completion];
        title6 = completion;
        if (completion)
        {
          text4 = completion;
          goto LABEL_54;
        }

        title = [resultCopy title];
        text = [title text];

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

        resultBundleId = [resultCopy resultBundleId];
        if (!resultBundleId)
        {
          break;
        }

        text = resultBundleId;
        applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
        if (!applicationBundleIdentifier)
        {
          goto LABEL_49;
        }

        text2 = applicationBundleIdentifier;
        sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
        if (!sectionBundleIdentifier)
        {
          goto LABEL_48;
        }

        v12 = sectionBundleIdentifier;
        identifier = [resultCopy identifier];

        if (!identifier)
        {
          break;
        }

        text = *MEMORY[0x277CCA1A0];
        text2 = resultCopy;
        sectionBundleIdentifier2 = [(__CFString *)text2 sectionBundleIdentifier];
        v15 = [sectionBundleIdentifier2 isEqualToString:*MEMORY[0x277D65BD0]];

        if ((v15 & 1) == 0)
        {
          v16 = [(__CFString *)text2 valueForAttribute:*MEMORY[0x277CC30B8] withType:objc_opt_class()];
          bOOLValue = [v16 BOOLValue];

          if ((bOOLValue & 1) == 0)
          {
            if (objc_opt_respondsToSelector())
            {
              protectionClass = [(__CFString *)text2 protectionClass];
            }

            else
            {
              protectionClass = 0;
            }

            v56 = MEMORY[0x277D65788];
            identifier2 = [(__CFString *)text2 identifier];
            resultBundleId2 = [(__CFString *)text2 resultBundleId];
            [v56 cacheLocalResult:text2 identifier:identifier2 bundleIdentifier:resultBundleId2 protectionClass:protectionClass searchString:stringCopy];

            text = protectionClass;
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
        text = resultCopy;
        completion2 = [text completion];
        v20 = completion2;
        if (completion2)
        {
          text2 = completion2;
        }

        else
        {
          title2 = [text title];
          text2 = [title2 text];
        }

        if ([(__CFString *)text2 length])
        {
          v26 = MEMORY[0x277D65788];
          type = [text type];
          v28 = MEMORY[0x277CCABB0];
          [text rankingScore];
          v29 = [v28 numberWithDouble:?];
          [v26 cacheSuggestion:text2 type:type score:v29 searchString:stringCopy];
        }

        goto LABEL_48;
      case 0x11u:
      case 0x1Cu:
      case 0x1Du:
        text = resultCopy;
        text2 = [text completion];
        if (!text2)
        {
          title3 = [text title];
          text3 = [title3 text];

          if (text3)
          {
            text2 = text3;
          }

          else
          {
            text2 = &stru_287C50EE8;
          }
        }

        [MEMORY[0x277D65788] cacheResult:text title:text2 searchString:stringCopy];
        goto LABEL_48;
      case 0x20u:
        v41 = resultCopy;
        text = v41;
        goto LABEL_37;
      case 0x24u:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        resultBundleId3 = [resultCopy resultBundleId];
        if (!resultBundleId3)
        {
          break;
        }

        text = resultBundleId3;
        applicationBundleIdentifier2 = [resultCopy applicationBundleIdentifier];
        if (!applicationBundleIdentifier2)
        {
          goto LABEL_49;
        }

        text2 = applicationBundleIdentifier2;
        sectionBundleIdentifier3 = [resultCopy sectionBundleIdentifier];
        if (!sectionBundleIdentifier3)
        {
          goto LABEL_48;
        }

        v37 = sectionBundleIdentifier3;
        identifier3 = [resultCopy identifier];

        if (!identifier3)
        {
          break;
        }

        text = resultCopy;
        sectionBundleIdentifier4 = [text sectionBundleIdentifier];
        v40 = [sectionBundleIdentifier4 isEqualToString:*MEMORY[0x277D65BE8]];

        if (v40)
        {
          goto LABEL_49;
        }

        v41 = text;
LABEL_37:
        completion3 = [v41 completion];
        v43 = completion3;
        if (completion3)
        {
          text2 = completion3;
        }

        else
        {
          title4 = [text title];
          text2 = [title4 text];
        }

        contactIdentifier = [text contactIdentifier];
        if (-[__CFString length](text2, "length") && [contactIdentifier length])
        {
          v53 = MEMORY[0x277D65788];
          v54 = MEMORY[0x277CCABB0];
          [text rankingScore];
          v51 = [v54 numberWithDouble:?];
          [v53 cacheContact:text2 contactIdentifier:contactIdentifier score:v51 searchString:stringCopy];
LABEL_46:
        }

LABEL_48:
LABEL_49:

        break;
      case 0x25u:
      case 0x26u:
        text = resultCopy;
        completion4 = [text completion];
        v24 = completion4;
        if (completion4)
        {
          text2 = completion4;
        }

        else
        {
          title5 = [text title];
          text2 = [title5 text];
        }

        if (![(__CFString *)text2 length])
        {
          goto LABEL_48;
        }

        v45 = MEMORY[0x277D65888];
        personQueryIdentifier = [text personQueryIdentifier];
        personIdentifier = [text personIdentifier];
        contactIdentifier = [v45 updatePersonQueryIdentifier:personQueryIdentifier withPersonIdentifier:personIdentifier];

        v49 = MEMORY[0x277D65788];
        v50 = MEMORY[0x277CCABB0];
        [text rankingScore];
        v51 = [v50 numberWithDouble:?];
        [v49 cachePerson:text2 personQueryIdentifier:contactIdentifier score:v51 searchString:stringCopy];
        goto LABEL_46;
      default:
        completedQuery = [resultCopy completion];
        if (completedQuery)
        {
LABEL_28:
          text = completedQuery;
        }

        else
        {
          title6 = [resultCopy title];
          text4 = [title6 text];
LABEL_54:
          text = text4;
LABEL_55:
        }

        if ([text length])
        {
          [MEMORY[0x277D65788] cacheResult:resultCopy title:text searchString:stringCopy];
        }

        goto LABEL_49;
    }
  }
}

+ (void)deleteResult:(id)result requiresRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  resultCopy = result;
  type = [resultCopy type];
  if (type > 27)
  {
    if (type > 31)
    {
      v7 = resultCopy;
      if (type > 36)
      {
        if (type != 37 && type != 38)
        {
          goto LABEL_46;
        }

        completion5 = resultCopy;
        completion = [(__CFString *)completion5 completion];
        v30 = completion;
        if (completion)
        {
          text = completion;
        }

        else
        {
          title = [(__CFString *)completion5 title];
          text = [title text];
        }

        if (![(__CFString *)text length])
        {
LABEL_67:

          goto LABEL_68;
        }

        v49 = MEMORY[0x277D65888];
        personQueryIdentifier = [(__CFString *)completion5 personQueryIdentifier];
        personIdentifier = [(__CFString *)completion5 personIdentifier];
        contactIdentifier = [v49 updatePersonQueryIdentifier:personQueryIdentifier withPersonIdentifier:personIdentifier];

        v52 = MEMORY[0x277D65788];
        v53 = MEMORY[0x277CCABB0];
        [(__CFString *)completion5 rankingScore];
        identifier = [v53 numberWithDouble:?];
        [v52 deletePerson:text personQueryIdentifier:contactIdentifier score:identifier];
      }

      else
      {
        if (type == 32)
        {
          completion5 = resultCopy;
          completion2 = [(__CFString *)completion5 completion];
          v47 = completion2;
          if (completion2)
          {
            text = completion2;
          }

          else
          {
            title2 = [(__CFString *)completion5 title];
            text = [title2 text];
          }

          contactIdentifier = [(__CFString *)completion5 contactIdentifier];
          if (!-[__CFString length](text, "length") || ![contactIdentifier length])
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (type != 36)
          {
            goto LABEL_46;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_69;
          }

          completion5 = resultCopy;
          contactIdentifier2 = [(__CFString *)completion5 contactIdentifier];

          if (!contactIdentifier2)
          {
            goto LABEL_68;
          }

          completion3 = [(__CFString *)completion5 completion];
          v24 = completion3;
          if (completion3)
          {
            text = completion3;
          }

          else
          {
            title3 = [(__CFString *)completion5 title];
            text = [title3 text];
          }

          contactIdentifier = [(__CFString *)completion5 contactIdentifier];
        }

        v59 = MEMORY[0x277D65788];
        v60 = MEMORY[0x277CCABB0];
        [(__CFString *)completion5 rankingScore];
        identifier = [v60 numberWithDouble:?];
        [v59 deleteContact:text contactIdentifier:contactIdentifier score:identifier];
      }

LABEL_65:

LABEL_66:
      goto LABEL_67;
    }

    v7 = resultCopy;
    if ((type - 28) < 2)
    {
      goto LABEL_29;
    }

    if ((type - 30) >= 2)
    {
      goto LABEL_46;
    }

    goto LABEL_27;
  }

  if (type > 14)
  {
    v7 = resultCopy;
    if ((type - 15) >= 2)
    {
      if (type != 17)
      {
        if (type != 20)
        {
          goto LABEL_46;
        }

        goto LABEL_13;
      }

LABEL_29:
      completion5 = v7;
      text = [(__CFString *)completion5 completion];
      if (!text)
      {
        title4 = [(__CFString *)completion5 title];
        text2 = [title4 text];

        if (text2)
        {
          text = text2;
        }

        else
        {
          text = &stru_287C50EE8;
        }
      }

      [MEMORY[0x277D65788] deleteResult:completion5 title:text];
      goto LABEL_67;
    }

LABEL_27:
    completion5 = v7;
    completion4 = [(__CFString *)completion5 completion];
    v26 = completion4;
    if (completion4)
    {
      text = completion4;
    }

    else
    {
      title5 = [(__CFString *)completion5 title];
      text = [title5 text];
    }

    if ([(__CFString *)text length])
    {
      v40 = MEMORY[0x277D65788];
      type2 = [(__CFString *)completion5 type];
      v42 = MEMORY[0x277CCABB0];
      [(__CFString *)completion5 rankingScore];
      v43 = [v42 numberWithDouble:?];
      [v40 deleteSuggestion:text type:type2 score:v43];
    }

    goto LABEL_67;
  }

  v7 = resultCopy;
  if ((type - 2) >= 3)
  {
    if (type == 8)
    {
      v8 = MEMORY[0x277D65788];
      completion5 = [resultCopy completion];
      type3 = [resultCopy type];
      v11 = MEMORY[0x277CCABB0];
      [resultCopy rankingScore];
      v12 = [v11 numberWithDouble:?];
      [v8 deleteSuggestion:completion5 type:type3 score:v12];

LABEL_68:
      goto LABEL_69;
    }

LABEL_46:
    completion5 = [v7 completion];
    if (!completion5)
    {
      title6 = [resultCopy title];
      text3 = [title6 text];

      if (text3)
      {
        completion5 = text3;
      }

      else
      {
        completion5 = &stru_287C50EE8;
      }
    }

    [MEMORY[0x277D65788] deleteResult:resultCopy title:completion5];
    goto LABEL_68;
  }

LABEL_13:
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  resultBundleId = [resultCopy resultBundleId];
  completion5 = resultBundleId;
  if ((isKindOfClass & 1) == 0)
  {
    if (!resultBundleId)
    {
      goto LABEL_69;
    }

    sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
    if (!sectionBundleIdentifier)
    {
      goto LABEL_68;
    }

    v32 = sectionBundleIdentifier;
    sectionBundleIdentifier2 = [resultCopy sectionBundleIdentifier];
    v34 = [sectionBundleIdentifier2 isEqualToString:*MEMORY[0x277D65C60]];

    if (!v34)
    {
      goto LABEL_69;
    }

    resultBundleId2 = [resultCopy resultBundleId];
    completion5 = [resultBundleId2 componentsSeparatedByString:@":"];

    if ([(__CFString *)completion5 count]!= 2)
    {
      goto LABEL_68;
    }

    text = [(__CFString *)completion5 firstObject];
    contactIdentifier = [(__CFString *)completion5 lastObject];
    v37 = MEMORY[0x277D65788];
    identifier = [resultCopy identifier];
    [v37 deleteLocalResult:resultCopy identifier:identifier bundleIdentifier:contactIdentifier protectionClass:text];
    goto LABEL_65;
  }

  if (!resultBundleId)
  {
    goto LABEL_69;
  }

  applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
  if (!applicationBundleIdentifier)
  {
    goto LABEL_68;
  }

  text = applicationBundleIdentifier;
  sectionBundleIdentifier3 = [resultCopy sectionBundleIdentifier];
  if (!sectionBundleIdentifier3)
  {
    goto LABEL_67;
  }

  v18 = sectionBundleIdentifier3;
  identifier2 = [resultCopy identifier];

  if (identifier2)
  {
    v20 = resultCopy;
    if (objc_opt_respondsToSelector())
    {
      protectionClass = [v20 protectionClass];
    }

    else
    {
      protectionClass = 0;
    }

    v55 = MEMORY[0x277D65788];
    identifier3 = [v20 identifier];
    resultBundleId3 = [v20 resultBundleId];
    [v55 deleteLocalResult:v20 identifier:identifier3 bundleIdentifier:resultBundleId3 protectionClass:protectionClass];

    goto LABEL_71;
  }

LABEL_69:
  if (refreshCopy)
  {
    [self sendRefreshNotification];
  }

LABEL_71:
}

+ (id)updateResult:(id)result topic:(id)topic queryContext:(id)context
{
  v78 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  topicCopy = topic;
  contextCopy = context;
  v10 = SPUISRecentsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    resultBundleId = [resultCopy resultBundleId];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = resultBundleId;
    _os_log_impl(&dword_26B882000, v10, OS_LOG_TYPE_DEFAULT, "updateResult withResultBUndleId: %@", &buf, 0xCu);
  }

  v12 = SPUISRecentsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(SPUISRecentResultsManager *)topicCopy updateResult:v12 topic:v13 queryContext:v14, v15, v16, v17, v18];
  }

  sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
  v20 = [sectionBundleIdentifier isEqualToString:*MEMORY[0x277D65C60]];

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
    resultBundleId2 = [resultCopy resultBundleId];
    v23 = [resultBundleId2 componentsSeparatedByString:@":"];
    v24 = [v23 mutableCopy];

    if ([v24 count] >= 2)
    {
      firstObject = [v24 firstObject];
      [v24 removeObjectAtIndex:0];
      v26 = [v24 componentsJoinedByString:&stru_287C50EE8];
      if ((SSScreenTimeStatusForBundleIDWithCompletionHandler() & 1) == 0 && (SSHiddenStatusForBundleIDWithCompletionHandler() & 1) == 0)
      {
        identifier = [resultCopy identifier];
        v58 = +[SPUISResultBuilder fetchAttributes];
        v61 = contextCopy;
        v28 = dispatch_group_create();
        dispatch_group_enter(v28);
        defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
        v72 = identifier;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __61__SPUISRecentResultsManager_updateResult_topic_queryContext___block_invoke;
        v62[3] = &unk_279D0C138;
        v57 = identifier;
        v63 = v57;
        v64 = v26;
        v65 = firstObject;
        v66 = v58;
        v67 = resultCopy;
        p_buf = &buf;
        v68 = v61;
        v30 = v28;
        v69 = v30;
        v59 = v66;
        [defaultSearchableIndex slowFetchAttributes:v66 protectionClass:v65 bundleID:v64 identifiers:v29 completionHandler:v62];

        contextCopy = v61;
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

    buildResult = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
    goto LABEL_32;
  }

  sectionBundleIdentifier2 = [resultCopy sectionBundleIdentifier];
  v38 = [sectionBundleIdentifier2 isEqualToString:*MEMORY[0x277D65C58]];

  if (v38)
  {
    v39 = SPUISRecentsLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_26B882000, v39, OS_LOG_TYPE_DEFAULT, "recent dictionary result", &buf, 2u);
    }

    v40 = [SPUISResultBuilder resultBuilderWithResult:resultCopy];
    buildResult = [v40 buildResult];
    compactCard = [buildResult compactCard];
    cardSections = [compactCard cardSections];
    firstObject2 = [cardSections firstObject];
    [firstObject2 setShouldUseCompactDisplay:1];

    [buildResult setShouldUseCompactDisplay:1];
    [buildResult setUsesCompactDisplay:1];
    [buildResult setInlineCard:0];

    goto LABEL_32;
  }

  sectionBundleIdentifier3 = [resultCopy sectionBundleIdentifier];
  v45 = [sectionBundleIdentifier3 isEqualToString:*MEMORY[0x277D65C68]];

  if (v45)
  {
    v46 = SPUISRecentsLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_26B882000, v46, OS_LOG_TYPE_DEFAULT, "recent suggestion", &buf, 2u);
    }

    v47 = [SPUISSuggestionResultBuilder buildResultWithResult:resultCopy queryContext:contextCopy];
    goto LABEL_31;
  }

  identifier2 = [resultCopy identifier];
  if (identifier2)
  {

LABEL_27:
    v51 = SPUISRecentsLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [SPUISRecentResultsManager updateResult:v51 topic:? queryContext:?];
    }

    [resultCopy setUsesCompactDisplay:1];
LABEL_30:
    v47 = resultCopy;
LABEL_31:
    buildResult = v47;
    goto LABEL_32;
  }

  sectionBundleIdentifier4 = [resultCopy sectionBundleIdentifier];
  v50 = sectionBundleIdentifier4 == 0;

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

  v55 = [MEMORY[0x277D65788] resultFromTopic:topicCopy];
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

  buildResult = [SPUISSuggestionResultBuilder buildResultWithResult:v55 queryContext:contextCopy];

LABEL_32:
  v52 = *MEMORY[0x277D85DE8];

  return buildResult;
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.spotlight.refreshZKW" object:0];
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