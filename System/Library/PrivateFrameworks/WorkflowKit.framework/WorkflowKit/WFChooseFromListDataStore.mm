@interface WFChooseFromListDataStore
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSMutableDictionary)contentItems;
- (WFChooseFromListDataStore)init;
- (void)addContentItem:(id)a3 withIdentifier:(id)a4;
- (void)hasAltTextForIdentifier:(id)a3 completion:(id)a4;
- (void)hasImageForIdentifier:(id)a3 completion:(id)a4;
- (void)hasSubtitleForIdentifier:(id)a3 completion:(id)a4;
- (void)loadAltTextWithIdentifier:(id)a3 completion:(id)a4;
- (void)loadImageWithIdentifier:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)loadSubtitleWithIdentifier:(id)a3 completion:(id)a4;
- (void)removeContentItemWithIdentifier:(id)a3;
@end

@implementation WFChooseFromListDataStore

- (WFChooseFromListDataStore)init
{
  v11.receiver = self;
  v11.super_class = WFChooseFromListDataStore;
  v2 = [(WFChooseFromListDataStore *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    contentItems = v2->_contentItems;
    v2->_contentItems = v3;

    v2->_contentItemsLock._os_unfair_lock_opaque = 0;
    v5 = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = v5;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v7 = [(NSXPCListener *)v2->_listener endpoint];
    endpoint = v2->_endpoint;
    v2->_endpoint = v7;

    v9 = v2;
  }

  return v2;
}

- (void)hasSubtitleForIdentifier:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(WFChooseFromListDataStore *)self contentItems];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9[2](v9, 0);
  }

  v9[2](v9, [v8 getListSubtitle:0]);
}

- (void)hasImageForIdentifier:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(WFChooseFromListDataStore *)self contentItems];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9[2](v9, 0);
  }

  v9[2](v9, [v8 getListThumbnail:0 forSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}]);
}

- (void)hasAltTextForIdentifier:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(WFChooseFromListDataStore *)self contentItems];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9[2](v9, 0);
  }

  v9[2](v9, [v8 getListAltText:0]);
}

- (void)loadImageWithIdentifier:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v12 = a5;
  v9 = a3;
  v10 = [(WFChooseFromListDataStore *)self contentItems];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (!v11 || ([v11 getListThumbnail:v12 forSize:{width, height}] & 1) == 0)
  {
    (*(v12 + 2))(v12, 0, 0);
  }
}

- (void)loadAltTextWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFChooseFromListDataStore *)self contentItems];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__WFChooseFromListDataStore_loadAltTextWithIdentifier_completion___block_invoke;
    v11[3] = &unk_1E837B0F0;
    v10 = v6;
    v12 = v10;
    if (([v9 getListAltText:v11] & 1) == 0)
    {
      (*(v10 + 2))(v10, 0);
    }
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (void)loadSubtitleWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFChooseFromListDataStore *)self contentItems];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__WFChooseFromListDataStore_loadSubtitleWithIdentifier_completion___block_invoke;
    v11[3] = &unk_1E837B0C8;
    v10 = v6;
    v13 = v10;
    v12 = v9;
    if (([v12 getListSubtitle:v11] & 1) == 0)
    {
      (*(v10 + 2))(v10, 0);
    }
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __67__WFChooseFromListDataStore_loadSubtitleWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4);
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() localizedTypeDescription];
    (*(v2 + 16))(v2, v6);
  }
}

- (void)removeContentItemWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_contentItemsLock);
  [(NSMutableDictionary *)self->_contentItems setObject:0 forKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_contentItemsLock);
}

- (void)addContentItem:(id)a3 withIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_contentItemsLock);
  [(NSMutableDictionary *)self->_contentItems setObject:v7 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_contentItemsLock);
}

- (NSMutableDictionary)contentItems
{
  os_unfair_lock_lock(&self->_contentItemsLock);
  v3 = self->_contentItems;
  os_unfair_lock_unlock(&self->_contentItemsLock);

  return v3;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = MEMORY[0x1E696B0D0];
  v6 = a4;
  v7 = [v5 interfaceWithProtocol:&unk_1F4AAC948];
  [v6 setExportedInterface:v7];

  [v6 setExportedObject:self];
  [v6 resume];

  return 1;
}

@end