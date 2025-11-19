@interface SXTangierController
- (BOOL)interactiveCanvasController:(id)a3 shouldBeginInteraction:(id)a4 atPoint:(CGPoint)a5;
- (CGPoint)pointForCharacterAtIndex:(unint64_t)a3 inComponentWithIdentifier:(id)a4;
- (CGRect)interactiveCanvasController:(id)a3 expandVisibleBoundsForTiling:(CGRect)a4;
- (CGRect)visibleBounds;
- (NSString)selectedText;
- (SXComponentController)componentController;
- (SXComponentInteractionManager)componentInteractionManager;
- (SXTangierController)initWithViewport:(id)a3 scrollView:(id)a4 componentActionHandler:(id)a5 dragItemProvider:(id)a6 componentController:(id)a7 componentInteractionManager:(id)a8 DOMObjectProvider:(id)a9 adIgnorableViewFactory:(id)a10 config:(id)a11;
- (SXTangierControllerDelegate)delegate;
- (id)backgroundColorForDragUIPlatter;
- (id)interactiveCanvasController:(id)a3 delegateConformingToProtocol:(id)a4 forRep:(id)a5;
- (id)interactiveCanvasController:(id)a3 dragItemForSmartField:(id)a4 interaction:(id)a5 session:(id)a6;
- (id)interactiveCanvasController:(id)a3 infoForModel:(id)a4 withSelection:(id)a5;
- (id)layoutDescriptionForComponent:(id)a3;
- (id)scrollPositionForVisibleBounds:(CGRect)a3 canvasWidth:(double)a4;
- (id)searchWithContext:(id)a3;
- (id)topLevelLayersForInteractiveCanvasController:(id)a3;
- (id)topLevelRepsForInteractiveCanvasController:(id)a3;
- (id)visibleBoundsClipViewForInteractiveCanvasController:(id)a3;
- (unint64_t)selectableWordLimit;
- (void)_fixLayoutOffsets;
- (void)clearSelection;
- (void)dealloc;
- (void)didStartPresentingTextView:(id)a3;
- (void)didStopPresentingTextView:(id)a3;
- (void)didTransitionToPresented;
- (void)interactiveCanvasController:(id)a3 interactedWithHyperlink:(id)a4 info:(id)a5 range:(_NSRange)a6 touchPoint:(CGPoint)a7 touchAndHold:(BOOL)a8;
- (void)interactiveCanvasController:(id)a3 scrollViewDidEndDragging:(id)a4 willDecelerate:(BOOL)a5;
- (void)interactiveCanvasController:(id)a3 scrollViewWillBeginDragging:(id)a4;
- (void)interactiveCanvasController:(id)a3 scrollViewWillEndDragging:(id)a4 withVelocity:(CGPoint)a5 targetContentOffset:(CGPoint *)a6;
- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)a3;
- (void)interactiveCanvasControllerDidScroll:(id)a3;
- (void)interactiveCanvasControllerDidStopScrolling:(id)a3;
- (void)interactiveCanvasControllerWillStartInteraction:(id)a3;
- (void)reloadSearch;
- (void)setUnscaledCanvasRect:(CGRect)a3;
- (void)teardown;
- (void)updateCanvasSize:(CGSize)a3 forComponentViews:(id)a4;
- (void)updateInfosWithBlock:(id)a3;
- (void)updatePresentationState;
- (void)willTransitionToPresented;
@end

@implementation SXTangierController

