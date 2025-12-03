@interface SafariSearchHelper
- (SafariSearchHelper)init;
- (id)_fetcherForSuggestionsURLTemplate:(id)template;
- (void)cancelExistingSuggestionsRequestOfFetcherWithSuggestionsURLTemplate:(id)template;
- (void)checkForModelUpdatesIfNeededWithCompletionHandler:(id)handler;
- (void)clearAllSearchModelsWithCompletionHandler:(id)handler;
- (void)fetchOfflineSearchSuggestionsStatus:(id)status;
- (void)fetchOfflineSuggestionsForQueryString:(id)string completionHandler:(id)handler;
- (void)fetchOpenSearchDescriptionWithURL:(id)l completionHandler:(id)handler;
- (void)onDeviceSearchSuggestionProvider:(id)provider didFinishWithSuggestions:(id)suggestions forQueryString:(id)string;
- (void)setMaximumNumberOfOfflineSuggestionsToFetch:(unint64_t)fetch;
- (void)updateSuggestionsRequestWithSearchTerms:(id)terms suggestionsURLTemplate:(id)template userAgentString:(id)string completionHandler:(id)handler;
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

- (void)fetchOpenSearchDescriptionWithURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v7 = [[OpenSearchDescriptionParser alloc] initWithURL:lCopy];

  [(OpenSearchDescriptionParser *)v7 parseWithCompletionHandler:handlerCopy];
}

- (void)updateSuggestionsRequestWithSearchTerms:(id)terms suggestionsURLTemplate:(id)template userAgentString:(id)string completionHandler:(id)handler
{
  termsCopy = terms;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000205C;
  block[3] = &unk_100008410;
  block[4] = self;
  templateCopy = template;
  v17 = termsCopy;
  stringCopy = string;
  handlerCopy = handler;
  v11 = handlerCopy;
  v12 = stringCopy;
  v13 = termsCopy;
  v14 = templateCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cancelExistingSuggestionsRequestOfFetcherWithSuggestionsURLTemplate:(id)template
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002150;
  v4[3] = &unk_1000083C0;
  v4[4] = self;
  templateCopy = template;
  v3 = templateCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (id)_fetcherForSuggestionsURLTemplate:(id)template
{
  templateCopy = template;
  fetchersBySuggestionsURLTemplate = self->_fetchersBySuggestionsURLTemplate;
  if (!fetchersBySuggestionsURLTemplate)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = self->_fetchersBySuggestionsURLTemplate;
    self->_fetchersBySuggestionsURLTemplate = v6;

    fetchersBySuggestionsURLTemplate = self->_fetchersBySuggestionsURLTemplate;
  }

  v8 = [(NSMutableDictionary *)fetchersBySuggestionsURLTemplate objectForKeyedSubscript:templateCopy];

  if (!v8)
  {
    v9 = [[SearchSuggestionsFetcher alloc] initWithSuggestionsURLTemplate:templateCopy];
    [(NSMutableDictionary *)self->_fetchersBySuggestionsURLTemplate setObject:v9 forKeyedSubscript:templateCopy];
  }

  v10 = [(NSMutableDictionary *)self->_fetchersBySuggestionsURLTemplate objectForKeyedSubscript:templateCopy];

  return v10;
}

- (void)fetchOfflineSuggestionsForQueryString:(id)string completionHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002324;
  block[3] = &unk_100008438;
  stringCopy = string;
  handlerCopy = handler;
  block[4] = self;
  v6 = stringCopy;
  v7 = handlerCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setMaximumNumberOfOfflineSuggestionsToFetch:(unint64_t)fetch
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002438;
  v3[3] = &unk_100008460;
  v3[4] = self;
  v3[5] = fetch;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)fetchOfflineSearchSuggestionsStatus:(id)status
{
  statusCopy = status;
  v3 = +[WBSOnDeviceSearchSuggestionsModelManager sharedManager];
  needsSupportedLocaleUpdate = [v3 needsSupportedLocaleUpdate];

  if (needsSupportedLocaleUpdate)
  {
    statusCopy[2](statusCopy, 4);
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

    (statusCopy[2])();
  }
}

- (void)checkForModelUpdatesIfNeededWithCompletionHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000025F0;
  v4[3] = &unk_1000084D8;
  v4[4] = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)clearAllSearchModelsWithCompletionHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002824;
  block[3] = &unk_100008500;
  handlerCopy = handler;
  v3 = handlerCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)onDeviceSearchSuggestionProvider:(id)provider didFinishWithSuggestions:(id)suggestions forQueryString:(id)string
{
  suggestionsCopy = suggestions;
  if ([(NSString *)self->_currentQueryString isEqualToString:string])
  {
    offlineSuggestionsCompletionHandler = self->_offlineSuggestionsCompletionHandler;
    if (offlineSuggestionsCompletionHandler)
    {
      offlineSuggestionsCompletionHandler[2](offlineSuggestionsCompletionHandler, suggestionsCopy);
    }
  }
}

@end