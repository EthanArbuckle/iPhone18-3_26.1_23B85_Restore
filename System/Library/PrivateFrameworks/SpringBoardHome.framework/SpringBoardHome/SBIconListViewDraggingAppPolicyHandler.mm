@interface SBIconListViewDraggingAppPolicyHandler
- (BOOL)allowsSpringLoadForSession:(id)session onIconView:(id)view;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (SBIconListViewDraggingDestinationDelegate)draggingDestinationDelegate;
- (id)_destinationFolderIconViewForDragItem:(id)item iconIndexPath:(id *)path folderRelativeIconIndexPath:(id *)indexPath;
- (id)_dropInteraction:(id)interaction customSpringAnimationBehaviorForDroppingItem:(id)item;
- (id)_iconForDragItem:(id)item;
- (id)_iconViewForDragItem:(id)item createIfNecessary:(BOOL)necessary;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (unint64_t)dragHitRegionForDropSession:(id)session iconListView:(id)view point:(CGPoint)point icon:(id)icon;
- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
- (void)handleSpringLoadOnIconView:(id)view;
@end

@implementation SBIconListViewDraggingAppPolicyHandler

- (unint64_t)dragHitRegionForDropSession:(id)session iconListView:(id)view point:(CGPoint)point icon:(id)icon
{
  y = point.y;
  x = point.x;
  v26 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  iconCopy = icon;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  items = [session items];
  v14 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(items);
        }

        v18 = [(SBIconListViewDraggingAppPolicyHandler *)self _iconForDragItem:*(*(&v21 + 1) + 8 * i)];
        if (v18)
        {

          goto LABEL_11;
        }
      }

      v15 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v19 = [viewCopy dragHitRegionForPoint:iconCopy icon:{x, y}];
  return v19;
}

- (BOOL)allowsSpringLoadForSession:(id)session onIconView:(id)view
{
  sessionCopy = session;
  viewCopy = view;
  draggingDestinationDelegate = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
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
  draggingDestinationDelegate = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  dragDelegate = [draggingDestinationDelegate dragDelegate];
  [dragDelegate iconListView:iconListView springLoadedInteractionForIconDragDidCompleteOnIconView:viewCopy];
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  sessionCopy = session;
  draggingDestinationDelegate = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  dragDelegate = [draggingDestinationDelegate dragDelegate];
  v9 = [dragDelegate iconListView:iconListView canHandleIconDropSession:sessionCopy];

  return v9;
}

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  enterCopy = enter;
  draggingDestinationDelegate = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  dragDelegate = [draggingDestinationDelegate dragDelegate];
  [dragDelegate iconListView:iconListView iconDropSessionDidEnter:enterCopy];
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  updateCopy = update;
  draggingDestinationDelegate = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  dragDelegate = [draggingDestinationDelegate dragDelegate];
  v9 = [dragDelegate iconListView:iconListView iconDropSessionDidUpdate:updateCopy];

  return v9;
}

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  exitCopy = exit;
  draggingDestinationDelegate = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  dragDelegate = [draggingDestinationDelegate dragDelegate];
  [dragDelegate iconListView:iconListView iconDropSessionDidExit:exitCopy];
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  dropCopy = drop;
  draggingDestinationDelegate = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  dragDelegate = [draggingDestinationDelegate dragDelegate];
  [dragDelegate iconListView:iconListView performIconDrop:dropCopy];
}

- (id)_iconForDragItem:(id)item
{
  itemCopy = item;
  draggingDestinationDelegate = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  v7 = [iconListView _iconForDragItem:itemCopy];

  return v7;
}

