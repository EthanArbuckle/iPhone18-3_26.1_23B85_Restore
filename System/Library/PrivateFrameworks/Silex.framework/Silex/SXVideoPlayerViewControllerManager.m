@interface SXVideoPlayerViewControllerManager
- (SXVideoPlayerViewControllerManager)init;
- (id)videoPlayerViewControllerForURL:(id)a3 receiveOwnershipBlock:(id)a4;
- (void)configureAutoplayForVideoWithURL:(id)a3 analyticsRouter:(id)a4;
- (void)registerExistingVideoPlayerViewController:(id)a3 URL:(id)a4 analyticsRouter:(id)a5 videoPlayerVisibilityMonitor:(id)a6 loseOwnershipBlock:(id)a7;
- (void)setPresentedAndAppeared:(BOOL)a3;
@end

@implementation SXVideoPlayerViewControllerManager

- (SXVideoPlayerViewControllerManager)init
{
  v18.receiver = self;
  v18.super_class = SXVideoPlayerViewControllerManager;
  v2 = [(SXVideoPlayerViewControllerManager *)&v18 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    videoPlayerViewControllers = v2->_videoPlayerViewControllers;
    v2->_videoPlayerViewControllers = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    loseOwnershipBlocks = v2->_loseOwnershipBlocks;
    v2->_loseOwnershipBlocks = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    pendingLoseOwnershipBlocks = v2->_pendingLoseOwnershipBlocks;
    v2->_pendingLoseOwnershipBlocks = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    pendingReceiveOwnershipBlocks = v2->_pendingReceiveOwnershipBlocks;
    v2->_pendingReceiveOwnershipBlocks = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    pendingVideoPlayerViewControllers = v2->_pendingVideoPlayerViewControllers;
    v2->_pendingVideoPlayerViewControllers = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    videoAnalyticsRouters = v2->_videoAnalyticsRouters;
    v2->_videoAnalyticsRouters = v13;

    v15 = [MEMORY[0x1E695DF90] dictionary];
    visibilityMonitors = v2->_visibilityMonitors;
    v2->_visibilityMonitors = v15;
  }

  return v2;
}

- (id)videoPlayerViewControllerForURL:(id)a3 receiveOwnershipBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(SXVideoPlayerViewControllerResponse);
  if (v6)
  {
    v9 = [(SXVideoPlayerViewControllerManager *)self loseOwnershipBlocks];
    v10 = [v9 objectForKey:v6];

    v11 = [(SXVideoPlayerViewControllerManager *)self videoPlayerViewControllers];
    v12 = [v11 objectForKey:v6];

    v13 = [(SXVideoPlayerViewControllerManager *)self autoplayURL];
    v14 = [v13 isEqual:v6];

    v15 = [(SXVideoPlayerViewControllerManager *)self videoAnalyticsRouters];
    v16 = [v15 objectForKey:v6];

    v17 = [(SXVideoPlayerViewControllerManager *)self visibilityMonitors];
    v18 = [v17 objectForKey:v6];

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
        v20 = [(SXVideoPlayerViewControllerManager *)self loseOwnershipBlocks];
        [v20 removeObjectForKey:v6];
      }

      v21 = [(SXVideoPlayerViewControllerManager *)self videoPlayerViewControllers];
      [v21 removeObjectForKey:v6];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __92__SXVideoPlayerViewControllerManager_videoPlayerViewControllerForURL_receiveOwnershipBlock___block_invoke;
      block[3] = &unk_1E8500B00;
      v38 = v7;
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

      v23 = [MEMORY[0x1E696AFB0] UUID];
      v34 = [v23 UUIDString];

      if (v7)
      {
        v32 = [(SXVideoPlayerViewControllerManager *)self pendingReceiveOwnershipBlocks];
        v30 = [v7 copy];
        v24 = MEMORY[0x1DA716BE0]();
        [v32 setObject:v24 forKey:v34];
      }

      if (v35)
      {
        v33 = [(SXVideoPlayerViewControllerManager *)self pendingLoseOwnershipBlocks];
        v31 = [v35 copy];
        v25 = MEMORY[0x1DA716BE0]();
        [v33 setObject:v25 forKey:v34];
      }

      v26 = [(SXVideoPlayerViewControllerManager *)self pendingVideoPlayerViewControllers];
      [v26 setObject:v19 forKey:v34];

      v27 = [(SXVideoPlayerViewControllerManager *)self videoPlayerViewControllers];
      [v27 removeObjectForKey:v6];

      v28 = [(SXVideoPlayerViewControllerManager *)self loseOwnershipBlocks];
      [v28 removeObjectForKey:v6];

      v22 = v34;
    }

    goto LABEL_19;
  }

LABEL_20:

  return v8;
}

- (void)registerExistingVideoPlayerViewController:(id)a3 URL:(id)a4 analyticsRouter:(id)a5 videoPlayerVisibilityMonitor:(id)a6 loseOwnershipBlock:(id)a7
{
  v22 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    v16 = [(SXVideoPlayerViewControllerManager *)self videoPlayerViewControllers];
    [v16 setObject:v22 forKey:v12];

    v17 = [(SXVideoPlayerViewControllerManager *)self videoAnalyticsRouters];
    [v17 setObject:v13 forKey:v12];

    v18 = [(SXVideoPlayerViewControllerManager *)self visibilityMonitors];
    [v18 setObject:v14 forKey:v12];

    if (v15)
    {
      v19 = [(SXVideoPlayerViewControllerManager *)self loseOwnershipBlocks];
      v20 = [v15 copy];
      v21 = MEMORY[0x1DA716BE0]();
      [v19 setObject:v21 forKey:v12];
    }
  }
}

- (void)setPresentedAndAppeared:(BOOL)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3 && !self->_presentedAndAppeared)
  {
    v21 = a3;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [(SXVideoPlayerViewControllerManager *)self pendingVideoPlayerViewControllers];
    v5 = [v4 allKeys];
    v6 = [v5 copy];

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
          v12 = [(SXVideoPlayerViewControllerManager *)self pendingVideoPlayerViewControllers];
          v13 = [v12 objectForKey:v11];

          v14 = [(SXVideoPlayerViewControllerManager *)self pendingReceiveOwnershipBlocks];
          v15 = [v14 objectForKey:v11];

          v16 = [(SXVideoPlayerViewControllerManager *)self pendingLoseOwnershipBlocks];
          v17 = [v16 objectForKey:v11];

          if (v17)
          {
            (v17)[2](v17, v13);
          }

          if (v15)
          {
            (v15)[2](v15, v13);
          }

          v18 = [(SXVideoPlayerViewControllerManager *)self pendingVideoPlayerViewControllers];
          [v18 removeObjectForKey:v11];

          v19 = [(SXVideoPlayerViewControllerManager *)self pendingLoseOwnershipBlocks];
          [v19 removeObjectForKey:v11];

          v20 = [(SXVideoPlayerViewControllerManager *)self pendingReceiveOwnershipBlocks];
          [v20 removeObjectForKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    a3 = v21;
  }

  self->_presentedAndAppeared = a3;
}

- (void)configureAutoplayForVideoWithURL:(id)a3 analyticsRouter:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(SXVideoPlayerViewControllerManager *)self setAutoplayURL:v8];
  if (v6)
  {
    v7 = [(SXVideoPlayerViewControllerManager *)self videoAnalyticsRouters];
    [v7 setObject:v6 forKey:v8];
  }
}

@end