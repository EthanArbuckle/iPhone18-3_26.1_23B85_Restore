@interface SKUIArtworkItemProvider
- (SKUIArtworkItemProvider)initWithURL:(id)l usingResourceLoader:(id)loader;
- (id)loadDataRepresentationForTypeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
@end

@implementation SKUIArtworkItemProvider

- (SKUIArtworkItemProvider)initWithURL:(id)l usingResourceLoader:(id)loader
{
  lCopy = l;
  loaderCopy = loader;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIArtworkItemProvider initWithURL:usingResourceLoader:];
  }

  v18.receiver = self;
  v18.super_class = SKUIArtworkItemProvider;
  v9 = [(SKUIArtworkItemProvider *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_resourceLoader, loader);
    v11 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:1];
    progress = v10->_progress;
    v10->_progress = v11;

    array = [MEMORY[0x277CBEB18] array];
    completionHandlers = v10->_completionHandlers;
    v10->_completionHandlers = array;

    [(SKUIArtworkItemProvider *)v10 registerDataRepresentationForTypeIdentifier:*MEMORY[0x277CC20C8] visibility:3 loadHandler:&__block_literal_global_4];
    v15 = objc_alloc_init(SKUIArtworkRequest);
    [(SKUIArtworkRequest *)v15 setURL:v10->_url];
    v16 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
    [(SKUIArtworkRequest *)v15 setDataConsumer:v16];

    [(SKUIArtworkRequest *)v15 setDelegate:v10];
    [(SKUIResourceLoader *)v10->_resourceLoader loadResourceWithRequest:v15 reason:1];
  }

  return v10;
}

- (id)loadDataRepresentationForTypeIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([identifierCopy isEqualToString:*MEMORY[0x277CC20C8]])
  {
    if ([(NSProgress *)self->_progress isFinished])
    {
      handlerCopy[2](handlerCopy, self->_imageData, 0);
    }

    else
    {
      completionHandlers = self->_completionHandlers;
      v10 = _Block_copy(handlerCopy);
      [(NSMutableArray *)completionHandlers addObject:v10];
    }

    v8 = self->_progress;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKUIArtworkItemProvider;
    v8 = [(SKUIArtworkItemProvider *)&v13 loadDataRepresentationForTypeIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  v11 = v8;

  return v11;
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  imageCopy = image;
  [(NSProgress *)self->_progress setCompletedUnitCount:1];
  v8 = UIImageJPEGRepresentation(imageCopy, 1.0);
  imageData = self->_imageData;
  self->_imageData = v8;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_completionHandlers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v15 + 1) + 8 * v14) + 16))(*(*(&v15 + 1) + 8 * v14));
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  [(NSMutableArray *)self->_completionHandlers removeAllObjects];
  [requestCopy setDelegate:0];
}

- (void)initWithURL:usingResourceLoader:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIArtworkItemProvider initWithURL:usingResourceLoader:]";
}

@end