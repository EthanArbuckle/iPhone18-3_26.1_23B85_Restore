@interface SKUIPreviewDocumentController
- (SKUIPreviewDocumentController)initWithDocument:(id)a3;
- (id)_operationQueue;
- (id)overlayViewControllerWithBackgroundStyle:(int64_t)a3;
- (void)_audioPlayerStatusChangeNotification:(id)a3;
- (void)_connectToAudioPlayer;
- (void)_playerSessionsDidChangeNotification:(id)a3;
- (void)_reloadViewControllersWithPreviewStatus:(id)a3 animated:(BOOL)a4;
- (void)dealloc;
- (void)documentDidUpdate:(id)a3;
@end

@implementation SKUIPreviewDocumentController

- (SKUIPreviewDocumentController)initWithDocument:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPreviewDocumentController initWithDocument:];
  }

  v10.receiver = self;
  v10.super_class = SKUIPreviewDocumentController;
  v6 = [(SKUIPreviewDocumentController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_document, a3);
    [(IKAppDocument *)v7->_document setDelegate:v7];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__playerSessionsDidChangeNotification_ name:*MEMORY[0x277D7FF10] object:0];
    [(SKUIPreviewDocumentController *)v7 _connectToAudioPlayer];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7FF10] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D7FF18] object:0];
  [(IKAppDocument *)self->_document setDelegate:0];

  v4.receiver = self;
  v4.super_class = SKUIPreviewDocumentController;
  [(SKUIPreviewDocumentController *)&v4 dealloc];
}

- (void)documentDidUpdate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_viewControllers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) documentDidUpdate:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)overlayViewControllerWithBackgroundStyle:(int64_t)a3
{
  v5 = [[SKUIPreviewOverlayViewController alloc] initWithDocument:self->_document];
  [(SKUIPreviewOverlayViewController *)v5 setBackgroundStyle:a3];
  [(SKUIViewController *)v5 setClientContext:self->_clientContext];
  v6 = [(SKUIPreviewDocumentController *)self _operationQueue];
  [(SKUIViewController *)v5 setOperationQueue:v6];

  [(SKUIPreviewOverlayViewController *)v5 prepareOverlayView];
  v7 = [(SUAudioPlayer *)self->_audioPlayer playerStatus];
  [(SKUIPreviewOverlayViewController *)v5 showPreviewProgressWithStatus:v7 animated:0];

  viewControllers = self->_viewControllers;
  if (!viewControllers)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    v10 = self->_viewControllers;
    self->_viewControllers = v9;

    viewControllers = self->_viewControllers;
  }

  [(NSHashTable *)viewControllers addObject:v5];

  return v5;
}

- (void)_audioPlayerStatusChangeNotification:(id)a3
{
  v4 = [a3 object];
  audioPlayer = self->_audioPlayer;

  if (v4 == audioPlayer)
  {
    v6 = [(SUAudioPlayer *)self->_audioPlayer playerStatus];
    [(SKUIPreviewDocumentController *)self _reloadViewControllersWithPreviewStatus:v6 animated:1];
  }
}

- (void)_playerSessionsDidChangeNotification:(id)a3
{
  v4 = [(SKUIPreviewDocumentController *)self isPreviewActive];
  [(SKUIPreviewDocumentController *)self _connectToAudioPlayer];
  if (v4 != [(SKUIPreviewDocumentController *)self isPreviewActive])
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"SKUIPreviewDocumentIsActiveDidChangeNotification" object:self userInfo:0];
  }
}

- (void)_connectToAudioPlayer
{
  v3 = [(IKAppDocument *)self->_document templateElement];
  v4 = [v3 previewURLString];
  v5 = v4;
  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
    v7 = [MEMORY[0x277D7FDA8] sessionManager];
    obja = [v7 audioPlayerForURL:v6];

    v4 = obja;
  }

  p_audioPlayer = &self->_audioPlayer;
  obj = v4;
  if (v4 != self->_audioPlayer)
  {
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = v9;
    v11 = MEMORY[0x277D7FF18];
    if (*p_audioPlayer)
    {
      [v9 removeObserver:self name:*MEMORY[0x277D7FF18] object:?];
    }

    objc_storeStrong(&self->_audioPlayer, obj);
    if (*p_audioPlayer)
    {
      [v10 addObserver:self selector:sel__audioPlayerStatusChangeNotification_ name:*v11 object:?];
      audioPlayer = self->_audioPlayer;
    }

    else
    {
      audioPlayer = 0;
    }

    v13 = [(SUAudioPlayer *)audioPlayer playerStatus];
    [(SKUIPreviewDocumentController *)self _reloadViewControllersWithPreviewStatus:v13 animated:0];
  }
}

- (id)_operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:2];
    v6 = self->_operationQueue;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.StoreKitUI.%@.%p", objc_opt_class(), self];
    [(NSOperationQueue *)v6 setName:v7];

    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)_reloadViewControllersWithPreviewStatus:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_viewControllers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) showPreviewProgressWithStatus:v6 animated:{v4, v12}];
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)initWithDocument:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPreviewDocumentController initWithDocument:]";
}

@end