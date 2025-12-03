@interface SXTangierController
- (BOOL)interactiveCanvasController:(id)controller shouldBeginInteraction:(id)interaction atPoint:(CGPoint)point;
- (CGPoint)pointForCharacterAtIndex:(unint64_t)index inComponentWithIdentifier:(id)identifier;
- (CGRect)interactiveCanvasController:(id)controller expandVisibleBoundsForTiling:(CGRect)tiling;
- (CGRect)visibleBounds;
- (NSString)selectedText;
- (SXComponentController)componentController;
- (SXComponentInteractionManager)componentInteractionManager;
- (SXTangierController)initWithViewport:(id)viewport scrollView:(id)view componentActionHandler:(id)handler dragItemProvider:(id)provider componentController:(id)controller componentInteractionManager:(id)manager DOMObjectProvider:(id)objectProvider adIgnorableViewFactory:(id)self0 config:(id)self1;
- (SXTangierControllerDelegate)delegate;
- (id)backgroundColorForDragUIPlatter;
- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep;
- (id)interactiveCanvasController:(id)controller dragItemForSmartField:(id)field interaction:(id)interaction session:(id)session;
- (id)interactiveCanvasController:(id)controller infoForModel:(id)model withSelection:(id)selection;
- (id)layoutDescriptionForComponent:(id)component;
- (id)scrollPositionForVisibleBounds:(CGRect)bounds canvasWidth:(double)width;
- (id)searchWithContext:(id)context;
- (id)topLevelLayersForInteractiveCanvasController:(id)controller;
- (id)topLevelRepsForInteractiveCanvasController:(id)controller;
- (id)visibleBoundsClipViewForInteractiveCanvasController:(id)controller;
- (unint64_t)selectableWordLimit;
- (void)_fixLayoutOffsets;
- (void)clearSelection;
- (void)dealloc;
- (void)didStartPresentingTextView:(id)view;
- (void)didStopPresentingTextView:(id)view;
- (void)didTransitionToPresented;
- (void)interactiveCanvasController:(id)controller interactedWithHyperlink:(id)hyperlink info:(id)info range:(_NSRange)range touchPoint:(CGPoint)point touchAndHold:(BOOL)hold;
- (void)interactiveCanvasController:(id)controller scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)interactiveCanvasController:(id)controller scrollViewWillBeginDragging:(id)dragging;
- (void)interactiveCanvasController:(id)controller scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)thread;
- (void)interactiveCanvasControllerDidScroll:(id)scroll;
- (void)interactiveCanvasControllerDidStopScrolling:(id)scrolling;
- (void)interactiveCanvasControllerWillStartInteraction:(id)interaction;
- (void)reloadSearch;
- (void)setUnscaledCanvasRect:(CGRect)rect;
- (void)teardown;
- (void)updateCanvasSize:(CGSize)size forComponentViews:(id)views;
- (void)updateInfosWithBlock:(id)block;
- (void)updatePresentationState;
- (void)willTransitionToPresented;
@end

@implementation SXTangierController

