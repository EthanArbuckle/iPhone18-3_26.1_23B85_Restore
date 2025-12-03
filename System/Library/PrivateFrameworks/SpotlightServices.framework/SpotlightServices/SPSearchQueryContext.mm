@interface SPSearchQueryContext
+ (SPSearchQueryContext)queryContextWithSearchString:(id)string;
+ (id)getAppEntityParams:(id)params;
+ (id)llmQUIntentString:(unint64_t)string;
+ (id)normalizeSearchString:(id)string queryContext:(id)context;
+ (id)queryKindString:(unint64_t)string;
+ (id)removeAppEntitySpecificStopwords:(id)stopwords withEntityTypeIdentifier:(id)identifier bundleID:(id)d;
- (BOOL)wantsMoreResults;
- (NSString)displayedText;
- (NSString)getTrimmedSearchString;
- (SPSearchQueryContext)initWithSearchString:(id)string;
- (SPSearchQueryContext)initWithSearchString:(id)string currentTime:(double)time;
- (id)copyWithZone:(_NSZone *)zone;
- (id)evaluator;
- (id)evaluatorForPersonMatching;
- (id)evaluatorWithSearchString:(id)string;
- (void)clearEvaluators;
- (void)setSearchString:(id)string;
@end

@implementation SPSearchQueryContext

- (NSString)displayedText
{
  searchString = [(SPSearchQueryContext *)self searchString];
  if ([(SPSearchQueryContext *)self hasMarkedText])
  {
    v4 = [(NSArray *)self->_markedTextArray componentsJoinedByString:&stru_1F556FE60];

    searchString = v4;
  }

  return searchString;
}

+ (SPSearchQueryContext)queryContextWithSearchString:(id)string
{
  stringCopy = string;
  v4 = [[SPSearchQueryContext alloc] initWithSearchString:stringCopy];

  return v4;
}

