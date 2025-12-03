@interface SXVideoPlayerViewControllerManager
- (SXVideoPlayerViewControllerManager)init;
- (id)videoPlayerViewControllerForURL:(id)l receiveOwnershipBlock:(id)block;
- (void)configureAutoplayForVideoWithURL:(id)l analyticsRouter:(id)router;
- (void)registerExistingVideoPlayerViewController:(id)controller URL:(id)l analyticsRouter:(id)router videoPlayerVisibilityMonitor:(id)monitor loseOwnershipBlock:(id)block;
- (void)setPresentedAndAppeared:(BOOL)appeared;
@end

@implementation SXVideoPlayerViewControllerManager

- (SXVideoPlayerViewControllerManager)init
{
  v18.receiver = self;
  v18.super_class = SXVideoPlayerViewControllerManager;
  v2 = [(SXVideoPlayerViewControllerManager *)&v18 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    videoPlayerViewControllers = v2->_videoPlayerViewControllers;
    v2->_videoPlayerViewControllers = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    loseOwnershipBlocks = v2->_loseOwnershipBlocks;
    v2->_loseOwnershipBlocks = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    pendingLoseOwnershipBlocks = v2->_pendingLoseOwnershipBlocks;
    v2->_pendingLoseOwnershipBlocks = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    pendingReceiveOwnershipBlocks = v2->_pendingReceiveOwnershipBlocks;
    v2->_pendingReceiveOwnershipBlocks = dictionary4;

    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    pendingVideoPlayerViewControllers = v2->_pendingVideoPlayerViewControllers;
    v2->_pendingVideoPlayerViewControllers = dictionary5;

    dictionary6 = [MEMORY[0x1E695DF90] dictionary];
    videoAnalyticsRouters = v2->_videoAnalyticsRouters;
    v2->_videoAnalyticsRouters = dictionary6;

    dictionary7 = [MEMORY[0x1E695DF90] dictionary];
    visibilityMonitors = v2->_visibilityMonitors;
    v2->_visibilityMonitors = dictionary7;
  }

  return v2;
}

- (id)videoPlayerViewControllerForURL:(id)l receiveOwnershipBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v8 = objc_alloc_init(SXVideoPlayerViewControllerResponse);
  if (lCopy)
  {
    loseOwnershipBlocks = [(SXVideoPlayerViewControllerManager *)self loseOwnershipBlocks];
    v10 = [loseOwnershipBlocks objectForKey:lCopy];

    videoPlayerViewControllers = [(SXVideoPlayerViewControllerManager *)self videoPlayerViewControllers];
    v12 = [videoPlayerViewControllers objectForKey:lCopy];

    autoplayURL = [(SXVideoPlayerViewControllerManager *)self autoplayURL];
    v14 = [autoplayURL isEqual:lCopy];

    videoAnalyticsRouters = [(SXVideoPlayerViewControllerManager *)self videoAnalyticsRouters];
    v16 = [videoAnalyticsRouters objectForKey:lCopy];

    visibilityMonitors = [(SXVideoPlayerViewControllerManager *)self visibilityMonitors];
    v18 = [visibilityMonitors objectForKey:lCopy];

    v19 = v12;
    if (!v12 && v14)
    {
      v19 = objc_alloc_init(MEMORY[0x1E69CE130]);
    }

    v35 = v10;
    if (v14)
    {
      [(SXVideoPlayerViewControllerManager *)self setAutoplayURL:0];
    }

    if (!v19)
    {
      goto LABEL_19;
    }

    if ([(SXVideoPlayerViewControllerManager *)self presentedAndAppeared])
    {
      if (v10)
      {
        (*(v10 + 16))();
        loseOwnershipBlocks2 = [(SXVideoPlayerViewControllerManager *)self loseOwnershipBlocks];
        [loseOwnershipBlocks2 removeObjectForKey:lCopy];
      }

      videoPlayerViewControllers2 = [(SXVideoPlayerViewControllerManager *)self videoPlayerViewControllers];
      [videoPlayerViewControllers2 removeObjectForKey:lCopy];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __92__SXVideoPlayerViewControllerManager_videoPlayerViewControllerForURL_receiveOwnershipBlock___block_invoke;
      block[3] = &unk_1E8500B00;
      v38 = blockCopy;
      v37 = v19;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v22 = v38;
    }

    else
    {
      if ([(SXVideoPlayerViewControllerManager *)self presentedAndAppeared])
      {
LABEL_19:
        [(SXVideoPlayerViewControllerResponse *)v8 setShouldAutoplay:v14];
        [(SXVideoPlayerViewControllerResponse *)v8 setExpectVideoPlayerViewController:v12 != 0];
        [(SXVideoPlayerViewControllerResponse *)v8 setAnalyticsRouter:v16];
        [(SXVideoPlayerViewControllerResponse *)v8 setVisibilityMonitor:v18];

        goto LABEL_20;
      }

      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];

      if (blockCopy)
      {
        pendingReceiveOwnershipBlocks = [(SXVideoPlayerViewControllerManager *)self pendingReceiveOwnershipBlocks];
        v30 = [blockCopy copy];
        v24 = MEMORY[0x1DA716BE0]();
        [pendingReceiveOwnershipBlocks setObject:v24 forKey:uUIDString];
      }

      if (v35)
      {
        pendingLoseOwnershipBlocks = [(SXVideoPlayerViewControllerManager *)self pendingLoseOwnershipBlocks];
        v31 = [v35 copy];
        v25 = MEMORY[0x1DA716BE0]();
        [pendingLoseOwnershipBlocks setObject:v25 forKey:uUIDString];
      }

      pendingVideoPlayerViewControllers = [(SXVideoPlayerViewControllerManager *)self pendingVideoPlayerViewControllers];
      [pendingVideoPlayerViewControllers setObject:v19 forKey:uUIDString];

      videoPlayerViewControllers3 = [(SXVideoPlayerViewControllerManager *)self videoPlayerViewControllers];
      [videoPlayerViewControllers3 removeObjectForKey:lCopy];

      loseOwnershipBlocks3 = [(SXVideoPlayerViewControllerManager *)self loseOwnershipBlocks];
      [loseOwnershipBlocks3 removeObjectForKey:lCopy];

      v22 = uUIDString;
    }

    goto LABEL_19;
  }

