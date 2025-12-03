@interface TVRUIDockLayoutManager
- (CGPoint)reorderingStartPosition;
- (CGRect)controlPanelFrame;
- (CGRect)effectiveControlPanelFrame;
- (CGRect)effectiveDockFrame;
- (CGRect)effectiveTouchpadFrame;
- (CGRect)touchpadFrame;
- (TVRUIDockLayoutManager)initWithDockHostingView:(id)view dockInfoProvider:(id)provider;
- (double)dockHeight;
- (id)dockContainerView;
- (unint64_t)_placementForPosition:(CGPoint)position;
- (void)_computeFrames;
- (void)_didPan:(id)pan;
- (void)_invokeLayoutHandlerIfNeeded;
- (void)updateWithTouchpadFrame:(CGRect)frame controlPanelFrame:(CGRect)panelFrame placement:(unint64_t)placement;
@end

@implementation TVRUIDockLayoutManager

- (TVRUIDockLayoutManager)initWithDockHostingView:(id)view dockInfoProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = TVRUIDockLayoutManager;
  v9 = [(TVRUIDockLayoutManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_placement = 1;
    objc_storeStrong(&v9->_dockHostingView, view);
    objc_storeStrong(&v10->_dockInfoProvider, provider);
    [(TVRUIDockLayoutManager *)v10 _configurePlacementDragRecognizer];
  }

  return v10;
}

- (void)updateWithTouchpadFrame:(CGRect)frame controlPanelFrame:(CGRect)panelFrame placement:(unint64_t)placement
{
  self->_touchpadFrame = frame;
  self->_controlPanelFrame = panelFrame;
  if (placement)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  self->_placement = placement;
  dockInfoProvider = [(TVRUIDockLayoutManager *)self dockInfoProvider];
  dockContainerView = [dockInfoProvider dockContainerView];
  [dockContainerView setAlpha:v6];

  [(TVRUIDockLayoutManager *)self _computeFrames];
}

- (id)dockContainerView
{
  dockInfoProvider = [(TVRUIDockLayoutManager *)self dockInfoProvider];
  dockContainerView = [dockInfoProvider dockContainerView];

  return dockContainerView;
}

- (double)dockHeight
{
  dockInfoProvider = [(TVRUIDockLayoutManager *)self dockInfoProvider];
  [dockInfoProvider dockPreferredHeight];
  v4 = v3;

  return v4;
}

- (void)_didPan:(id)pan
{
  panCopy = pan;
  dockHostingView = [(TVRUIDockLayoutManager *)self dockHostingView];
  dockContainerView = [(TVRUIDockLayoutManager *)self dockContainerView];
  [panCopy locationInView:dockHostingView];
  v8 = v7;
  v10 = v9;
  if ([panCopy state] == 1)
  {
    [(TVRUIDockLayoutManager *)self setIsReordering:1];
    [(TVRUIDockLayoutManager *)self setReorderingStartPosition:v8, v10];
  }

  else if ([panCopy state] == 2)
  {
    [(TVRUIDockLayoutManager *)self reorderingStartPosition];
    CGAffineTransformMakeTranslation(&v19, 0.0, v10 - v11);
    v18 = v19;
    [dockContainerView setTransform:&v18];
    v12 = [(TVRUIDockLayoutManager *)self _placementForPosition:v8, v10];
    if ([(TVRUIDockLayoutManager *)self placement]!= v12)
    {
      [(TVRUIDockLayoutManager *)self setPlacement:v12];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __34__TVRUIDockLayoutManager__didPan___block_invoke;
      v17[3] = &unk_279D87C20;
      v17[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v17 animations:0.25];
    }
  }

  else if ([panCopy state] == 3 || objc_msgSend(panCopy, "state") == 4)
  {
    [(TVRUIDockLayoutManager *)self setIsReordering:0];
    v13 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __34__TVRUIDockLayoutManager__didPan___block_invoke_2;
    v14[3] = &unk_279D88230;
    v15 = dockContainerView;
    selfCopy = self;
    [v13 animateWithDuration:v14 animations:0.25];
  }
}

void __34__TVRUIDockLayoutManager__didPan___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dockHostingView];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) dockHostingView];
  [v3 layoutIfNeeded];
}