- (SXTangierController)initWithViewport:(id)viewport scrollView:(id)view componentActionHandler:(id)handler dragItemProvider:(id)provider componentController:(id)controller componentInteractionManager:(id)manager DOMObjectProvider:(id)objectProvider adIgnorableViewFactory:(id)self0 config:(id)self1
{
  viewportCopy = viewport;
  obj = view;
  viewCopy = view;
  handlerCopy = handler;
  providerCopy = provider;
  controllerCopy = controller;
  managerCopy = manager;
  objectProviderCopy = objectProvider;
  factoryCopy = factory;
  configCopy = config;
  v93.receiver = self;
  v93.super_class = SXTangierController;
  v22 = [(SXTangierController *)&v93 init];
  v23 = v22;
  if (v22)
  {
    v82 = factoryCopy;
    objc_storeStrong(&v22->_viewport, viewport);
    [(SXViewport *)v23->_viewport addViewportChangeListener:v23 forOptions:8];
    objc_storeStrong(&v23->_scrollView, obj);
    objc_storeStrong(&v23->_componentActionHandler, handler);
    objc_storeStrong(&v23->_dragItemProvider, provider);
    objc_storeWeak(&v23->_componentController, controllerCopy);
    v85 = managerCopy;
    objc_storeWeak(&v23->_componentInteractionManager, managerCopy);
    objc_storeStrong(&v23->_DOMObjectProvider, objectProvider);
    objc_storeStrong(&v23->_config, config);
    v23->_unfairLock._os_unfair_lock_opaque = 0;
    +[SXTextTangierApplicationDelegate setup];
    v24 = objc_alloc_init(SXTextTangierDocumentRoot);
    documentRoot = v23->_documentRoot;
    v23->_documentRoot = v24;

    v26 = objc_alloc_init(SXTangierRepDirectLayerHostProvider);
    directLayerHostProvider = v23->_directLayerHostProvider;
    v23->_directLayerHostProvider = v26;

    v28 = objc_alloc_init(SXArticleSearchManager);
    v29 = [[SXTangierTextRenderCollector alloc] initWithSearchManager:v28];
    textRenderCollector = v23->_textRenderCollector;
    v23->_textRenderCollector = v29;

    v91 = 0;
    v92 = 0;
    v31 = objc_opt_class();
    [SXTextTangierInteractiveCanvasController createCanvasWithDelegate:v23 outICC:&v92 outLayerHost:&v91 iccClass:v31 layerHostClass:objc_opt_class()];
    v32 = v92;
    v33 = v92;
    v34 = v91;
    v35 = v91;
    [v33 setForceLayoutAndRenderOnThread:1];
    objc_storeStrong(&v23->_icc, v32);
    objc_storeStrong(&v23->_cvc, v34);
    [(SXTextTangierDocumentRoot *)v23->_documentRoot setViewController:v23->_cvc];
    v36 = [(SXTangierController *)v23 icc];
    [v36 setCreateRepsForOffscreenLayouts:1];

    v37 = [(SXTangierController *)v23 icc];
    [v37 setAllowLayoutAndRenderOnThread:1];

    v38 = [(SXTangierController *)v23 icc];
    [v38 setNestedCanvasAllowLayoutAndRenderOnThread:1];

    v39 = [(SXTangierController *)v23 icc];
    LOBYTE(v34) = objc_opt_respondsToSelector();

    if (v34)
    {
      v40 = [(SXTangierController *)v23 icc];
      [v40 setForceTilingLayoutOnThreadWhenScrolling:1];
    }

    v41 = v23->_directLayerHostProvider;
    v42 = [(SXTangierController *)v23 icc];
    [v42 setDirectLayerHostProvider:v41];

    v43 = [(SXTangierController *)v23 cvc];
    view = [v43 view];
    [view setClipsToBounds:0];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v46 = [(SXTangierController *)v23 cvc];
    view2 = [v46 view];
    [view2 setBackgroundColor:clearColor];

    v48 = [(SXTangierController *)v23 cvc];
    [v48 setDelegate:v23];

    [(SXTangierController *)v23 setSelectionEnabled:1];
    -[SXTangierController setSelectAllEnabled:](v23, "setSelectAllEnabled:", [configCopy limitTextSelectionEnabled] ^ 1);
    v49 = *MEMORY[0x1E695F060];
    v50 = *(MEMORY[0x1E695F060] + 8);
    v51 = [(SXTangierController *)v23 cvc];
    canvasLayer = [v51 canvasLayer];
    [canvasLayer setUnscaledSize:{v49, v50}];

    v53 = *MEMORY[0x1E695F058];
    v54 = *(MEMORY[0x1E695F058] + 8);
    v55 = *(MEMORY[0x1E695F058] + 16);
    v56 = *(MEMORY[0x1E695F058] + 24);
    v57 = [(SXTangierController *)v23 icc];
    canvasView = [v57 canvasView];
    [canvasView setFrame:{v53, v54, v55, v56}];

    v59 = [(SXTangierController *)v23 icc];
    [v59 setDataSource:v23];

    v60 = [(SXTangierController *)v23 icc];
    canvasView2 = [v60 canvasView];

    createView = [v83 createView];
    underRepsHost = v23->_underRepsHost;
    v23->_underRepsHost = createView;

    v64 = v23->_underRepsHost;
    [canvasView2 bounds];
    [(UIView *)v64 setBounds:?];
    [(UIView *)v23->_underRepsHost setAutoresizingMask:18];
    layer = [(UIView *)v23->_underRepsHost layer];
    [layer setZPosition:-1.0];

    createView2 = [v83 createView];
    overlayRepsHost = v23->_overlayRepsHost;
    v23->_overlayRepsHost = createView2;

    v68 = v23->_overlayRepsHost;
    [canvasView2 bounds];
    [(UIView *)v68 setBounds:?];
    [(UIView *)v23->_overlayRepsHost setAutoresizingMask:18];
    layer2 = [(UIView *)v23->_overlayRepsHost layer];
    [layer2 setZPosition:1.0];

    [(UIView *)v23->_overlayRepsHost setTag:45366];
    createView3 = [v83 createView];
    aboveRepsHost = v23->_aboveRepsHost;
    v23->_aboveRepsHost = createView3;

    v72 = v23->_aboveRepsHost;
    [canvasView2 bounds];
    [(UIView *)v72 setBounds:?];
    [(UIView *)v23->_aboveRepsHost setAutoresizingMask:18];
    layer3 = [(UIView *)v23->_aboveRepsHost layer];
    [layer3 setZPosition:2.0];

    [(UIView *)v23->_aboveRepsHost setTag:45366];
    [canvasView2 addSubview:v23->_underRepsHost];
    [canvasView2 addSubview:v23->_overlayRepsHost];
    [canvasView2 addSubview:v23->_aboveRepsHost];
    [(UIView *)v23->_underRepsHost setUserInteractionEnabled:0];
    [(UIView *)v23->_overlayRepsHost setUserInteractionEnabled:0];
    [(UIView *)v23->_aboveRepsHost setUserInteractionEnabled:0];
    layer4 = [(UIView *)v23->_underRepsHost layer];
    [(SXTangierRepDirectLayerHostProvider *)v23->_directLayerHostProvider setUnderRepsLayerHost:layer4];

    layer5 = [(UIView *)v23->_aboveRepsHost layer];
    [(SXTangierRepDirectLayerHostProvider *)v23->_directLayerHostProvider setAboveRepsLayerHost:layer5];

    layer6 = [(UIView *)v23->_overlayRepsHost layer];
    [(SXTangierRepDirectLayerHostProvider *)v23->_directLayerHostProvider setOverlayLayerHost:layer6];

    v77 = [MEMORY[0x1E695DFA8] set];
    presentedTextViews = v23->_presentedTextViews;
    v23->_presentedTextViews = v77;

    subviews = [canvasView2 subviews];
    v23->_initialSubviewCount = [subviews count];

    v80 = [(SXTangierController *)v23 icc];
    [v80 setScrollView:viewCopy];

    [(SXTangierController *)v23 updatePresentationState];
    factoryCopy = v83;

    managerCopy = v85;
  }

  return v23;
}

