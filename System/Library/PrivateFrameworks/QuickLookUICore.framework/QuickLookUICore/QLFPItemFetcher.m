@interface QLFPItemFetcher
- (BOOL)isLongFetchOperation;
- (QLFPItemFetcher)initWithCoder:(id)a3;
- (void)_registerItemCollectionIfNeeded;
- (void)_unregisterItemCollectionIfNeeded;
- (void)_urlHandler:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fetchContentWithAllowedOutputClasses:(id)a3 inQueue:(id)a4 updateBlock:(id)a5 completionBlock:(id)a6;
- (void)prepareShareableItem:(id)a3;
@end

@implementation QLFPItemFetcher

- (void)fetchContentWithAllowedOutputClasses:(id)a3 inQueue:(id)a4 updateBlock:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__QLFPItemFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke;
  v18[3] = &unk_279AE12E8;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [(QLFPItemFetcher *)self _urlHandler:v18];
}

void __92__QLFPItemFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) _registerItemCollectionIfNeeded];
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __92__QLFPItemFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke_2;
    v10[3] = &unk_279AE12C0;
    v10[4] = v4;
    v11 = *(a1 + 64);
    v9.receiver = v4;
    v9.super_class = QLFPItemFetcher;
    objc_msgSendSuper2(&v9, sel_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock_, v3, v5, v6, v10);
  }

  else
  {
    v7 = *(a1 + 64);
    v8 = *(*(a1 + 64) + 16);

    v8();
  }
}

void __92__QLFPItemFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 _unregisterItemCollectionIfNeeded];
  (*(*(a1 + 40) + 16))();
}

- (void)_registerItemCollectionIfNeeded
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_itemCollection)
  {
    objc_sync_exit(obj);
  }

  else
  {
    v2 = [MEMORY[0x277CC6408] defaultManager];
    v3 = [(FPItem *)obj->_fpItem itemID];
    v4 = [v2 newCollectionWithItemID:v3];
    itemCollection = obj->_itemCollection;
    obj->_itemCollection = v4;

    v6 = obj->_itemCollection;
    obj->_itemCollection = 0;

    objc_sync_exit(obj);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = 0;
    v10 = obj;
    v8[2] = __50__QLFPItemFetcher__registerItemCollectionIfNeeded__block_invoke;
    v8[3] = &unk_279AE0E40;
    QLRunInMainThread(v8);
  }
}

uint64_t __50__QLFPItemFetcher__registerItemCollectionIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 startObserving];
}

- (void)_unregisterItemCollectionIfNeeded
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_itemCollection;
  itemCollection = v2->_itemCollection;
  v2->_itemCollection = 0;

  objc_sync_exit(v2);
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__QLFPItemFetcher__unregisterItemCollectionIfNeeded__block_invoke;
    v5[3] = &unk_279AE1158;
    v6 = v3;
    QLRunInMainThread(v5);
  }
}

uint64_t __52__QLFPItemFetcher__unregisterItemCollectionIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  v2 = *(a1 + 32);

  return [v2 stopObserving];
}

- (void)_urlHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  fetchedURLHandler = self->_fetchedURLHandler;
  if (fetchedURLHandler)
  {
    (*(v4 + 2))(v4, fetchedURLHandler, 0);
  }

  else
  {
    v7 = [MEMORY[0x277CC6408] defaultManager];
    fpItem = self->_fpItem;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__QLFPItemFetcher__urlHandler___block_invoke;
    v9[3] = &unk_279AE1310;
    v9[4] = self;
    v10 = v5;
    [v7 fetchURLForItem:fpItem completionHandler:v9];
  }
}

void __31__QLFPItemFetcher__urlHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = MEMORY[0x277D43EF8];
    v15 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a1 + 32) + 80);
      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_261653000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch url for item: %@ error:%@ #Downloading", &v18, 0x16u);
    }

    v13 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CDAB18]);
    v9 = [v8 initWithURL:v5 sandboxType:*MEMORY[0x277CDAB68]];
    v10 = *(a1 + 32);
    v11 = *(v10 + 88);
    *(v10 + 88) = v9;

    v12 = *(*(a1 + 32) + 88);
    v13 = *(*(a1 + 40) + 16);
  }

  v13();

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(QLFPItemFetcher *)self _unregisterItemCollectionIfNeeded];
  v3.receiver = self;
  v3.super_class = QLFPItemFetcher;
  [(QLUbiquitousItemFetcher *)&v3 dealloc];
}

- (BOOL)isLongFetchOperation
{
  v3 = [(FPItem *)self->_fpItem isCloudItem];
  if (v3)
  {
    LOBYTE(v3) = [(FPItem *)self->_fpItem isDownloaded]^ 1;
  }

  return v3;
}

- (void)prepareShareableItem:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__QLFPItemFetcher_prepareShareableItem___block_invoke;
  v6[3] = &unk_279AE1360;
  v7 = v4;
  v5 = v4;
  [(QLFPItemFetcher *)self _urlHandler:v6];
}

void __40__QLFPItemFetcher_prepareShareableItem___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __40__QLFPItemFetcher_prepareShareableItem___block_invoke_2;
  v1[3] = &unk_279AE1338;
  v2 = *(a1 + 32);
  QLRunInMainThread(v1);
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = QLFPItemFetcher;
  v4 = a3;
  [(QLUbiquitousItemFetcher *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_fpItem forKey:{@"fpItem", v5.receiver, v5.super_class}];
}

- (QLFPItemFetcher)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = QLFPItemFetcher;
  v5 = [(QLUbiquitousItemFetcher *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fpItem"];
    fpItem = v5->_fpItem;
    v5->_fpItem = v6;

    v8 = v5;
  }

  return v5;
}

@end