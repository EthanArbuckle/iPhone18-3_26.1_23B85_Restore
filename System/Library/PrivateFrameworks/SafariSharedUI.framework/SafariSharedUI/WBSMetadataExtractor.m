@interface WBSMetadataExtractor
+ (id)metadataExtractorScriptSource;
- (JSContext)context;
- (WBSMetadataExtractor)initWithWebProcessPlugInFrame:(id)a3 useNormalWorld:(BOOL)a4;
- (id)_colorFromColorComponents:(id)a3;
- (id)_resultForInvokingFunctionWithName:(id)a3;
- (id)appleTouchIconURLs;
- (id)faviconURLs;
- (id)firstElementForSelector:(id)a3;
- (void)dealloc;
- (void)getTemplateIconURL:(id *)a3 andColor:(id *)a4;
@end

@implementation WBSMetadataExtractor

+ (id)metadataExtractorScriptSource
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [v2 initWithBytesNoCopy:metadataExtractorSource length:2186 encoding:4 freeWhenDone:0];

  return v3;
}

- (WBSMetadataExtractor)initWithWebProcessPlugInFrame:(id)a3 useNormalWorld:(BOOL)a4
{
  v7 = a3;
  v8 = [(WBSMetadataExtractor *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_webProcessPlugInFrame, a3);
    if (a4)
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
    v5 = [(WBSMetadataExtractor *)self makeContext];
    v6 = self->_context;
    self->_context = v5;

    v7 = [objc_opt_class() metadataExtractorScriptSource];
    v8 = [(JSContext *)self->_context evaluateScript:v7];
    v3 = self->_context;
  }

  return v3;
}

- (id)_resultForInvokingFunctionWithName:(id)a3
{
  v4 = a3;
  v5 = [(WBSMetadataExtractor *)self context];
  v6 = [v5 globalObject];
  v7 = [v6 valueForProperty:@"MetadataExtractorJS"];

  if ([v7 isUndefined] & 1) != 0 || (objc_msgSend(v7, "valueForProperty:", v4), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isUndefined"), v8, (v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 invokeMethod:v4 withArguments:0];
  }

  return v10;
}

- (id)appleTouchIconURLs
{
  v2 = [(WBSMetadataExtractor *)self _resultForInvokingFunctionWithName:@"extractAppleTouchIconURLs"];
  v3 = [v2 toArray];
  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_25];

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
  v3 = [v2 toArray];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

- (id)_colorFromColorComponents:(id)a3
{
  v3 = a3;
  if ([v3 count] == 3)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    [v4 doubleValue];
    v6 = v5;

    v7 = [v3 objectAtIndexedSubscript:1];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v3 objectAtIndexedSubscript:2];
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

- (void)getTemplateIconURL:(id *)a3 andColor:(id *)a4
{
  *a3 = 0;
  *a4 = 0;
  v12 = [(WBSMetadataExtractor *)self _resultForInvokingFunctionWithName:@"extractTemplateIconURLAndColor"];
  v7 = [v12 toDictionary];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 safari_stringForKey:@"url"];
    if ([v9 length])
    {
      v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
      *a3 = v10;
    }

    else
    {
      *a3 = 0;
    }

    v11 = [v8 safari_arrayForKey:@"color"];
    *a4 = [(WBSMetadataExtractor *)self _colorFromColorComponents:v11];
  }
}

- (id)firstElementForSelector:(id)a3
{
  v4 = a3;
  v5 = [(WBSMetadataExtractor *)self context];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"document.querySelector('%@')", v4];

  v7 = [v5 evaluateScript:v6];

  return v7;
}

@end