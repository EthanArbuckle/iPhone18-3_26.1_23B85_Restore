@interface SBIconListViewDraggingAppPolicyHandler
- (BOOL)allowsSpringLoadForSession:(id)a3 onIconView:(id)a4;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (SBIconListViewDraggingDestinationDelegate)draggingDestinationDelegate;
- (id)_destinationFolderIconViewForDragItem:(id)a3 iconIndexPath:(id *)a4 folderRelativeIconIndexPath:(id *)a5;
- (id)_dropInteraction:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4;
- (id)_iconForDragItem:(id)a3;
- (id)_iconViewForDragItem:(id)a3 createIfNecessary:(BOOL)a4;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (unint64_t)dragHitRegionForDropSession:(id)a3 iconListView:(id)a4 point:(CGPoint)a5 icon:(id)a6;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)handleSpringLoadOnIconView:(id)a3;
@end

@implementation SBIconListViewDraggingAppPolicyHandler

- (unint64_t)dragHitRegionForDropSession:(id)a3 iconListView:(id)a4 point:(CGPoint)a5 icon:(id)a6
{
  y = a5.y;
  x = a5.x;
  v26 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a6;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [a3 items];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = [(SBIconListViewDraggingAppPolicyHandler *)self _iconForDragItem:*(*(&v21 + 1) + 8 * i)];
        if (v18)
        {

          goto LABEL_11;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v19 = [v11 dragHitRegionForPoint:v12 icon:{x, y}];
  return v19;
}

- (BOOL)allowsSpringLoadForSession:(id)a3 onIconView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
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
  v4 = a3;
  v7 = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  v5 = [v7 iconListView];
  v6 = [v7 dragDelegate];
  [v6 iconListView:v5 springLoadedInteractionForIconDragDidCompleteOnIconView:v4];
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v5 = a4;
  v6 = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  v7 = [v6 iconListView];
  v8 = [v6 dragDelegate];
  v9 = [v8 iconListView:v7 canHandleIconDropSession:v5];

  return v9;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v5 = a4;
  v8 = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  v6 = [v8 iconListView];
  v7 = [v8 dragDelegate];
  [v7 iconListView:v6 iconDropSessionDidEnter:v5];
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v5 = a4;
  v6 = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  v7 = [v6 iconListView];
  v8 = [v6 dragDelegate];
  v9 = [v8 iconListView:v7 iconDropSessionDidUpdate:v5];

  return v9;
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v5 = a4;
  v8 = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  v6 = [v8 iconListView];
  v7 = [v8 dragDelegate];
  [v7 iconListView:v6 iconDropSessionDidExit:v5];
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = a4;
  v8 = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  v6 = [v8 iconListView];
  v7 = [v8 dragDelegate];
  [v7 iconListView:v6 performIconDrop:v5];
}

- (id)_iconForDragItem:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  v6 = [v5 iconListView];
  v7 = [v6 _iconForDragItem:v4];

  return v7;
}