- (SXTangierController)initWithViewport:(id)a3 scrollView:(id)a4 componentActionHandler:(id)a5 dragItemProvider:(id)a6 componentController:(id)a7 componentInteractionManager:(id)a8 DOMObjectProvider:(id)a9 adIgnorableViewFactory:(id)a10 config:(id)a11
{
  v89 = a3;
  obj = a4;
  v18 = a4;
  v88 = a5;
  v87 = a6;
  v19 = a7;
  v20 = a8;
  v86 = a9;
  v21 = a10;
  v90 = a11;
  v93.receiver = self;
  v93.super_class = SXTangierController;
  v22 = [(SXTangierController *)&v93 init];
  v23 = v22;
  if (v22)
  {
    v82 = v21;
    objc_storeStrong(&v22->_viewport, a3);
    [(SXViewport *)v23->_viewport addViewportChangeListener:v23 forOptions:8];
    objc_storeStrong(&v23->_scrollView, obj);
    objc_storeStrong(&v23->_componentActionHandler, a5);
    objc_storeStrong(&v23->_dragItemProvider, a6);
    objc_storeWeak(&v23->_componentController, v19);
    v85 = v20;
    objc_storeWeak(&v23->_componentInteractionManager, v20);
    objc_storeStrong(&v23->_DOMObjectProvider, a9);
    objc_storeStrong(&v23->_config, a11);
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
    v44 = [v43 view];
    [v44 setClipsToBounds:0];

    v45 = [MEMORY[0x1E69DC888] clearColor];
    v46 = [(SXTangierController *)v23 cvc];
    v47 = [v46 view];
    [v47 setBackgroundColor:v45];

    v48 = [(SXTangierController *)v23 cvc];
    [v48 setDelegate:v23];

    [(SXTangierController *)v23 setSelectionEnabled:1];
    -[SXTangierController setSelectAllEnabled:](v23, "setSelectAllEnabled:", [v90 limitTextSelectionEnabled] ^ 1);
    v49 = *MEMORY[0x1E695F060];
    v50 = *(MEMORY[0x1E695F060] + 8);
    v51 = [(SXTangierController *)v23 cvc];
    v52 = [v51 canvasLayer];
    [v52 setUnscaledSize:{v49, v50}];

    v53 = *MEMORY[0x1E695F058];
    v54 = *(MEMORY[0x1E695F058] + 8);
    v55 = *(MEMORY[0x1E695F058] + 16);
    v56 = *(MEMORY[0x1E695F058] + 24);
    v57 = [(SXTangierController *)v23 icc];
    v58 = [v57 canvasView];
    [v58 setFrame:{v53, v54, v55, v56}];

    v59 = [(SXTangierController *)v23 icc];
    [v59 setDataSource:v23];

    v60 = [(SXTangierController *)v23 icc];
    v61 = [v60 canvasView];

    v62 = [v83 createView];
    underRepsHost = v23->_underRepsHost;
    v23->_underRepsHost = v62;

    v64 = v23->_underRepsHost;
    [v61 bounds];
    [(UIView *)v64 setBounds:?];
    [(UIView *)v23->_underRepsHost setAutoresizingMask:18];
    v65 = [(UIView *)v23->_underRepsHost layer];
    [v65 setZPosition:-1.0];

    v66 = [v83 createView];
    overlayRepsHost = v23->_overlayRepsHost;
    v23->_overlayRepsHost = v66;

    v68 = v23->_overlayRepsHost;
    [v61 bounds];
    [(UIView *)v68 setBounds:?];
    [(UIView *)v23->_overlayRepsHost setAutoresizingMask:18];
    v69 = [(UIView *)v23->_overlayRepsHost layer];
    [v69 setZPosition:1.0];

    [(UIView *)v23->_overlayRepsHost setTag:45366];
    v70 = [v83 createView];
    aboveRepsHost = v23->_aboveRepsHost;
    v23->_aboveRepsHost = v70;

    v72 = v23->_aboveRepsHost;
    [v61 bounds];
    [(UIView *)v72 setBounds:?];
    [(UIView *)v23->_aboveRepsHost setAutoresizingMask:18];
    v73 = [(UIView *)v23->_aboveRepsHost layer];
    [v73 setZPosition:2.0];

    [(UIView *)v23->_aboveRepsHost setTag:45366];
    [v61 addSubview:v23->_underRepsHost];
    [v61 addSubview:v23->_overlayRepsHost];
    [v61 addSubview:v23->_aboveRepsHost];
    [(UIView *)v23->_underRepsHost setUserInteractionEnabled:0];
    [(UIView *)v23->_overlayRepsHost setUserInteractionEnabled:0];
    [(UIView *)v23->_aboveRepsHost setUserInteractionEnabled:0];
    v74 = [(UIView *)v23->_underRepsHost layer];
    [(SXTangierRepDirectLayerHostProvider *)v23->_directLayerHostProvider setUnderRepsLayerHost:v74];

    v75 = [(UIView *)v23->_aboveRepsHost layer];
    [(SXTangierRepDirectLayerHostProvider *)v23->_directLayerHostProvider setAboveRepsLayerHost:v75];

    v76 = [(UIView *)v23->_overlayRepsHost layer];
    [(SXTangierRepDirectLayerHostProvider *)v23->_directLayerHostProvider setOverlayLayerHost:v76];

    v77 = [MEMORY[0x1E695DFA8] set];
    presentedTextViews = v23->_presentedTextViews;
    v23->_presentedTextViews = v77;

    v79 = [v61 subviews];
    v23->_initialSubviewCount = [v79 count];

    v80 = [(SXTangierController *)v23 icc];
    [v80 setScrollView:v18];

    [(SXTangierController *)v23 updatePresentationState];
    v21 = v83;

    v20 = v85;
  }

  return v23;
}

