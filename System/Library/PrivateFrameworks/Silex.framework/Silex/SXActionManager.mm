@interface SXActionManager
- (SXActionManager)initWithActionActivityManager:(id)manager viewManager:(id)viewManager postActionHandlerManager:(id)handlerManager;
- (id)contextMenuConfigurationForAction:(id)action sourceView:(id)view sourceRect:(CGRect)rect;
- (id)previewViewControllerForAction:(id)action;
- (void)commitPreviewViewController:(id)controller;
- (void)notifyPostActionHandlers:(id)handlers action:(id)action state:(unint64_t)state;
- (void)performAction:(id)action postActionHandlers:(id)handlers sourceView:(id)view sourceRect:(CGRect)rect mode:(unint64_t)mode;
@end

@implementation SXActionManager

- (SXActionManager)initWithActionActivityManager:(id)manager viewManager:(id)viewManager postActionHandlerManager:(id)handlerManager
{
  managerCopy = manager;
  viewManagerCopy = viewManager;
  handlerManagerCopy = handlerManager;
  v15.receiver = self;
  v15.super_class = SXActionManager;
  v12 = [(SXActionManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activityManager, manager);
    objc_storeStrong(&v13->_viewManager, viewManager);
    objc_storeStrong(&v13->_postActionHandlerManager, handlerManager);
  }

  return v13;
}

- (void)performAction:(id)action postActionHandlers:(id)handlers sourceView:(id)view sourceRect:(CGRect)rect mode:(unint64_t)mode
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v43 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlersCopy = handlers;
  viewCopy = view;
  if (actionCopy && handlersCopy)
  {
    activityManager = [(SXActionManager *)self activityManager];
    v19 = [activityManager activityGroupForAction:actionCopy sourceView:viewCopy sourceRect:{x, y, width, height}];

    if ((mode | 2) == 2)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      activities = [v19 activities];
      firstObject = [activities countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (firstObject)
      {
        v33 = v19;
        v22 = *v39;
        while (2)
        {
          for (i = 0; i != firstObject; i = i + 1)
          {
            if (*v39 != v22)
            {
              objc_enumerationMutation(activities);
            }

            v24 = *(*(&v38 + 1) + 8 * i);
            if (![v24 type])
            {
              firstObject = v24;
              goto LABEL_14;
            }
          }

          firstObject = [activities countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (firstObject)
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
      firstObject = 0;
    }

    if (mode == 2 && !firstObject)
    {
      activities2 = [v19 activities];
      firstObject = [activities2 firstObject];
    }

    if (firstObject)
    {
      [firstObject invokeWithAction:actionCopy invocationMethod:0];
      selfCopy3 = self;
      v27 = handlersCopy;
      v28 = actionCopy;
      v29 = 2;
    }

    else
    {
      activities3 = [v19 activities];
      v31 = [activities3 count];

      if (v31)
      {
        viewManager = [(SXActionManager *)self viewManager];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __79__SXActionManager_performAction_postActionHandlers_sourceView_sourceRect_mode___block_invoke;
        v34[3] = &unk_1E84FEDF8;
        v35 = actionCopy;
        selfCopy2 = self;
        v37 = handlersCopy;
        [viewManager presentActivityGroup:v19 action:v35 sourceView:viewCopy sourceRect:v34 completion:{x, y, width, height}];

        goto LABEL_25;
      }

      selfCopy3 = self;
      v27 = handlersCopy;
      v28 = actionCopy;
      v29 = 0;
    }

    [(SXActionManager *)selfCopy3 notifyPostActionHandlers:v27 action:v28 state:v29];
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

- (id)contextMenuConfigurationForAction:(id)action sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v51 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  viewCopy = view;
  activityManager = [(SXActionManager *)self activityManager];
  v36 = viewCopy;
  v14 = [activityManager activityGroupForAction:actionCopy sourceView:viewCopy sourceRect:{x, y, width, height}];

  v39 = actionCopy;
  v38 = [(SXActionManager *)self previewViewControllerForAction:actionCopy];
  array = [MEMORY[0x1E695DF70] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v37 = v14;
  activities = [v14 activities];
  v17 = [activities countByEnumeratingWithState:&v46 objects:v50 count:16];
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
          objc_enumerationMutation(activities);
        }

        v21 = *(*(&v46 + 1) + 8 * i);
        if (![v21 type])
        {
          if (v38)
          {
            continue;
          }

          activities2 = [v37 activities];
          v27 = [activities2 count];

          if (v27 == 1)
          {
            continue;
          }
        }

        v22 = MEMORY[0x1E69DC628];
        label = [v21 label];
        image = [v21 image];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __75__SXActionManager_contextMenuConfigurationForAction_sourceView_sourceRect___block_invoke;
        v44[3] = &unk_1E84FEE20;
        v44[4] = v21;
        v45 = actionCopy;
        v25 = [v22 actionWithTitle:label image:image identifier:0 handler:v44];
        [array addObject:v25];
      }

      v18 = [activities countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v18);
  }

  if ([array count] || v38)
  {
    v30 = MEMORY[0x1E69DCC60];
    v29 = v37;
    title = [v37 title];
    v32 = [v30 menuWithTitle:title children:array];

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

- (id)previewViewControllerForAction:(id)action
{
  actionCopy = action;
  activityManager = [(SXActionManager *)self activityManager];
  v6 = [activityManager previewActivityForAction:actionCopy];

  v7 = [v6 previewViewControllerForAction:actionCopy];
  if (v7)
  {
    v8 = [[SXActionManagerPreview alloc] initWithAction:actionCopy viewController:v7 previewActivity:v6];
    [(SXActionManager *)self setCurrentPreview:v8];
  }

  return v7;
}

- (void)commitPreviewViewController:(id)controller
{
  controllerCopy = controller;
  currentPreview = [(SXActionManager *)self currentPreview];
  v5 = currentPreview;
  if (currentPreview)
  {
    viewController = [(SXActionManagerPreview *)currentPreview viewController];

    if (viewController == controllerCopy)
    {
      [(SXActionManager *)self setCurrentPreview:0];
      caption = [(SXFullscreenCaption *)v5 caption];
      text = [(SXFullscreenCaption *)v5 text];
      [caption commitViewController:controllerCopy action:text];
    }
  }
}

- (void)notifyPostActionHandlers:(id)handlers action:(id)action state:(unint64_t)state
{
  v20 = *MEMORY[0x1E69E9840];
  handlersCopy = handlers;
  actionCopy = action;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [handlersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(handlersCopy);
        }

        [*(*(&v15 + 1) + 8 * v13++) handledAction:actionCopy state:state];
      }

      while (v11 != v13);
      v11 = [handlersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  postActionHandlerManager = [(SXActionManager *)self postActionHandlerManager];
  [postActionHandlerManager handledAction:actionCopy state:state];
}

@end