@interface SXTextInteractionContextProvider
- (CGRect)viewportRectForLinkInRep:(id)rep range:(_NSRange)range viewport:(id)viewport;
- (SXTextInteractionContextProvider)initWithTangierController:(id)controller actionManager:(id)manager;
- (id)contextMenuAtLocation:(CGPoint)location viewport:(id)viewport;
- (id)targetedPreviewAtLocation:(CGPoint)location viewport:(id)viewport;
- (id)toolTipAtLocation:(CGPoint)location viewport:(id)viewport;
- (void)commitPreviewViewController:(id)controller;
- (void)repAndHyperlinkAtLocation:(CGPoint)location viewport:(id)viewport block:(id)block;
@end

@implementation SXTextInteractionContextProvider

- (SXTextInteractionContextProvider)initWithTangierController:(id)controller actionManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = SXTextInteractionContextProvider;
  v9 = [(SXTextInteractionContextProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tangierController, controller);
    objc_storeStrong(&v10->_actionManager, manager);
  }

  return v10;
}

- (id)contextMenuAtLocation:(CGPoint)location viewport:(id)viewport
{
  y = location.y;
  x = location.x;
  viewportCopy = viewport;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__SXTextInteractionContextProvider_contextMenuAtLocation_viewport___block_invoke;
  v11[3] = &unk_1E8500730;
  v11[4] = self;
  v8 = viewportCopy;
  v12 = v8;
  v13 = &v14;
  [(SXTextInteractionContextProvider *)self repAndHyperlinkAtLocation:v8 viewport:v11 block:x, y];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __67__SXTextInteractionContextProvider_contextMenuAtLocation_viewport___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = *(a1 + 32);
    v8 = [v6 range];
    [v7 viewportRectForLinkInRep:v25 range:v8 viewport:{v9, *(a1 + 40)}];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [*(a1 + 32) actionManager];
    v19 = [v6 action];
    v20 = [*(a1 + 40) view];
    v21 = [v18 contextMenuConfigurationForAction:v19 sourceView:v20 sourceRect:{v11, v13, v15, v17}];
    v22 = *(*(a1 + 48) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v24 = [*(a1 + 32) tangierController];
      [v24 endSelection];
    }
  }
}

- (void)commitPreviewViewController:(id)controller
{
  controllerCopy = controller;
  actionManager = [(SXTextInteractionContextProvider *)self actionManager];
  [actionManager commitPreviewViewController:controllerCopy];
}

- (id)targetedPreviewAtLocation:(CGPoint)location viewport:(id)viewport
{
  y = location.y;
  x = location.x;
  viewportCopy = viewport;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__SXTextInteractionContextProvider_targetedPreviewAtLocation_viewport___block_invoke;
  v11[3] = &unk_1E8500730;
  v11[4] = self;
  v8 = viewportCopy;
  v12 = v8;
  v13 = &v14;
  [(SXTextInteractionContextProvider *)self repAndHyperlinkAtLocation:v8 viewport:v11 block:x, y];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __71__SXTextInteractionContextProvider_targetedPreviewAtLocation_viewport___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v68 = v5;
  if (v5 && v6)
  {
    v8 = *(a1 + 32);
    v9 = [v6 range];
    [v8 viewportRectForLinkInRep:v5 range:v9 viewport:{v10, *(a1 + 40)}];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [*(a1 + 40) view];
    v20 = [v19 resizableSnapshotViewFromRect:1 afterScreenUpdates:v12 withCapInsets:{v14, v16, v18, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

    if (v20)
    {
      [v20 setFrame:{v12, v14, v16, v18}];
      v21 = [*(a1 + 40) view];
      [v21 addSubview:v20];

      v22 = [MEMORY[0x1E695DF70] array];
      v23 = [v5 columns];
      v24 = [v23 firstObject];

      v66 = v7;
      v25 = [v7 range];
      v65 = v24;
      [v24 rectsForSelectionRange:v25 selectionType:{v26, 0}];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v72 = 0u;
      v27 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v70;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v70 != v29)
            {
              objc_enumerationMutation(obj);
            }

            [*(*(&v69 + 1) + 8 * i) CGRectValue];
            [v68 convertNaturalRectToUnscaledCanvas:?];
            v32 = v31;
            v34 = v33;
            v36 = v35;
            v38 = v37;
            v39 = [*(a1 + 32) tangierController];
            v40 = [v39 icc];
            [v40 convertUnscaledToBoundsRect:{v32, v34, v36, v38}];
            v42 = v41;
            v44 = v43;
            v46 = v45;
            v48 = v47;

            v49 = [*(a1 + 32) tangierController];
            v50 = [v49 icc];
            v51 = [v50 canvasView];
            [v20 convertRect:v51 fromView:{v42, v44, v46, v48}];
            v53 = v52;
            v55 = v54;
            v57 = v56;
            v59 = v58;

            v60 = [MEMORY[0x1E696B098] valueWithCGRect:{v53, v55, v57, v59}];
            [v22 addObject:v60];
          }

          v28 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
        }

        while (v28);
      }

      v61 = [objc_alloc(MEMORY[0x1E69DCE28]) initWithTextLineRects:v22];
      v62 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v20 parameters:v61];
      v63 = *(*(a1 + 48) + 8);
      v64 = *(v63 + 40);
      *(v63 + 40) = v62;

      v7 = v66;
    }
  }
}

