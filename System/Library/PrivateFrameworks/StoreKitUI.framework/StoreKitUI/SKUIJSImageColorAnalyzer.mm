@interface SKUIJSImageColorAnalyzer
- (SKUIJSImageColorAnalyzer)initWithAppContext:(id)context clientContext:(id)clientContext;
- (void)analyzeImageAtUrl:(id)url :(id)a4;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)dealloc;
@end

@implementation SKUIJSImageColorAnalyzer

- (SKUIJSImageColorAnalyzer)initWithAppContext:(id)context clientContext:(id)clientContext
{
  contextCopy = context;
  clientContextCopy = clientContext;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIJSImageColorAnalyzer initWithAppContext:clientContext:];
  }

  v17.receiver = self;
  v17.super_class = SKUIJSImageColorAnalyzer;
  v8 = [(IKJSObject *)&v17 initWithAppContext:contextCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientContext, clientContext);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    artworkRequestIDsToManagedCallbacks = v9->_artworkRequestIDsToManagedCallbacks;
    v9->_artworkRequestIDsToManagedCallbacks = v10;

    v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v9->_operationQueue;
    v9->_operationQueue = v12;

    [(NSOperationQueue *)v9->_operationQueue setMaxConcurrentOperationCount:2];
    v14 = [[SKUIResourceLoader alloc] initWithOperationQueue:v9->_operationQueue clientContext:v9->_clientContext];
    resourceLoader = v9->_resourceLoader;
    v9->_resourceLoader = v14;
  }

  return v9;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = SKUIJSImageColorAnalyzer;
  [(SKUIJSImageColorAnalyzer *)&v3 dealloc];
}

- (void)analyzeImageAtUrl:(id)url :(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEBC0];
  v7 = a4;
  v8 = [v6 URLWithString:url];
  v9 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
  v10 = objc_alloc_init(SKUIArtworkRequest);
  [(SKUIResourceRequest *)v10 setCacheKey:v8];
  [(SKUIArtworkRequest *)v10 setDataConsumer:v9];
  [(SKUIArtworkRequest *)v10 setURL:v8];
  [(SKUIArtworkRequest *)v10 setDelegate:self];
  v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{-[SKUIResourceRequest requestIdentifier](v10, "requestIdentifier")}];
  [(SKUIResourceLoader *)self->_resourceLoader loadResourceWithRequest:v10 reason:1];
  v12 = [MEMORY[0x277CD4650] managedValueWithValue:v7];
  context = [v7 context];

  virtualMachine = [context virtualMachine];

  [virtualMachine addManagedReference:v12 withOwner:self];
  v15 = [(NSMutableDictionary *)self->_artworkRequestIDsToManagedCallbacks objectForKey:v11];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 arrayByAddingObject:v12];
  }

  else
  {
    v18[0] = v12;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  }

  [(NSMutableDictionary *)self->_artworkRequestIDsToManagedCallbacks setObject:v17 forKey:v11];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  imageCopy = image;
  requestCopy = request;
  appContext = [(IKJSObject *)self appContext];
  v9 = objc_alloc(MEMORY[0x277CCABB0]);
  requestIdentifier = [requestCopy requestIdentifier];

  v11 = [v9 initWithUnsignedInteger:requestIdentifier];
  v12 = [(NSMutableDictionary *)self->_artworkRequestIDsToManagedCallbacks objectForKey:v11];
  [(NSMutableDictionary *)self->_artworkRequestIDsToManagedCallbacks removeObjectForKey:v11];
  [(SKUIResourceLoader *)self->_resourceLoader removeAllCachedResources];
  if (v12)
  {
    if (imageCopy)
    {
      v13 = [SKUIImageColorAnalyzer analyzeImage:imageCopy];
      v14 = [SKUIJSAnalyzedImageColors alloc];
      appContext2 = [(IKJSObject *)self appContext];
      v16 = [(SKUIJSAnalyzedImageColors *)v14 initWithAppContext:appContext2 analyzedImageColors:v13];
    }

    else
    {
      v16 = 0;
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __56__SKUIJSImageColorAnalyzer_artworkRequest_didLoadImage___block_invoke;
    v18[3] = &unk_2781F9E78;
    v19 = v12;
    v20 = v16;
    selfCopy = self;
    v17 = v16;
    [appContext evaluate:v18 completionBlock:0];
  }
}

void __56__SKUIJSImageColorAnalyzer_artworkRequest_didLoadImage___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 value];
        v17 = *(a1 + 40);
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
        v10 = [v8 callWithArguments:v9];

        v11 = [v8 context];
        v12 = [v11 virtualMachine];

        [v12 removeManagedReference:v7 withOwner:*(a1 + 48)];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v4);
  }
}

- (void)initWithAppContext:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIJSImageColorAnalyzer initWithAppContext:clientContext:]";
}

@end