+ (id)getAppEntityParams:(id)params
{
  v29 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  if (getAppEntityParams__onceToken != -1)
  {
    +[SPSearchQueryContext getAppEntityParams:];
  }

  v4 = [&unk_1F55B7830 mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = paramsCopy;
  filterQueries = [paramsCopy filterQueries];
  v6 = [filterQueries countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(filterQueries);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [getAppEntityParams__regex firstMatchInString:v10 options:0 range:{0, objc_msgSend(v10, "length")}];
        v12 = v11;
        if (v11 && [v11 numberOfRanges] == 3)
        {
          v13 = [v12 rangeAtIndex:1];
          v15 = [v10 substringWithRange:{v13, v14}];
          v16 = [v12 rangeAtIndex:2];
          v18 = [v10 substringWithRange:{v16, v17}];
          v19 = v18;
          if (v15)
          {
            v20 = v18 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isAppEntitySearch"];
            [v4 setObject:v15 forKeyedSubscript:@"bundleID"];
            [v4 setObject:v19 forKeyedSubscript:@"entityTypeIdentifier"];
          }
        }
      }

      v7 = [filterQueries countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __43__SPSearchQueryContext_getAppEntityParams___block_invoke()
{
  getAppEntityParams__regex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(?=.*_kMDItemBundleID==([^ ]+))(?=.*_kMDItemAppEntityTypeIdentifier==([^)]+)" options:? error:?], 0, 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)removeAppEntitySpecificStopwords:(id)stopwords withEntityTypeIdentifier:(id)identifier bundleID:(id)d
{
  v39[2] = *MEMORY[0x1E69E9840];
  stopwordsCopy = stopwords;
  identifierCopy = identifier;
  dCopy = d;
  if (removeAppEntitySpecificStopwords_withEntityTypeIdentifier_bundleID__onceToken != -1)
  {
    +[SPSearchQueryContext removeAppEntitySpecificStopwords:withEntityTypeIdentifier:bundleID:];
  }

  v39[0] = dCopy;
  v39[1] = identifierCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v11 = [removeAppEntitySpecificStopwords_withEntityTypeIdentifier_bundleID__stopwordsMap objectForKeyedSubscript:v10];
  v12 = v11;
  if (v11)
  {
    v26 = v10;
    v28 = identifierCopy;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
    v27 = dCopy;
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\\b%@\\b", v17];
          v29 = 0;
          v19 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v18 options:1 error:&v29];
          v20 = v29;
          if (v20)
          {
            v21 = SSGeneralLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v35 = v17;
              v36 = 2112;
              v37 = v20;
              _os_log_error_impl(&dword_1D9F69000, v21, OS_LOG_TYPE_ERROR, "[POMMES][SearchTool][Query Normalization] Error creating regex for appEntity stopword %@: %@", buf, 0x16u);
            }
          }

          else
          {
            [v19 stringByReplacingMatchesInString:stopwordsCopy options:0 range:0 withTemplate:{-[NSObject length](stopwordsCopy, "length"), &stru_1F556FE60}];
            stopwordsCopy = v21 = stopwordsCopy;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v14);
    }

    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v23 = [stopwordsCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    stopwordsCopy = v23;
    dCopy = v27;
    identifierCopy = v28;
    v10 = v26;
  }

  else
  {
    whitespaceCharacterSet = SSGeneralLog();
    if (os_log_type_enabled(whitespaceCharacterSet, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v35 = dCopy;
      v36 = 2112;
      v37 = identifierCopy;
      _os_log_impl(&dword_1D9F69000, whitespaceCharacterSet, OS_LOG_TYPE_INFO, "[POMMES][SearchTool][Query Normalization] No stopwords found for bundleID %@ and typeIdentifier %@", buf, 0x16u);
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return stopwordsCopy;
}

void __91__SPSearchQueryContext_removeAppEntitySpecificStopwords_withEntityTypeIdentifier_bundleID___block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F55B73E8;
  v3[1] = &unk_1F55B7418;
  v4[0] = &unk_1F55B7400;
  v4[1] = &unk_1F55B7430;
  v3[2] = &unk_1F55B7448;
  v3[3] = &unk_1F55B7478;
  v4[2] = &unk_1F55B7460;
  v4[3] = &unk_1F55B7490;
  v3[4] = &unk_1F55B74A8;
  v4[4] = &unk_1F55B74C0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = removeAppEntitySpecificStopwords_withEntityTypeIdentifier_bundleID__stopwordsMap;
  removeAppEntitySpecificStopwords_withEntityTypeIdentifier_bundleID__stopwordsMap = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)normalizeSearchString:(id)string queryContext:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  contextCopy = context;
  if (_os_feature_enabled_impl())
  {
    v8 = stringCopy;
  }

  else
  {
    v9 = [SPSearchQueryContext getAppEntityParams:contextCopy];
    v10 = [v9 objectForKeyedSubscript:@"isAppEntitySearch"];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      v12 = [v9 objectForKeyedSubscript:@"entityTypeIdentifier"];
      v13 = [v9 objectForKeyedSubscript:@"bundleID"];
      v14 = SSGeneralLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v27 = 138412546;
        v28 = v13;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&dword_1D9F69000, v14, OS_LOG_TYPE_INFO, "[POMMES][SearchTool][Query Normalization] SearchTool AppEntity Search detected with bundleID: %@ and typeIdentifier: %@", &v27, 0x16u);
      }

      if (v12 && v13)
      {
        v15 = [self removeAppEntitySpecificStopwords:stringCopy withEntityTypeIdentifier:v12 bundleID:v13];

        stringCopy = v15;
      }
    }

    if (normalizeSearchString_queryContext__onceToken != -1)
    {
      +[SPSearchQueryContext normalizeSearchString:queryContext:];
    }

    v16 = [normalizeSearchString_queryContext__punctuationRegex stringByReplacingMatchesInString:stringCopy options:0 range:0 withTemplate:{objc_msgSend(stringCopy, "length"), @" "}];

    v17 = [normalizeSearchString_queryContext__specialApostropheSRegex stringByReplacingMatchesInString:v16 options:0 range:0 withTemplate:{objc_msgSend(v16, "length"), @"$1 is"}];

    v18 = [normalizeSearchString_queryContext__specialApostropheReRegex stringByReplacingMatchesInString:v17 options:0 range:0 withTemplate:{objc_msgSend(v17, "length"), @"$1 are"}];

    v19 = [normalizeSearchString_queryContext__apostropheSRegex stringByReplacingMatchesInString:v18 options:0 range:0 withTemplate:{objc_msgSend(v18, "length"), &stru_1F556FE60}];

    v20 = [normalizeSearchString_queryContext__ordinalNumberRegex stringByReplacingMatchesInString:v19 options:0 range:0 withTemplate:{objc_msgSend(v19, "length"), @"$1"}];

    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v22 = [v20 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v23 = SSGeneralLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = SSRedactStringClient(v22, 1, [contextCopy isSearchToolClient]);
      v27 = 138412290;
      v28 = v24;
      _os_log_impl(&dword_1D9F69000, v23, OS_LOG_TYPE_INFO, "[POMMES][SearchTool][Query Normalization] Normalized Query: %@", &v27, 0xCu);
    }

    v8 = v22;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

void __59__SPSearchQueryContext_normalizeSearchString_queryContext___block_invoke()
{
  v24 = 0;
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[’']s\\b" options:0 error:&v24];
  v1 = v24;
  v2 = normalizeSearchString_queryContext__apostropheSRegex;
  normalizeSearchString_queryContext__apostropheSRegex = v0;

  if (v1)
  {
    v3 = SSGeneralLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__SPSearchQueryContext_normalizeSearchString_queryContext___block_invoke_cold_1();
    }
  }

  v23 = 0;
  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\b(\\d+)(st|nd|rd|th)\\b" options:1 error:&v23];
  v5 = v23;
  v6 = normalizeSearchString_queryContext__ordinalNumberRegex;
  normalizeSearchString_queryContext__ordinalNumberRegex = v4;

  if (v5)
  {
    v7 = SSGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__SPSearchQueryContext_normalizeSearchString_queryContext___block_invoke_cold_2();
    }
  }

  v22 = 0;
  v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[ options:.:?-]+" error:{0, &v22}];
  v9 = v22;
  v10 = normalizeSearchString_queryContext__punctuationRegex;
  normalizeSearchString_queryContext__punctuationRegex = v8;

  if (v9)
  {
    v11 = SSGeneralLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __59__SPSearchQueryContext_normalizeSearchString_queryContext___block_invoke_cold_3();
    }
  }

  v21 = v9;
  v12 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\b(What|Where|When|How)[’']s\\b" options:1 error:&v21];
  v13 = v21;

  v14 = normalizeSearchString_queryContext__specialApostropheSRegex;
  normalizeSearchString_queryContext__specialApostropheSRegex = v12;

  if (v13)
  {
    v15 = SSGeneralLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __59__SPSearchQueryContext_normalizeSearchString_queryContext___block_invoke_cold_4();
    }
  }

  v20 = v13;
  v16 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\b(What|Where|When|How)[’']re\\b" options:1 error:&v20];
  v17 = v20;

  v18 = normalizeSearchString_queryContext__specialApostropheReRegex;
  normalizeSearchString_queryContext__specialApostropheReRegex = v16;

  if (v17)
  {
    v19 = SSGeneralLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __59__SPSearchQueryContext_normalizeSearchString_queryContext___block_invoke_cold_5();
    }
  }
}

