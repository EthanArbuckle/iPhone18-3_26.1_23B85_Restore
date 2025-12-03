@interface SUScriptDownloadQueue
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSArray)downloads;
- (NSString)queueType;
- (SUScriptDownloadQueue)initWithQueueType:(id)type clientInterface:(id)interface;
- (id)scriptAttributeKeys;
- (void)_setupManagersWithClientInterface:(id)interface queueType:(id)type;
- (void)_tearDownQueues;
- (void)dealloc;
- (void)downloadManager:(id)manager downloadStatesDidChange:(id)change;
- (void)downloadManagerDownloadsDidChange:(id)change;
- (void)finalizeForWebScript;
@end

@implementation SUScriptDownloadQueue

- (SUScriptDownloadQueue)initWithQueueType:(id)type clientInterface:(id)interface
{
  v6 = [(SUScriptObject *)self init];
  if (v6)
  {
    v6->_clientInterface = interface;
    v6->_queueType = [type copy];
    v7 = dispatch_queue_create("com.apple.iTunesStoreUI.SUScriptDownloadQueue", 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__SUScriptDownloadQueue_initWithQueueType_clientInterface___block_invoke;
    v9[3] = &unk_1E8165198;
    v9[4] = v6;
    v9[5] = interface;
    v9[6] = type;
    v9[7] = v7;
    dispatch_async(v7, v9);
  }

  return v6;
}

void __59__SUScriptDownloadQueue_initWithQueueType_clientInterface___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupManagersWithClientInterface:*(a1 + 40) queueType:*(a1 + 48)];
  v2 = *(a1 + 56);

  dispatch_release(v2);
}

- (void)dealloc
{
  [(SUScriptDownloadQueue *)self _tearDownQueues];

  v3.receiver = self;
  v3.super_class = SUScriptDownloadQueue;
  [(SUScriptObject *)&v3 dealloc];
}

void __35__SUScriptDownloadQueue_checkQueue__block_invoke(uint64_t a1)
{
  [*(a1 + 32) lock];
  v2 = [*(*(a1 + 32) + 80) downloadManager];
  v3 = *(*(a1 + 32) + 88);
  [*(a1 + 32) unlock];
  [v2 reloadFromServer];
  [v3 reloadFromServer];
}

- (NSArray)downloads
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [(SUScriptObject *)self lock];
  downloads = [(SUDownloadManager *)self->_downloadManager downloads];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)downloads countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(downloads);
        }

        v9 = [[SUScriptDownload alloc] initWithISUDownload:*(*(&v11 + 1) + 8 * v8)];
        [(NSArray *)array addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)downloads countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(SUScriptObject *)self unlock];
  return array;
}

- (NSString)queueType
{
  v2 = self->_queueType;

  return v2;
}

- (void)downloadManager:(id)manager downloadStatesDidChange:(id)change
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [change countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(change);
        }

        v10 = [[SUScriptDownload alloc] initWithSSDownload:*(*(&v11 + 1) + 8 * v9)];
        [(SUScriptObject *)self dispatchEvent:v10 forName:@"downloadstatechange"];

        ++v9;
      }

      while (v7 != v9);
      v7 = [change countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)downloadManagerDownloadsDidChange:(id)change
{
  [(SUScriptObject *)self lock];
  [(SUDownloadManager *)self->_downloadManager reloadDownloadManager];
  [(SUScriptObject *)self unlock];

  [(SUScriptObject *)self dispatchEvent:0 forName:@"downloadschange"];
}

- (void)_setupManagersWithClientInterface:(id)interface queueType:(id)type
{
  if ([type isEqualToString:@"media"])
  {
    iPodDownloadKinds = [MEMORY[0x1E69D48D0] IPodDownloadKinds];
    musicStoreItemKinds = [MEMORY[0x1E69D4980] musicStoreItemKinds];
    goto LABEL_9;
  }

  if ([type isEqualToString:@"software"])
  {
    softwareDownloadKinds = [MEMORY[0x1E69D48D0] softwareDownloadKinds];
LABEL_7:
    iPodDownloadKinds = softwareDownloadKinds;
    musicStoreItemKinds = 0;
    goto LABEL_9;
  }

  if ([type isEqualToString:@"ebooks"])
  {
    softwareDownloadKinds = [MEMORY[0x1E69D48D0] EBookDownloadKinds];
    goto LABEL_7;
  }

  musicStoreItemKinds = 0;
  iPodDownloadKinds = 0;
LABEL_9:
  queueSessionManager = [interface queueSessionManager];
  if ([iPodDownloadKinds count])
  {
    v11 = [queueSessionManager beginDownloadManagerSessionWithDownloadKinds:iPodDownloadKinds];
    [v11 addObserver:self];
    v12 = [[SUDownloadManager alloc] initWithDownloadManager:v11 clientInterface:interface];
    v13 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__SUScriptDownloadQueue__setupManagersWithClientInterface_queueType___block_invoke;
    v15[3] = &unk_1E8164348;
    v15[4] = v13;
    [(SUDownloadManager *)v12 preflightWithCompletionBlock:v15];
    [(SUScriptObject *)self lock];
    self->_downloadManager = v12;
    [(SUScriptObject *)self unlock];
  }

  if ([musicStoreItemKinds count])
  {
    v14 = [queueSessionManager beginPreorderManagerSessionWithItemKinds:musicStoreItemKinds];
    [v14 addObserver:self];
    [(SUScriptObject *)self lock];
    self->_preorderManager = v14;
    [(SUScriptObject *)self unlock];
  }
}

uint64_t __69__SUScriptDownloadQueue__setupManagersWithClientInterface_queueType___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) object];

  return [v1 dispatchEvent:0 forName:@"downloadschange"];
}

- (void)_tearDownQueues
{
  queueSessionManager = [(SUClientInterface *)self->_clientInterface queueSessionManager];
  downloadManager = self->_downloadManager;
  if (downloadManager)
  {
    downloadManager = [(SUDownloadManager *)downloadManager downloadManager];
    [(SUQueueSessionManager *)queueSessionManager endDownloadManagerSessionForManager:downloadManager];
    [(SSDownloadManager *)downloadManager removeObserver:self];

    self->_downloadManager = 0;
  }

  if (self->_preorderManager)
  {
    [(SUQueueSessionManager *)queueSessionManager endPreorderManagerSessionWithManager:?];
    [(SSPreorderManager *)self->_preorderManager removeObserver:self];

    self->_preorderManager = 0;
  }
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_15 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptDownloadQueue;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_12, 1);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptDownloadQueue;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptDownloadQueue;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_15 allKeys]);
  return scriptAttributeKeys;
}

- (void)finalizeForWebScript
{
  [(SUScriptObject *)self lock];
  [(SUScriptDownloadQueue *)self _tearDownQueues];
  [(SUScriptObject *)self unlock];
  v3.receiver = self;
  v3.super_class = SUScriptDownloadQueue;
  [(SUScriptObject *)&v3 finalizeForWebScript];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_12 = sel_checkQueue;
    *algn_1EBF3AA98 = @"checkQueue";
    __KeyMapping_15 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"downloads", @"queueType", @"queueType", 0}];
  }
}

@end