- (void)updatePresentationState
{
  viewport = [(SXTangierController *)self viewport];
  appearState = [viewport appearState];

  if (appearState == 1)
  {

    [(SXTangierController *)self willTransitionToPresented];
  }

  else
  {
    viewport2 = [(SXTangierController *)self viewport];
    appearState2 = [viewport2 appearState];

    if (appearState2 == 2)
    {

      [(SXTangierController *)self didTransitionToPresented];
    }
  }
}

- (void)teardown
{
  v3 = [(SXTangierController *)self icc];
  [v3 teardown];

  v4 = [(SXTangierController *)self cvc];
  [v4 teardown];

  icc = self->_icc;
  self->_icc = 0;

  cvc = self->_cvc;
  self->_cvc = 0;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SXTangierController;
  [(SXTangierController *)&v2 dealloc];
}

- (void)didStartPresentingTextView:(id)view
{
  viewCopy = view;
  os_unfair_lock_lock_with_options();
  presentedTextViews = [(SXTangierController *)self presentedTextViews];
  [presentedTextViews addObject:viewCopy];

  os_unfair_lock_unlock(&self->_unfairLock);
  v7 = [(SXTangierController *)self icc];
  canvas = [v7 canvas];
  [canvas layoutIfNeeded];
}

- (void)didStopPresentingTextView:(id)view
{
  viewCopy = view;
  os_unfair_lock_lock_with_options();
  presentedTextViews = [(SXTangierController *)self presentedTextViews];
  [presentedTextViews removeObject:viewCopy];

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)clearSelection
{
  v2 = [(SXTangierController *)self icc];
  [v2 endEditing];
}

