@interface OpenSearchDescriptionParser
- (OpenSearchDescriptionParser)initWithURL:(id)a3;
- (id)_replaceStartPagePlaceholderInTemplate:(id)a3 elementAttributes:(id)a4;
- (id)_searchDescriptionKeyForTypeString:(id)a3;
- (void)_handleNetworkError:(id)a3;
- (void)_handleParsingError:(id)a3;
- (void)_parseParameterElementWithAttributes:(id)a3;
- (void)_parseURLElementWithAttributes:(id)a3;
- (void)_startParsing;
- (void)parseWithCompletionHandler:(id)a3;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parserDidEndDocument:(id)a3;
- (void)parserDidStartDocument:(id)a3;
@end

@implementation OpenSearchDescriptionParser

- (OpenSearchDescriptionParser)initWithURL:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = OpenSearchDescriptionParser;
  v5 = [(OpenSearchDescriptionParser *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.Safari.OpenSearchDescriptionParser", 0);
    parsingQueue = v5->_parsingQueue;
    v5->_parsingQueue = v6;

    v8 = [v4 copy];
    searchDescriptionURL = v5->_searchDescriptionURL;
    v5->_searchDescriptionURL = v8;

    v10 = v5;
  }

  return v5;
}

- (void)parseWithCompletionHandler:(id)a3
{
  v4 = [a3 copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v4;

  parsingQueue = self->_parsingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000112C;
  block[3] = &unk_100008398;
  block[4] = self;
  dispatch_async(parsingQueue, block);
}

- (void)_startParsing
{
  v3 = sub_1000039F8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    searchDescriptionURL = self->_searchDescriptionURL;
    *buf = 138739971;
    v18 = searchDescriptionURL;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Downloading OpenSearch description from %{sensitive}@", buf, 0xCu);
  }

  v5 = +[NSURLSessionConfiguration safari_ephemeralSessionConfiguration];
  [v5 setHTTPCookieStorage:0];
  v6 = +[NSBundle safari_safariApplicationPlatformBundleIdentifier];
  [v5 set_sourceApplicationBundleIdentifier:v6];

  v7 = [NSURLSession sessionWithConfiguration:v5];
  v8 = [NSURLRequest safari_nonAppInitiatedRequestWithURL:self->_searchDescriptionURL];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000012CC;
  v14 = &unk_1000083E8;
  v15 = v7;
  v16 = self;
  v9 = v7;
  v10 = [v9 dataTaskWithRequest:v8 completionHandler:&v11];
  [v10 resume];
}