- (SPSearchQueryContext)initWithSearchString:(id)string
{
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = SPSearchQueryContext;
  v5 = [(SPSearchQueryContext *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(SPSearchQueryContext *)v5 setSearchString:stringCopy];
    [(SPSearchQueryContext *)v6 setCurrentTime:CFAbsoluteTimeGetCurrent()];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v9 = bundleIdentifier;
    if ([v9 hasPrefix:@"com.apple.omniSearch"] & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"com.apple.intelligenceflow"))
    {
      v10 = 1;
    }

    else
    {
      v10 = [v9 hasPrefix:@"com.apple.ondeviceeval"];
    }

    [(SPSearchQueryContext *)v6 setIsSearchToolClient:v10];
    [(SPSearchQueryContext *)v6 incrementQueryId];
  }

  return v6;
}

- (SPSearchQueryContext)initWithSearchString:(id)string currentTime:(double)time
{
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = SPSearchQueryContext;
  v7 = [(SPSearchQueryContext *)&v14 init];
  v8 = v7;
  if (v7)
  {
    [(SPSearchQueryContext *)v7 setSearchString:stringCopy];
    [(SPSearchQueryContext *)v8 setCurrentTime:time];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v11 = bundleIdentifier;
    if ([v11 hasPrefix:@"com.apple.omniSearch"] & 1) != 0 || (objc_msgSend(v11, "hasPrefix:", @"com.apple.intelligenceflow"))
    {
      v12 = 1;
    }

    else
    {
      v12 = [v11 hasPrefix:@"com.apple.ondeviceeval"];
    }

    [(SPSearchQueryContext *)v8 setIsSearchToolClient:v12];
    [(SPSearchQueryContext *)v8 incrementQueryId];
  }

  return v8;
}

