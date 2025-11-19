@interface SBIconListViewDraggingDataPolicyHandler
- (BOOL)allowsSpringLoadForSession:(id)a3 onIconView:(id)a4;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (SBIconListViewDraggingDataPolicyHandler)init;
- (SBIconListViewDraggingDestinationDelegate)draggingDestinationDelegate;
- (id)_bestSupportedUTIForDragItem:(id)a3 supportedTypes:(id)a4;
- (id)_currentDraggingIconViewInView:(id)a3 forLocation:(CGPoint)a4;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)_removeAnySourceURLForOperation:(id)a3;
- (void)handleSpringLoadOnIconView:(id)a3;
@end

@implementation SBIconListViewDraggingDataPolicyHandler

- (SBIconListViewDraggingDataPolicyHandler)init
{
  v6.receiver = self;
  v6.super_class = SBIconListViewDraggingDataPolicyHandler;
  v2 = [(SBIconListViewDraggingDataPolicyHandler *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    sourceURLsByOperationMapTable = v2->_sourceURLsByOperationMapTable;
    v2->_sourceURLsByOperationMapTable = v3;
  }

  return v2;
}

- (BOOL)allowsSpringLoadForSession:(id)a3 onIconView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListViewDraggingDataPolicyHandler *)self draggingDestinationDelegate];
  v9 = [v8 iconListView];
  if (SBHContentVisibilityIsVisible([v9 contentVisibility]))
  {
    v10 = [v8 dragDelegate];
    v11 = [v10 iconListView:v9 shouldAllowSpringLoadedInteractionForIconDropSession:v6 onIconView:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)handleSpringLoadOnIconView:(id)a3
{
  v3 = a3;
  v6 = objc_alloc_init(SBHIconLaunchContext);
  [(SBHIconLaunchContext *)v6 setIconView:v3];
  v4 = [v3 icon];
  v5 = [v3 location];

  [v4 launchFromLocation:v5 context:v6];
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v5 = a4;
  v6 = [(SBIconListViewDraggingDataPolicyHandler *)self draggingDestinationDelegate];
  v7 = [v6 iconListView];
  v8 = [v6 dragDelegate];
  v9 = [v8 iconListView:v7 canHandleDataDropSession:v5];

  return v9;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v5 = a4;
  v6 = [(SBIconListViewDraggingDataPolicyHandler *)self draggingDestinationDelegate];
  v7 = [v6 iconListView];
  v8 = [v6 dragDelegate];
  v9 = [v8 iconListView:v7 dataDropSessionDidUpdate:v5];

  return v9;
}

- (void)_removeAnySourceURLForOperation:(id)a3
{
  v6 = a3;
  v4 = [(NSMapTable *)self->_sourceURLsByOperationMapTable objectForKey:?];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    [v5 removeItemAtURL:v4 error:0];

    [(NSMapTable *)self->_sourceURLsByOperationMapTable removeObjectForKey:v6];
  }
}

- (id)_currentDraggingIconViewInView:(id)a3 forLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  objc_opt_class();
  v7 = SBFSafeCast();

  if (v7)
  {
    v8 = [v7 iconAtPoint:0 index:{x, y}];
    if (v8)
    {
      v9 = [v7 iconViewForIcon:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_bestSupportedUTIForDragItem:(id)a3 supportedTypes:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 itemProvider];
  v7 = [v6 registeredTypeIdentifiersWithFileOptions:0];
  v8 = v5;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = v7;
  v29 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v29)
  {
    v10 = *v41;
    v30 = v9;
    v31 = v8;
    v28 = *v41;
    do
    {
      v11 = 0;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:{v12, v28}];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v14 = v8;
        v15 = [v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v37;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v37 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v36 + 1) + 8 * i)];
              if ([v13 conformsToType:v19] && (objc_msgSend(v6, "hasRepresentationConformingToTypeIdentifier:fileOptions:", v12, 0) & 1) != 0)
              {
                v26 = v12;

                v9 = v30;
                v8 = v31;
                v20 = v30;
                goto LABEL_28;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        ++v11;
        v9 = v30;
        v8 = v31;
        v10 = v28;
      }

      while (v11 != v29);
      v29 = [v30 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v29);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = v8;
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    while (2)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v32 + 1) + 8 * j);
        if ([v6 hasRepresentationConformingToTypeIdentifier:v25 fileOptions:0])
        {
          v26 = v25;
          goto LABEL_28;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0;
LABEL_28:

  return v26;
}

- (SBIconListViewDraggingDestinationDelegate)draggingDestinationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_draggingDestinationDelegate);

  return WeakRetained;
}

@end