LABEL_20:

  return v8;
}

- (void)registerExistingVideoPlayerViewController:(id)controller URL:(id)l analyticsRouter:(id)router videoPlayerVisibilityMonitor:(id)monitor loseOwnershipBlock:(id)block
{
  controllerCopy = controller;
  lCopy = l;
  routerCopy = router;
  monitorCopy = monitor;
  blockCopy = block;
  if (lCopy)
  {
    videoPlayerViewControllers = [(SXVideoPlayerViewControllerManager *)self videoPlayerViewControllers];
    [videoPlayerViewControllers setObject:controllerCopy forKey:lCopy];

    videoAnalyticsRouters = [(SXVideoPlayerViewControllerManager *)self videoAnalyticsRouters];
    [videoAnalyticsRouters setObject:routerCopy forKey:lCopy];

    visibilityMonitors = [(SXVideoPlayerViewControllerManager *)self visibilityMonitors];
    [visibilityMonitors setObject:monitorCopy forKey:lCopy];

    if (blockCopy)
    {
      loseOwnershipBlocks = [(SXVideoPlayerViewControllerManager *)self loseOwnershipBlocks];
      v20 = [blockCopy copy];
      v21 = MEMORY[0x1DA716BE0]();
      [loseOwnershipBlocks setObject:v21 forKey:lCopy];
    }
  }
}

- (void)setPresentedAndAppeared:(BOOL)appeared
{
  v27 = *MEMORY[0x1E69E9840];
  if (appeared && !self->_presentedAndAppeared)
  {
    appearedCopy = appeared;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    pendingVideoPlayerViewControllers = [(SXVideoPlayerViewControllerManager *)self pendingVideoPlayerViewControllers];
    allKeys = [pendingVideoPlayerViewControllers allKeys];
    v6 = [allKeys copy];

    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          pendingVideoPlayerViewControllers2 = [(SXVideoPlayerViewControllerManager *)self pendingVideoPlayerViewControllers];
          v13 = [pendingVideoPlayerViewControllers2 objectForKey:v11];

          pendingReceiveOwnershipBlocks = [(SXVideoPlayerViewControllerManager *)self pendingReceiveOwnershipBlocks];
          v15 = [pendingReceiveOwnershipBlocks objectForKey:v11];

          pendingLoseOwnershipBlocks = [(SXVideoPlayerViewControllerManager *)self pendingLoseOwnershipBlocks];
          v17 = [pendingLoseOwnershipBlocks objectForKey:v11];

          if (v17)
          {
            (v17)[2](v17, v13);
          }

          if (v15)
          {
            (v15)[2](v15, v13);
          }

          pendingVideoPlayerViewControllers3 = [(SXVideoPlayerViewControllerManager *)self pendingVideoPlayerViewControllers];
          [pendingVideoPlayerViewControllers3 removeObjectForKey:v11];

          pendingLoseOwnershipBlocks2 = [(SXVideoPlayerViewControllerManager *)self pendingLoseOwnershipBlocks];
          [pendingLoseOwnershipBlocks2 removeObjectForKey:v11];

          pendingReceiveOwnershipBlocks2 = [(SXVideoPlayerViewControllerManager *)self pendingReceiveOwnershipBlocks];
          [pendingReceiveOwnershipBlocks2 removeObjectForKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    appeared = appearedCopy;
  }

  self->_presentedAndAppeared = appeared;
}

- (void)configureAutoplayForVideoWithURL:(id)l analyticsRouter:(id)router
{
  lCopy = l;
  routerCopy = router;
  [(SXVideoPlayerViewControllerManager *)self setAutoplayURL:lCopy];
  if (routerCopy)
  {
    videoAnalyticsRouters = [(SXVideoPlayerViewControllerManager *)self videoAnalyticsRouters];
    [videoAnalyticsRouters setObject:routerCopy forKey:lCopy];
  }
}

@end