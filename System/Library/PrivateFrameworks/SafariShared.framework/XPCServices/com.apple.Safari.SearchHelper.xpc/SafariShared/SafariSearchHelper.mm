@interface SafariSearchHelper
- (SafariSearchHelper)init;
- (id)_fetcherForSuggestionsURLTemplate:(id)a3;
- (void)cancelExistingSuggestionsRequestOfFetcherWithSuggestionsURLTemplate:(id)a3;
- (void)checkForModelUpdatesIfNeededWithCompletionHandler:(id)a3;
- (void)clearAllSearchModelsWithCompletionHandler:(id)a3;
- (void)fetchOfflineSearchSuggestionsStatus:(id)a3;
- (void)fetchOfflineSuggestionsForQueryString:(id)a3 completionHandler:(id)a4;
- (void)fetchOpenSearchDescriptionWithURL:(id)a3 completionHandler:(id)a4;
- (void)onDeviceSearchSuggestionProvider:(id)a3 didFinishWithSuggestions:(id)a4 forQueryString:(id)a5;
- (void)setMaximumNumberOfOfflineSuggestionsToFetch:(unint64_t)a3;
- (void)updateSuggestionsRequestWithSearchTerms:(id)a3 suggestionsURLTemplate:(id)a4 userAgentString:(id)a5 completionHandler:(id)a6;
@end

@implementation SafariSearchHelper

- (SafariSearchHelper)init
{
  v6.receiver = self;
  v6.super_class = SafariSearchHelper;
  v2 = [(SafariSearchHelper *)&v6 init];
  if (v2)
  {
    v3 = [[NSURLCache alloc] initWithMemoryCapacity:0 diskCapacity:0 diskPath:0];
    [NSURLCache setSharedURLCache:v3];
    v4 = v2;
  }

  return v2;
}

- (void)fetchOpenSearchDescriptionWithURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[OpenSearchDescriptionParser alloc] initWithURL:v6];

  [(OpenSearchDescriptionParser *)v7 parseWithCompletionHandler:v5];
}

- (void)updateSuggestionsRequestWithSearchTerms:(id)a3 suggestionsURLTemplate:(id)a4 userAgentString:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000205C;
  block[3] = &unk_100008410;
  block[4] = self;
  v16 = a4;
  v17 = v10;
  v18 = a5;
  v19 = a6;
  v11 = v19;
  v12 = v18;
  v13 = v10;
  v14 = v16;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cancelExistingSuggestionsRequestOfFetcherWithSuggestionsURLTemplate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002150;
  v4[3] = &unk_1000083C0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (id)_fetcherForSuggestionsURLTemplate:(id)a3
{
  v4 = a3;
  fetchersBySuggestionsURLTemplate = self->_fetchersBySuggestionsURLTemplate;
  if (!fetchersBySuggestionsURLTemplate)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = self->_fetchersBySuggestionsURLTemplate;
    self->_fetchersBySuggestionsURLTemplate = v6;

    fetchersBySuggestionsURLTemplate = self->_fetchersBySuggestionsURLTemplate;
  }

  v8 = [(NSMutableDictionary *)fetchersBySuggestionsURLTemplate objectForKeyedSubscript:v4];

  if (!v8)
  {
    v9 = [[SearchSuggestionsFetcher alloc] initWithSuggestionsURLTemplate:v4];
    [(NSMutableDictionary *)self->_fetchersBySuggestionsURLTemplate setObject:v9 forKeyedSubscript:v4];
  }

  v10 = [(NSMutableDictionary *)self->_fetchersBySuggestionsURLTemplate objectForKeyedSubscript:v4];

  return v10;
}

- (void)fetchOfflineSuggestionsForQueryString:(id)a3 completionHandler:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002324;
  block[3] = &unk_100008438;
  v9 = a3;
  v10 = a4;
  block[4] = self;
  v6 = v9;
  v7 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setMaximumNumberOfOfflineSuggestionsToFetch:(unint64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002438;
  v3[3] = &unk_100008460;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)fetchOfflineSearchSuggestionsStatus:(id)a3
{
  v9 = a3;
  v3 = +[WBSOnDeviceSearchSuggestionsModelManager sharedManager];
  v4 = [v3 needsSupportedLocaleUpdate];

  if (v4)
  {
    v9[2](v9, 4);
  }

  else
  {
    v5 = +[NSLocale currentLocale];
    v6 = +[WBSOnDeviceSearchSuggestionsModelManager sharedManager];
    v7 = [v6 isLocaleSupported:v5];

    if (v7)
    {
      v8 = +[WBSOnDeviceSearchSuggestionsModelManager sharedManager];
      [v8 haveModelForLocale:v5];
    }

    (v9[2])();
  }
}

- (void)checkForModelUpdatesIfNeededWithCompletionHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000025F0;
  v4[3] = &unk_1000084D8;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)clearAllSearchModelsWithCompletionHandler:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002824;
  block[3] = &unk_100008500;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)onDeviceSearchSuggestionProvider:(id)a3 didFinishWithSuggestions:(id)a4 forQueryString:(id)a5
{
  v8 = a4;
  if ([(NSString *)self->_currentQueryString isEqualToString:a5])
  {
    offlineSuggestionsCompletionHandler = self->_offlineSuggestionsCompletionHandler;
    if (offlineSuggestionsCompletionHandler)
    {
      offlineSuggestionsCompletionHandler[2](offlineSuggestionsCompletionHandler, v8);
    }
  }
}

@end