- (void)updateCanvasSize:(CGSize)size forComponentViews:(id)views
{
  height = size.height;
  width = size.width;
  viewsCopy = views;
  [(SXTangierController *)self setUnscaledCanvasRect:0.0, 0.0, width, height];
  v8 = [(SXTangierController *)self icc];
  canvas = [v8 canvas];
  [canvas layoutIfNeeded];

  if ([(SXTangierController *)self rebuildFlows])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__SXTangierController_updateCanvasSize_forComponentViews___block_invoke;
    v12[3] = &unk_1E8500888;
    v13 = viewsCopy;
    [(SXTangierController *)self updateInfosWithBlock:v12];
  }

  v10 = [(SXTangierController *)self icc];
  canvas2 = [v10 canvas];
  [canvas2 layoutIfNeeded];

  [(SXTangierController *)self _fixLayoutOffsets];
}

void __58__SXTangierController_updateCanvasSize_forComponentViews___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) provideInfosLayoutTo:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setUnscaledCanvasRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  v6 = [(SXTangierController *)self icc:rect.origin.x];
  layerHost = [v6 layerHost];
  canvasLayer = [layerHost canvasLayer];
  [canvasLayer unscaledSize];
  v10 = v9;
  v12 = v11;

  if (v10 != width || v12 != height)
  {
    self->_preventScrollViewDidScrollReentrance = 1;
    v14 = [(SXTangierController *)self icc];
    layerHost2 = [v14 layerHost];
    canvasLayer2 = [layerHost2 canvasLayer];
    [canvasLayer2 setUnscaledSize:{width, height}];

    self->_preventScrollViewDidScrollReentrance = 0;
  }
}

