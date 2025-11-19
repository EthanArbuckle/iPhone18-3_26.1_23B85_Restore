@interface SBWindowDragGestureWorkspaceTransaction
- (BOOL)shouldInterceptTransitionRequest:(id)a3;
- (CGPoint)locationInSelectedDisplayItem;
- (CGSize)sizeOfSelectedDisplayItem;
- (void)_beginWithGesture:(id)a3;
- (void)_finishWithGesture:(id)a3;
- (void)interceptTransitionRequest:(id)a3;
@end

@implementation SBWindowDragGestureWorkspaceTransaction

- (void)_beginWithGesture:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  v6 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  v7 = [v6 layoutContext];
  v8 = [v7 layoutState];

  v9 = [v8 floatingConfiguration];
  v82 = [v8 centerConfiguration];
  v85 = [v8 interfaceOrientation];
  v10 = [v6 contentView];
  v11 = [v6 view];
  v89 = v10;
  [v4 locationInView:v10];
  v13 = v12;
  v15 = v14;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 initialTouchLocation];
    v13 = v16;
    v15 = v17;
  }

  v88 = v11;
  [v11 bounds];
  if (v15 > v18 + -1.0)
  {
    v15 = v18 + -1.0;
  }

  v19 = objc_opt_class();
  v20 = v4;
  if (v19)
  {
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v86 = v22;
  if (v22)
  {
    v23 = [v22 initialTouchLeafAppLayout];
  }

  else
  {
    v24 = objc_opt_class();
    v25 = v20;
    if (v24)
    {
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    if (v27)
    {
      v23 = [v27 leafAppLayout];
    }

    else
    {
      v23 = 0;
    }
  }

  v87 = v20;
  v83 = v9;
  if (v23)
  {
    v28 = [v6 adjustedAppLayoutForLeafAppLayout:v23];
    if (v28)
    {
      v29 = v6;
      v30 = [v5 windowManagementContext];
      v31 = [v30 isChamoisOrFlexibleWindowing];

      if ((v31 & 1) != 0 || ([v28 itemForLayoutRole:4], v32 = objc_claimAutoreleasedReturnValue(), v32, objc_msgSend(v23, "itemForLayoutRole:", 1), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v28, "layoutRoleForItem:", v33), v33, !v32))
      {
        v6 = v29;
      }

      else
      {
        v35 = v34 == 4;
        v9 = v83;
        v6 = v29;
        if (!v35)
        {
          goto LABEL_27;
        }
      }

LABEL_35:

      goto LABEL_36;
    }

LABEL_27:
  }

  if ([v8 layoutContainsRole:3])
  {
    if (!SBFloatingConfigurationIsStashed(v9))
    {
      v36 = +[SBMedusaDomain rootSettings];
      [v36 narrowEdgeSwipeHitTestWidth];
      v38 = v37;

      [v5 frameForFloatingAppLayoutInInterfaceOrientation:v85 floatingConfiguration:v9];
      v99.origin.x = v40 + (v39 - v38) * 0.5;
      v99.origin.y = 0.0;
      v99.size.width = v38;
      v98.x = v13;
      v98.y = v15;
      if (CGRectContainsPoint(v99, v98))
      {
        v41 = [v8 floatingAppLayout];
        if (v41)
        {
          v23 = v41;
          goto LABEL_36;
        }
      }
    }
  }

  v28 = [v6 _adjustedAppLayoutForItemContainerAtLocation:0 environment:{v13, v15}];
  v42 = [v28 leafAppLayoutForRole:4];
  if (v42)
  {
    v23 = v42;
    goto LABEL_35;
  }

  v23 = [v6 _leafAppLayoutForItemContainerAtLocation:0 environment:{v13, v15}];

  if (v23)
  {
LABEL_36:
    [(SBFluidSwitcherGestureWorkspaceTransaction *)self setSelectedAppLayout:v23];
    v43 = [v6 visibleItemContainers];
    v44 = [v43 allValues];
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __61__SBWindowDragGestureWorkspaceTransaction__beginWithGesture___block_invoke;
    v96[3] = &unk_2783A8FD0;
    v45 = v23;
    v97 = v45;
    v46 = [v44 bs_firstObjectPassingTest:v96];

    v84 = v6;
    v47 = [v6 adjustedAppLayoutForLeafAppLayout:v45];
    v48 = [v45 itemForLayoutRole:1];
    v49 = [v47 layoutRoleForItem:v48];
    v50 = [v5 windowManagementContext];
    v51 = [v50 isFlexibleWindowingEnabled];

    if (v51)
    {
      v52 = [v8 appLayout];
      self->_draggingFromContinuousExposeStrips = [v52 containsItem:v48] ^ 1;

      p_locationInSelectedDisplayItem = &self->_locationInSelectedDisplayItem;
      [v46 convertPoint:v89 fromView:{v13, v15}];
      self->_locationInSelectedDisplayItem.x = v54;
      self->_locationInSelectedDisplayItem.y = v55;
      [v5 frameForItemWithRole:v49 inMainAppLayout:v47 interfaceOrientation:v85];
      v57 = v56;
      v59 = v58;
      self->_sizeOfSelectedDisplayItem.width = v58;
      self->_sizeOfSelectedDisplayItem.height = v60;
      self->_selectedEdge = 1;
      v61 = [v5 _slideOverDisplayItem];
      v62 = BSEqualObjects();

      if (v62)
      {
        v95 = 0;
        v93 = 0u;
        v94 = 0u;
        v63 = [v5 displayItemLayoutAttributesProvider];
        v64 = [v8 displayOrdinal];
        v65 = [v8 interfaceOrientation];
        v66 = (v65 - 1) < 2 ? 1 : 2 * ((v65 - 3) < 2);
        v67 = [v63 layoutAttributesForDisplayItem:v48 inAppLayout:v47 displayOrdinal:v64 orientation:v66];
        [(SBDisplayItemLayoutAttributes *)v67 slideOverConfiguration];

        self->_draggingFromContinuousExposeStrips = 0;
        self->_unstashingFromHome = [v8 unlockedEnvironmentMode] == 1;
        if (v46)
        {
          y = self->_locationInSelectedDisplayItem.y;
        }

        else
        {
          v91[0] = v93;
          v91[1] = v94;
          v92 = v95;
          if (SBDisplayItemSlideOverIsLeftSided(v91))
          {
            v76 = -v59;
          }

          else
          {
            [v89 bounds];
          }

          y = v15 - v57;
          p_locationInSelectedDisplayItem->x = v13 - v76;
          self->_locationInSelectedDisplayItem.y = v15 - v57;
        }

        if (y > self->_sizeOfSelectedDisplayItem.height * 0.25)
        {
          v81 = 8;
          if (p_locationInSelectedDisplayItem->x < self->_sizeOfSelectedDisplayItem.width * 0.5)
          {
            v81 = 2;
          }

          self->_selectedEdge = v81;
        }
      }

      goto LABEL_64;
    }

    v69 = [v5 windowManagementContext];
    v70 = [v69 isMedusaEnabled];

    if (!v70)
    {
LABEL_64:
      v90.receiver = self;
      v90.super_class = SBWindowDragGestureWorkspaceTransaction;
      v75 = v87;
      [(SBFluidSwitcherGestureWorkspaceTransaction *)&v90 _beginWithGesture:v87];

      v74 = v88;
      v6 = v84;
      goto LABEL_65;
    }

    if ([v47 environment] == 1)
    {
      [v5 frameForItemWithRole:v49 inMainAppLayout:v47 interfaceOrientation:v85];
    }

    else if ([v47 environment] == 2)
    {
      [v5 frameForFloatingAppLayoutInInterfaceOrientation:v85 floatingConfiguration:v83];
    }

    else
    {
      if ([v47 environment] != 3)
      {
        v77 = *MEMORY[0x277CBF3A8];
        v78 = *(MEMORY[0x277CBF3A8] + 8);
        goto LABEL_57;
      }

      [v5 frameForCenterItemWithConfiguration:v82 interfaceOrientation:v85];
    }

    v77 = v71;
    v78 = v72;
LABEL_57:
    self->_draggingFromContinuousExposeStrips = 0;
    [v46 convertPoint:v89 fromView:{v13, v15}];
    self->_locationInSelectedDisplayItem.x = v79;
    self->_locationInSelectedDisplayItem.y = v80;
    self->_sizeOfSelectedDisplayItem.width = v77;
    self->_sizeOfSelectedDisplayItem.height = v78;
    goto LABEL_64;
  }

  v73 = SBLogSystemGestureAppSwitcher();
  v74 = v88;
  if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
  {
    [(SBWindowDragGestureWorkspaceTransaction *)self _beginWithGesture:v73, v13, v15];
  }

  v75 = v87;
  [v87 setEnabled:0];
  [v87 setEnabled:1];
  [(SBSystemGestureWorkspaceTransaction *)self finishWithCompletionType:-1];
LABEL_65:
}

