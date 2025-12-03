@interface SPSearchQuery
- (BOOL)hasMarkedText;
- (BOOL)plausiblyMatchesQuery:(id)query;
- (SPSearchQuery)initWithQuery:(id)query domains:(id)domains;
- (SPSearchQuery)initWithSearchQueryContext:(id)context;
@end

@implementation SPSearchQuery

- (SPSearchQuery)initWithSearchQueryContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  searchString = [contextCopy searchString];
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
    v26 = searchString;
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
    objc_storeStrong(&v10->_queryContext, context);
    objc_storeStrong(&v11->_searchString, searchString);
    keyboardLanguage = [contextCopy keyboardLanguage];
    keyboardLanguage = v11->_keyboardLanguage;
    v11->_keyboardLanguage = keyboardLanguage;

    keyboardPrimaryLanguage = [contextCopy keyboardPrimaryLanguage];
    keyboardPrimaryLanguage = v11->_keyboardPrimaryLanguage;
    v11->_keyboardPrimaryLanguage = keyboardPrimaryLanguage;

    [contextCopy scaleFactor];
    v11->_scaleFactor = v16;
    v11->_creationTime = CFAbsoluteTimeGetCurrent();
    v11->_creationStamp = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    disabledBundles = [contextCopy disabledBundles];
    disabledBundles = v11->_disabledBundles;
    v11->_disabledBundles = disabledBundles;

    disabledApps = [contextCopy disabledApps];
    disabledApps = v11->_disabledApps;
    v11->_disabledApps = disabledApps;

    v11->_promoteLocalResults = [contextCopy promoteLocalResults];
    v11->_promoteParsecResults = [contextCopy promoteParsecResults];
    v11->_noTokenize = [contextCopy noTokenize];
    if ([contextCopy queryIdent])
    {
      v11->_queryIdent = [contextCopy queryIdent];
    }

    v11->_internalValidation = [contextCopy internalValidation];
    v11->_internalDebug = [contextCopy internalDebug];
    [contextCopy currentTime];
    v11->_currentTime = v21;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

- (SPSearchQuery)initWithQuery:(id)query domains:(id)domains
{
  queryCopy = query;
  v6 = objc_alloc(MEMORY[0x1E69D3E78]);
  queryContext = [queryCopy queryContext];
  searchString = [queryContext searchString];
  v9 = [v6 initWithSearchString:searchString];

  v10 = [(SPSearchQuery *)self initWithSearchQueryContext:v9];
  v11 = v10;
  if (v10)
  {
    v10->_queryID = queryCopy[1];
    v10->_queryIdent = queryCopy[16];
    v10->_creationTime = queryCopy[8];
    v10->_creationStamp = queryCopy[10];
    v10->_currentTime = queryCopy[18];
  }

  return v11;
}

- (BOOL)hasMarkedText
{
  queryContext = [(SPSearchQuery *)self queryContext];
  markedTextArray = [queryContext markedTextArray];
  v4 = [markedTextArray count] == 3;

  return v4;
}

- (BOOL)plausiblyMatchesQuery:(id)query
{
  queryCopy = query;
  if ([queryCopy[2] length] && -[NSString length](self->_searchString, "length"))
  {
    v5 = ([queryCopy[2] hasPrefix:self->_searchString] & 1) != 0 || -[NSString hasPrefix:](self->_searchString, "hasPrefix:", queryCopy[2]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end