- (id)scrollPositionForVisibleBounds:(CGRect)bounds canvasWidth:(double)width
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v79 = *MEMORY[0x1E69E9840];
  v10 = [(SXTangierController *)self icc];
  layoutController = [v10 layoutController];
  rect1 = width;
  v12 = [layoutController layoutsInRect:{x, y, width, height}];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (v13)
  {
    selfCopy = self;
    widthCopy = width;
    v14 = *v75;
    v68 = y;
    v15 = y + height * 0.2;
    v16 = height - height * 0.2;
    v70 = *v75;
    do
    {
      v17 = 0;
      v71 = v13;
      do
      {
        if (*v75 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v74 + 1) + 8 * v17);
        info = [v18 info];
        storage = [info storage];
        flowName = [storage flowName];
        v22 = [flowName isEqualToString:@"body"];

        if (v22)
        {
          info2 = [v18 info];
          columns = [v18 columns];
          firstObject = [columns firstObject];

          storage2 = [info2 storage];
          range = [info2 range];
          v29 = [storage2 paragraphIndexRangeForCharRange:{range, v28}];
          v31 = v30;

          v32 = v29 + v31;
          if (v29 < v29 + v31)
          {
            do
            {
              storage3 = [info2 storage];
              v34 = [storage3 textRangeForParagraphAtIndex:v29];
              v36 = v35;

              [firstObject glyphRectForRange:v34 includingLabel:{v36, 0}];
              v38 = v37;
              v40 = v39;
              v42 = v41;
              v44 = v43;
              geometry = [v18 geometry];
              [geometry frame];
              v47 = v46;

              v48 = v34 - [info2 range];
              if (v48 != 0x7FFFFFFFFFFFFFFFLL)
              {
                while (1)
                {
                  storage4 = [firstObject storage];
                  v50 = [storage4 length];
                  if (v48 >= v50)
                  {
                    break;
                  }

                  v51 = __66__SXTangierController_scrollPositionForVisibleBounds_canvasWidth___block_invoke(v50, firstObject, v48);

                  if (!v51)
                  {
                    goto LABEL_13;
                  }

                  ++v48;
                }

LABEL_13:
                storage5 = [firstObject storage];
                v53 = [storage5 length];
                if (v48 >= v53)
                {
                }

                else
                {
                  v54 = __66__SXTangierController_scrollPositionForVisibleBounds_canvasWidth___block_invoke(v53, firstObject, v48);

                  if ((v54 & 1) == 0)
                  {
                    v55 = v40 + v47;
                    [v18 pointForCharacterPosition:{objc_msgSend(info2, "range") + v48}];
                    v57 = v56;
                    v81.origin.x = x;
                    v81.origin.y = v15;
                    v81.size.width = rect1;
                    v81.size.height = v16;
                    v82.origin.x = v38;
                    v82.origin.y = v55;
                    v82.size.width = v42;
                    v82.size.height = v44;
                    if (CGRectIntersectsRect(v81, v82))
                    {
                      v58 = [SXTextComponentScrollPosition alloc];
                      textRenderCollector = [(SXTangierController *)selfCopy textRenderCollector];
                      v60 = [textRenderCollector componentIdentifierForFlowLayout:v18];
                      geometry2 = [v18 geometry];
                      [geometry2 frame];
                      v63 = v62 - v68;
                      geometry3 = [v18 geometry];
                      [geometry3 frame];
                      v13 = [(SXTextComponentScrollPosition *)v58 initWithComponentIdentifier:v60 canvasWidth:v48 relativePageOffset:widthCopy characterIndex:v63 relativeTextOffset:v57 + v65 - v68];

                      goto LABEL_22;
                    }
                  }
                }
              }

              ++v29;
            }

            while (v29 != v32);
          }

          v14 = v70;
          v13 = v71;
        }

        v17 = (v17 + 1);
      }

      while (v17 != v13);
      v13 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
    }

    while (v13);
  }

LABEL_22:

  return v13;
}

uint64_t __66__SXTangierController_scrollPositionForVisibleBounds_canvasWidth___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AB08];
  v5 = a2;
  v6 = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [v5 storage];

  v8 = [v6 characterIsMember:{objc_msgSend(v7, "characterAtIndex:", a3)}];
  return v8;
}