uint64_t __61__SBWindowDragGestureWorkspaceTransaction__beginWithGesture___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 appLayout];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_finishWithGesture:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];

  if (v5)
  {
    v6.receiver = self;
    v6.super_class = SBWindowDragGestureWorkspaceTransaction;
    [(SBFluidSwitcherGestureWorkspaceTransaction *)&v6 _finishWithGesture:v4];
  }
}

- (BOOL)shouldInterceptTransitionRequest:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  v6 = [v4 source];
  v7 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];
  if (v7 && ([(SBWindowDragGestureWorkspaceTransaction *)self isInterrupted]& 1) == 0)
  {
    v9 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
    v8 = [v9 state] == 2;
  }

  else
  {
    v8 = 0;
  }

  if (((v6 - 24) > 0x35 || ((1 << (v6 - 24)) & 0x20100000000003) == 0) && v6 != 6)
  {
    v8 = 0;
  }

  v10 = [v5 windowManagementContext];
  v11 = [v10 isChamoisOrFlexibleWindowing];

  v12 = 0;
  if (v11 && v8)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = [v4 applicationContext];
    v14 = [v13 entities];

    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v23 + 1) + 8 * i) applicationSceneEntity];
          v20 = [v19 application];
          v21 = [v20 alwaysMaximizedInChamois];

          if (v21)
          {
            v12 = 0;
            goto LABEL_21;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_21:
  }

  return v12;
}

