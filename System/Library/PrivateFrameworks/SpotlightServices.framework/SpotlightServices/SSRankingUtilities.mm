@interface SSRankingUtilities
+ (id)jsonStringFromDictionary:(id)dictionary isSearchToolClient:(BOOL)client;
+ (id)jsonStringFromDictionary:(id)dictionary prettyPrinted:(BOOL)printed;
+ (id)loadOptionalKeywordsDictionaryFromAssetPlistType:(int64_t)type;
+ (void)logItems:(id)items message:(id)message queryId:(unint64_t)id query:(id)query isSearchToolClient:(BOOL)client;
+ (void)logSections:(id)sections message:(id)message queryId:(unint64_t)id query:(id)query isSearchToolClient:(BOOL)client;
+ (void)logStats:(id)stats message:(id)message queryId:(unint64_t)id query:(id)query isSearchToolClient:(BOOL)client;
@end

@implementation SSRankingUtilities

+ (void)logItems:(id)items message:(id)message queryId:(unint64_t)id query:(id)query isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  v52 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  messageCopy = message;
  queryCopy = query;
  if ([itemsCopy count])
  {
    selfCopy = self;
    v34 = clientCopy;
    idCopy = id;
    v36 = messageCopy;
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v16 = itemsCopy;
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          sectionBundleIdentifier = [*(*(&v37 + 1) + 8 * i) sectionBundleIdentifier];
          v22 = sectionBundleIdentifier;
          if (sectionBundleIdentifier)
          {
            v23 = sectionBundleIdentifier;
          }

          else
          {
            v23 = @"nil";
          }

          v24 = v23;

          v25 = [v15 objectForKey:v24];

          if (!v25)
          {
            [v15 setObject:&unk_1F55B4458 forKeyedSubscript:v24];
          }

          v26 = MEMORY[0x1E696AD98];
          v27 = [v15 objectForKeyedSubscript:v24];
          v28 = [v26 numberWithInteger:{objc_msgSend(v27, "integerValue") + 1}];
          [v15 setObject:v28 forKeyedSubscript:v24];
        }

        v18 = [v16 countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v18);
    }

    v29 = SSGeneralLog();
    messageCopy = v36;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = SSRedactStringClient(queryCopy, 0, v34);
      v31 = [selfCopy jsonStringFromDictionary:v15 isSearchToolClient:v34];
      *buf = 134219010;
      v42 = idCopy;
      v43 = 2112;
      v44 = v30;
      v45 = 2112;
      v46 = @"SpotlightRanking";
      v47 = 2112;
      v48 = v36;
      v49 = 2112;
      v50 = v31;
      _os_log_impl(&dword_1D9F69000, v29, OS_LOG_TYPE_DEFAULT, "[qid=%llu][%@][%@] %@ items=%@", buf, 0x34u);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

+ (void)logSections:(id)sections message:(id)message queryId:(unint64_t)id query:(id)query isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  v48 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  messageCopy = message;
  queryCopy = query;
  if ([sectionsCopy count])
  {
    v30 = clientCopy;
    idCopy = id;
    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(sectionsCopy, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = sectionsCopy;
    v15 = sectionsCopy;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "resultsCount")}];
          bundleIdentifier = [v20 bundleIdentifier];
          if (bundleIdentifier)
          {
            [v14 setObject:v21 forKeyedSubscript:bundleIdentifier];
          }

          else
          {
            identifier = [v20 identifier];
            v24 = identifier;
            if (identifier)
            {
              v25 = identifier;
            }

            else
            {
              v25 = @"nil";
            }

            [v14 setObject:v21 forKeyedSubscript:v25];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v47 count:16];
      }

      while (v17);
    }

    v26 = SSGeneralLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = SSRedactStringClient(queryCopy, 0, v30);
      v28 = [SSRankingUtilities jsonStringFromDictionary:v14 isSearchToolClient:v30];
      *buf = 134219010;
      v38 = idCopy;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = @"SpotlightRanking";
      v43 = 2112;
      v44 = messageCopy;
      v45 = 2112;
      v46 = v28;
      _os_log_impl(&dword_1D9F69000, v26, OS_LOG_TYPE_DEFAULT, "[qid=%llu][%@][%@] %@ sections=%@", buf, 0x34u);
    }

    sectionsCopy = v32;
  }

  v29 = *MEMORY[0x1E69E9840];
}