- (CGPoint)pointForCharacterAtIndex:(unint64_t)index inComponentWithIdentifier:(id)identifier
{
  v5 = [(SXTangierTextRenderCollector *)self->_textRenderCollector flowLayoutForComponentIdentifier:identifier];
  info = [v5 info];
  range = [info range];

  [v5 pointForCharacterPosition:range + index];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)topLevelRepsForInteractiveCanvasController:(id)controller
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  presentedTextViews = [(SXTangierController *)self presentedTextViews];
  v5 = [presentedTextViews copy];

  os_unfair_lock_unlock(&self->_unfairLock);
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 rep];

        if (v13)
        {
          v14 = [v12 rep];
          [array addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return array;
}

- (id)topLevelLayersForInteractiveCanvasController:(id)controller
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  presentedTextViews = [(SXTangierController *)self presentedTextViews];
  v5 = [presentedTextViews copy];

  os_unfair_lock_unlock(&self->_unfairLock);
  v6 = [MEMORY[0x1E695DFA8] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 rep];
        textLayer = [v13 textLayer];

        if (textLayer)
        {
          v15 = [v12 rep];
          textLayer2 = [v15 textLayer];
          [v6 addObject:textLayer2];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v6;
}

- (CGRect)visibleBounds
{
  v2 = [(SXTangierController *)self icc];
  canvasView = [v2 canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  [enclosingScrollView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
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
    directLayerHost = [infoCopy directLayerHost];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [(SXTangierController *)self icc];
      v19 = [v18 repForInfo:infoCopy];

      [v19 glyphRectForRange:location includingLabel:{length, 0}];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      canvasView = [controllerCopy canvasView];
      [directLayerHost convertRect:canvasView toView:{v21, v23, v25, v27}];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      componentActionHandler = [(SXTangierController *)self componentActionHandler];
      action = [v16 action];
      canvasView2 = [controllerCopy canvasView];
      [componentActionHandler handleAction:action sourceView:canvasView2 sourceRect:holdCopy invocationType:{v30, v32, v34, v36}];
    }
  }
}

- (void)interactiveCanvasControllerDidScroll:(id)scroll
{
  v4 = [(SXTangierController *)self icc];
  selectedText = [v4 selectedText];

  if (selectedText)
  {
    [(SXTangierController *)self _fixLayoutOffsets];
  }

  delegate = [(SXTangierController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(SXTangierController *)self delegate];
    [delegate2 tangierControllerDidScroll:self];
  }

  v9 = [(SXTangierController *)self icc];
  [v9 invalidateVisibleBounds];
}

- (void)interactiveCanvasControllerDidStopScrolling:(id)scrolling
{
  [(SXTangierController *)self _fixLayoutOffsets];
  delegate = [(SXTangierController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SXTangierController *)self delegate];
    [delegate2 tangierControllerDidStopScrolling:self];
  }
}

- (void)_fixLayoutOffsets
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(SXTangierController *)self icc];
  topLevelRepsForHitTesting = [v3 topLevelRepsForHitTesting];

  v5 = [topLevelRepsForHitTesting countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v11;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(topLevelRepsForHitTesting);
      }

      v7 |= [*(*(&v10 + 1) + 8 * i) updateFromVisualPosition];
    }

    v6 = [topLevelRepsForHitTesting countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v6);

  if (v7)
  {
    topLevelRepsForHitTesting = [(SXTangierController *)self icc];
    [topLevelRepsForHitTesting invalidateLayers];
LABEL_10:
  }
}

- (void)interactiveCanvasController:(id)controller scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  delegate = [(SXTangierController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(SXTangierController *)self delegate];
    [delegate2 tangierController:self scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
  }
}

- (void)interactiveCanvasController:(id)controller scrollViewWillBeginDragging:(id)dragging
{
  controllerCopy = controller;
  draggingCopy = dragging;
  delegate = [(SXTangierController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(SXTangierController *)self delegate];
    [delegate2 tangierController:self scrollViewWillBeginDragging:draggingCopy];
  }

  [controllerCopy endUISession];
}

- (void)interactiveCanvasController:(id)controller scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  delegate = [(SXTangierController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(SXTangierController *)self delegate];
    [delegate2 tangierController:self scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
  }

  if (!decelerateCopy)
  {
    [(SXTangierController *)self _fixLayoutOffsets];
  }
}

- (CGRect)interactiveCanvasController:(id)controller expandVisibleBoundsForTiling:(CGRect)tiling
{
  height = tiling.size.height;
  width = tiling.size.width;
  y = tiling.origin.y;
  x = tiling.origin.x;
  v8 = -CGRectGetWidth(tiling);
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;

  return CGRectInset(*&v9, v8, 0.0);
}

- (void)interactiveCanvasControllerWillStartInteraction:(id)interaction
{
  delegate = [(SXTangierController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SXTangierController *)self delegate];
    [delegate2 tangierControllerWillStartScrolling:self];
  }
}

- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)thread
{
  if (![(SXTangierController *)self performedInitialLayoutAndRender])
  {
    [(SXTangierController *)self _fixLayoutOffsets];

    [(SXTangierController *)self setPerformedInitialLayoutAndRender:1];
  }
}

