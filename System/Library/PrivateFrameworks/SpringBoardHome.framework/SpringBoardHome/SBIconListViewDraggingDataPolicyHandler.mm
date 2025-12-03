@interface SBIconListViewDraggingDataPolicyHandler
- (BOOL)allowsSpringLoadForSession:(id)session onIconView:(id)view;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (SBIconListViewDraggingDataPolicyHandler)init;
- (SBIconListViewDraggingDestinationDelegate)draggingDestinationDelegate;
- (id)_bestSupportedUTIForDragItem:(id)item supportedTypes:(id)types;
- (id)_currentDraggingIconViewInView:(id)view forLocation:(CGPoint)location;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)_removeAnySourceURLForOperation:(id)operation;
- (void)handleSpringLoadOnIconView:(id)view;
@end

@implementation SBIconListViewDraggingDataPolicyHandler

- (SBIconListViewDraggingDataPolicyHandler)init
{
  v6.receiver = self;
  v6.super_class = SBIconListViewDraggingDataPolicyHandler;
  v2 = [(SBIconListViewDraggingDataPolicyHandler *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    sourceURLsByOperationMapTable = v2->_sourceURLsByOperationMapTable;
    v2->_sourceURLsByOperationMapTable = weakToStrongObjectsMapTable;
  }

  return v2;
}

- (BOOL)allowsSpringLoadForSession:(id)session onIconView:(id)view
{
  sessionCopy = session;
  viewCopy = view;
  draggingDestinationDelegate = [(SBIconListViewDraggingDataPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  if (SBHContentVisibilityIsVisible([iconListView contentVisibility]))
  {
    dragDelegate = [draggingDestinationDelegate dragDelegate];
    v11 = [dragDelegate iconListView:iconListView shouldAllowSpringLoadedInteractionForIconDropSession:sessionCopy onIconView:viewCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)handleSpringLoadOnIconView:(id)view
{
  viewCopy = view;
  v6 = objc_alloc_init(SBHIconLaunchContext);
  [(SBHIconLaunchContext *)v6 setIconView:viewCopy];
  icon = [viewCopy icon];
  location = [viewCopy location];

  [icon launchFromLocation:location context:v6];
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  sessionCopy = session;
  draggingDestinationDelegate = [(SBIconListViewDraggingDataPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  dragDelegate = [draggingDestinationDelegate dragDelegate];
  v9 = [dragDelegate iconListView:iconListView canHandleDataDropSession:sessionCopy];

  return v9;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  updateCopy = update;
  draggingDestinationDelegate = [(SBIconListViewDraggingDataPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  dragDelegate = [draggingDestinationDelegate dragDelegate];
  v9 = [dragDelegate iconListView:iconListView dataDropSessionDidUpdate:updateCopy];

  return v9;
}

- (void)_removeAnySourceURLForOperation:(id)operation
{
  operationCopy = operation;
  v4 = [(NSMapTable *)self->_sourceURLsByOperationMapTable objectForKey:?];
  if (v4)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:v4 error:0];

    [(NSMapTable *)self->_sourceURLsByOperationMapTable removeObjectForKey:operationCopy];
  }
}

- (id)_currentDraggingIconViewInView:(id)view forLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  viewCopy = view;
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

- (id)_bestSupportedUTIForDragItem:(id)item supportedTypes:(id)types
{
  v47 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  itemProvider = [item itemProvider];
  v7 = [itemProvider registeredTypeIdentifiersWithFileOptions:0];
  v8 = typesCopy;
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
              if ([v13 conformsToType:v19] && (objc_msgSend(itemProvider, "hasRepresentationConformingToTypeIdentifier:fileOptions:", v12, 0) & 1) != 0)
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
        if ([itemProvider hasRepresentationConformingToTypeIdentifier:v25 fileOptions:0])
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