- (id)_iconViewForDragItem:(id)a3 createIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__21;
  v31 = __Block_byref_object_dispose__21;
  v32 = 0;
  v7 = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  v8 = [v7 iconListView];
  v9 = [v6 itemProvider];
  v10 = [v9 hasItemConformingToTypeIdentifier:*MEMORY[0x1E699A3D0]];

  if (v10)
  {
    v11 = [v6 itemProvider];
    v12 = [v11 teamData];
    if (v12)
    {
      v13 = MEMORY[0x1E696ACD0];
      v14 = objc_opt_self();
      v15 = [v13 unarchivedObjectOfClass:v14 fromData:v12 error:0];

      if (v15)
      {
        v21 = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __81__SBIconListViewDraggingAppPolicyHandler__iconViewForDragItem_createIfNecessary___block_invoke;
        v24 = &unk_1E808FB20;
        v16 = v15;
        v25 = v16;
        v26 = &v27;
        [v8 enumerateIconsUsingBlock:&v21];
      }
    }
  }

  if (v28[5] || ([(SBIconListViewDraggingAppPolicyHandler *)self _iconForDragItem:v6], v17 = objc_claimAutoreleasedReturnValue(), v18 = v28[5], v28[5] = v17, v18, v28[5]))
  {
    v19 = [v8 displayedIconViewForIcon:{v21, v22, v23, v24}];
    if (!v19 && v4)
    {
      [v8 layoutAndCreateIcon:v28[5]];
      v19 = [v8 iconViewForIcon:v28[5]];
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

- (id)_destinationFolderIconViewForDragItem:(id)a3 iconIndexPath:(id *)a4 folderRelativeIconIndexPath:(id *)a5
{
  v7 = a3;
  v8 = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  v9 = [v8 iconListView];
  v10 = [(SBIconListViewDraggingAppPolicyHandler *)self _iconForDragItem:v7];

  if (v10)
  {
    v11 = [v9 model];
    v12 = [v11 folder];

    v13 = [v12 indexPathForIcon:v10];
    if (v13)
    {
      v23 = 0;
      v14 = [v12 folderContainingIndexPath:v13 relativeIndexPath:&v23];
      v15 = v23;
      v16 = [v14 icon];
      v17 = [v9 displayedIconViewForIcon:v16];
      if (a4)
      {
        v18 = v13;
        *a4 = v13;
      }

      if (a5)
      {
        v19 = v15;
        *a5 = v15;
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

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  v10 = [v9 iconListView];
  [v10 layoutIconsIfNeeded];
  v11 = [(SBIconListViewDraggingAppPolicyHandler *)self _iconViewForDragItem:v7 createIfNecessary:1];
  if (v11 && ![v10 isDisplayingIconView:v11])
  {
    v35 = 0;
    v13 = v11;
  }

  else
  {
    v12 = [v9 dragDelegate];
    v13 = [v12 iconListView:v10 iconViewForDroppingIconDragItem:v7 proposedIconView:v11];

    if (v13)
    {
      [v12 iconListView:v10 willUseIconView:v13 forDroppingIconDragItem:v7];
      v14 = [v13 dropContainerView];
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
      [v14 convertPoint:v13 fromView:{v28, MinY + CGRectGetHeight(v71) * v26}];
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

      v55 = [v14 window];

      if (v55 && v34)
      {
        v56 = objc_alloc(MEMORY[0x1E69DC9A8]);
        v57 = *(MEMORY[0x1E695EFD0] + 16);
        *&v65.a = *MEMORY[0x1E695EFD0];
        *&v65.c = v57;
        *&v65.tx = *(MEMORY[0x1E695EFD0] + 32);
        v54 = [v56 initWithContainer:v14 center:&v65 transform:{v31, v33}];
      }

      else
      {
        v58 = SBLogIconDragging();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v65.a) = 138412290;
          *(&v65.a + 4) = v14;
          _os_log_impl(&dword_1BEB18000, v58, OS_LOG_TYPE_DEFAULT, "Drag preview target does not have a window or has a bad frame: %@", &v65, 0xCu);
        }

        v54 = 0;
      }
    }

    else
    {
      v64 = 0;
      v36 = [(SBIconListViewDraggingAppPolicyHandler *)self _destinationFolderIconViewForDragItem:v7 iconIndexPath:0 folderRelativeIconIndexPath:&v64];
      v14 = v64;
      if (v36 && ([v36 isAnimatingScrolling] & 1) == 0 && (v37 = objc_msgSend(v36, "visibleMiniIconListIndex"), v37 == objc_msgSend(v14, "sbListIndex")))
      {
        [v36 frameForMiniIconAtIndex:{objc_msgSend(v14, "sbIconIndex")}];
        [v10 convertRect:v36 fromView:?];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;
        UIRectGetCenter();
        v47 = v46;
        v49 = v48;
        [v10 alignmentIconSize];
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
        v54 = [v53 initWithContainer:v10 center:&v63 transform:{v47, v49}];
      }

      else
      {
        v54 = 0;
      }
    }

    v59 = v8;
    v35 = v59;
    if (v54)
    {
      v60 = [v59 retargetedPreviewWithTarget:v54];

      [v60 set_springboardPlatterStyle:1];
      v35 = v60;
    }

    if (v12)
    {
      v61 = [v12 iconListView:v10 previewForDroppingIconDragItem:v7 proposedPreview:v35];

      v35 = v61;
    }
  }

  return v35;
}

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  v10 = [v9 iconListView];
  v11 = [v10 requireAllIconsShownForReason:@"Icon Drop"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__SBIconListViewDraggingAppPolicyHandler_dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
  v14[3] = &unk_1E8089000;
  v15 = v11;
  v12 = v11;
  [v7 addCompletion:v14];
  v13 = [v9 dragDelegate];
  [v13 iconListView:v10 iconDragItem:v8 willAnimateDropWithAnimator:v7];
}

- (id)_dropInteraction:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4
{
  v5 = a4;
  v6 = [(SBIconListViewDraggingAppPolicyHandler *)self draggingDestinationDelegate];
  v7 = [v6 iconListView];
  v8 = [v6 dragDelegate];
  v9 = [v8 iconListView:v7 customSpringAnimationBehaviorForDroppingItem:v5];

  return v9;
}

- (SBIconListViewDraggingDestinationDelegate)draggingDestinationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_draggingDestinationDelegate);

  return WeakRetained;
}

@end