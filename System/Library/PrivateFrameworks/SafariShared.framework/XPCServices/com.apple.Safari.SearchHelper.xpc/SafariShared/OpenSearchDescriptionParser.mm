@interface OpenSearchDescriptionParser
- (OpenSearchDescriptionParser)initWithURL:(id)l;
- (id)_replaceStartPagePlaceholderInTemplate:(id)template elementAttributes:(id)attributes;
- (id)_searchDescriptionKeyForTypeString:(id)string;
- (void)_handleNetworkError:(id)error;
- (void)_handleParsingError:(id)error;
- (void)_parseParameterElementWithAttributes:(id)attributes;
- (void)_parseURLElementWithAttributes:(id)attributes;
- (void)_startParsing;
- (void)parseWithCompletionHandler:(id)handler;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parserDidEndDocument:(id)document;
- (void)parserDidStartDocument:(id)document;
@end

@implementation OpenSearchDescriptionParser

- (OpenSearchDescriptionParser)initWithURL:(id)l
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = OpenSearchDescriptionParser;
  v5 = [(OpenSearchDescriptionParser *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.Safari.OpenSearchDescriptionParser", 0);
    parsingQueue = v5->_parsingQueue;
    v5->_parsingQueue = v6;

    v8 = [lCopy copy];
    searchDescriptionURL = v5->_searchDescriptionURL;
    v5->_searchDescriptionURL = v8;

    v10 = v5;
  }

  return v5;
}

- (void)parseWithCompletionHandler:(id)handler
{
  v4 = [handler copy];
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
  selfCopy = self;
  v9 = v7;
  v10 = [v9 dataTaskWithRequest:v8 completionHandler:&v11];
  [v10 resume];
}

- (void)_handleParsingError:(id)error
{
  errorCopy = error;
  v5 = sub_1000039F8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100003AF0(v5, errorCopy);
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    if (errorCopy)
    {
      v10 = NSUnderlyingErrorKey;
      v11 = errorCopy;
      v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [NSError errorWithDomain:@"OpenSearchDescriptionParserErrorDomain" code:1 userInfo:v7];
    completionHandler[2](completionHandler, 0, v8);

    if (errorCopy)
    {
    }

    v9 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)_handleNetworkError:(id)error
{
  errorCopy = error;
  v5 = sub_1000039F8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100003B98(self, v5, errorCopy);
  }

  if (self->_completionHandler)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000168C;
    v6[3] = &unk_1000083C0;
    v6[4] = self;
    v7 = errorCopy;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (id)_searchDescriptionKeyForTypeString:(id)string
{
  stringCopy = string;
  if ([stringCopy caseInsensitiveCompare:@"text/html"])
  {
    if ([stringCopy caseInsensitiveCompare:@"application/x-suggestions+json"])
    {
      if ([stringCopy caseInsensitiveCompare:@"application/x-suggestions+xml"])
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

- (id)_replaceStartPagePlaceholderInTemplate:(id)template elementAttributes:(id)attributes
{
  templateCopy = template;
  attributesCopy = attributes;
  v7 = WBSOpenSearchStartPageParameterName;
  if ([templateCopy includesParameter:WBSOpenSearchStartPageParameterName])
  {
    v8 = [attributesCopy objectForKeyedSubscript:@"pageOffset"];
    v9 = v8;
    if (v8)
    {
      integerValue = [v8 integerValue];
    }

    else
    {
      integerValue = 1;
    }

    v12 = [NSString stringWithFormat:@"%zd", integerValue];
    v11 = [templateCopy templateBySubstitutingValue:v12 forParameter:v7];
  }

  else
  {
    v11 = templateCopy;
  }

  return v11;
}

- (void)_parseURLElementWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = [attributesCopy safari_stringForKey:@"type"];
  v5 = [attributesCopy safari_stringForKey:@"template"];
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
        v9 = [(OpenSearchDescriptionParser *)self _replaceStartPagePlaceholderInTemplate:v8 elementAttributes:attributesCopy];

        self->_templateURLDoesNotContainSearchTerms = [v9 includesParameter:WBSOpenSearchSearchTermsParameterName] ^ 1;
        [(NSMutableDictionary *)self->_searchDescriptionDictionary setObject:v9 forKeyedSubscript:self->_currentSearchDescriptionURLKey];
      }
    }
  }
}

- (void)_parseParameterElementWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v8 = [attributesCopy safari_stringForKey:@"value"];
  v5 = [attributesCopy safari_stringForKey:@"name"];

  if (v8 && [v5 length] && objc_msgSend(v8, "isEqualToString:", @"{searchTerms}"))
  {
    self->_didFindSearchTermsParameter = 1;
    v6 = [(NSMutableDictionary *)self->_searchDescriptionDictionary objectForKeyedSubscript:self->_currentSearchDescriptionURLKey];
    v7 = [v6 templateByAddingParameter:v8 asURLQueryParameter:WBSOpenSearchSearchTermsParameterName];
    [(NSMutableDictionary *)self->_searchDescriptionDictionary setObject:v7 forKeyedSubscript:self->_currentSearchDescriptionURLKey];
  }
}

- (void)parserDidStartDocument:(id)document
{
  v4 = objc_alloc_init(NSMutableDictionary);
  searchDescriptionDictionary = self->_searchDescriptionDictionary;
  self->_searchDescriptionDictionary = v4;

  searchDescriptionURL = self->_searchDescriptionURL;
  v7 = self->_searchDescriptionDictionary;
  v8 = WBSOpenSearchDescriptionDocumentURLKey;

  [(NSMutableDictionary *)v7 setObject:searchDescriptionURL forKeyedSubscript:v8];
}

- (void)parserDidEndDocument:(id)document
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001C08;
  block[3] = &unk_100008398;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  elementCopy = element;
  attributesCopy = attributes;
  if ([elementCopy isEqualToString:@"Url"])
  {
    [(OpenSearchDescriptionParser *)self _parseURLElementWithAttributes:attributesCopy];
  }

  else if (self->_templateURLDoesNotContainSearchTerms && !self->_didFindSearchTermsParameter && (([elementCopy isEqualToString:@"Param"] & 1) != 0 || objc_msgSend(elementCopy, "isEqualToString:", @"Parameter")))
  {
    [(OpenSearchDescriptionParser *)self _parseParameterElementWithAttributes:attributesCopy];
  }
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  if ([element isEqualToString:@"Url"])
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