- (void)interceptTransitionRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _copiedTransitionRequestFromTransitionRequest:v4];
  if ([v4 source] == 77)
  {
    v6 = 77;
  }

  else
  {
    v6 = 68;
  }

  [v5 setSource:v6];
  if ([v4 source] != 24 && objc_msgSend(v4, "source") != 25)
  {
    goto LABEL_9;
  }

  v7 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  v8 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];
  v9 = [v5 applicationContext];
  v10 = [v9 layoutState];

  v11 = [v7 layoutState];
  v12 = [v10 appLayout];
  v13 = [v11 appLayout];
  v14 = [v12 isEqual:v13];

  if ((v14 & 1) == 0)
  {
    v23 = [v7 switcherCoordinator];
    v22 = [v8 itemForLayoutRole:1];
    v15 = [v23 _entityForDisplayItem:v22 switcherController:v7];
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v16 addObject:v15];
    v17 = [v10 appLayout];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__SBWindowDragGestureWorkspaceTransaction_interceptTransitionRequest___block_invoke;
    v25[3] = &unk_2783A8FF8;
    v21 = v8;
    v18 = v5;
    v26 = v18;
    v27 = v16;
    v19 = v16;
    [v17 enumerate:v25];

    v20 = objc_alloc_init(SBWorkspaceApplicationSceneTransitionContext);
    [(SBWorkspaceApplicationSceneTransitionContext *)v20 setEntities:v19 withPolicy:0 centerEntity:0 floatingEntity:0];
    [v18 setApplicationContext:v20];

LABEL_9:
    v24.receiver = self;
    v24.super_class = SBWindowDragGestureWorkspaceTransaction;
    [(SBFluidSwitcherGestureWorkspaceTransaction *)&v24 interceptTransitionRequest:v5];
    goto LABEL_10;
  }

LABEL_10:
}

void __70__SBWindowDragGestureWorkspaceTransaction_interceptTransitionRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) applicationContext];
  v5 = [v4 applicationSceneEntityForLayoutRole:a2];

  [*(a1 + 40) addObject:v5];
}

- (CGPoint)locationInSelectedDisplayItem
{
  x = self->_locationInSelectedDisplayItem.x;
  y = self->_locationInSelectedDisplayItem.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)sizeOfSelectedDisplayItem
{
  width = self->_sizeOfSelectedDisplayItem.width;
  height = self->_sizeOfSelectedDisplayItem.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_beginWithGesture:(CGFloat)a3 .cold.1(uint64_t a1, NSObject *a2, CGFloat a3, CGFloat a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v18.x = a3;
  v18.y = a4;
  v10 = NSStringFromCGPoint(v18);
  v11 = 138543874;
  v12 = v9;
  v13 = 2050;
  v14 = a1;
  v15 = 2114;
  v16 = v10;
  _os_log_fault_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_FAULT, "<%{public}@:%{public}p> Window drag began at %{public}@ but did not hit-test to an app layout. Bailing.", &v11, 0x20u);
}

@end