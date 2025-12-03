@interface WBSMetadataExtractor
+ (id)metadataExtractorScriptSource;
- (JSContext)context;
- (WBSMetadataExtractor)initWithWebProcessPlugInFrame:(id)frame useNormalWorld:(BOOL)world;
- (id)_colorFromColorComponents:(id)components;
- (id)_resultForInvokingFunctionWithName:(id)name;
- (id)appleTouchIconURLs;
- (id)faviconURLs;
- (id)firstElementForSelector:(id)selector;
- (void)dealloc;
- (void)getTemplateIconURL:(id *)l andColor:(id *)color;
@end

@implementation WBSMetadataExtractor

+ (id)metadataExtractorScriptSource
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [v2 initWithBytesNoCopy:metadataExtractorSource length:2186 encoding:4 freeWhenDone:0];

  return v3;
}

- (WBSMetadataExtractor)initWithWebProcessPlugInFrame:(id)frame useNormalWorld:(BOOL)world
{
  frameCopy = frame;
  v8 = [(WBSMetadataExtractor *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_webProcessPlugInFrame, frame);
    if (world)
    {
      [MEMORY[0x1E6985398] normalWorld];
    }

    else
    {
      [MEMORY[0x1E6985398] world];
    }
    v10 = ;
    webProcessPlugInScriptWorld = v9->_webProcessPlugInScriptWorld;
    v9->_webProcessPlugInScriptWorld = v10;

    v12 = v9;
  }

  return v9;
}

- (void)dealloc
{
  [(WKWebProcessPlugInScriptWorld *)self->_webProcessPlugInScriptWorld clearWrappers];
  v3.receiver = self;
  v3.super_class = WBSMetadataExtractor;
  [(WBSMetadataExtractor *)&v3 dealloc];
}

- (JSContext)context
{
  context = self->_context;
  if (context)
  {
    v3 = context;
  }

  else
  {
    makeContext = [(WBSMetadataExtractor *)self makeContext];
    v6 = self->_context;
    self->_context = makeContext;

    metadataExtractorScriptSource = [objc_opt_class() metadataExtractorScriptSource];
    v8 = [(JSContext *)self->_context evaluateScript:metadataExtractorScriptSource];
    v3 = self->_context;
  }

  return v3;
}

- (id)_resultForInvokingFunctionWithName:(id)name
{
  nameCopy = name;
  context = [(WBSMetadataExtractor *)self context];
  globalObject = [context globalObject];
  v7 = [globalObject valueForProperty:@"MetadataExtractorJS"];

  if ([v7 isUndefined] & 1) != 0 || (objc_msgSend(v7, "valueForProperty:", nameCopy), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isUndefined"), v8, (v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 invokeMethod:nameCopy withArguments:0];
  }

  return v10;
}

- (id)appleTouchIconURLs
{
  v2 = [(WBSMetadataExtractor *)self _resultForInvokingFunctionWithName:@"extractAppleTouchIconURLs"];
  toArray = [v2 toArray];
  v4 = [toArray safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_25];

  return v4;
}

id __42__WBSMetadataExtractor_appleTouchIconURLs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
    if ([v3 safari_isHTTPFamilyURL])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)faviconURLs
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(WBSMetadataExtractor *)self _resultForInvokingFunctionWithName:@"extractFaviconURLs"];
  toArray = [v2 toArray];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(toArray, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = toArray;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [MEMORY[0x1E695DFF8] URLWithString:{v10, v13}];
          if ([v11 safari_isFaviconURL])
          {
            [v4 addObject:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_colorFromColorComponents:(id)components
{
  componentsCopy = components;
  if ([componentsCopy count] == 3)
  {
    v4 = [componentsCopy objectAtIndexedSubscript:0];
    [v4 doubleValue];
    v6 = v5;

    v7 = [componentsCopy objectAtIndexedSubscript:1];
    [v7 doubleValue];
    v9 = v8;

    v10 = [componentsCopy objectAtIndexedSubscript:2];
    [v10 doubleValue];
    v12 = v11;

    v13 = [MEMORY[0x1E69DC888] colorWithRed:v6 / 255.0 green:v9 / 255.0 blue:v12 / 255.0 alpha:1.0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)getTemplateIconURL:(id *)l andColor:(id *)color
{
  *l = 0;
  *color = 0;
  v12 = [(WBSMetadataExtractor *)self _resultForInvokingFunctionWithName:@"extractTemplateIconURLAndColor"];
  toDictionary = [v12 toDictionary];
  v8 = toDictionary;
  if (toDictionary)
  {
    v9 = [toDictionary safari_stringForKey:@"url"];
    if ([v9 length])
    {
      v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
      *l = v10;
    }

    else
    {
      *l = 0;
    }

    v11 = [v8 safari_arrayForKey:@"color"];
    *color = [(WBSMetadataExtractor *)self _colorFromColorComponents:v11];
  }
}

- (id)firstElementForSelector:(id)selector
{
  selectorCopy = selector;
  context = [(WBSMetadataExtractor *)self context];
  selectorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"document.querySelector('%@')", selectorCopy];

  v7 = [context evaluateScript:selectorCopy];

  return v7;
}

@end