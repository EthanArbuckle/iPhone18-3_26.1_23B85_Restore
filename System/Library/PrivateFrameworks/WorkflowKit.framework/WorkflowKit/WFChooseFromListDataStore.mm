@interface WFChooseFromListDataStore
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSMutableDictionary)contentItems;
- (WFChooseFromListDataStore)init;
- (void)addContentItem:(id)item withIdentifier:(id)identifier;
- (void)hasAltTextForIdentifier:(id)identifier completion:(id)completion;
- (void)hasImageForIdentifier:(id)identifier completion:(id)completion;
- (void)hasSubtitleForIdentifier:(id)identifier completion:(id)completion;
- (void)loadAltTextWithIdentifier:(id)identifier completion:(id)completion;
- (void)loadImageWithIdentifier:(id)identifier size:(CGSize)size completion:(id)completion;
- (void)loadSubtitleWithIdentifier:(id)identifier completion:(id)completion;
- (void)removeContentItemWithIdentifier:(id)identifier;
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
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = anonymousListener;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    endpoint = [(NSXPCListener *)v2->_listener endpoint];
    endpoint = v2->_endpoint;
    v2->_endpoint = endpoint;

    v9 = v2;
  }

  return v2;
}

- (void)hasSubtitleForIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  contentItems = [(WFChooseFromListDataStore *)self contentItems];
  v8 = [contentItems objectForKeyedSubscript:identifierCopy];

  if (!v8)
  {
    completionCopy[2](completionCopy, 0);
  }

  completionCopy[2](completionCopy, [v8 getListSubtitle:0]);
}

- (void)hasImageForIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  contentItems = [(WFChooseFromListDataStore *)self contentItems];
  v8 = [contentItems objectForKeyedSubscript:identifierCopy];

  if (!v8)
  {
    completionCopy[2](completionCopy, 0);
  }

  completionCopy[2](completionCopy, [v8 getListThumbnail:0 forSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}]);
}

- (void)hasAltTextForIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  contentItems = [(WFChooseFromListDataStore *)self contentItems];
  v8 = [contentItems objectForKeyedSubscript:identifierCopy];

  if (!v8)
  {
    completionCopy[2](completionCopy, 0);
  }

  completionCopy[2](completionCopy, [v8 getListAltText:0]);
}

- (void)loadImageWithIdentifier:(id)identifier size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  identifierCopy = identifier;
  contentItems = [(WFChooseFromListDataStore *)self contentItems];
  v11 = [contentItems objectForKeyedSubscript:identifierCopy];

  if (!v11 || ([v11 getListThumbnail:completionCopy forSize:{width, height}] & 1) == 0)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)loadAltTextWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  contentItems = [(WFChooseFromListDataStore *)self contentItems];
  v9 = [contentItems objectForKeyedSubscript:identifierCopy];

  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__WFChooseFromListDataStore_loadAltTextWithIdentifier_completion___block_invoke;
    v11[3] = &unk_1E837B0F0;
    v10 = completionCopy;
    v12 = v10;
    if (([v9 getListAltText:v11] & 1) == 0)
    {
      (*(v10 + 2))(v10, 0);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)loadSubtitleWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  contentItems = [(WFChooseFromListDataStore *)self contentItems];
  v9 = [contentItems objectForKeyedSubscript:identifierCopy];

  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__WFChooseFromListDataStore_loadSubtitleWithIdentifier_completion___block_invoke;
    v11[3] = &unk_1E837B0C8;
    v10 = completionCopy;
    v13 = v10;
    v12 = v9;
    if (([v12 getListSubtitle:v11] & 1) == 0)
    {
      (*(v10 + 2))(v10, 0);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (void)removeContentItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_contentItemsLock);
  [(NSMutableDictionary *)self->_contentItems setObject:0 forKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_contentItemsLock);
}

- (void)addContentItem:(id)item withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  itemCopy = item;
  os_unfair_lock_lock(&self->_contentItemsLock);
  [(NSMutableDictionary *)self->_contentItems setObject:itemCopy forKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_contentItemsLock);
}

- (NSMutableDictionary)contentItems
{
  os_unfair_lock_lock(&self->_contentItemsLock);
  v3 = self->_contentItems;
  os_unfair_lock_unlock(&self->_contentItemsLock);

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x1E696B0D0];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_1F4AAC948];
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

@end