void __34__TVRUIDockLayoutManager__didPan___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v6[0] = *MEMORY[0x277CBF2C0];
  v6[1] = v3;
  v6[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v6];
  v4 = [*(a1 + 40) dockHostingView];
  [v4 setNeedsLayout];

  v5 = [*(a1 + 40) dockHostingView];
  [v5 layoutIfNeeded];
}

- (void)_invokeLayoutHandlerIfNeeded
{
  dockInfoProvider = [(TVRUIDockLayoutManager *)self dockInfoProvider];
  dockLayoutHandler = [dockInfoProvider dockLayoutHandler];

  if (dockLayoutHandler)
  {
    dockInfoProvider2 = [(TVRUIDockLayoutManager *)self dockInfoProvider];
    dockLayoutHandler2 = [dockInfoProvider2 dockLayoutHandler];
    dockLayoutHandler2[2]();
  }
}

- (unint64_t)_placementForPosition:(CGPoint)position
{
  y = position.y;
  dockHostingView = [(TVRUIDockLayoutManager *)self dockHostingView];
  [dockHostingView bounds];
  v38 = v7;
  v39 = v6;
  v36 = v9;
  v37 = v8;

  [(TVRUIDockLayoutManager *)self effectiveTouchpadFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(TVRUIDockLayoutManager *)self effectiveControlPanelFrame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v40.origin.x = v11;
  v40.origin.y = v13;
  v40.size.width = v15;
  v40.size.height = v17;
  MidY = CGRectGetMidY(v40);
  v41.origin.x = v11;
  v41.origin.y = v13;
  v41.size.width = v15;
  v41.size.height = v17;
  v27 = CGRectGetMidY(v41);
  v42.origin.x = v19;
  v42.origin.y = v21;
  v42.size.width = v23;
  v42.size.height = v25;
  v28 = CGRectGetMidY(v42);
  v43.origin.x = v19;
  v43.origin.y = v21;
  v43.size.width = v23;
  v43.size.height = v25;
  v29 = CGRectGetMidY(v43);
  v44.origin.y = v38;
  v44.origin.x = v39;
  v44.size.height = v36;
  v44.size.width = v37;
  MaxY = CGRectGetMaxY(v44);
  if (y < MidY)
  {
    return 1;
  }

  v32 = v27 - 1;
  if (y >= v32 && y - v32 < v28 - v27 + 2)
  {
    return 2;
  }

  v34 = v29 - 1;
  if (y - v34 < MaxY - v29 + 2 && y >= v34)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)_computeFrames
{
  dockInfoProvider = [(TVRUIDockLayoutManager *)self dockInfoProvider];
  [dockInfoProvider dockPreferredHeight];
  v5 = v4;

  dockHostingView = [(TVRUIDockLayoutManager *)self dockHostingView];
  [dockHostingView bounds];
  Width = CGRectGetWidth(v46);

  dockInfoProvider2 = [(TVRUIDockLayoutManager *)self dockInfoProvider];
  dockIsCollapsed = [dockInfoProvider2 dockIsCollapsed];

  if (![(TVRUIDockLayoutManager *)self placement])
  {
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    [(TVRUIDockLayoutManager *)self setEffectiveDockFrame:-Width, CGRectGetMinY(v52), Width, v5];
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    selfCopy3 = self;
LABEL_15:
    [(TVRUIDockLayoutManager *)selfCopy3 setEffectiveTouchpadFrame:v18, v15, v19];
    [(TVRUIDockLayoutManager *)self controlPanelFrame];

    [(TVRUIDockLayoutManager *)self setEffectiveControlPanelFrame:?];
    return;
  }

  v10 = v5 + 20.0;
  if ([(TVRUIDockLayoutManager *)self placement]== 1)
  {
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    [(TVRUIDockLayoutManager *)self setEffectiveDockFrame:0.0, CGRectGetMinY(v47), Width, v5];
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    MinX = CGRectGetMinX(v48);
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    MinY = CGRectGetMinY(v49);
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    v13 = CGRectGetWidth(v50);
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    Height = CGRectGetHeight(v51);
    if (dockIsCollapsed)
    {
      [(TVRUIDockLayoutManager *)self touchpadFrame];
      MinX = v16;
      v13 = v17;
    }

    else
    {
      v15 = v10 + MinY;
    }

    selfCopy3 = self;
    v18 = MinX;
    v19 = v13;
    goto LABEL_15;
  }

  if ([(TVRUIDockLayoutManager *)self placement]== 2)
  {
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    [(TVRUIDockLayoutManager *)self setEffectiveDockFrame:0.0, CGRectGetMaxY(v53) - v5, Width, v5];
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    v21 = CGRectGetMinX(v54);
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    v22 = CGRectGetMinY(v55);
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    v23 = CGRectGetWidth(v56);
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    v24 = CGRectGetHeight(v57);
    if (dockIsCollapsed)
    {
      [(TVRUIDockLayoutManager *)self touchpadFrame];
      v21 = v25;
      v22 = v26;
      v23 = v27;
    }

    selfCopy3 = self;
    v18 = v21;
    v15 = v22;
    v19 = v23;
    goto LABEL_15;
  }

  if ([(TVRUIDockLayoutManager *)self placement]== 3)
  {
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    v28 = CGRectGetMinX(v58);
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    v29 = CGRectGetMinY(v59);
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    v30 = CGRectGetWidth(v60);
    [(TVRUIDockLayoutManager *)self touchpadFrame];
    v31 = CGRectGetHeight(v61);
    if (dockIsCollapsed)
    {
      [(TVRUIDockLayoutManager *)self touchpadFrame];
      v28 = v33;
      v29 = v34;
      v30 = v35;
    }

    else
    {
      v32 = v31 - v10;
    }

    [(TVRUIDockLayoutManager *)self setEffectiveTouchpadFrame:v28, v29, v30, v32];
    [(TVRUIDockLayoutManager *)self controlPanelFrame];
    v36 = CGRectGetMinX(v62);
    [(TVRUIDockLayoutManager *)self controlPanelFrame];
    v37 = CGRectGetMinY(v63) - v10;
    [(TVRUIDockLayoutManager *)self controlPanelFrame];
    v38 = CGRectGetWidth(v64);
    [(TVRUIDockLayoutManager *)self controlPanelFrame];
    v39 = CGRectGetHeight(v65);
    v40 = v39;
    v41 = v38;
    v42 = v37;
    v43 = v36;
    if (dockIsCollapsed)
    {
      [(TVRUIDockLayoutManager *)self controlPanelFrame:v36];
    }

    [(TVRUIDockLayoutManager *)self setEffectiveControlPanelFrame:v43, v42, v41, v40];
    v66.origin.x = v36;
    v66.origin.y = v37;
    v66.size.width = v38;
    v66.size.height = v39;
    v44 = CGRectGetMaxY(v66) + 20.0;

    [(TVRUIDockLayoutManager *)self setEffectiveDockFrame:0.0, v44, Width, v5];
  }
}

- (CGRect)effectiveTouchpadFrame
{
  x = self->_effectiveTouchpadFrame.origin.x;
  y = self->_effectiveTouchpadFrame.origin.y;
  width = self->_effectiveTouchpadFrame.size.width;
  height = self->_effectiveTouchpadFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)effectiveControlPanelFrame
{
  x = self->_effectiveControlPanelFrame.origin.x;
  y = self->_effectiveControlPanelFrame.origin.y;
  width = self->_effectiveControlPanelFrame.size.width;
  height = self->_effectiveControlPanelFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)effectiveDockFrame
{
  x = self->_effectiveDockFrame.origin.x;
  y = self->_effectiveDockFrame.origin.y;
  width = self->_effectiveDockFrame.size.width;
  height = self->_effectiveDockFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)touchpadFrame
{
  x = self->_touchpadFrame.origin.x;
  y = self->_touchpadFrame.origin.y;
  width = self->_touchpadFrame.size.width;
  height = self->_touchpadFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)controlPanelFrame
{
  x = self->_controlPanelFrame.origin.x;
  y = self->_controlPanelFrame.origin.y;
  width = self->_controlPanelFrame.size.width;
  height = self->_controlPanelFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)reorderingStartPosition
{
  x = self->_reorderingStartPosition.x;
  y = self->_reorderingStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end