- (void)updatePresentationState
{
  v3 = [(SXTangierController *)self viewport];
  v4 = [v3 appearState];

  if (v4 == 1)
  {

    [(SXTangierController *)self willTransitionToPresented];
  }

  else
  {
    v5 = [(SXTangierController *)self viewport];
    v6 = [v5 appearState];

    if (v6 == 2)
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

- (void)didStartPresentingTextView:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(SXTangierController *)self presentedTextViews];
  [v5 addObject:v4];

  os_unfair_lock_unlock(&self->_unfairLock);
  v7 = [(SXTangierController *)self icc];
  v6 = [v7 canvas];
  [v6 layoutIfNeeded];
}

- (void)didStopPresentingTextView:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(SXTangierController *)self presentedTextViews];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)clearSelection
{
  v2 = [(SXTangierController *)self icc];
  [v2 endEditing];
}

- (void)updateCanvasSize:(CGSize)a3 forComponentViews:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(SXTangierController *)self setUnscaledCanvasRect:0.0, 0.0, width, height];
  v8 = [(SXTangierController *)self icc];
  v9 = [v8 canvas];
  [v9 layoutIfNeeded];

  if ([(SXTangierController *)self rebuildFlows])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__SXTangierController_updateCanvasSize_forComponentViews___block_invoke;
    v12[3] = &unk_1E8500888;
    v13 = v7;
    [(SXTangierController *)self updateInfosWithBlock:v12];
  }

  v10 = [(SXTangierController *)self icc];
  v11 = [v10 canvas];
  [v11 layoutIfNeeded];

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

- (void)setUnscaledCanvasRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6 = [(SXTangierController *)self icc:a3.origin.x];
  v7 = [v6 layerHost];
  v8 = [v7 canvasLayer];
  [v8 unscaledSize];
  v10 = v9;
  v12 = v11;

  if (v10 != width || v12 != height)
  {
    self->_preventScrollViewDidScrollReentrance = 1;
    v14 = [(SXTangierController *)self icc];
    v15 = [v14 layerHost];
    v16 = [v15 canvasLayer];
    [v16 setUnscaledSize:{width, height}];

    self->_preventScrollViewDidScrollReentrance = 0;
  }
}

