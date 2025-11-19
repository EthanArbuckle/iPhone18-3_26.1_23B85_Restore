@interface SPSearchQuery
- (BOOL)hasMarkedText;
- (BOOL)plausiblyMatchesQuery:(id)a3;
- (SPSearchQuery)initWithQuery:(id)a3 domains:(id)a4;
- (SPSearchQuery)initWithSearchQueryContext:(id)a3;
@end

@implementation SPSearchQuery

- (SPSearchQuery)initWithSearchQueryContext:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 searchString];
  v7 = SPLogForSPLogCategoryQuery();
  v8 = v7;
  if (gSPLogDebugAsDefault)
  {
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v9 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v7, v9))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_1C81BF000, v8, v9, "Started search on %@", buf, 0xCu);
  }

  v24.receiver = self;
  v24.super_class = SPSearchQuery;
  v10 = [(SPSearchQuery *)&v24 init];
  v11 = v10;
  if (v10)
  {
    v10->_queryID = atomic_fetch_add(initWithSearchQueryContext____queryIDIter, 1u);
    v10->_queryIdent = atomic_fetch_add(&initWithSearchQueryContext____queryIdentIter, 1uLL);
    objc_storeStrong(&v10->_queryContext, a3);
    objc_storeStrong(&v11->_searchString, v6);
    v12 = [v5 keyboardLanguage];
    keyboardLanguage = v11->_keyboardLanguage;
    v11->_keyboardLanguage = v12;

    v14 = [v5 keyboardPrimaryLanguage];
    keyboardPrimaryLanguage = v11->_keyboardPrimaryLanguage;
    v11->_keyboardPrimaryLanguage = v14;

    [v5 scaleFactor];
    v11->_scaleFactor = v16;
    v11->_creationTime = CFAbsoluteTimeGetCurrent();
    v11->_creationStamp = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v17 = [v5 disabledBundles];
    disabledBundles = v11->_disabledBundles;
    v11->_disabledBundles = v17;

    v19 = [v5 disabledApps];
    disabledApps = v11->_disabledApps;
    v11->_disabledApps = v19;

    v11->_promoteLocalResults = [v5 promoteLocalResults];
    v11->_promoteParsecResults = [v5 promoteParsecResults];
    v11->_noTokenize = [v5 noTokenize];
    if ([v5 queryIdent])
    {
      v11->_queryIdent = [v5 queryIdent];
    }

    v11->_internalValidation = [v5 internalValidation];
    v11->_internalDebug = [v5 internalDebug];
    [v5 currentTime];
    v11->_currentTime = v21;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

- (SPSearchQuery)initWithQuery:(id)a3 domains:(id)a4
{
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E69D3E78]);
  v7 = [v5 queryContext];
  v8 = [v7 searchString];
  v9 = [v6 initWithSearchString:v8];

  v10 = [(SPSearchQuery *)self initWithSearchQueryContext:v9];
  v11 = v10;
  if (v10)
  {
    v10->_queryID = v5[1];
    v10->_queryIdent = v5[16];
    v10->_creationTime = v5[8];
    v10->_creationStamp = v5[10];
    v10->_currentTime = v5[18];
  }

  return v11;
}

- (BOOL)hasMarkedText
{
  v2 = [(SPSearchQuery *)self queryContext];
  v3 = [v2 markedTextArray];
  v4 = [v3 count] == 3;

  return v4;
}

- (BOOL)plausiblyMatchesQuery:(id)a3
{
  v4 = a3;
  if ([v4[2] length] && -[NSString length](self->_searchString, "length"))
  {
    v5 = ([v4[2] hasPrefix:self->_searchString] & 1) != 0 || -[NSString hasPrefix:](self->_searchString, "hasPrefix:", v4[2]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end