- (BOOL)interactiveCanvasController:(id)controller shouldBeginInteraction:(id)interaction atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(SXTangierController *)self selectionEnabled:controller])
  {
    return 0;
  }

  componentController = [(SXTangierController *)self componentController];
  v9 = [componentController componentViewForPoint:{x, y}];

  componentInteractionManager = [(SXTangierController *)self componentInteractionManager];
  LOBYTE(componentController) = [componentInteractionManager hasInteractionForLocation:{x, y}];

  v11 = (componentController & 1) == 0 && (!v9 || ![v9 conformsToProtocol:&unk_1F5398398] || (objc_msgSend(v9, "userInteractable") & 1) == 0);
  return v11;
}

- (id)interactiveCanvasController:(id)controller dragItemForSmartField:(id)field interaction:(id)interaction session:(id)session
{
  controllerCopy = controller;
  sessionCopy = session;
  interactionCopy = interaction;
  fieldCopy = field;
  dragItemProvider = [(SXTangierController *)self dragItemProvider];
  v15 = [dragItemProvider dragItemForSmartField:fieldCopy interaction:interactionCopy session:sessionCopy];

  if (v15)
  {
    [controllerCopy endUISession];
  }

  return v15;
}

- (id)interactiveCanvasController:(id)controller infoForModel:(id)model withSelection:(id)selection
{
  modelCopy = model;
  selectionCopy = selection;
  if ([modelCopy conformsToProtocol:&unk_1F53B0DF0])
  {
    v9 = modelCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = modelCopy;
  NSClassFromString(&cfstr_Tswpstorage.isa);
  if (objc_opt_isKindOfClass())
  {
    v12 = selectionCopy;
    NSClassFromString(&cfstr_Tswpselection.isa);
    if (objc_opt_isKindOfClass())
    {
      v13 = [(SXTangierTextRenderCollector *)self->_textRenderCollector infoForStorage:v11 selection:v12];

      v10 = v13;
    }
  }

  return v10;
}

- (void)updateInfosWithBlock:(id)block
{
  blockCopy = block;
  textRenderCollector = self->_textRenderCollector;
  v6 = [(SXTangierController *)self icc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SXTangierController_updateInfosWithBlock___block_invoke;
  v8[3] = &unk_1E8500B00;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(SXTangierTextRenderCollector *)textRenderCollector buildFlowsAndUpdateInfosWithICC:v6 updateBlock:v8];
}

uint64_t __44__SXTangierController_updateInfosWithBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 128));
  }

  return result;
}

- (id)visibleBoundsClipViewForInteractiveCanvasController:(id)controller
{
  if ([(SXTangierController *)self disableClippingForTiles])
  {
    window = 0;
  }

  else
  {
    v5 = [(SXTangierController *)self icc];
    canvasView = [v5 canvasView];
    window = [canvasView window];
  }

  return window;
}