+ (void)logStats:(id)stats message:(id)message queryId:(unint64_t)id query:(id)query isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  v31 = *MEMORY[0x1E69E9840];
  statsCopy = stats;
  messageCopy = message;
  queryCopy = query;
  v15 = [statsCopy count];
  v16 = SSGeneralLog();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v18 = SSRedactStringClient(queryCopy, 0, clientCopy);
      v19 = [self jsonStringFromDictionary:statsCopy prettyPrinted:0];
      v21 = 134219010;
      idCopy2 = id;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = @"SpotlightRanking";
      v27 = 2112;
      v28 = messageCopy;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_DEFAULT, "[qid=%llu][%@][%@] %@ stats=%@", &v21, 0x34u);

LABEL_6:
    }
  }

  else if (v17)
  {
    v18 = SSRedactStringClient(queryCopy, 0, clientCopy);
    v21 = 134218754;
    idCopy2 = id;
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = @"SpotlightRanking";
    v27 = 2112;
    v28 = messageCopy;
    _os_log_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_DEFAULT, "[qid=%llu][%@][%@] %@ stats=skipped", &v21, 0x2Au);
    goto LABEL_6;
  }

  v20 = *MEMORY[0x1E69E9840];
}

+ (id)jsonStringFromDictionary:(id)dictionary prettyPrinted:(BOOL)printed
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:printed | 2 error:&v7];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
  }

  else
  {
    v5 = &stru_1F556FE60;
  }

  return v5;
}

+ (id)jsonStringFromDictionary:(id)dictionary isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  dictionaryCopy = dictionary;
  v7 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"ResultBundle"];
  v9 = [v8 isEqualToString:@"com.apple.spotlight.websuggestionlist.usertypedstring"];

  if (v9)
  {
    v10 = [v7 mutableCopy];
    v11 = [v7 objectForKeyedSubscript:@"identifier"];
    v12 = SSRedactUserTypedString(v11, clientCopy);
  }

  else
  {
    v14 = [v7 objectForKeyedSubscript:@"ResultBundle"];
    if ([v14 isEqualToString:@"com.apple.spotlight.related_search"])
    {
    }

    else
    {
      v15 = [v7 objectForKeyedSubscript:@"ResultBundle"];
      v16 = [v15 isEqualToString:@"com.apple.spotlight.related_search_as_typed.web"];

      v13 = v7;
      if (!v16)
      {
        goto LABEL_10;
      }
    }

    v10 = [v7 mutableCopy];
    v11 = [v7 objectForKeyedSubscript:@"identifier"];
    v12 = SSRedactRelatedSearchString(v11, clientCopy);
  }

  v17 = v12;
  [v10 setObject:v12 forKey:@"identifier"];

  v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v10];

LABEL_10:
  v18 = [self jsonStringFromDictionary:v13 prettyPrinted:1];

  return v18;
}

+ (id)loadOptionalKeywordsDictionaryFromAssetPlistType:(int64_t)type
{
  if (loadOptionalSearchTermsFromSRA_onceToken != -1)
  {
    +[SSRankingUtilities loadOptionalKeywordsDictionaryFromAssetPlistType:];
    if (type)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = &sSetOfOneOnOneMeetingKeywords;
    goto LABEL_8;
  }

  if (!type)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (type != 1)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v4 = &sSetOfOptionalCalendarKeywords;
LABEL_8:
  v5 = *v4;
LABEL_9:

  return v5;
}

@end