- (id)_iconViewForDragItem:(id)item createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  itemCopy = item;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__21;
  v31 = __Block_byref_object_dispose__21;
  v32 = 0;
  draggingDestinationDelegate = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  itemProvider = [itemCopy itemProvider];
  v10 = [itemProvider hasItemConformingToTypeIdentifier:*MEMORY[0x1E699A3D0]];

  if (v10)
  {
    itemProvider2 = [itemCopy itemProvider];
    teamData = [itemProvider2 teamData];
    if (teamData)
    {
      v13 = MEMORY[0x1E696ACD0];
      v14 = objc_opt_self();
      v15 = [v13 unarchivedObjectOfClass:v14 fromData:teamData error:0];

      if (v15)
      {
        v21 = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __81__SBIconListViewDraggingAppPolicyHandler__iconViewForDragItem_createIfNecessary___block_invoke;
        v24 = &unk_1E808FB20;
        v16 = v15;
        v25 = v16;
        v26 = &v27;
        [iconListView enumerateIconsUsingBlock:&v21];
      }
    }
  }

  if (v28[5] || ([(SBIconListViewDraggingAppPolicyHandler *)self _iconForDragItem:itemCopy], v17 = objc_claimAutoreleasedReturnValue(), v18 = v28[5], v28[5] = v17, v18, v28[5]))
  {
    v19 = [iconListView displayedIconViewForIcon:{v21, v22, v23, v24}];
    if (!v19 && necessaryCopy)
    {
      [iconListView layoutAndCreateIcon:v28[5]];
      v19 = [iconListView iconViewForIcon:v28[5]];
    }
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v27, 8);

  return v19;
}

