@interface SUScriptStoreBagLoader
- (SUScriptStoreBagLoader)init;
- (id)scriptStoreBagDictionary;
- (void)_updateWithBagDictionary:(id)dictionary allowsPostingBagDidChangeNotification:(BOOL)notification;
- (void)dealloc;
@end

@implementation SUScriptStoreBagLoader

- (SUScriptStoreBagLoader)init
{
  v8.receiver = self;
  v8.super_class = SUScriptStoreBagLoader;
  v2 = [(SUScriptStoreBagLoader *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesStoreUI.SUScriptStoreBagLoader", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    mEMORY[0x1E69E4800] = [MEMORY[0x1E69E4800] sharedBagLoadingController];
    bagDictionary = [mEMORY[0x1E69E4800] bagDictionary];
    [(SUScriptStoreBagLoader *)v2 _updateWithBagDictionary:bagDictionary allowsPostingBagDidChangeNotification:0];

    [mEMORY[0x1E69E4800] addBagObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  mEMORY[0x1E69E4800] = [MEMORY[0x1E69E4800] sharedBagLoadingController];
  [mEMORY[0x1E69E4800] removeBagObserver:self];

  v4.receiver = self;
  v4.super_class = SUScriptStoreBagLoader;
  [(SUScriptStoreBagLoader *)&v4 dealloc];
}

- (id)scriptStoreBagDictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__SUScriptStoreBagLoader_scriptStoreBagDictionary__block_invoke;
  v5[3] = &unk_1E81647F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__SUScriptStoreBagLoader_scriptStoreBagDictionary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    if (*(v2 + 16))
    {
      v4 = [[SUScriptDictionary alloc] initWithDictionary:*(*(a1 + 32) + 16)];
      v5 = *(a1 + 32);
      v6 = *(v5 + 24);
      *(v5 + 24) = v4;

      v3 = *(*(a1 + 32) + 24);
    }

    else
    {
      v3 = 0;
    }
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

- (void)_updateWithBagDictionary:(id)dictionary allowsPostingBagDidChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  dictionaryCopy = dictionary;
  bagDictionary = self->_bagDictionary;
  if (!dictionaryCopy && bagDictionary || dictionaryCopy && !bagDictionary || dictionaryCopy && bagDictionary && ![(NSDictionary *)bagDictionary isEqualToDictionary:dictionaryCopy])
  {
    accessQueue = self->_accessQueue;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __89__SUScriptStoreBagLoader__updateWithBagDictionary_allowsPostingBagDidChangeNotification___block_invoke;
    v13 = &unk_1E81644A8;
    selfCopy = self;
    v15 = dictionaryCopy;
    dispatch_sync(accessQueue, &v10);
    if (notificationCopy)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"SUScriptStoreBagDidChangeNotification" object:self];
    }
  }
}

void __89__SUScriptStoreBagLoader__updateWithBagDictionary_allowsPostingBagDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;
}

@end