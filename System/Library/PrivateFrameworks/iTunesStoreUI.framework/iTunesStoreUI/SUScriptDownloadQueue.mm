@interface SUScriptDownloadQueue
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSArray)downloads;
- (NSString)queueType;
- (SUScriptDownloadQueue)initWithQueueType:(id)a3 clientInterface:(id)a4;
- (id)scriptAttributeKeys;
- (void)_setupManagersWithClientInterface:(id)a3 queueType:(id)a4;
- (void)_tearDownQueues;
- (void)dealloc;
- (void)downloadManager:(id)a3 downloadStatesDidChange:(id)a4;
- (void)downloadManagerDownloadsDidChange:(id)a3;
- (void)finalizeForWebScript;
@end

@implementation SUScriptDownloadQueue

- (SUScriptDownloadQueue)initWithQueueType:(id)a3 clientInterface:(id)a4
{
  v6 = [(SUScriptObject *)self init];
  if (v6)
  {
    v6->_clientInterface = a4;
    v6->_queueType = [a3 copy];
    v7 = dispatch_queue_create("com.apple.iTunesStoreUI.SUScriptDownloadQueue", 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__SUScriptDownloadQueue_initWithQueueType_clientInterface___block_invoke;
    v9[3] = &unk_1E8165198;
    v9[4] = v6;
    v9[5] = a4;
    v9[6] = a3;
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
  v3 = [MEMORY[0x1E695DF70] array];
  [(SUScriptObject *)self lock];
  v4 = [(SUDownloadManager *)self->_downloadManager downloads];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [[SUScriptDownload alloc] initWithISUDownload:*(*(&v11 + 1) + 8 * v8)];
        [(NSArray *)v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(SUScriptObject *)self unlock];
  return v3;
}

- (NSString)queueType
{
  v2 = self->_queueType;

  return v2;
}

- (void)downloadManager:(id)a3 downloadStatesDidChange:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(a4);
        }

        v10 = [[SUScriptDownload alloc] initWithSSDownload:*(*(&v11 + 1) + 8 * v9)];
        [(SUScriptObject *)self dispatchEvent:v10 forName:@"downloadstatechange"];

        ++v9;
      }

      while (v7 != v9);
      v7 = [a4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)downloadManagerDownloadsDidChange:(id)a3
{
  [(SUScriptObject *)self lock];
  [(SUDownloadManager *)self->_downloadManager reloadDownloadManager];
  [(SUScriptObject *)self unlock];

  [(SUScriptObject *)self dispatchEvent:0 forName:@"downloadschange"];
}

- (void)_setupManagersWithClientInterface:(id)a3 queueType:(id)a4
{
  if ([a4 isEqualToString:@"media"])
  {
    v7 = [MEMORY[0x1E69D48D0] IPodDownloadKinds];
    v8 = [MEMORY[0x1E69D4980] musicStoreItemKinds];
    goto LABEL_9;
  }

  if ([a4 isEqualToString:@"software"])
  {
    v9 = [MEMORY[0x1E69D48D0] softwareDownloadKinds];
LABEL_7:
    v7 = v9;
    v8 = 0;
    goto LABEL_9;
  }

  if ([a4 isEqualToString:@"ebooks"])
  {
    v9 = [MEMORY[0x1E69D48D0] EBookDownloadKinds];
    goto LABEL_7;
  }

  v8 = 0;
  v7 = 0;
LABEL_9:
  v10 = [a3 queueSessionManager];
  if ([v7 count])
  {
    v11 = [v10 beginDownloadManagerSessionWithDownloadKinds:v7];
    [v11 addObserver:self];
    v12 = [[SUDownloadManager alloc] initWithDownloadManager:v11 clientInterface:a3];
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

  if ([v8 count])
  {
    v14 = [v10 beginPreorderManagerSessionWithItemKinds:v8];
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
  v3 = [(SUClientInterface *)self->_clientInterface queueSessionManager];
  downloadManager = self->_downloadManager;
  if (downloadManager)
  {
    v5 = [(SUDownloadManager *)downloadManager downloadManager];
    [(SUQueueSessionManager *)v3 endDownloadManagerSessionForManager:v5];
    [(SSDownloadManager *)v5 removeObserver:self];

    self->_downloadManager = 0;
  }

  if (self->_preorderManager)
  {
    [(SUQueueSessionManager *)v3 endPreorderManagerSessionWithManager:?];
    [(SSPreorderManager *)self->_preorderManager removeObserver:self];

    self->_preorderManager = 0;
  }
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_15 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptDownloadQueue;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_12, 1);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptDownloadQueue;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptDownloadQueue;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_15 allKeys]);
  return v2;
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
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_12 = sel_checkQueue;
    *algn_1EBF3AA98 = @"checkQueue";
    __KeyMapping_15 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"downloads", @"queueType", @"queueType", 0}];
  }
}

@end