- (void)willTransitionToPresented
{
  [(SXTangierController *)self setEnclosingCanvasScrolling:1];
  [(SXTangierController *)self setDisableClippingForTiles:1];
  v3 = [(SXTangierController *)self icc];
  [v3 invalidateVisibleBounds];

  v4 = [(SXTangierController *)self icc];
  layerHost = [v4 layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  [asiOSCVC cancelDelayedTapAction];
}

- (void)didTransitionToPresented
{
  [(SXTangierController *)self setEnclosingCanvasScrolling:0];
  [(SXTangierController *)self setDisableClippingForTiles:0];
  [(SXTangierController *)self _fixLayoutOffsets];
  v3 = [(SXTangierController *)self icc];
  [v3 invalidateVisibleBounds];
}

- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep
{
  if (protocol_isEqual(protocol, &unk_1F540ECA8))
  {
    v6 = self->_textRenderCollector;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)selectableWordLimit
{
  config = [(SXTangierController *)self config];
  limitTextSelectionEnabled = [config limitTextSelectionEnabled];

  if (!limitTextSelectionEnabled)
  {
    return 0;
  }

  config2 = [(SXTangierController *)self config];
  textSelectionLimit = [config2 textSelectionLimit];

  return textSelectionLimit;
}

- (NSString)selectedText
{
  v2 = [(SXTangierController *)self icc];
  selectedText = [v2 selectedText];

  return selectedText;
}

- (id)layoutDescriptionForComponent:(id)component
{
  v50 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  textRenderCollector = self->_textRenderCollector;
  v35 = componentCopy;
  identifier = [componentCopy identifier];
  v7 = [(SXTangierTextRenderCollector *)textRenderCollector flowLayoutForComponentIdentifier:identifier];

  info = [v7 info];
  storage = [info storage];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v34 = v7;
  obj = [v7 columns];
  v39 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v39)
  {
    v37 = *v42;
    v10 = @"bounds";
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v11;
        v12 = *(*(&v41 + 1) + 8 * v11);
        countLines = [v12 countLines];
        if (countLines)
        {
          v14 = countLines;
          for (i = 0; i != v14; ++i)
          {
            [v12 boundsOfLineFragmentAtIndex:i];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;
            v24 = [v12 rangeOfLineFragmentAtIndex:i];
            v26 = v25;
            v27 = [storage substringWithRange:{v24, v25}];
            v47[0] = v10;
            v53.origin.x = v17;
            v53.origin.y = v19;
            v53.size.width = v21;
            v53.size.height = v23;
            NSStringFromCGRect(v53);
            v29 = v28 = v10;
            v48[0] = v29;
            v47[1] = @"range";
            v52.location = v24;
            v52.length = v26;
            v30 = NSStringFromRange(v52);
            v47[2] = @"text";
            v48[1] = v30;
            v48[2] = v27;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
            [v38 addObject:v31];

            v10 = v28;
          }
        }

        v11 = v40 + 1;
      }

      while (v40 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v39);
  }

  v45 = @"lineFragments";
  v46 = v38;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];

  return v32;
}

- (id)backgroundColorForDragUIPlatter
{
  objc_opt_class();
  v3 = [(SXTangierController *)self icc];
  editorController = [v3 editorController];
  textInputEditor = [editorController textInputEditor];
  v6 = TSUDynamicCast();

  selection = [v6 selection];
  textRenderCollector = [(SXTangierController *)self textRenderCollector];
  storage = [v6 storage];
  v10 = [textRenderCollector infoForStorage:storage selection:selection];

  start = [selection start];
  if (start >= [selection end])
  {
    v12 = 0;
    v13 = 0.0;
  }

  else
  {
    v12 = 0;
    v13 = 0.0;
    do
    {
      storage2 = [v10 storage];
      v15 = [storage2 characterStyleAtCharIndex:start effectiveRange:0];

      v16 = [v15 valueForProperty:18];
      v17 = v16;
      if (v16)
      {
        [v16 luminance];
        v13 = v13 + v18;
        ++v12;
      }

      ++start;
    }

    while (start < [selection end]);
  }

  if (v12 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v12;
  }

  v20 = v13 / v19;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  if (v20 > 0.5)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];

    whiteColor = blackColor;
  }

  return whiteColor;
}

- (id)searchWithContext:(id)context
{
  contextCopy = context;
  textRenderCollector = [(SXTangierController *)self textRenderCollector];
  v6 = [(SXTangierController *)self icc];
  v7 = [textRenderCollector searchWithContext:contextCopy icc:v6];

  return v7;
}

- (void)reloadSearch
{
  textRenderCollector = [(SXTangierController *)self textRenderCollector];
  v3 = [(SXTangierController *)self icc];
  [textRenderCollector reloadWithICC:v3];
}

- (SXTangierControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SXComponentController)componentController
{
  WeakRetained = objc_loadWeakRetained(&self->_componentController);

  return WeakRetained;
}

- (SXComponentInteractionManager)componentInteractionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_componentInteractionManager);

  return WeakRetained;
}

@end