- (id)scrollPositionForVisibleBounds:(CGRect)a3 canvasWidth:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v79 = *MEMORY[0x1E69E9840];
  v10 = [(SXTangierController *)self icc];
  v11 = [v10 layoutController];
  rect1 = width;
  v12 = [v11 layoutsInRect:{x, y, width, height}];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (v13)
  {
    v67 = self;
    v69 = a4;
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
        v19 = [v18 info];
        v20 = [v19 storage];
        v21 = [v20 flowName];
        v22 = [v21 isEqualToString:@"body"];

        if (v22)
        {
          v23 = [v18 info];
          v24 = [v18 columns];
          v25 = [v24 firstObject];

          v26 = [v23 storage];
          v27 = [v23 range];
          v29 = [v26 paragraphIndexRangeForCharRange:{v27, v28}];
          v31 = v30;

          v32 = v29 + v31;
          if (v29 < v29 + v31)
          {
            do
            {
              v33 = [v23 storage];
              v34 = [v33 textRangeForParagraphAtIndex:v29];
              v36 = v35;

              [v25 glyphRectForRange:v34 includingLabel:{v36, 0}];
              v38 = v37;
              v40 = v39;
              v42 = v41;
              v44 = v43;
              v45 = [v18 geometry];
              [v45 frame];
              v47 = v46;

              v48 = v34 - [v23 range];
              if (v48 != 0x7FFFFFFFFFFFFFFFLL)
              {
                while (1)
                {
                  v49 = [v25 storage];
                  v50 = [v49 length];
                  if (v48 >= v50)
                  {
                    break;
                  }

                  v51 = __66__SXTangierController_scrollPositionForVisibleBounds_canvasWidth___block_invoke(v50, v25, v48);

                  if (!v51)
                  {
                    goto LABEL_13;
                  }

                  ++v48;
                }

LABEL_13:
                v52 = [v25 storage];
                v53 = [v52 length];
                if (v48 >= v53)
                {
                }

                else
                {
                  v54 = __66__SXTangierController_scrollPositionForVisibleBounds_canvasWidth___block_invoke(v53, v25, v48);

                  if ((v54 & 1) == 0)
                  {
                    v55 = v40 + v47;
                    [v18 pointForCharacterPosition:{objc_msgSend(v23, "range") + v48}];
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
                      v59 = [(SXTangierController *)v67 textRenderCollector];
                      v60 = [v59 componentIdentifierForFlowLayout:v18];
                      v61 = [v18 geometry];
                      [v61 frame];
                      v63 = v62 - v68;
                      v64 = [v18 geometry];
                      [v64 frame];
                      v13 = [(SXTextComponentScrollPosition *)v58 initWithComponentIdentifier:v60 canvasWidth:v48 relativePageOffset:v69 characterIndex:v63 relativeTextOffset:v57 + v65 - v68];

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

- (CGPoint)pointForCharacterAtIndex:(unint64_t)a3 inComponentWithIdentifier:(id)a4
{
  v5 = [(SXTangierTextRenderCollector *)self->_textRenderCollector flowLayoutForComponentIdentifier:a4];
  v6 = [v5 info];
  v7 = [v6 range];

  [v5 pointForCharacterPosition:v7 + a3];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)topLevelRepsForInteractiveCanvasController:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v4 = [(SXTangierController *)self presentedTextViews];
  v5 = [v4 copy];

  os_unfair_lock_unlock(&self->_unfairLock);
  v6 = [MEMORY[0x1E695DF70] array];
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
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)topLevelLayersForInteractiveCanvasController:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v4 = [(SXTangierController *)self presentedTextViews];
  v5 = [v4 copy];

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
        v14 = [v13 textLayer];

        if (v14)
        {
          v15 = [v12 rep];
          v16 = [v15 textLayer];
          [v6 addObject:v16];
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
  v3 = [v2 canvasView];
  v4 = [v3 enclosingScrollView];
  [v4 bounds];
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

- (void)interactiveCanvasController:(id)a3 interactedWithHyperlink:(id)a4 info:(id)a5 range:(_NSRange)a6 touchPoint:(CGPoint)a7 touchAndHold:(BOOL)a8
{
  v8 = a8;
  length = a6.length;
  location = a6.location;
  v40 = a3;
  v14 = a4;
  v15 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v14;
    v17 = [v15 directLayerHost];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [(SXTangierController *)self icc];
      v19 = [v18 repForInfo:v15];

      [v19 glyphRectForRange:location includingLabel:{length, 0}];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = [v40 canvasView];
      [v17 convertRect:v28 toView:{v21, v23, v25, v27}];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v37 = [(SXTangierController *)self componentActionHandler];
      v38 = [v16 action];
      v39 = [v40 canvasView];
      [v37 handleAction:v38 sourceView:v39 sourceRect:v8 invocationType:{v30, v32, v34, v36}];
    }
  }
}

- (void)interactiveCanvasControllerDidScroll:(id)a3
{
  v4 = [(SXTangierController *)self icc];
  v5 = [v4 selectedText];

  if (v5)
  {
    [(SXTangierController *)self _fixLayoutOffsets];
  }

  v6 = [(SXTangierController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SXTangierController *)self delegate];
    [v8 tangierControllerDidScroll:self];
  }

  v9 = [(SXTangierController *)self icc];
  [v9 invalidateVisibleBounds];
}

- (void)interactiveCanvasControllerDidStopScrolling:(id)a3
{
  [(SXTangierController *)self _fixLayoutOffsets];
  v4 = [(SXTangierController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SXTangierController *)self delegate];
    [v6 tangierControllerDidStopScrolling:self];
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
  v4 = [v3 topLevelRepsForHitTesting];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
        objc_enumerationMutation(v4);
      }

      v7 |= [*(*(&v10 + 1) + 8 * i) updateFromVisualPosition];
    }

    v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v6);

  if (v7)
  {
    v4 = [(SXTangierController *)self icc];
    [v4 invalidateLayers];
LABEL_10:
  }
}

- (void)interactiveCanvasController:(id)a3 scrollViewWillEndDragging:(id)a4 withVelocity:(CGPoint)a5 targetContentOffset:(CGPoint *)a6
{
  y = a5.y;
  x = a5.x;
  v13 = a4;
  v10 = [(SXTangierController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(SXTangierController *)self delegate];
    [v12 tangierController:self scrollViewWillEndDragging:v13 withVelocity:a6 targetContentOffset:{x, y}];
  }
}

- (void)interactiveCanvasController:(id)a3 scrollViewWillBeginDragging:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SXTangierController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SXTangierController *)self delegate];
    [v9 tangierController:self scrollViewWillBeginDragging:v6];
  }

  [v10 endUISession];
}