- (id)toolTipAtLocation:(CGPoint)location viewport:(id)viewport
{
  y = location.y;
  x = location.x;
  viewportCopy = viewport;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__SXTextInteractionContextProvider_toolTipAtLocation_viewport___block_invoke;
  v11[3] = &unk_1E8500730;
  v11[4] = self;
  v8 = viewportCopy;
  v12 = v8;
  v13 = &v14;
  [(SXTextInteractionContextProvider *)self repAndHyperlinkAtLocation:v8 viewport:v11 block:x, y];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __63__SXTextInteractionContextProvider_toolTipAtLocation_viewport___block_invoke(void *a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = a1[4];
    v7 = v5;
    v8 = [v7 range];
    [v6 viewportRectForLinkInRep:v24 range:v8 viewport:{v9, a1[5]}];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = MEMORY[0x1E69DD170];
    v19 = [v7 url];

    v20 = [v19 absoluteString];
    v21 = [v18 configurationWithToolTip:v20 inRect:{v11, v13, v15, v17}];
    v22 = *(a1[6] + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }
}

- (void)repAndHyperlinkAtLocation:(CGPoint)location viewport:(id)viewport block:(id)block
{
  y = location.y;
  x = location.x;
  viewportCopy = viewport;
  blockCopy = block;
  tangierController = [(SXTextInteractionContextProvider *)self tangierController];
  v12 = [tangierController icc];
  canvasView = [v12 canvasView];
  [viewportCopy convertPoint:canvasView toView:{x, y}];
  v15 = v14;
  v17 = v16;

  tangierController2 = [(SXTextInteractionContextProvider *)self tangierController];
  v19 = [tangierController2 icc];
  [v19 convertBoundsToUnscaledPoint:{v15, v17}];
  v21 = v20;
  v23 = v22;

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  tangierController3 = [(SXTextInteractionContextProvider *)self tangierController];
  v25 = [tangierController3 icc];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __77__SXTextInteractionContextProvider_repAndHyperlinkAtLocation_viewport_block___block_invoke;
  v27[3] = &unk_1E8500758;
  *&v27[5] = v21;
  *&v27[6] = v23;
  v27[4] = &v28;
  v26 = [v25 hitRep:0 withGesture:v27 passingTest:{v21, v23}];

  blockCopy[2](blockCopy, v26, v29[5]);
  _Block_object_dispose(&v28, 8);
}

BOOL __77__SXTextInteractionContextProvider_repAndHyperlinkAtLocation_viewport_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 convertNaturalPointFromUnscaledCanvas:{*(a1 + 40), *(a1 + 48)}];
    v4 = [v3 smartFieldAtPoint:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v4);
    }
  }

  v5 = *(*(*(a1 + 32) + 8) + 40) != 0;

  return v5;
}

- (CGRect)viewportRectForLinkInRep:(id)rep range:(_NSRange)range viewport:(id)viewport
{
  length = range.length;
  location = range.location;
  v9 = MEMORY[0x1E69D5728];
  viewportCopy = viewport;
  repCopy = rep;
  v12 = [v9 selectionWithRange:{location, length}];
  [repCopy rectForSelection:v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [repCopy convertNaturalRectToUnscaledCanvas:{v14, v16, v18, v20}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  tangierController = [(SXTextInteractionContextProvider *)self tangierController];
  v30 = [tangierController icc];
  [v30 convertUnscaledToBoundsRect:{v22, v24, v26, v28}];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  tangierController2 = [(SXTextInteractionContextProvider *)self tangierController];
  v40 = [tangierController2 icc];
  canvasView = [v40 canvasView];
  [viewportCopy convertRect:canvasView fromView:{v32, v34, v36, v38}];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v50 = v43;
  v51 = v45;
  v52 = v47;
  v53 = v49;
  result.size.height = v53;
  result.size.width = v52;
  result.origin.y = v51;
  result.origin.x = v50;
  return result;
}

@end