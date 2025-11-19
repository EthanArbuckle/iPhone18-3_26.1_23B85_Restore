@interface SXActionManager
- (SXActionManager)initWithActionActivityManager:(id)a3 viewManager:(id)a4 postActionHandlerManager:(id)a5;
- (id)contextMenuConfigurationForAction:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
- (id)previewViewControllerForAction:(id)a3;
- (void)commitPreviewViewController:(id)a3;
- (void)notifyPostActionHandlers:(id)a3 action:(id)a4 state:(unint64_t)a5;
- (void)performAction:(id)a3 postActionHandlers:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 mode:(unint64_t)a7;
@end

@implementation SXActionManager

- (SXActionManager)initWithActionActivityManager:(id)a3 viewManager:(id)a4 postActionHandlerManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXActionManager;
  v12 = [(SXActionManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activityManager, a3);
    objc_storeStrong(&v13->_viewManager, a4);
    objc_storeStrong(&v13->_postActionHandlerManager, a5);
  }

  return v13;
}

- (void)performAction:(id)a3 postActionHandlers:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 mode:(unint64_t)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v43 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  if (v15 && v16)
  {
    v18 = [(SXActionManager *)self activityManager];
    v19 = [v18 activityGroupForAction:v15 sourceView:v17 sourceRect:{x, y, width, height}];

    if ((a7 | 2) == 2)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v20 = [v19 activities];
      v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v21)
      {
        v33 = v19;
        v22 = *v39;
        while (2)
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v39 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v38 + 1) + 8 * i);
            if (![v24 type])
            {
              v21 = v24;
              goto LABEL_14;
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

LABEL_14:
        v19 = v33;
      }
    }

    else
    {
      v21 = 0;
    }

    if (a7 == 2 && !v21)
    {
      v25 = [v19 activities];
      v21 = [v25 firstObject];
    }

    if (v21)
    {
      [v21 invokeWithAction:v15 invocationMethod:0];
      v26 = self;
      v27 = v16;
      v28 = v15;
      v29 = 2;
    }

    else
    {
      v30 = [v19 activities];
      v31 = [v30 count];

      if (v31)
      {
        v32 = [(SXActionManager *)self viewManager];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __79__SXActionManager_performAction_postActionHandlers_sourceView_sourceRect_mode___block_invoke;
        v34[3] = &unk_1E84FEDF8;
        v35 = v15;
        v36 = self;
        v37 = v16;
        [v32 presentActivityGroup:v19 action:v35 sourceView:v17 sourceRect:v34 completion:{x, y, width, height}];

        goto LABEL_25;
      }

      v26 = self;
      v27 = v16;
      v28 = v15;
      v29 = 0;
    }

    [(SXActionManager *)v26 notifyPostActionHandlers:v27 action:v28 state:v29];
LABEL_25:
  }
}

void __79__SXActionManager_performAction_postActionHandlers_sourceView_sourceRect_mode___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (a2 == 1)
  {
    v6 = 1;
  }

  else if (a2)
  {
    v6 = 0;
  }

  else
  {
    [v5 invokeWithAction:*(a1 + 32) invocationMethod:1];
    v6 = 2;
  }

  [*(a1 + 40) notifyPostActionHandlers:*(a1 + 48) action:*(a1 + 32) state:v6];
}

- (id)contextMenuConfigurationForAction:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v51 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = [(SXActionManager *)self activityManager];
  v36 = v12;
  v14 = [v13 activityGroupForAction:v11 sourceView:v12 sourceRect:{x, y, width, height}];

  v39 = v11;
  v38 = [(SXActionManager *)self previewViewControllerForAction:v11];
  v15 = [MEMORY[0x1E695DF70] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v37 = v14;
  v16 = [v14 activities];
  v17 = [v16 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v47;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v47 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v46 + 1) + 8 * i);
        if (![v21 type])
        {
          if (v38)
          {
            continue;
          }

          v26 = [v37 activities];
          v27 = [v26 count];

          if (v27 == 1)
          {
            continue;
          }
        }

        v22 = MEMORY[0x1E69DC628];
        v23 = [v21 label];
        v24 = [v21 image];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __75__SXActionManager_contextMenuConfigurationForAction_sourceView_sourceRect___block_invoke;
        v44[3] = &unk_1E84FEE20;
        v44[4] = v21;
        v45 = v11;
        v25 = [v22 actionWithTitle:v23 image:v24 identifier:0 handler:v44];
        [v15 addObject:v25];
      }

      v18 = [v16 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v18);
  }

  if ([v15 count] || v38)
  {
    v30 = MEMORY[0x1E69DCC60];
    v29 = v37;
    v31 = [v37 title];
    v32 = [v30 menuWithTitle:v31 children:v15];

    v33 = MEMORY[0x1E69DC8D8];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __75__SXActionManager_contextMenuConfigurationForAction_sourceView_sourceRect___block_invoke_2;
    v42[3] = &unk_1E84FEE48;
    v43 = v38;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __75__SXActionManager_contextMenuConfigurationForAction_sourceView_sourceRect___block_invoke_3;
    v40[3] = &unk_1E84FEE70;
    v41 = v32;
    v34 = v32;
    v28 = [v33 configurationWithIdentifier:0 previewProvider:v42 actionProvider:v40];
  }

  else
  {
    v28 = 0;
    v29 = v37;
  }

  return v28;
}

- (id)previewViewControllerForAction:(id)a3
{
  v4 = a3;
  v5 = [(SXActionManager *)self activityManager];
  v6 = [v5 previewActivityForAction:v4];

  v7 = [v6 previewViewControllerForAction:v4];
  if (v7)
  {
    v8 = [[SXActionManagerPreview alloc] initWithAction:v4 viewController:v7 previewActivity:v6];
    [(SXActionManager *)self setCurrentPreview:v8];
  }

  return v7;
}

- (void)commitPreviewViewController:(id)a3
{
  v9 = a3;
  v4 = [(SXActionManager *)self currentPreview];
  v5 = v4;
  if (v4)
  {
    v6 = [(SXActionManagerPreview *)v4 viewController];

    if (v6 == v9)
    {
      [(SXActionManager *)self setCurrentPreview:0];
      v7 = [(SXFullscreenCaption *)v5 caption];
      v8 = [(SXFullscreenCaption *)v5 text];
      [v7 commitViewController:v9 action:v8];
    }
  }
}

- (void)notifyPostActionHandlers:(id)a3 action:(id)a4 state:(unint64_t)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v13++) handledAction:v9 state:a5];
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = [(SXActionManager *)self postActionHandlerManager];
  [v14 handledAction:v9 state:a5];
}

@end