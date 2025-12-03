@interface SXAutoSizedCanvasController
- (CGRect)interactiveCanvasController:(id)controller expandVisibleBoundsForTiling:(CGRect)tiling;
- (CGSize)sizeThatFits;
- (SXAutoSizedCanvasController)initWithDocumentRoot:(id)root actionHandler:(id)handler dragItemProvider:(id)provider;
- (SXAutoSizedCanvasControllerDelegate)delegate;
- (id)interactiveCanvasController:(id)controller dragItemForSmartField:(id)field interaction:(id)interaction session:(id)session;
- (void)interactiveCanvasController:(id)controller interactedWithHyperlink:(id)hyperlink info:(id)info range:(_NSRange)range touchPoint:(CGPoint)point touchAndHold:(BOOL)hold;
- (void)invalidateLayoutsAndFrames;
- (void)teardown;
@end

@implementation SXAutoSizedCanvasController

- (SXAutoSizedCanvasController)initWithDocumentRoot:(id)root actionHandler:(id)handler dragItemProvider:(id)provider
{
  rootCopy = root;
  handlerCopy = handler;
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = SXAutoSizedCanvasController;
  v12 = [(SXAutoSizedCanvasController *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_documentRoot, root);
    objc_storeStrong(&v13->_actionHandler, handler);
    objc_storeStrong(&v13->_dragItemProvider, provider);
    v22 = 0;
    v23 = 0;
    v14 = objc_opt_class();
    [SXTextTangierInteractiveCanvasController createCanvasWithDelegate:v13 outICC:&v23 outLayerHost:&v22 iccClass:v14 layerHostClass:objc_opt_class()];
    v15 = v23;
    v16 = v22;
    icc = v13->_icc;
    v13->_icc = v15;
    v18 = v15;

    cvc = v13->_cvc;
    v13->_cvc = v16;
    v20 = v16;

    [(TSDInteractiveCanvasController *)v13->_icc setAllowLayoutAndRenderOnThread:1];
    [(TSDInteractiveCanvasController *)v13->_icc setCreateRepsForOffscreenLayouts:1];
  }

  return v13;
}

- (void)teardown
{
  [(SXTextTangierInteractiveCanvasController *)self->_icc teardown];
  cvc = self->_cvc;

  [(TSWPiOSCanvasViewController *)cvc teardown];
}

- (CGSize)sizeThatFits
{
  v32 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v7 = [(SXAutoSizedCanvasController *)self icc];
  [v7 layoutIfNeeded];

  layoutController = [(TSDInteractiveCanvasController *)self->_icc layoutController];
  rootLayout = [layoutController rootLayout];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [rootLayout addLayoutsToArray:v9];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        NSClassFromString(&cfstr_Tswplayout.isa);
        if (objc_opt_isKindOfClass())
        {
          [v15 frame];
          v36.origin.x = v16;
          v36.origin.y = v17;
          v36.size.width = v18;
          v36.size.height = v19;
          v34.origin.x = x;
          v34.origin.y = y;
          v34.size.width = width;
          v34.size.height = height;
          v35 = CGRectUnion(v34, v36);
          x = v35.origin.x;
          y = v35.origin.y;
          width = v35.size.width;
          height = v35.size.height;
          columns = [v15 columns];
          firstObject = [columns firstObject];

          [firstObject range];
          [firstObject columnRectForRange:{v22 - 1, 1}];
          self->_lineHeight = v23;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  self->_frame.origin.x = x;
  self->_frame.origin.y = y;
  self->_frame.size.width = width;
  self->_frame.size.height = height;

  v24 = width;
  v25 = height;
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)invalidateLayoutsAndFrames
{
  v16 = *MEMORY[0x1E69E9840];
  layoutController = [(TSDInteractiveCanvasController *)self->_icc layoutController];
  rootLayout = [layoutController rootLayout];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [rootLayout addLayoutsToArray:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        NSClassFromString(&cfstr_Tsdlayout.isa);
        if (objc_opt_isKindOfClass())
        {
          [v10 invalidateFrame];
          [v10 invalidateChildren];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)interactiveCanvasController:(id)controller interactedWithHyperlink:(id)hyperlink info:(id)info range:(_NSRange)range touchPoint:(CGPoint)point touchAndHold:(BOOL)hold
{
  holdCopy = hold;
  length = range.length;
  location = range.location;
  controllerCopy = controller;
  hyperlinkCopy = hyperlink;
  infoCopy = info;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = hyperlinkCopy;
    v17 = [(SXAutoSizedCanvasController *)self icc];
    v18 = [v17 repForInfo:infoCopy];

    [v18 glyphRectForRange:location includingLabel:{length, 0}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    canvasView = [controllerCopy canvasView];
    [canvasView convertRect:0 toView:{v20, v22, v24, v26}];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    actionHandler = [(SXAutoSizedCanvasController *)self actionHandler];
    action = [v16 action];
    canvasView2 = [controllerCopy canvasView];
    [actionHandler handleAction:action sourceView:canvasView2 sourceRect:holdCopy invocationType:{v29, v31, v33, v35}];
  }
}

- (CGRect)interactiveCanvasController:(id)controller expandVisibleBoundsForTiling:(CGRect)tiling
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)interactiveCanvasController:(id)controller dragItemForSmartField:(id)field interaction:(id)interaction session:(id)session
{
  controllerCopy = controller;
  sessionCopy = session;
  interactionCopy = interaction;
  fieldCopy = field;
  dragItemProvider = [(SXAutoSizedCanvasController *)self dragItemProvider];
  v15 = [dragItemProvider dragItemForSmartField:fieldCopy interaction:interactionCopy session:sessionCopy];

  if (v15)
  {
    [controllerCopy endUISession];
  }

  return v15;
}

- (SXAutoSizedCanvasControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end