- (void)_handleParsingError:(id)a3
{
  v4 = a3;
  v5 = sub_1000039F8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100003AF0(v5, v4);
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    if (v4)
    {
      v10 = NSUnderlyingErrorKey;
      v11 = v4;
      v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [NSError errorWithDomain:@"OpenSearchDescriptionParserErrorDomain" code:1 userInfo:v7];
    completionHandler[2](completionHandler, 0, v8);

    if (v4)
    {
    }

    v9 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)_handleNetworkError:(id)a3
{
  v4 = a3;
  v5 = sub_1000039F8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100003B98(self, v5, v4);
  }

  if (self->_completionHandler)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000168C;
    v6[3] = &unk_1000083C0;
    v6[4] = self;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (id)_searchDescriptionKeyForTypeString:(id)a3
{
  v3 = a3;
  if ([v3 caseInsensitiveCompare:@"text/html"])
  {
    if ([v3 caseInsensitiveCompare:@"application/x-suggestions+json"])
    {
      if ([v3 caseInsensitiveCompare:@"application/x-suggestions+xml"])
      {
        v4 = 0;
        goto LABEL_9;
      }

      v5 = &WBSOpenSearchDescriptionURLTemplateForSuggestionsInXMLKey;
    }

    else
    {
      v5 = &WBSOpenSearchDescriptionURLTemplateForSuggestionsInJSONKey;
    }
  }

  else
  {
    v5 = &WBSOpenSearchDescriptionSearchURLTemplateKey;
  }

  v4 = *v5;
LABEL_9:

  return v4;
}

- (id)_replaceStartPagePlaceholderInTemplate:(id)a3 elementAttributes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = WBSOpenSearchStartPageParameterName;
  if ([v5 includesParameter:WBSOpenSearchStartPageParameterName])
  {
    v8 = [v6 objectForKeyedSubscript:@"pageOffset"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 integerValue];
    }

    else
    {
      v10 = 1;
    }

    v12 = [NSString stringWithFormat:@"%zd", v10];
    v11 = [v5 templateBySubstitutingValue:v12 forParameter:v7];
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

- (void)_parseURLElementWithAttributes:(id)a3
{
  v10 = a3;
  v4 = [v10 safari_stringForKey:@"type"];
  v5 = [v10 safari_stringForKey:@"template"];
  if (v5)
  {
    if (v4)
    {
      v6 = [(OpenSearchDescriptionParser *)self _searchDescriptionKeyForTypeString:v4];
      currentSearchDescriptionURLKey = self->_currentSearchDescriptionURLKey;
      self->_currentSearchDescriptionURLKey = v6;

      if (self->_currentSearchDescriptionURLKey)
      {
        v8 = [[WBSOpenSearchURLTemplate alloc] initWithString:v5];
        v9 = [(OpenSearchDescriptionParser *)self _replaceStartPagePlaceholderInTemplate:v8 elementAttributes:v10];

        self->_templateURLDoesNotContainSearchTerms = [v9 includesParameter:WBSOpenSearchSearchTermsParameterName] ^ 1;
        [(NSMutableDictionary *)self->_searchDescriptionDictionary setObject:v9 forKeyedSubscript:self->_currentSearchDescriptionURLKey];
      }
    }
  }
}

- (void)_parseParameterElementWithAttributes:(id)a3
{
  v4 = a3;
  v8 = [v4 safari_stringForKey:@"value"];
  v5 = [v4 safari_stringForKey:@"name"];

  if (v8 && [v5 length] && objc_msgSend(v8, "isEqualToString:", @"{searchTerms}"))
  {
    self->_didFindSearchTermsParameter = 1;
    v6 = [(NSMutableDictionary *)self->_searchDescriptionDictionary objectForKeyedSubscript:self->_currentSearchDescriptionURLKey];
    v7 = [v6 templateByAddingParameter:v8 asURLQueryParameter:WBSOpenSearchSearchTermsParameterName];
    [(NSMutableDictionary *)self->_searchDescriptionDictionary setObject:v7 forKeyedSubscript:self->_currentSearchDescriptionURLKey];
  }
}

- (void)parserDidStartDocument:(id)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  searchDescriptionDictionary = self->_searchDescriptionDictionary;
  self->_searchDescriptionDictionary = v4;

  searchDescriptionURL = self->_searchDescriptionURL;
  v7 = self->_searchDescriptionDictionary;
  v8 = WBSOpenSearchDescriptionDocumentURLKey;

  [(NSMutableDictionary *)v7 setObject:searchDescriptionURL forKeyedSubscript:v8];
}

- (void)parserDidEndDocument:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001C08;
  block[3] = &unk_100008398;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v10 = a4;
  v9 = a7;
  if ([v10 isEqualToString:@"Url"])
  {
    [(OpenSearchDescriptionParser *)self _parseURLElementWithAttributes:v9];
  }

  else if (self->_templateURLDoesNotContainSearchTerms && !self->_didFindSearchTermsParameter && (([v10 isEqualToString:@"Param"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"Parameter")))
  {
    [(OpenSearchDescriptionParser *)self _parseParameterElementWithAttributes:v9];
  }
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  if ([a4 isEqualToString:@"Url"])
  {
    if (self->_templateURLDoesNotContainSearchTerms && !self->_didFindSearchTermsParameter)
    {
      [(NSMutableDictionary *)self->_searchDescriptionDictionary removeObjectForKey:self->_currentSearchDescriptionURLKey];
    }

    self->_templateURLDoesNotContainSearchTerms = 0;
    currentSearchDescriptionURLKey = self->_currentSearchDescriptionURLKey;
    self->_currentSearchDescriptionURLKey = 0;

    self->_didFindSearchTermsParameter = 0;
  }
}

@end