@interface WBSLinkPresentationIconCache
- (WBSLinkPresentationIconCache)initWithImageDirectoryURL:(id)l;
- (WBSSiteMetadataProviderDelegate)providerDelegate;
- (id)imageForHost:(id)host;
- (void)_historyItemsWereRemoved:(id)removed;
- (void)dealloc;
@end

@implementation WBSLinkPresentationIconCache

- (WBSLinkPresentationIconCache)initWithImageDirectoryURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = WBSLinkPresentationIconCache;
  v5 = [(WBSLinkPresentationIconCache *)&v11 init];
  if (v5)
  {
    v6 = [[WBSSiteMetadataImageCache alloc] initWithImageDirectoryURL:lCopy imageType:0];
    imageCache = v5->_imageCache;
    v5->_imageCache = v6;

    [(WBSSiteMetadataImageCache *)v5->_imageCache setUpImageCache];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__historyItemsWereRemoved_ name:*MEMORY[0x1E69C9358] object:0];

    v9 = v5;
  }

  return v5;
}

- (id)imageForHost:(id)host
{
  hostCopy = host;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__12;
  v18 = __Block_byref_object_dispose__12;
  v19 = 0;
  imageCache = self->_imageCache;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__WBSLinkPresentationIconCache_imageForHost___block_invoke;
  v11[3] = &unk_1E8285EB0;
  v13 = &v14;
  v7 = v5;
  v12 = v7;
  [(WBSSiteMetadataImageCache *)imageCache getImageForKeyString:hostCopy completionHandler:v11];
  v8 = dispatch_time(0, 100000000);
  dispatch_group_wait(v7, v8);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __45__WBSLinkPresentationIconCache_imageForHost___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)dealloc
{
  [(WBSSiteMetadataImageCache *)self->_imageCache savePendingChangesBeforeTermination];
  v3.receiver = self;
  v3.super_class = WBSLinkPresentationIconCache;
  [(WBSLinkPresentationIconCache *)&v3 dealloc];
}

- (void)_historyItemsWereRemoved:(id)removed
{
  userInfo = [removed userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69C9340]];
  v8 = [v5 safari_setByApplyingBlock:&__block_literal_global_23];

  if ([v8 count])
  {
    imageCache = self->_imageCache;
    allObjects = [v8 allObjects];
    [(WBSSiteMetadataImageCache *)imageCache removeImagesFromCacheForKeyStrings:allObjects];
  }
}

id __57__WBSLinkPresentationIconCache__historyItemsWereRemoved___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];
  v3 = [v2 host];

  return v3;
}

- (WBSSiteMetadataProviderDelegate)providerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);

  return WeakRetained;
}

@end