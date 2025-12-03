@interface TVRUIImageFetcher
+ (TVRUIImageFetcher)imageFetcherWithOptions:(unint64_t)options;
- (BOOL)hasPendingCompletionHandlersForIdentifier:(id)identifier;
- (TVRUIImageFetcher)initWithOptions:(unint64_t)options;
- (id)cachedImageForIdentifier:(id)identifier;
- (void)addPendingCompletionHandler:(id)handler identifier:(id)identifier;
- (void)fetchImageWithTemplateString:(id)string size:(CGSize)size identifier:(id)identifier completion:(id)completion;
- (void)fetchImageWithURL:(id)l identifier:(id)identifier completion:(id)completion;
- (void)invokeCompletionHandlersForIdentifier:(id)identifier image:(id)image;
- (void)removePendingCompletionHandlersForIdentifier:(id)identifier;
@end

@implementation TVRUIImageFetcher

- (TVRUIImageFetcher)initWithOptions:(unint64_t)options
{
  v14.receiver = self;
  v14.super_class = TVRUIImageFetcher;
  v4 = [(TVRUIImageFetcher *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = options;
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedImages = v5->_cachedImages;
    v5->_cachedImages = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingImageRequestCompletionHandlers = v5->_pendingImageRequestCompletionHandlers;
    v5->_pendingImageRequestCompletionHandlers = v8;

    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [defaultSessionConfiguration setHTTPMaximumConnectionsPerHost:30];
    v11 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
    urlSession = v5->_urlSession;
    v5->_urlSession = v11;
  }

  return v5;
}

+ (TVRUIImageFetcher)imageFetcherWithOptions:(unint64_t)options
{
  v3 = [[self alloc] initWithOptions:options];

  return v3;
}

- (void)fetchImageWithTemplateString:(id)string size:(CGSize)size identifier:(id)identifier completion:(id)completion
{
  height = size.height;
  width = size.width;
  v11 = MEMORY[0x277D6C500];
  completionCopy = completion;
  identifierCopy = identifier;
  v15 = [v11 imageTemplateWithString:string];
  v14 = [v15 urlForSize:{width, height}];
  [(TVRUIImageFetcher *)self fetchImageWithURL:v14 identifier:identifierCopy completion:completionCopy];
}

- (void)fetchImageWithURL:(id)l identifier:(id)identifier completion:(id)completion
{
  lCopy = l;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = completionCopy;
  if (lCopy)
  {
    cachedImages = [(TVRUIImageFetcher *)self cachedImages];
    v13 = [cachedImages objectForKeyedSubscript:identifierCopy];

    if (v13)
    {
      (v11)[2](v11, identifierCopy, v13);
    }

    else
    {
      v14 = [(TVRUIImageFetcher *)self hasPendingCompletionHandlersForIdentifier:identifierCopy];
      [(TVRUIImageFetcher *)self addPendingCompletionHandler:v11 identifier:identifierCopy];
      if (!v14)
      {
        objc_initWeak(&location, self);
        urlSession = [(TVRUIImageFetcher *)self urlSession];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __61__TVRUIImageFetcher_fetchImageWithURL_identifier_completion___block_invoke;
        v17[3] = &unk_279D87D00;
        objc_copyWeak(&v19, &location);
        v18 = identifierCopy;
        v16 = [urlSession dataTaskWithURL:lCopy completionHandler:v17];

        [v16 resume];
        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, identifierCopy, 0);
  }
}

void __61__TVRUIImageFetcher_fetchImageWithURL_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__TVRUIImageFetcher_fetchImageWithURL_identifier_completion___block_invoke_2;
  block[3] = &unk_279D87CD8;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __61__TVRUIImageFetcher_fetchImageWithURL_identifier_completion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v3 = [MEMORY[0x277D755B8] imageWithData:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained invokeCompletionHandlersForIdentifier:*(a1 + 40) image:v3];
}

- (id)cachedImageForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cachedImages = [(TVRUIImageFetcher *)self cachedImages];
  v6 = [cachedImages objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (BOOL)hasPendingCompletionHandlersForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pendingImageRequestCompletionHandlers = [(TVRUIImageFetcher *)self pendingImageRequestCompletionHandlers];
  v6 = [pendingImageRequestCompletionHandlers objectForKeyedSubscript:identifierCopy];

  LOBYTE(pendingImageRequestCompletionHandlers) = [v6 count] != 0;
  return pendingImageRequestCompletionHandlers;
}

- (void)addPendingCompletionHandler:(id)handler identifier:(id)identifier
{
  v13[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  pendingImageRequestCompletionHandlers = [(TVRUIImageFetcher *)self pendingImageRequestCompletionHandlers];
  v9 = [pendingImageRequestCompletionHandlers objectForKeyedSubscript:identifierCopy];

  v10 = _Block_copy(handlerCopy);
  if (v9)
  {
    v11 = [v9 arrayByAddingObject:v10];
  }

  else
  {
    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  pendingImageRequestCompletionHandlers2 = [(TVRUIImageFetcher *)self pendingImageRequestCompletionHandlers];
  [pendingImageRequestCompletionHandlers2 setObject:v11 forKeyedSubscript:identifierCopy];
}

- (void)removePendingCompletionHandlersForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pendingImageRequestCompletionHandlers = [(TVRUIImageFetcher *)self pendingImageRequestCompletionHandlers];
  [pendingImageRequestCompletionHandlers removeObjectForKey:identifierCopy];
}

- (void)invokeCompletionHandlersForIdentifier:(id)identifier image:(id)image
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  imageCopy = image;
  if ([identifierCopy length])
  {
    if (imageCopy)
    {
      cachedImages = [(TVRUIImageFetcher *)self cachedImages];
      [cachedImages setObject:imageCopy forKeyedSubscript:identifierCopy];
    }

    pendingImageRequestCompletionHandlers = [(TVRUIImageFetcher *)self pendingImageRequestCompletionHandlers];
    v10 = [pendingImageRequestCompletionHandlers objectForKeyedSubscript:identifierCopy];

    if ([v10 count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          v15 = 0;
          do
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v11);
            }

            (*(*(*(&v16 + 1) + 8 * v15) + 16))(*(*(&v16 + 1) + 8 * v15));
            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }

    [(TVRUIImageFetcher *)self removePendingCompletionHandlersForIdentifier:identifierCopy, v16];
  }
}

@end