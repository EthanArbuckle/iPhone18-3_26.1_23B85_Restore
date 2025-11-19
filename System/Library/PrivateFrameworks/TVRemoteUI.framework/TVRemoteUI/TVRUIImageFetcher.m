@interface TVRUIImageFetcher
+ (TVRUIImageFetcher)imageFetcherWithOptions:(unint64_t)a3;
- (BOOL)hasPendingCompletionHandlersForIdentifier:(id)a3;
- (TVRUIImageFetcher)initWithOptions:(unint64_t)a3;
- (id)cachedImageForIdentifier:(id)a3;
- (void)addPendingCompletionHandler:(id)a3 identifier:(id)a4;
- (void)fetchImageWithTemplateString:(id)a3 size:(CGSize)a4 identifier:(id)a5 completion:(id)a6;
- (void)fetchImageWithURL:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)invokeCompletionHandlersForIdentifier:(id)a3 image:(id)a4;
- (void)removePendingCompletionHandlersForIdentifier:(id)a3;
@end

@implementation TVRUIImageFetcher

- (TVRUIImageFetcher)initWithOptions:(unint64_t)a3
{
  v14.receiver = self;
  v14.super_class = TVRUIImageFetcher;
  v4 = [(TVRUIImageFetcher *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = a3;
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedImages = v5->_cachedImages;
    v5->_cachedImages = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingImageRequestCompletionHandlers = v5->_pendingImageRequestCompletionHandlers;
    v5->_pendingImageRequestCompletionHandlers = v8;

    v10 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [v10 setHTTPMaximumConnectionsPerHost:30];
    v11 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v10];
    urlSession = v5->_urlSession;
    v5->_urlSession = v11;
  }

  return v5;
}

+ (TVRUIImageFetcher)imageFetcherWithOptions:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithOptions:a3];

  return v3;
}

- (void)fetchImageWithTemplateString:(id)a3 size:(CGSize)a4 identifier:(id)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = MEMORY[0x277D6C500];
  v12 = a6;
  v13 = a5;
  v15 = [v11 imageTemplateWithString:a3];
  v14 = [v15 urlForSize:{width, height}];
  [(TVRUIImageFetcher *)self fetchImageWithURL:v14 identifier:v13 completion:v12];
}

- (void)fetchImageWithURL:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [(TVRUIImageFetcher *)self cachedImages];
    v13 = [v12 objectForKeyedSubscript:v9];

    if (v13)
    {
      (v11)[2](v11, v9, v13);
    }

    else
    {
      v14 = [(TVRUIImageFetcher *)self hasPendingCompletionHandlersForIdentifier:v9];
      [(TVRUIImageFetcher *)self addPendingCompletionHandler:v11 identifier:v9];
      if (!v14)
      {
        objc_initWeak(&location, self);
        v15 = [(TVRUIImageFetcher *)self urlSession];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __61__TVRUIImageFetcher_fetchImageWithURL_identifier_completion___block_invoke;
        v17[3] = &unk_279D87D00;
        objc_copyWeak(&v19, &location);
        v18 = v9;
        v16 = [v15 dataTaskWithURL:v8 completionHandler:v17];

        [v16 resume];
        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    (*(v10 + 2))(v10, v9, 0);
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

- (id)cachedImageForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TVRUIImageFetcher *)self cachedImages];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)hasPendingCompletionHandlersForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TVRUIImageFetcher *)self pendingImageRequestCompletionHandlers];
  v6 = [v5 objectForKeyedSubscript:v4];

  LOBYTE(v5) = [v6 count] != 0;
  return v5;
}

- (void)addPendingCompletionHandler:(id)a3 identifier:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(TVRUIImageFetcher *)self pendingImageRequestCompletionHandlers];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = _Block_copy(v7);
  if (v9)
  {
    v11 = [v9 arrayByAddingObject:v10];
  }

  else
  {
    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  v12 = [(TVRUIImageFetcher *)self pendingImageRequestCompletionHandlers];
  [v12 setObject:v11 forKeyedSubscript:v6];
}

- (void)removePendingCompletionHandlersForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TVRUIImageFetcher *)self pendingImageRequestCompletionHandlers];
  [v5 removeObjectForKey:v4];
}

- (void)invokeCompletionHandlersForIdentifier:(id)a3 image:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    if (v7)
    {
      v8 = [(TVRUIImageFetcher *)self cachedImages];
      [v8 setObject:v7 forKeyedSubscript:v6];
    }

    v9 = [(TVRUIImageFetcher *)self pendingImageRequestCompletionHandlers];
    v10 = [v9 objectForKeyedSubscript:v6];

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

    [(TVRUIImageFetcher *)self removePendingCompletionHandlersForIdentifier:v6, v16];
  }
}

@end