- (void)setSearchString:(id)string
{
  stringCopy = string;
  obj = stringCopy;
  if (setSearchString__once != -1)
  {
    [SPSearchQueryContext setSearchString:];
    stringCopy = obj;
  }

  v5 = [stringCopy rangeOfCharacterFromSet:setSearchString__characterSet];
  if (v5)
  {
    v6 = v5 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [obj substringFromIndex:v5];

    obj = v7;
  }

  objc_storeStrong(&self->_searchString, obj);
  if (obj)
  {
    v8 = SSNormalizedQueryString(obj);
    lowercaseString = [v8 lowercaseString];
    normalizedSearchString = self->_normalizedSearchString;
    self->_normalizedSearchString = lowercaseString;
  }

  else
  {
    v8 = self->_normalizedSearchString;
    self->_normalizedSearchString = 0;
  }
}

uint64_t __40__SPSearchQueryContext_setSearchString___block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  v1 = setSearchString__characterSet;
  setSearchString__characterSet = v0;

  v2 = setSearchString__characterSet;

  return [v2 invert];
}

- (NSString)getTrimmedSearchString
{
  searchString = self->_searchString;
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v4 = [(NSString *)searchString stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v4;
}

- (id)evaluatorWithSearchString:(id)string
{
  stringCopy = string;
  keyboardLanguage = [(SPSearchQueryContext *)self keyboardLanguage];
  v6 = keyboardLanguage;
  v7 = @"en";
  if (keyboardLanguage)
  {
    v7 = keyboardLanguage;
  }

  v8 = v7;

  v9 = [objc_alloc(MEMORY[0x1E6964DF0]) initWithQuery:stringCopy language:v8 fuzzyThreshold:0 options:1];
  [v9 setMatchOncePerTerm:1];

  return v9;
}

- (id)evaluator
{
  evaluator = self->_evaluator;
  if (!evaluator || (-[CSAttributeEvaluator queryString](evaluator, "queryString"), v4 = objc_claimAutoreleasedReturnValue(), -[SPSearchQueryContext searchString](self, "searchString"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 isEqual:v5], v5, v4, (v6 & 1) == 0))
  {
    searchString = [(SPSearchQueryContext *)self searchString];
    v8 = [(SPSearchQueryContext *)self evaluatorWithSearchString:searchString];
    v9 = self->_evaluator;
    self->_evaluator = v8;
  }

  v10 = self->_evaluator;

  return v10;
}

- (id)evaluatorForPersonMatching
{
  evaluatorForPersonMatching = self->_evaluatorForPersonMatching;
  if (!evaluatorForPersonMatching)
  {
    searchEntities = [(SPSearchQueryContext *)self searchEntities];
    firstObject = [searchEntities firstObject];

    if ([firstObject isContactEntitySearch])
    {
      tokenText = [firstObject tokenText];
    }

    else
    {
      searchString = [(SPSearchQueryContext *)self searchString];
      v8 = searchString;
      if (searchString)
      {
        searchString2 = searchString;
      }

      else
      {
        searchString2 = [firstObject searchString];
      }

      tokenText = searchString2;
    }

    v10 = [(SPSearchQueryContext *)self evaluatorWithSearchString:tokenText];
    v11 = self->_evaluatorForPersonMatching;
    self->_evaluatorForPersonMatching = v10;

    evaluatorForPersonMatching = self->_evaluatorForPersonMatching;
  }

  return evaluatorForPersonMatching;
}

- (void)clearEvaluators
{
  evaluator = self->_evaluator;
  self->_evaluator = 0;

  evaluatorForPersonMatching = self->_evaluatorForPersonMatching;
  self->_evaluatorForPersonMatching = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  searchString = [(SPSearchQueryContext *)self searchString];
  [v4 setSearchString:searchString];

  markedTextArray = [(SPSearchQueryContext *)self markedTextArray];
  [v4 setMarkedTextArray:markedTextArray];

  keyboardLanguage = [(SPSearchQueryContext *)self keyboardLanguage];
  [v4 setKeyboardLanguage:keyboardLanguage];

  keyboardPrimaryLanguage = [(SPSearchQueryContext *)self keyboardPrimaryLanguage];
  [v4 setKeyboardPrimaryLanguage:keyboardPrimaryLanguage];

  searchDomains = [(SPSearchQueryContext *)self searchDomains];
  [v4 setSearchDomains:searchDomains];

  disabledDomains = [(SPSearchQueryContext *)self disabledDomains];
  [v4 setDisabledDomains:disabledDomains];

  disabledBundles = [(SPSearchQueryContext *)self disabledBundles];
  [v4 setDisabledBundles:disabledBundles];

  groupingRules = [(SPSearchQueryContext *)self groupingRules];
  [v4 setGroupingRules:groupingRules];

  [v4 setForceQueryEvenIfSame:{-[SPSearchQueryContext forceQueryEvenIfSame](self, "forceQueryEvenIfSame")}];
  [v4 setWhyQuery:{-[SPSearchQueryContext whyQuery](self, "whyQuery")}];
  [v4 setQueryKind:{-[SPSearchQueryContext queryKind](self, "queryKind")}];
  [v4 setWhyClear:{-[SPSearchQueryContext whyClear](self, "whyClear")}];
  [v4 setQueryIdent:{-[SPSearchQueryContext queryIdent](self, "queryIdent")}];
  [(SPSearchQueryContext *)self currentTime];
  [v4 setCurrentTime:?];
  [(SPSearchQueryContext *)self scaleFactor];
  [v4 setScaleFactor:?];
  [v4 setAllowInternet:{-[SPSearchQueryContext allowInternet](self, "allowInternet")}];
  [v4 setNoTokenize:{-[SPSearchQueryContext noTokenize](self, "noTokenize")}];
  [v4 setInternalDebug:{-[SPSearchQueryContext internalDebug](self, "internalDebug")}];
  [v4 setInternalValidation:{-[SPSearchQueryContext internalValidation](self, "internalValidation")}];
  [v4 setDisableOCR:{-[SPSearchQueryContext disableOCR](self, "disableOCR")}];
  [v4 setIsAdvancedSyntax:{-[SPSearchQueryContext isAdvancedSyntax](self, "isAdvancedSyntax")}];
  searchEntities = [(SPSearchQueryContext *)self searchEntities];
  [v4 setSearchEntities:searchEntities];

  backingSearchModel = [(SPSearchQueryContext *)self backingSearchModel];
  [v4 setBackingSearchModel:backingSearchModel];

  queryUnderstandingOutput = [(SPSearchQueryContext *)self queryUnderstandingOutput];
  [v4 setQueryUnderstandingOutput:queryUnderstandingOutput];

  [v4 setOptions:{-[SPSearchQueryContext options](self, "options")}];
  [v4 setEnablePersonalAnswers:{-[SPSearchQueryContext enablePersonalAnswers](self, "enablePersonalAnswers")}];
  [v4 setRetainBackendData:{-[SPSearchQueryContext retainBackendData](self, "retainBackendData")}];
  answerAttributes = [(SPSearchQueryContext *)self answerAttributes];
  [v4 setAnswerAttributes:answerAttributes];

  [v4 setDeviceAuthenticationState:{-[SPSearchQueryContext deviceAuthenticationState](self, "deviceAuthenticationState")}];
  disabledApps = [(SPSearchQueryContext *)self disabledApps];
  [v4 setDisabledApps:disabledApps];

  [v4 setPromoteParsecResults:{-[SPSearchQueryContext promoteParsecResults](self, "promoteParsecResults")}];
  queryIntent = [(SPSearchQueryContext *)self queryIntent];
  [v4 setQueryIntent:queryIntent];

  bundleIDs = [(SPSearchQueryContext *)self bundleIDs];
  [v4 setBundleIDs:bundleIDs];

  filterQueries = [(SPSearchQueryContext *)self filterQueries];
  [v4 setFilterQueries:filterQueries];

  return v4;
}

+ (id)llmQUIntentString:(unint64_t)string
{
  stringCopy = string;
  if (string)
  {
    v4 = [@"[" stringByAppendingString:@"LLMQUIntentNote "];
    if ((stringCopy & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = @"[";
  if ((string & 2) != 0)
  {
LABEL_5:
    v5 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentEmail "];

    v4 = v5;
  }

LABEL_6:
  if ((stringCopy & 4) != 0)
  {
    v9 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentPhoto "];

    v4 = v9;
    if ((stringCopy & 8) == 0)
    {
LABEL_8:
      if ((stringCopy & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_39;
    }
  }

  else if ((stringCopy & 8) == 0)
  {
    goto LABEL_8;
  }

  v10 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentMessage "];

  v4 = v10;
  if ((stringCopy & 0x10) == 0)
  {
LABEL_9:
    if ((stringCopy & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v11 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentSafari "];

  v4 = v11;
  if ((stringCopy & 0x20) == 0)
  {
LABEL_10:
    if ((stringCopy & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v12 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentCalendar "];

  v4 = v12;
  if ((stringCopy & 0x40) == 0)
  {
LABEL_11:
    if ((stringCopy & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v13 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentReminder "];

  v4 = v13;
  if ((stringCopy & 0x100) == 0)
  {
LABEL_12:
    if ((stringCopy & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v14 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentContact "];

  v4 = v14;
  if ((stringCopy & 0x200) == 0)
  {
LABEL_13:
    if ((stringCopy & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v15 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentConversation "];

  v4 = v15;
  if ((stringCopy & 0x400) == 0)
  {
LABEL_14:
    if ((stringCopy & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  v16 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentKeynote "];

  v4 = v16;
  if ((stringCopy & 0x800) == 0)
  {
LABEL_15:
    if ((stringCopy & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  v17 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentDocument "];

  v4 = v17;
  if ((stringCopy & 0x1000) == 0)
  {
LABEL_16:
    if ((stringCopy & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v18 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentNumber "];

  v4 = v18;
  if ((stringCopy & 0x2000) == 0)
  {
LABEL_17:
    if ((stringCopy & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v19 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentPage "];

  v4 = v19;
  if ((stringCopy & 0x4000) == 0)
  {
LABEL_18:
    if ((stringCopy & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v20 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentHotelEvent "];

  v4 = v20;
  if ((stringCopy & 0x8000) == 0)
  {
LABEL_19:
    if ((stringCopy & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v21 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentFlightEvent "];

  v4 = v21;
  if ((stringCopy & 0x10000) == 0)
  {
LABEL_20:
    if ((stringCopy & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v22 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentRestaurantEvent "];

  v4 = v22;
  if ((stringCopy & 0x20000) == 0)
  {
LABEL_21:
    if ((stringCopy & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v23 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentEvent "];

  v4 = v23;
  if ((stringCopy & 0x40000) == 0)
  {
LABEL_22:
    if ((stringCopy & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v24 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentTicketShowEvent "];

  v4 = v24;
  if ((stringCopy & 0x80000) == 0)
  {
LABEL_23:
    if ((stringCopy & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v25 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentAppointmentEvent "];

  v4 = v25;
  if ((stringCopy & 0x100000) == 0)
  {
LABEL_24:
    if ((stringCopy & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v26 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentPartyEvent "];

  v4 = v26;
  if ((stringCopy & 0x200000) == 0)
  {
LABEL_25:
    if ((stringCopy & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  v27 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentTicketTransportEvent "];

  v4 = v27;
  if ((stringCopy & 0x400000) == 0)
  {
LABEL_26:
    if ((stringCopy & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  v28 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentCarRentalEvent "];

  v4 = v28;
  if ((stringCopy & 0x800000) == 0)
  {
LABEL_27:
    if ((stringCopy & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  v29 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentPhone "];

  v4 = v29;
  if ((stringCopy & 0x1000000) == 0)
  {
LABEL_28:
    if ((stringCopy & 0x2000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  v30 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentVoiceMemo "];

  v4 = v30;
  if ((stringCopy & 0x2000000) == 0)
  {
LABEL_29:
    if ((stringCopy & 0x4000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  v31 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentJournal "];

  v4 = v31;
  if ((stringCopy & 0x4000000) == 0)
  {
LABEL_30:
    if ((stringCopy & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  v32 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentWallet "];

  v4 = v32;
  if ((stringCopy & 0x8000000) == 0)
  {
LABEL_31:
    if ((stringCopy & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  v33 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentFreeform "];

  v4 = v33;
  if ((stringCopy & 0x10000000) == 0)
  {
LABEL_32:
    if ((stringCopy & 0x20000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_62:
  v34 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentSharedLink "];

  v4 = v34;
  if ((stringCopy & 0x20000000) != 0)
  {
LABEL_33:
    v6 = [(__CFString *)v4 stringByAppendingString:@"LLMQUIntentShippingOrder "];

    v4 = v6;
  }

LABEL_34:
  v7 = [(__CFString *)v4 stringByAppendingString:@"]"];

  return v7;
}

- (BOOL)wantsMoreResults
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(SPSearchQueryContext *)self shouldAllowMoreResults])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    searchEntities = [(SPSearchQueryContext *)self searchEntities];
    v3 = [searchEntities countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(searchEntities);
          }

          if ([*(*(&v9 + 1) + 8 * i) shouldAllowMoreResults])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [searchEntities countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)queryKindString:(unint64_t)string
{
  if (string - 1 > 0xF)
  {
    return @"SPQueryKindDefault";
  }

  else
  {
    return off_1E8596190[string - 1];
  }
}

@end