void __81__SBIconListViewDraggingAppPolicyHandler__iconViewForDragItem_createIfNecessary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  if ([v12 isFileStackIcon])
  {
    v7 = objc_opt_class();
    v8 = v12;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
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

    v10 = v9;

    v11 = [v10 url];
    if ([v11 isEqual:*(a1 + 32)])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (id)_destinationFolderIconViewForDragItem:(id)item iconIndexPath:(id *)path folderRelativeIconIndexPath:(id *)indexPath
{
  itemCopy = item;
  draggingDestinationDelegate = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  v10 = [(SBIconListViewDraggingAppPolicyHandler *)self _iconForDragItem:itemCopy];

  if (v10)
  {
    model = [iconListView model];
    folder = [model folder];

    v13 = [folder indexPathForIcon:v10];
    if (v13)
    {
      v23 = 0;
      v14 = [folder folderContainingIndexPath:v13 relativeIndexPath:&v23];
      v15 = v23;
      icon = [v14 icon];
      v17 = [iconListView displayedIconViewForIcon:icon];
      if (path)
      {
        v18 = v13;
        *path = v13;
      }

      if (indexPath)
      {
        v19 = v15;
        *indexPath = v15;
      }

      v20 = v17;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  v66 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  defaultCopy = default;
  draggingDestinationDelegate = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  [iconListView layoutIconsIfNeeded];
  v11 = [(SBIconListViewDraggingAppPolicyHandler *)self _iconViewForDragItem:itemCopy createIfNecessary:1];
  if (v11 && ![iconListView isDisplayingIconView:v11])
  {
    v35 = 0;
    v13 = v11;
  }

  else
  {
    dragDelegate = [draggingDestinationDelegate dragDelegate];
    v13 = [dragDelegate iconListView:iconListView iconViewForDroppingIconDragItem:itemCopy proposedIconView:v11];

    if (v13)
    {
      [dragDelegate iconListView:iconListView willUseIconView:v13 forDroppingIconDragItem:itemCopy];
      dropContainerView = [v13 dropContainerView];
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [v13 anchorPoint];
      v24 = v23;
      v26 = v25;
      v68.origin.x = v16;
      v68.origin.y = v18;
      v68.size.width = v20;
      v68.size.height = v22;
      MinX = CGRectGetMinX(v68);
      v69.origin.x = v16;
      v69.origin.y = v18;
      v69.size.width = v20;
      v69.size.height = v22;
      v28 = MinX + CGRectGetWidth(v69) * v24;
      v70.origin.x = v16;
      v70.origin.y = v18;
      v70.size.width = v20;
      v70.size.height = v22;
      MinY = CGRectGetMinY(v70);
      v71.origin.x = v16;
      v71.origin.y = v18;
      v71.size.width = v20;
      v71.size.height = v22;
      [dropContainerView convertPoint:v13 fromView:{v28, MinY + CGRectGetHeight(v71) * v26}];
      v31 = v30;
      v33 = v32;
      v72.origin.x = v16;
      v72.origin.y = v18;
      v72.size.width = v20;
      v72.size.height = v22;
      if (CGRectIsEmpty(v72))
      {
        v34 = 0;
      }

      else
      {
        v74.origin.x = v16;
        v74.origin.y = v18;
        v74.size.width = v20;
        v74.size.height = v22;
        v34 = !CGRectIsInfinite(v74);
      }

      window = [dropContainerView window];

      if (window && v34)
      {
        v56 = objc_alloc(MEMORY[0x1E69DC9A8]);
        v57 = *(MEMORY[0x1E695EFD0] + 16);
        *&v65.a = *MEMORY[0x1E695EFD0];
        *&v65.c = v57;
        *&v65.tx = *(MEMORY[0x1E695EFD0] + 32);
        v54 = [v56 initWithContainer:dropContainerView center:&v65 transform:{v31, v33}];
      }

      else
      {
        v58 = SBLogIconDragging();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v65.a) = 138412290;
          *(&v65.a + 4) = dropContainerView;
          _os_log_impl(&dword_1BEB18000, v58, OS_LOG_TYPE_DEFAULT, "Drag preview target does not have a window or has a bad frame: %@", &v65, 0xCu);
        }

        v54 = 0;
      }
    }

    else
    {
      v64 = 0;
      v36 = [(SBIconListViewDraggingAppPolicyHandler *)self _destinationFolderIconViewForDragItem:itemCopy iconIndexPath:0 folderRelativeIconIndexPath:&v64];
      dropContainerView = v64;
      if (v36 && ([v36 isAnimatingScrolling] & 1) == 0 && (v37 = objc_msgSend(v36, "visibleMiniIconListIndex"), v37 == objc_msgSend(dropContainerView, "sbListIndex")))
      {
        [v36 frameForMiniIconAtIndex:{objc_msgSend(dropContainerView, "sbIconIndex")}];
        [iconListView convertRect:v36 fromView:?];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;
        UIRectGetCenter();
        v47 = v46;
        v49 = v48;
        [iconListView alignmentIconSize];
        v51 = v50;
        v73.origin.x = v39;
        v73.origin.y = v41;
        v73.size.width = v43;
        v73.size.height = v45;
        Height = CGRectGetHeight(v73);
        memset(&v65, 0, sizeof(v65));
        CGAffineTransformMakeScale(&v65, Height / v51, Height / v51);
        v53 = objc_alloc(MEMORY[0x1E69DC9A8]);
        v63 = v65;
        v54 = [v53 initWithContainer:iconListView center:&v63 transform:{v47, v49}];
      }

      else
      {
        v54 = 0;
      }
    }

    v59 = defaultCopy;
    v35 = v59;
    if (v54)
    {
      v60 = [v59 retargetedPreviewWithTarget:v54];

      [v60 set_springboardPlatterStyle:1];
      v35 = v60;
    }

    if (dragDelegate)
    {
      v61 = [dragDelegate iconListView:iconListView previewForDroppingIconDragItem:itemCopy proposedPreview:v35];

      v35 = v61;
    }
  }

  return v35;
}

- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator
{
  animatorCopy = animator;
  itemCopy = item;
  draggingDestinationDelegate = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  v11 = [iconListView requireAllIconsShownForReason:@"Icon Drop"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__SBIconListViewDraggingAppPolicyHandler_dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
  v14[3] = &unk_1E8089000;
  v15 = v11;
  v12 = v11;
  [animatorCopy addCompletion:v14];
  dragDelegate = [draggingDestinationDelegate dragDelegate];
  [dragDelegate iconListView:iconListView iconDragItem:itemCopy willAnimateDropWithAnimator:animatorCopy];
}

- (id)_dropInteraction:(id)interaction customSpringAnimationBehaviorForDroppingItem:(id)item
{
  itemCopy = item;
  draggingDestinationDelegate = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  iconListView = [draggingDestinationDelegate iconListView];
  dragDelegate = [draggingDestinationDelegate dragDelegate];
  v9 = [dragDelegate iconListView:iconListView customSpringAnimationBehaviorForDroppingItem:itemCopy];

  return v9;
}

- (SBIconListViewDraggingDestinationDelegate)draggingDestinationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_draggingDestinationDelegate);

  return WeakRetained;
}

@end