- (void)interactiveCanvasController:(id)a3 scrollViewDidEndDragging:(id)a4 willDecelerate:(BOOL)a5
{
  v5 = a5;
  v10 = a4;
  v7 = [(SXTangierController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SXTangierController *)self delegate];
    [v9 tangierController:self scrollViewDidEndDragging:v10 willDecelerate:v5];
  }

  if (!v5)
  {
    [(SXTangierController *)self _fixLayoutOffsets];
  }
}

- (CGRect)interactiveCanvasController:(id)a3 expandVisibleBoundsForTiling:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = -CGRectGetWidth(a4);
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;

  return CGRectInset(*&v9, v8, 0.0);
}

- (void)interactiveCanvasControllerWillStartInteraction:(id)a3
{
  v4 = [(SXTangierController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SXTangierController *)self delegate];
    [v6 tangierControllerWillStartScrolling:self];
  }
}

- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)a3
{
  if (![(SXTangierController *)self performedInitialLayoutAndRender])
  {
    [(SXTangierController *)self _fixLayoutOffsets];

    [(SXTangierController *)self setPerformedInitialLayoutAndRender:1];
  }
}

- (BOOL)interactiveCanvasController:(id)a3 shouldBeginInteraction:(id)a4 atPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  if (![(SXTangierController *)self selectionEnabled:a3])
  {
    return 0;
  }

  v8 = [(SXTangierController *)self componentController];
  v9 = [v8 componentViewForPoint:{x, y}];

  v10 = [(SXTangierController *)self componentInteractionManager];
  LOBYTE(v8) = [v10 hasInteractionForLocation:{x, y}];

  v11 = (v8 & 1) == 0 && (!v9 || ![v9 conformsToProtocol:&unk_1F5398398] || (objc_msgSend(v9, "userInteractable") & 1) == 0);
  return v11;
}

- (id)interactiveCanvasController:(id)a3 dragItemForSmartField:(id)a4 interaction:(id)a5 session:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [(SXTangierController *)self dragItemProvider];
  v15 = [v14 dragItemForSmartField:v13 interaction:v12 session:v11];

  if (v15)
  {
    [v10 endUISession];
  }

  return v15;
}

- (id)interactiveCanvasController:(id)a3 infoForModel:(id)a4 withSelection:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 conformsToProtocol:&unk_1F53B0DF0])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = v7;
  NSClassFromString(&cfstr_Tswpstorage.isa);
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    NSClassFromString(&cfstr_Tswpselection.isa);
    if (objc_opt_isKindOfClass())
    {
      v13 = [(SXTangierTextRenderCollector *)self->_textRenderCollector infoForStorage:v11 selection:v12];

      v10 = v13;
    }
  }

  return v10;
}

- (void)updateInfosWithBlock:(id)a3
{
  v4 = a3;
  textRenderCollector = self->_textRenderCollector;
  v6 = [(SXTangierController *)self icc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SXTangierController_updateInfosWithBlock___block_invoke;
  v8[3] = &unk_1E8500B00;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
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

- (id)visibleBoundsClipViewForInteractiveCanvasController:(id)a3
{
  if ([(SXTangierController *)self disableClippingForTiles])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SXTangierController *)self icc];
    v6 = [v5 canvasView];
    v4 = [v6 window];
  }

  return v4;
}

- (void)willTransitionToPresented
{
  [(SXTangierController *)self setEnclosingCanvasScrolling:1];
  [(SXTangierController *)self setDisableClippingForTiles:1];
  v3 = [(SXTangierController *)self icc];
  [v3 invalidateVisibleBounds];

  v4 = [(SXTangierController *)self icc];
  v5 = [v4 layerHost];
  v6 = [v5 asiOSCVC];

  [v6 cancelDelayedTapAction];
}

- (void)didTransitionToPresented
{
  [(SXTangierController *)self setEnclosingCanvasScrolling:0];
  [(SXTangierController *)self setDisableClippingForTiles:0];
  [(SXTangierController *)self _fixLayoutOffsets];
  v3 = [(SXTangierController *)self icc];
  [v3 invalidateVisibleBounds];
}

- (id)interactiveCanvasController:(id)a3 delegateConformingToProtocol:(id)a4 forRep:(id)a5
{
  if (protocol_isEqual(a4, &unk_1F540ECA8))
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
  v3 = [(SXTangierController *)self config];
  v4 = [v3 limitTextSelectionEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(SXTangierController *)self config];
  v6 = [v5 textSelectionLimit];

  return v6;
}

- (NSString)selectedText
{
  v2 = [(SXTangierController *)self icc];
  v3 = [v2 selectedText];

  return v3;
}

- (id)layoutDescriptionForComponent:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  textRenderCollector = self->_textRenderCollector;
  v35 = v4;
  v6 = [v4 identifier];
  v7 = [(SXTangierTextRenderCollector *)textRenderCollector flowLayoutForComponentIdentifier:v6];

  v8 = [v7 info];
  v9 = [v8 storage];

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
        v13 = [v12 countLines];
        if (v13)
        {
          v14 = v13;
          for (i = 0; i != v14; ++i)
          {
            [v12 boundsOfLineFragmentAtIndex:i];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;
            v24 = [v12 rangeOfLineFragmentAtIndex:i];
            v26 = v25;
            v27 = [v9 substringWithRange:{v24, v25}];
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
  v4 = [v3 editorController];
  v5 = [v4 textInputEditor];
  v6 = TSUDynamicCast();

  v7 = [v6 selection];
  v8 = [(SXTangierController *)self textRenderCollector];
  v9 = [v6 storage];
  v10 = [v8 infoForStorage:v9 selection:v7];

  v11 = [v7 start];
  if (v11 >= [v7 end])
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
      v14 = [v10 storage];
      v15 = [v14 characterStyleAtCharIndex:v11 effectiveRange:0];

      v16 = [v15 valueForProperty:18];
      v17 = v16;
      if (v16)
      {
        [v16 luminance];
        v13 = v13 + v18;
        ++v12;
      }

      ++v11;
    }

    while (v11 < [v7 end]);
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
  v21 = [MEMORY[0x1E69DC888] whiteColor];
  if (v20 > 0.5)
  {
    v22 = [MEMORY[0x1E69DC888] blackColor];

    v21 = v22;
  }

  return v21;
}

- (id)searchWithContext:(id)a3
{
  v4 = a3;
  v5 = [(SXTangierController *)self textRenderCollector];
  v6 = [(SXTangierController *)self icc];
  v7 = [v5 searchWithContext:v4 icc:v6];

  return v7;
}

- (void)reloadSearch
{
  v4 = [(SXTangierController *)self textRenderCollector];
  v3 = [(SXTangierController *)self icc];
  [v4 reloadWithICC:v3];
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