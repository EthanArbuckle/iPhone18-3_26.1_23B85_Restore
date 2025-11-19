@interface TSDInteractiveCanvasController
+ (BOOL)selectorIsActionMethod:(SEL)a3;
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)centerPlusMovementContentPlacement;
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)contentPlacementForPoint:(CGPoint)a3 inView:(id)a4;
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)screenBottomContentPlacement;
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)screenTopContentPlacement;
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)touchContentPlacement;
- (BOOL)backgroundLayoutAndRenderState:(id)a3 shouldDispatchBackgroundWork:(id)a4;
- (BOOL)canDrawTilingLayerInBackground:(id)a3;
- (BOOL)canPerformInteractiveAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canvasViewShouldBecomeFirstResponder:(id)a3;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3;
- (BOOL)hasAnnotations;
- (BOOL)i_inPrintPreviewMode;
- (BOOL)isCanvasInteractive;
- (BOOL)isPrinting;
- (BOOL)mustDrawTilingLayerOnMainThread:(id)a3;
- (BOOL)p_allowUpdateViewsFromReps;
- (BOOL)p_centerOnInitialSelection;
- (BOOL)p_currentlyScrollingIncludeEmbeddedCanvasScrolling:(BOOL)a3;
- (BOOL)p_endEditingToBeginEditingRep:(id)a3;
- (BOOL)p_shouldLayoutAndRenderOnThreadForcePendingLayout:(BOOL)a3;
- (BOOL)p_shouldSuppressAutozoomForEditor:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)shouldBeginDrawingTilingLayerInBackground:(id)a3 returningToken:(id *)a4 andQueue:(id *)a5;
- (BOOL)shouldDisplayCommentUIForInfo:(id)a3;
- (BOOL)shouldLayoutTilingLayer:(id)a3;
- (BOOL)shouldPopKnobsOutsideEnclosingScrollView;
- (BOOL)shouldResampleImages;
- (BOOL)shouldResizeCanvasToScrollView;
- (BOOL)shouldShowInstructionalText;
- (BOOL)shouldShowTextOverflowGlyphs;
- (BOOL)shouldZoomOnSelectionChange;
- (BOOL)spellCheckingSupported;
- (BOOL)spellCheckingSuppressed;
- (BOOL)zoomToFitRect:(CGRect)a3 outset:(BOOL)a4 fitWidthOnly:(BOOL)a5 centerHorizontally:(BOOL)a6 centerVertically:(BOOL)a7 animated:(BOOL)a8;
- (CGColor)selectionHighlightColor;
- (CGImage)textImageFromRect:(CGRect)a3;
- (CGPoint)clampedCenterPointForPoint:(CGPoint)a3 withPlacement:(id)a4 viewScale:(double)a5;
- (CGPoint)clampedUnscaledContentOffset:(CGPoint)a3 forViewScale:(double)a4;
- (CGPoint)clampedUnscaledContentOffset:(CGPoint)a3 forViewScale:(double)a4 scrollViewBoundsSize:(CGSize)a5;
- (CGPoint)contentOffset;
- (CGPoint)convertBoundsToUnscaledPoint:(CGPoint)a3;
- (CGPoint)convertUnscaledToBoundsPoint:(CGPoint)a3;
- (CGPoint)lastTapPoint;
- (CGPoint)scrollView:(id)a3 restrictContentOffset:(CGPoint)a4;
- (CGPoint)smartZoomCenterForNoSelection;
- (CGRect)boundingRectForActiveGuidesForRect:(CGRect)a3;
- (CGRect)canvasViewBoundsWithBounds:(CGRect)a3;
- (CGRect)convertBoundsToUnscaledRect:(CGRect)a3;
- (CGRect)convertUnscaledToBoundsRect:(CGRect)a3;
- (CGRect)i_clippingBoundsForScrollViewEnclosingCanvas;
- (CGRect)p_calculateVisibleBoundsRectForTiling;
- (CGRect)p_calculateVisibleUnscaledRect;
- (CGRect)p_outsetSelectionRect:(CGRect)a3;
- (CGRect)p_visibleBoundsRectForTiling;
- (CGRect)p_visibleBoundsRectUsingSizeOfEnclosingScrollView:(BOOL)a3;
- (CGRect)p_visibleUnscaledRect;
- (CGRect)scrollFocusRectForModel:(id)a3 withSelection:(id)a4;
- (CGRect)unobscuredFrameOfView:(id)a3;
- (CGRect)unobscuredScrollViewFrame;
- (CGRect)visibleBoundsForTilingLayer:(id)a3;
- (CGRect)visibleBoundsRect;
- (CGRect)visibleBoundsRectClippedToWindow;
- (CGRect)visibleBoundsRectForTiling;
- (CGRect)visibleBoundsRectUsingSizeOfEnclosingScrollView;
- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)a3;
- (CGRect)visibleUnscaledRect;
- (CGSize)canvasScrollingOutset;
- (CGSize)convertBoundsToUnscaledSize:(CGSize)a3;
- (CGSize)convertUnscaledToBoundsSize:(CGSize)a3;
- (CGSize)defaultMinimumUnscaledCanvasSize;
- (CGSize)i_canvasCenterOffsetForProposedViewScale:(double)a3 originalViewScale:(double)a4;
- (CGSize)sizeOfScrollViewEnclosingCanvas;
- (TSDCanvasEditor)canvasEditor;
- (TSDCanvasLayer)canvasLayer;
- (TSDCanvasView)canvasView;
- (TSDContainerRep)topLevelContainerRepForEditing;
- (TSDDynamicOperationController)dynamicOperationController;
- (TSDEditorController)editorController;
- (TSDGestureDispatcher)gestureDispatcher;
- (TSDInteractiveCanvasController)init;
- (TSDTextInputResponder)textInputResponder;
- (TSDTrackerManipulatorCoordinator)tmCoordinator;
- (TSKAccessController)accessController;
- (TSKChangeNotifier)changeNotifier;
- (TSPObjectContext)objectContext;
- (double)currentViewScale;
- (double)fitWidthViewScale;
- (double)i_adjustViewScale:(double)a3;
- (double)i_nextCanvasViewScaleDetentForProposedViewScale:(double)a3 greater:(BOOL)a4;
- (double)i_viewScaleForProposedViewScale:(double)a3 originalViewScale:(double)a4;
- (double)p_targetPointSize;
- (double)viewScale;
- (double)viewScaleForZoomToFitRect:(CGRect)a3 outset:(BOOL)a4 fitWidthOnly:(BOOL)a5;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (id)additionalVisibleInfosForCanvas:(id)a3;
- (id)ancestorRepOfRep:(id)a3 orDelegateConformingToProtocol:(id)a4;
- (id)beginEditingRep:(id)a3;
- (id)beginEditingRep:(id)a3 clearingSelection:(BOOL)a4 withEditorProvider:(id)a5;
- (id)beginEditingRepForInfo:(id)a3;
- (id)canvas:(id)a3 layoutGeometryProviderForLayout:(id)a4;
- (id)clampContentLocation:(id)a3 forPlacement:(id)a4;
- (id)clampedCenterContentLocationForPoint:(CGPoint)a3 withPlacement:(id)a4 viewScale:(double)a5;
- (id)containerLayerForRep:(id)a3;
- (id)convertContentLocation:(id)a3 fromPlacement:(id)a4 toPlacement:(id)a5;
- (id)gestureTargetStack:(id)a3;
- (id)hitKnobAtPoint:(CGPoint)a3 returningRep:(id *)a4;
- (id)hitRep:(CGPoint)a3;
- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5;
- (id)hitRepsAtPoint:(CGPoint)a3 withSlop:(CGSize)a4;
- (id)i_descriptionForViewScale:(double)a3;
- (id)i_topLevelLayersForTiling;
- (id)infoForModel:(id)a3 withSelection:(id)a4;
- (id)infoToScrollToForModel:(id)a3 withSelection:(id)a4;
- (id)layerForRep:(id)a3;
- (id)layoutForInfo:(id)a3;
- (id)layoutForInfoNearestVisibleRect:(id)a3;
- (id)layoutForInfoNearestVisibleRect:(id)a3 intersectingSelection:(id)a4;
- (id)layoutForModel:(id)a3 withSelection:(id)a4;
- (id)layoutsForInfo:(id)a3;
- (id)layoutsForInfo:(id)a3 intersectingSelection:(id)a4;
- (id)layoutsForModel:(id)a3 withSelection:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)newCanvasEditor;
- (id)p_backgroundLayoutAndRenderState;
- (id)p_decorators;
- (id)p_overlayLayerForReps:(id)a3;
- (id)p_repForLayout:(id)a3 createIfNeeded:(BOOL)a4;
- (id)p_setSelection:(id)a3 onInfo:(id)a4 withFlags:(unint64_t)a5;
- (id)queueForDrawingTilingLayerInBackground:(id)a3;
- (id)repForContainerLayer:(id)a3;
- (id)repForInfo:(id)a3 createIfNeeded:(BOOL)a4;
- (id)repForLayer:(id)a3;
- (id)replaceImageController;
- (id)repsForInfo:(id)a3;
- (id)topLevelRepsForHitTesting;
- (id)topLevelZOrderedSiblingsOfInfos:(id)a3;
- (id)unitFormatter;
- (id)unitStringForAngle:(double)a3;
- (id)unitStringForAngle:(double)a3 andLength:(double)a4;
- (id)unitStringForNumber:(double)a3;
- (id)unitStringForPoint:(CGPoint)a3;
- (id)unitStringForSize:(CGSize)a3;
- (id)validatedLayoutForInfo:(id)a3;
- (id)viewWithTransferredLayers;
- (void)addBackgroundRenderingObject:(id)a3;
- (void)addCommonObservers;
- (void)addDecorator:(id)a3;
- (void)animateToViewScale:(double)a3 contentOffset:(CGPoint)a4 duration:(double)a5 forceAnimation:(BOOL)a6 completion:(id)a7;
- (void)asyncProcessChanges:(id)a3 forChangeSource:(id)a4;
- (void)backgroundLayoutAndRenderState:(id)a3 performWorkInBackgroundTilingOnly:(BOOL)a4;
- (void)backgroundLayoutAndRenderStateDidPerformBackgroundWork:(id)a3;
- (void)beginAnimations:(id)a3 context:(void *)a4;
- (void)beginDynamicOperation;
- (void)beginScrollingOperation;
- (void)canvas:(id)a3 createdRep:(id)a4;
- (void)canvas:(id)a3 willLayoutRep:(id)a4;
- (void)canvasDidLayout:(id)a3;
- (void)canvasDidUpdateRepsFromLayouts:(id)a3;
- (void)canvasDidUpdateVisibleBounds:(id)a3;
- (void)canvasDidValidateLayouts:(id)a3;
- (void)canvasLayoutInvalidated:(id)a3;
- (void)canvasWillLayout:(id)a3;
- (void)canvasWillUpdateRepsFromLayouts:(id)a3;
- (void)commitAnimations;
- (void)dealloc;
- (void)deselectAll:(id)a3;
- (void)discardRepForClassChange:(id)a3;
- (void)displayRulerForRect:(CGRect)a3;
- (void)displayRulerWithSlowFade:(BOOL)a3;
- (void)doubleTappedCanvasBackgroundAtPoint:(CGPoint)a3;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)embeddedCanvasDidEndScrolling;
- (void)embeddedCanvasWillBeginScrolling;
- (void)endDynamicOperation;
- (void)endPossiblyParallelInspectorDynamicOperation;
- (void)endScrollingOperation;
- (void)forceStopScrolling;
- (void)forwardInvocation:(id)a3;
- (void)hideRuler;
- (void)i_canvasContentsScaleDidChange;
- (void)i_canvasWideGamutValueDidChange;
- (void)i_cvcWillBecomeFirstResponder;
- (void)i_cvcWillResignFirstResponder;
- (void)i_drawRepWithReadLock:(id)a3 inContext:(CGContext *)a4 forLayer:(id)a5;
- (void)i_invalidateSelectionHighlightLayers;
- (void)i_layout;
- (void)i_layoutRegistered:(id)a3;
- (void)i_layoutUnregistered:(id)a3;
- (void)i_recordUserViewScale;
- (void)i_repNeedsDisplay:(id)a3;
- (void)i_repNeedsDisplay:(id)a3 inRect:(CGRect)a4;
- (void)i_syncWithLayoutThread;
- (void)i_viewDidZoomToViewScale:(double)a3;
- (void)i_viewScaleDidChange;
- (void)i_viewScrollDidChange;
- (void)i_viewScrollWillChange;
- (void)i_viewScrollingEnded;
- (void)i_viewWillBeginZooming;
- (void)invalidateComments;
- (void)invalidateLayers;
- (void)invalidateLayoutInBackground:(id)a3;
- (void)invalidateReps;
- (void)invalidateRepsIfSynced;
- (void)invalidateRepsInBackground;
- (void)invalidateVisibleBounds;
- (void)invalidateVisibleBoundsInBackground;
- (void)layoutIfNeeded;
- (void)layoutInvalidated;
- (void)makeEditorPerformAction:(SEL)a3 withSender:(id)a4;
- (void)p_acquireLockAndPerformAction:(id)a3;
- (void)p_applyViewScale:(double)a3 andContentOffset:(CGPoint)a4;
- (void)p_autoscrollToSelection:(id)a3 withInfo:(id)a4 isInitialSelection:(BOOL)a5 focusRect:(CGRect)a6 scrollImmediately:(BOOL)a7 skipZoom:(BOOL)a8;
- (void)p_beginZoomingOperation;
- (void)p_commonInit;
- (void)p_discardContainerLayer:(id)a3 forRep:(id)a4;
- (void)p_discardLayer:(id)a3 forRep:(id)a4;
- (void)p_drawLayerWithReadLock:(id)a3;
- (void)p_editorControllerDidChangeTextInputEditor:(id)a3;
- (void)p_editorControllerSelectionDidChange:(id)a3;
- (void)p_editorControllerSelectionDidChangeAndWantsKeyboard:(id)a3;
- (void)p_editorDidChangeSelection:(id)a3 withSelectionFlags:(unint64_t)a4;
- (void)p_editorDoneChangingSelection:(id)a3 withFlags:(unint64_t)a4;
- (void)p_endZoomingOperation;
- (void)p_iccWillBecomeFirstResponderNotification:(id)a3;
- (void)p_iccWillResignFirstResponderNotification:(id)a3;
- (void)p_invalidateForBackgroundLayout;
- (void)p_invalidateTilingLayers;
- (void)p_maybeSetTextResponderEditorTo:(id)a3;
- (void)p_postNotificationOnMainThreadWithValidLayouts:(id)a3;
- (void)p_recursiveHitKnobAtPoint:(CGPoint)a3 inRep:(id)a4 minDistance:(double *)a5 hitKnob:(id *)a6 hitRep:(id *)a7;
- (void)p_recursivelyClearLayerDelegate:(id)a3;
- (void)p_recursivelyUpdateLayerEdgeAntialiasingForLayer:(id)a3;
- (void)p_recursivelyUpdateLayerForRep:(id)a3 accumulatingLayers:(id)a4 andReps:(id)a5;
- (void)p_scrollModelToVisible:(id)a3 withSelection:(id)a4;
- (void)p_scrollToPrimarySelectionForEditor:(id)a3 skipZoom:(BOOL)a4;
- (void)p_scrollViewDidEndScrollingAnimation:(id)a3;
- (void)p_setTargetPointSize:(double)a3;
- (void)p_setupPopoutLayerForReps:(id)a3;
- (void)p_textGesturesDidEndNotification:(id)a3;
- (void)p_updateCanvasSizeFromLayouts;
- (void)p_updateLayersFromReps;
- (void)p_updateViewsFromRepsForceUpdate:(BOOL)a3;
- (void)p_viewScrollingEnded;
- (void)p_willEnterForeground:(id)a3;
- (void)performBlockAfterNextLayout:(id)a3;
- (void)popThreadedLayoutAndRenderDisabled;
- (void)presentError:(id)a3 completionHandler:(id)a4;
- (void)presentErrors:(id)a3 withLocalizedDescription:(id)a4 completionHandler:(id)a5;
- (void)pushThreadedLayoutAndRenderDisabled;
- (void)recreateAllLayoutsAndReps;
- (void)removeBackgroundRenderingObject:(id)a3;
- (void)removeCommonObservers;
- (void)removeDecorator:(id)a3;
- (void)resumeEditing;
- (void)reuseTextInputResponderFrom:(id)a3;
- (void)scrollCurrentSelectionToVisible;
- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4;
- (void)scrollRectToVisibleCenter:(CGRect)a3 animated:(BOOL)a4 onlyScrollNecessaryAxes:(BOOL)a5;
- (void)scrollRectToVisibleWithSelectionOutset:(CGRect)a3 animated:(BOOL)a4;
- (void)scrollSearchReferenceToVisible:(id)a3;
- (void)scrollToPrimarySelection;
- (void)scrollToSelection:(id)a3 onModel:(id)a4 scrollImmediately:(BOOL)a5;
- (void)scrollView:(id)a3 willAnimateToContentOffset:(CGPoint)a4;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setAllowLayoutAndRenderOnThread:(BOOL)a3;
- (void)setContentOffset:(CGPoint)a3 clamp:(BOOL)a4 animated:(BOOL)a5 completionBlock:(id)a6;
- (void)setDelegate:(id)a3;
- (void)setInReadMode:(BOOL)a3;
- (void)setInfosToDisplay:(id)a3;
- (void)setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:(BOOL)a3;
- (void)setLayerHost:(id)a3;
- (void)setNeedsDisplayInRect:(CGRect)a3 onLayer:(id)a4;
- (void)setNeedsDisplayOnLayer:(id)a3;
- (void)setOverlayLayerSuppressed:(BOOL)a3;
- (void)setSelection:(id)a3 onModel:(id)a4 withFlags:(unint64_t)a5;
- (void)setSelectionHighlightColor:(CGColor *)a3;
- (void)setShouldSuppressRendering:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowInvisibleObjects:(BOOL)a3;
- (void)setStaticLayoutAndRenderOnThread:(BOOL)a3;
- (void)setUsesAlternateDrawableSelectionHighlight:(BOOL)a3;
- (void)setViewScale:(double)a3;
- (void)setViewScale:(double)a3 andScrollViewFrame:(CGRect)a4 animated:(BOOL)a5;
- (void)setViewScale:(double)a3 andScrollViewFrame:(CGRect)a4 maintainPosition:(BOOL)a5 animated:(BOOL)a6;
- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 clampOffset:(BOOL)a5 animated:(BOOL)a6;
- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 clampOffset:(BOOL)a5 animationDuration:(double)a6 forceAnimation:(BOOL)a7 completion:(id)a8;
- (void)showOrHideComments:(id)a3;
- (void)syncProcessChanges:(id)a3 forChangeSource:(id)a4;
- (void)tappedCanvasBackgroundAtPoint:(CGPoint)a3;
- (void)teardown;
- (void)teardownBackgroundRendering;
- (void)teardownCanvasEditor;
- (void)toggleShouldShowUserDefinedGuides;
- (void)unobscuredFrameDidChange;
- (void)updateSelectionForTapAtPoint:(CGPoint)a3 extendingSelection:(BOOL)a4;
- (void)viewDidEndZooming;
- (void)zoomToCurrentSelection;
- (void)zoomWithAnimationToUnscaledRect:(CGRect)a3;
@end

@implementation TSDInteractiveCanvasController

- (TSDInteractiveCanvasController)init
{
  v5.receiver = self;
  v5.super_class = TSDInteractiveCanvasController;
  v2 = [(TSDInteractiveCanvasController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TSDInteractiveCanvasController *)v2 p_commonInit];
  }

  __dmb(0xBu);
  return v3;
}

- (void)addCommonObservers
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_p_rulerUnitsDidChangeNotification_ name:TSKRulerUnitsDidChangeNotification object:0];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [v3 addObserver:self selector:sel_p_textGesturesWillBeginNotification_ name:@"TSDTextGesturesWillBeginNotification" object:0];
  [v3 addObserver:self selector:sel_p_textGesturesDidEndNotification_ name:@"TSDTextGesturesDidEndNotification" object:0];
  v4 = *MEMORY[0x277D76758];

  [v3 addObserver:self selector:sel_p_willEnterForeground_ name:v4 object:0];
}

- (void)removeCommonObservers
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:TSKRulerUnitsDidChangeNotification object:0];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [v3 removeObserver:self name:@"TSDTextGesturesWillBeginNotification" object:0];
  [v3 removeObserver:self name:@"TSDTextGesturesDidEndNotification" object:0];
  v4 = *MEMORY[0x277D76758];

  [v3 removeObserver:self name:v4 object:0];
}

- (void)p_commonInit
{
  self->mSelfSync = objc_alloc_init(MEMORY[0x277CCAC60]);
  v3 = objc_alloc_init(TSDCanvas);
  self->mCanvas = v3;
  [(TSDCanvas *)v3 setDelegate:self];
  [(TSDCanvas *)self->mCanvas i_setCanvasController:self];
  v4 = *MEMORY[0x277CBECE8];
  v5 = MEMORY[0x277CBF150];
  self->mRepLayersByRep = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  self->mRepsByRepLayer = CFDictionaryCreateMutable(v4, 0, 0, v5);
  self->mContainerLayersByRep = CFDictionaryCreateMutable(v4, 0, 0, v5);
  self->mRepsByContainerLayer = CFDictionaryCreateMutable(v4, 0, 0, v5);
  self->mDirectLayerHostsByRep = CFDictionaryCreateMutable(v4, 0, 0, v5);
  v6 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  self->mRepContainerLayer = v6;
  [(CALayer *)v6 setDelegate:self];
  [(CALayer *)self->mRepContainerLayer setName:@"repContainer"];
  self->mResizeCanvasOnLayout = 0;
  [(TSDInteractiveCanvasController *)self addCommonObservers];
  v7 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v9 = *(MEMORY[0x277CBF398] + 16);
  v10 = *(MEMORY[0x277CBF398] + 24);
  [(TSDInteractiveCanvasController *)self setP_visibleBoundsRectForTiling:*MEMORY[0x277CBF398], v8, v9, v10];
  [(TSDInteractiveCanvasController *)self setP_visibleUnscaledRect:v7, v8, v9, v10];
  self->mTileStorage = objc_alloc_init(TSDTileStorage);
  self->mDisplayLinkDispatch = objc_alloc_init(TSDDisplayLinkDispatch);
  self->mNotificationsToPostWithValidLayouts = objc_alloc_init(MEMORY[0x277CBEB58]);
}

- (void)dealloc
{
  if (!self->mHasBeenTornDown)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController dealloc]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 459, @"Must call -teardown on ICC before it is deallocated"}];
  }

  if (self->mHadLayerHost && !self->mLayerHostHasBeenTornDown)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController dealloc]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 462, @"Must call -teardown on CVC before ICC is deallocated"}];
  }

  CGColorRelease(self->mSelectionHighlightColor);
  [(TSDInteractiveCanvasController *)self removeCommonObservers];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(CALayer *)self->mOverlayLayer setDelegate:0];

  self->mOverlayLayer = 0;
  self->mPopoutLayer = 0;

  self->mGuideController = 0;
  self->mEditorController = 0;

  self->mCanvasEditor = 0;
  self->mTextInputResponder = 0;
  mTextInputResponderSource = self->mTextInputResponderSource;
  if (mTextInputResponderSource)
  {
    --mTextInputResponderSource->mTextInputResponderShareCount;

    self->mTextInputResponderSource = 0;
  }

  self->mUnitFormatter = 0;
  self->mTMCoordinator = 0;

  self->mDynOpController = 0;
  self->mGestureDispatcher = 0;

  self->mTrackingController = 0;
  self->mBackgroundLayoutAndRenderState = 0;
  mRepLayersByRep = self->mRepLayersByRep;
  if (mRepLayersByRep)
  {
    CFRelease(mRepLayersByRep);
    self->mRepLayersByRep = 0;
  }

  mRepsByRepLayer = self->mRepsByRepLayer;
  if (mRepsByRepLayer)
  {
    CFRelease(mRepsByRepLayer);
    self->mRepsByRepLayer = 0;
  }

  mContainerLayersByRep = self->mContainerLayersByRep;
  if (mContainerLayersByRep)
  {
    CFRelease(mContainerLayersByRep);
    self->mContainerLayersByRep = 0;
  }

  mDirectLayerHostsByRep = self->mDirectLayerHostsByRep;
  if (mDirectLayerHostsByRep)
  {
    CFRelease(mDirectLayerHostsByRep);
    self->mDirectLayerHostsByRep = 0;
  }

  mRepsByContainerLayer = self->mRepsByContainerLayer;
  if (mRepsByContainerLayer)
  {
    CFRelease(mRepsByContainerLayer);
    self->mRepsByContainerLayer = 0;
  }

  [(CALayer *)self->mRepContainerLayer setDelegate:0];

  self->mRepContainerLayer = 0;
  self->mDecorators = 0;

  self->mCurrentAnimation = 0;
  self->mHiddenTopLevelLayers = 0;

  self->mCanvas = 0;
  self->mDisplayedAnnotation = 0;

  self->mAnnotationPopoverController = 0;
  self->mNextLayoutBlocks = 0;

  self->mDisplayLinkDispatch = 0;
  self->_directLayerHostProvider = 0;

  self->mCachedTopLevelTilingLayers = 0;
  v13.receiver = self;
  v13.super_class = TSDInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v13 dealloc];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = TSDInteractiveCanvasController;
  if ([(TSDInteractiveCanvasController *)&v9 respondsToSelector:?])
  {
    v8.receiver = self;
    v8.super_class = TSDInteractiveCanvasController;
    return [(TSDInteractiveCanvasController *)&v8 methodSignatureForSelector:a3];
  }

  else
  {
    result = methodSignatureForSelector__s_actionMethodSignature;
    if (!methodSignatureForSelector__s_actionMethodSignature)
    {
      if (snprintf(__str, 0x20uLL, "%s%s%s%s", "v", "@", ":", "@") >= 0x20)
      {
        v6 = [MEMORY[0x277D6C290] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController methodSignatureForSelector:]"];
        [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 580, @"ObjCTypes string overflowed"}];
      }

      result = [MEMORY[0x277CBEB08] signatureWithObjCTypes:__str];
      methodSignatureForSelector__s_actionMethodSignature = result;
    }
  }

  return result;
}

+ (BOOL)selectorIsActionMethod:(SEL)a3
{
  Name = sel_getName(a3);
  v5 = &Name[strlen(Name) - 1];
  if (*v5 != 58 || strchr(Name, 58) != v5)
  {
    return 0;
  }

  return sel_tilingLayerWillSetNeedsLayout_ != a3 && sel_descriptionWithLocale_ != a3;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = TSDInteractiveCanvasController;
  if ([(TSDInteractiveCanvasController *)&v7 respondsToSelector:?])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [TSDInteractiveCanvasController selectorIsActionMethod:a3];
    if (v5)
    {
      LOBYTE(v5) = [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] editorForEditAction:a3 withSender:0]!= 0;
    }
  }

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v5 = [a3 selector];
  v12 = 0;
  [a3 getArgument:&v12 atIndex:2];
  v6 = [(TSDInteractiveCanvasController *)self editorController];
  v7 = [(TSDEditorController *)v6 editorForEditAction:v5 withSender:v12];
  if (v7 && (v8 = v7, (objc_opt_respondsToSelector() & 1) != 0))
  {
    v9 = [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)self documentRoot] accessController];
    if (v9)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __52__TSDInteractiveCanvasController_forwardInvocation___block_invoke;
      v11[3] = &unk_279D47708;
      v11[4] = a3;
      v11[5] = v8;
      [(TSKAccessController *)v9 performRead:v11];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TSDInteractiveCanvasController;
    [(TSDInteractiveCanvasController *)&v10 doesNotRecognizeSelector:v5];
  }
}

- (void)teardownCanvasEditor
{
  mCanvasEditor = self->mCanvasEditor;
  if (mCanvasEditor)
  {
    [(TSDCanvasEditor *)mCanvasEditor setSelection:0];
    if ([-[TSDEditorController currentEditors](self->mEditorController "currentEditors")] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(TSDEditorController *)self->mEditorController popEditor:self->mCanvasEditor];
    }

    [(TSDCanvasEditor *)self->mCanvasEditor teardown];

    self->mCanvasEditor = 0;
  }

  self->mEditorController = 0;
}

- (void)teardown
{
  v16 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_i_viewScrollingEnded object:0];
  mCanvasEditor = self->mCanvasEditor;
  if (mCanvasEditor)
  {
    [(TSDCanvasEditor *)mCanvasEditor setSelection:0];
    v4 = [(TSDEditorController *)self->mEditorController currentEditors];
    if (!v4 || [v4 indexOfObjectIdenticalTo:self->mCanvasEditor] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(TSDCanvasEditor *)self->mCanvasEditor teardown];
    }
  }

  [(TSDEditorController *)self->mEditorController teardown];

  self->mCanvasEditor = 0;
  self->mEditorController = 0;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  [(TSDDisplayLinkDispatch *)self->mDisplayLinkDispatch teardown];

  self->mDisplayLinkDispatch = 0;
  [(TSDInteractiveCanvasController *)self removeCommonObservers];
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender)
  {
    [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
  }

  [(TSDBackgroundLayoutAndRenderState *)self->mBackgroundLayoutAndRenderState clearDelegate];

  self->mBackgroundLayoutAndRenderState = 0;
  [(TSDInteractiveCanvasController *)self teardownBackgroundRendering];
  [(TSDInteractiveCanvasController *)self setTrackingController:0];
  if (self->mCanvasEditor)
  {
    [(TSDInteractiveCanvasController *)self endEditing];
    [(TSDInteractiveCanvasController *)self teardownCanvasEditor];
  }

  mTextInputResponder = self->mTextInputResponder;
  if (self->mTextInputResponderSource)
  {
    [(TSDTextInputResponder *)mTextInputResponder forceDelayedResponderChange];
  }

  else
  {
    [(TSDTextInputResponder *)mTextInputResponder teardown];
  }

  [(TSDGestureDispatcher *)[(TSDInteractiveCanvasController *)self gestureDispatcher] teardown];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    self->mTeardownOnBackgroundThread = 1;
  }

  [(TSDCanvas *)self->mCanvas teardown];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(TSDInteractiveCanvasController *)self p_updateViewsFromRepsForceUpdate:1];
  }

  [(TSDTileStorage *)self->mTileStorage removeAllContents];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  mRepsByRepLayer = self->mRepsByRepLayer;
  v7 = [(__CFDictionary *)mRepsByRepLayer countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(mRepsByRepLayer);
        }

        [(TSDInteractiveCanvasController *)self p_recursivelyClearLayerDelegate:*(*(&v11 + 1) + 8 * i)];
      }

      v8 = [(__CFDictionary *)mRepsByRepLayer countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(TSDInteractiveCanvasController *)self setDelegate:0];
  [(NSMutableSet *)self->mNotificationsToPostWithValidLayouts removeAllObjects];
  self->mHasBeenTornDown = 1;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  if (self->mSuspendedLowPriorityThreadDispatcher)
  {
    self->mSuspendedLowPriorityThreadDispatcher = 0;
    [+[TSKLowPriorityThreadDispatcher sharedLowPriorityDispatcher](TSKLowPriorityThreadDispatcher "sharedLowPriorityDispatcher")];
  }
}

- (void)p_recursivelyClearLayerDelegate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  [a3 setDelegate:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [a3 sublayers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(TSDInteractiveCanvasController *)self p_recursivelyClearLayerDelegate:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setLayerHost:(id)a3
{
  if (a3)
  {
    self->mHadLayerHost = 1;
  }

  self->mLayerHost = a3;
}

- (void)i_cvcWillBecomeFirstResponder
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasControllerWillBecomeFirstResponder:self];
  }
}

- (void)i_cvcWillResignFirstResponder
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];

  [v3 postNotificationName:@"TSDInteractiveCanvasControllerWillResignFirstResponderNotification" object:self userInfo:0];
}

- (void)p_iccWillBecomeFirstResponderNotification:(id)a3
{
  v4 = [a3 object];
  if (v4 != self)
  {
    v5 = [(TSDCanvasView *)[(TSDInteractiveCanvasController *)v4 canvasView] rootCanvasView];
    if (v5 == [(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] rootCanvasView])
    {

      [(TSDInteractiveCanvasController *)self endEditing];
    }
  }
}

- (void)p_iccWillResignFirstResponderNotification:(id)a3
{
  if ([a3 object] == self && (objc_opt_respondsToSelector() & 1) != 0 && -[TSDInteractiveCanvasControllerDelegate interactiveCanvasControllerShouldEndEditingWhenLosingFirstResponder:](self->mDelegate, "interactiveCanvasControllerShouldEndEditingWhenLosingFirstResponder:", self))
  {

    [(TSDInteractiveCanvasController *)self endEditing];
  }
}

- (void)teardownBackgroundRendering
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(TSDCanvas *)self->mCanvas allReps];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v16 + 1) + 8 * i) i_shutdownTileQueue];
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  mBackgroundRenderingObjects = self->mBackgroundRenderingObjects;
  objc_sync_enter(mBackgroundRenderingObjects);
  v8 = [(NSMutableArray *)self->mBackgroundRenderingObjects copy];
  objc_sync_exit(mBackgroundRenderingObjects);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * j) teardownBackgroundRendering];
      }

      v9 = [v8 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)addBackgroundRenderingObject:(id)a3
{
  mBackgroundRenderingObjects = self->mBackgroundRenderingObjects;
  objc_sync_enter(mBackgroundRenderingObjects);
  v6 = self->mBackgroundRenderingObjects;
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->mBackgroundRenderingObjects = v6;
  }

  [(NSMutableArray *)v6 addObject:a3];

  objc_sync_exit(mBackgroundRenderingObjects);
}

- (void)removeBackgroundRenderingObject:(id)a3
{
  mBackgroundRenderingObjects = self->mBackgroundRenderingObjects;
  objc_sync_enter(mBackgroundRenderingObjects);
  v6 = [(NSMutableArray *)self->mBackgroundRenderingObjects indexOfObject:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController removeBackgroundRenderingObject:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 879, @"removeBackgroundRenderingObject called on an object that is not in the array"}];
  }

  [(NSMutableArray *)self->mBackgroundRenderingObjects removeObjectAtIndex:v6];

  objc_sync_exit(mBackgroundRenderingObjects);
}

- (void)setDelegate:(id)a3
{
  if (self->mDelegate != a3)
  {
    self->mDelegate = a3;
  }
}

- (TSPObjectContext)objectContext
{
  v2 = [(TSDInteractiveCanvasController *)self documentRoot];

  return [(TSPObject *)v2 context];
}

- (TSKChangeNotifier)changeNotifier
{
  v2 = [(TSDInteractiveCanvasController *)self documentRoot];

  return [(TSKDocumentRoot *)v2 changeNotifier];
}

- (TSKAccessController)accessController
{
  v2 = [(TSDInteractiveCanvasController *)self documentRoot];

  return [(TSKDocumentRoot *)v2 accessController];
}

- (CGSize)defaultMinimumUnscaledCanvasSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)canvasLayoutInvalidated:(id)a3
{
  if (-[TSDInteractiveCanvasController isCanvasInteractive](self, "isCanvasInteractive", a3) && ([MEMORY[0x277CCACC8] isMainThread] || !self->mLayoutAndRenderOnThreadDuringScroll && self->mNestedCanvasAllowLayoutAndRenderOnThread))
  {
    v4 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

    [v4 setNeedsLayout];
  }
}

- (void)canvasDidUpdateVisibleBounds:(id)a3
{
  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  [(TSDInteractiveCanvasController *)self setP_visibleBoundsRectForTiling:a3, *MEMORY[0x277CBF398], v5, v6, v7];

  [(TSDInteractiveCanvasController *)self setP_visibleUnscaledRect:v4, v5, v6, v7];
}

- (void)canvasWillLayout:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasControllerWillLayout:self];
  }
}

- (void)canvasDidValidateLayouts:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasControllerDidValidateLayouts:self];
  }
}

- (void)canvasDidLayout:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasControllerDidLayout:self];
  }

  [(TSDInteractiveCanvasController *)self p_postNotificationOnMainThreadWithValidLayouts:@"TSDInteractiveCanvasControllerDidLayoutNotification"];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__TSDInteractiveCanvasController_canvasDidLayout___block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__TSDInteractiveCanvasController_canvasDidLayout___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 600);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * i) + 16))();
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  *(*(a1 + 32) + 600) = 0;
}

- (void)canvasWillUpdateRepsFromLayouts:(id)a3
{
  if ([(TSDInteractiveCanvasController *)self resizeCanvasOnLayout])
  {

    [(TSDInteractiveCanvasController *)self p_updateCanvasSizeFromLayouts];
  }
}

- (void)canvasDidUpdateRepsFromLayouts:(id)a3
{
  [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasDidUpdateRepsFromLayouts];
  [(TSDInteractiveCanvasController *)self p_updateLayersFromReps];
  if (!self->mCurrentlyWaitingOnThreadedLayoutAndRender && [MEMORY[0x277CCACC8] isMainThread])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __65__TSDInteractiveCanvasController_canvasDidUpdateRepsFromLayouts___block_invoke;
    v4[3] = &unk_279D46770;
    v4[4] = self;
    [(TSDInteractiveCanvasController *)self p_acquireLockAndPerformAction:v4];
    if (!self->mCurrentlyScrolling)
    {
      [(TSDTrackingController *)[(TSDInteractiveCanvasController *)self trackingController] interactiveCanvasControllerUpdatedRepsFromLayouts:self];
    }
  }
}

- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)a3
{
  if (self->mCreateRepsForOffscreenLayouts)
  {
    v3 = *MEMORY[0x277CBF390];
    v4 = *(MEMORY[0x277CBF390] + 8);
    v5 = *(MEMORY[0x277CBF390] + 16);
    v6 = *(MEMORY[0x277CBF390] + 24);
  }

  else
  {
    [(TSDInteractiveCanvasController *)self visibleBoundsRect];
    v3 = v8;
    v4 = v9;
    v5 = v10;
    v6 = v11;
    if (objc_opt_respondsToSelector())
    {
      [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self expandVisibleBoundsForClippingReps:v3, v4, v5, v6];
      v3 = v12;
      v4 = v13;
      v5 = v14;
      v6 = v15;
    }
  }

  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)additionalVisibleInfosForCanvas:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->mCreateRepsForOffscreenLayouts)
  {
    return 0;
  }

  [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] canvasSelection];
  v3 = [TSUProtocolCast() infos];
  v5 = [(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self dynamicOperationController] allTransformedReps];
  if (v5)
  {
    v6 = v5;
    v3 = [MEMORY[0x277CBEB58] setWithSet:v3];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v3 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v10++), "info")}];
        }

        while (v8 != v10);
        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  return v3;
}

- (void)canvas:(id)a3 willLayoutRep:(id)a4
{
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self willLayoutRep:a4];
  }
}

- (void)canvas:(id)a3 createdRep:(id)a4
{
  v5 = [(TSDInteractiveCanvasController *)self canvasEditor];

  [(TSDCanvasEditor *)v5 repWasCreated:a4];
}

- (id)canvas:(id)a3 layoutGeometryProviderForLayout:(id)a4
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self layoutGeometryProviderForLayout:a4];
}

- (void)presentError:(id)a3 completionHandler:(id)a4
{
  v6 = [(TSDInteractiveCanvasController *)self layerHost];

  [(TSDCanvasLayerHosting *)v6 presentError:a3 completionHandler:a4];
}

- (void)presentErrors:(id)a3 withLocalizedDescription:(id)a4 completionHandler:(id)a5
{
  v8 = [(TSDInteractiveCanvasController *)self layerHost];

  [(TSDCanvasLayerHosting *)v8 presentErrors:a3 withLocalizedDescription:a4 completionHandler:a5];
}

- (TSDEditorController)editorController
{
  if (!self->mEditorController && -[TSDInteractiveCanvasController documentRoot](self, "documentRoot") && [MEMORY[0x277CCACC8] isMainThread])
  {
    v4 = [(TSDInteractiveCanvasController *)self delegate];
    if (v4 && (v5 = v4, (objc_opt_respondsToSelector() & 1) != 0))
    {
      v6 = [(TSDInteractiveCanvasControllerDelegate *)v5 editorControllerForInteractiveCanvasController:self];
      self->mEditorController = v6;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else if (!self->mEditorController)
    {
LABEL_10:
      self->mEditorController = [[TSDEditorController alloc] initWithDocumentRoot:[(TSDInteractiveCanvasController *)self documentRoot]];
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:self selector:sel_p_editorControllerDidChangeTextInputEditor_ name:@"TSDEditorControllerDidChangeTextInputEditor" object:self->mEditorController];
    [v7 addObserver:self selector:sel_p_editorControllerDidChangeCurrentEditors_ name:@"TSDEditorControllerDidChangeCurrentEditors" object:self->mEditorController];
    [v7 addObserver:self selector:sel_p_editorControllerSelectionDidChange_ name:@"TSDEditorControllerSelectionDidChange" object:self->mEditorController];
    [v7 addObserver:self selector:sel_p_editorControllerSelectionDidChange_ name:@"TSDEditorControllerSelectionWasForciblyChanged" object:self->mEditorController];
    [v7 addObserver:self selector:sel_p_editorControllerSelectionDidChangeAndWantsKeyboard_ name:@"TSDEditorControllerSelectionDidChangeAndWantsKeyboard" object:self->mEditorController];
    [(TSDEditorController *)self->mEditorController pushEditor:[(TSDInteractiveCanvasController *)self canvasEditor]];
  }

  return self->mEditorController;
}

- (TSDTextInputResponder)textInputResponder
{
  v3 = TSUSupportsTextInteraction();
  result = self->mTextInputResponder;
  if (v3)
  {
    if (!result)
    {
      result = [objc_alloc(TSDTextInputResponderClass()) initWithNextResponder:{-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self, "layerHost"), "canvasView")}];
      self->mTextInputResponder = result;
    }
  }

  return result;
}

- (id)newCanvasEditor
{
  v3 = [TSDCanvasEditor alloc];

  return [(TSDCanvasEditor *)v3 initWithInteractiveCanvasController:self];
}

- (TSDCanvasEditor)canvasEditor
{
  if (!self->mCanvasEditor && [(TSDInteractiveCanvasController *)self documentRoot]&& !self->mHasBeenTornDown)
  {
    self->mCanvasEditor = [(TSDInteractiveCanvasController *)self newCanvasEditor];
  }

  return self->mCanvasEditor;
}

- (id)beginEditingRepForInfo:(id)a3
{
  [(TSDInteractiveCanvasController *)self p_layoutWithReadLock];
  result = [(TSDInteractiveCanvasController *)self repForInfo:a3];
  if (result)
  {

    return [(TSDInteractiveCanvasController *)self beginEditingRep:result];
  }

  return result;
}

- (id)beginEditingRep:(id)a3 clearingSelection:(BOOL)a4 withEditorProvider:(id)a5
{
  v6 = a4;
  v9 = [(TSDInteractiveCanvasController *)self editorController];
  [(TSDInteractiveCanvasController *)self p_layoutWithReadLock];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = [(TSDInteractiveCanvasController *)self editorController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__TSDInteractiveCanvasController_beginEditingRep_clearingSelection_withEditorProvider___block_invoke;
  v15[3] = &unk_279D482E8;
  v15[4] = a3;
  v15[5] = &v16;
  [(TSDEditorController *)v10 enumerateEditorsOnStackUsingBlock:v15];
  if (*(v17 + 24) == 1)
  {
    [(TSDInteractiveCanvasController *)self p_endEditingToBeginEditingRep:a3];
    v11 = a3;
    if (v6)
    {
      [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] setSelection:0];
    }
  }

  if (a3)
  {
    v12 = (*(a5 + 2))(a5);
    if (v12)
    {
      [(TSDEditorController *)v9 pushEditor:v12];
      [(TSDEditorController *)v9 setTextInputEditor:v12];
    }
  }

  v13 = [(TSDEditorController *)v9 textInputEditor];
  _Block_object_dispose(&v16, 8);
  return v13;
}

uint64_t __87__TSDInteractiveCanvasController_beginEditingRep_clearingSelection_withEditorProvider___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [a2 shouldEndEditingToBeginEditingRep:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = result;
    *a3 = 1;
  }

  return result;
}

- (id)beginEditingRep:(id)a3
{
  [(TSDInteractiveCanvasController *)self p_layoutWithReadLock];
  v5 = [(TSDInteractiveCanvasController *)self editorController];
  v6 = [(TSDEditorController *)v5 textInputEditor];
  if (!a3 || (v7 = v6) == 0 || ([a3 canEditWithEditor:v6] & 1) == 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__TSDInteractiveCanvasController_beginEditingRep___block_invoke;
    v9[3] = &unk_279D48310;
    v9[4] = a3;
    [(TSDInteractiveCanvasController *)self beginEditingRep:a3 clearingSelection:1 withEditorProvider:v9];
    return [(TSDEditorController *)v5 textInputEditor];
  }

  return v7;
}

- (CGPoint)smartZoomCenterForNoSelection
{
  [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] unscaledSize];
  v2 = TSDRectWithSize();

  v6 = TSDCenterOfRect(v2, v3, v4, v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)zoomToCurrentSelection
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] canvasSelection];
  v5 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(TSDCanvasSelection *)v3 infos];
  v9 = [(NSSet *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(TSDInteractiveCanvasController *)self layoutForInfo:*(*(&v21 + 1) + 8 * v12)];
        if (v13)
        {
          [objc_msgSend(v13 "geometryInRoot")];
          v5 = TSDUnionRect(v5, v4, v7, v6, v14, v15, v16, v17);
          v4 = v18;
          v7 = v19;
          v6 = v20;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSSet *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v27.origin.x = v5;
  v27.origin.y = v4;
  v27.size.width = v7;
  v27.size.height = v6;
  v28 = CGRectInset(v27, -10.0, -10.0);
  [(TSDInteractiveCanvasController *)self zoomWithAnimationToUnscaledRect:v28.origin.x, v28.origin.y, v28.size.width, v28.size.height];
}

- (void)zoomWithAnimationToUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TSDInteractiveCanvasController *)self visibleUnscaledRect];
  [(TSDInteractiveCanvasController *)self viewScale];
  v8 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  [v8 minimumPinchViewScale];
  [v8 maximumPinchViewScale];
  TSUClamp();
  v10 = v9;
  v11 = TSDCenterOfRect(x, y, width, height);
  v13 = v12;
  [v8 contentInset];

  [v8 animateToViewScale:0 contentCenter:v10 contentInset:v11 duration:v13 completionBlock:{v14, v15, v16, v17, 0.2}];
}

- (BOOL)shouldZoomOnSelectionChange
{
  [(TSDInteractiveCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(TSDInteractiveCanvasController *)self delegate];

  return [(TSDInteractiveCanvasControllerDelegate *)v3 zoomOnSelectionChange:self];
}

- (id)p_setSelection:(id)a3 onInfo:(id)a4 withFlags:(unint64_t)a5
{
  if (a4)
  {
    v8 = [(TSDInteractiveCanvasController *)self beginEditingRepForInfo:a4];
  }

  else
  {
    [(TSDInteractiveCanvasController *)self endEditing];
    if (![a3 conformsToProtocol:&unk_287E360E8])
    {
      v9 = 0;
      goto LABEL_9;
    }

    v8 = [(TSDInteractiveCanvasController *)self canvasEditor];
  }

  v9 = v8;
  if (v8 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_setSelection:onInfo:withFlags:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 1399, @"editor does not implement optional protocol method"}];
  }

LABEL_9:
  [(TSDCanvasEditor *)v9 setSelection:a3 withFlags:a5];
  return v9;
}

- (id)infoForModel:(id)a3 withSelection:(id)a4
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self infoForModel:a3 withSelection:a4]) == 0)
  {

    return TSUProtocolCast();
  }

  return result;
}

- (id)infoToScrollToForModel:(id)a3 withSelection:(id)a4
{
  result = [(TSDInteractiveCanvasController *)self infoForModel:a3 withSelection:?];
  if (!result)
  {
    result = TSUProtocolCast();
    if (result)
    {
      v5 = result;
      result = [result infoCount];
      if (result)
      {
        v6 = [v5 infos];

        return [v6 anyObject];
      }
    }
  }

  return result;
}

- (void)scrollCurrentSelectionToVisible
{
  v3 = [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] mostSpecificCurrentEditorOfClass:0];
  v4 = 0;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 selection];
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 model];
    if (!v4)
    {
LABEL_7:
      v4 = [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] selection];
      if (!v4)
      {
        return;
      }
    }
  }

  else
  {
    v5 = 0;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  [(TSDInteractiveCanvasController *)self scrollToSelection:v4 onModel:v5];
}

- (void)scrollSearchReferenceToVisible:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate willScrollSearchReferenceToVisible:a3];
  }

  v5 = [a3 model];
  v6 = [a3 selection];

  [(TSDInteractiveCanvasController *)self p_scrollModelToVisible:v5 withSelection:v6];
}

- (void)p_scrollModelToVisible:(id)a3 withSelection:(id)a4
{
  [(TSDInteractiveCanvasController *)self layoutIfNeeded];
  v7 = [(TSDInteractiveCanvasController *)self infoToScrollToForModel:a3 withSelection:a4];
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self targetRectForInfo:v7 withSelection:a4];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x277CBF398];
    v11 = *(MEMORY[0x277CBF398] + 8);
    v13 = *(MEMORY[0x277CBF398] + 16);
    v15 = *(MEMORY[0x277CBF398] + 24);
  }

  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  if (CGRectIsNull(v23))
  {
    v16 = [(TSDInteractiveCanvasController *)self layoutForInfoNearestVisibleRect:v7 intersectingSelection:a4];
    if (!v16)
    {
      v16 = [(TSDInteractiveCanvasController *)self validatedLayoutForInfo:[(TSDInteractiveCanvasController *)self infoForModel:a3 withSelection:a4]];
    }

    [v16 rectForSelection:a4];
    [v16 rectInRoot:?];
    v9 = v17;
    v11 = v18;
    v13 = v19;
    v15 = v20;
  }

  if (objc_opt_respondsToSelector())
  {
    v21 = [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasControllerShouldAnimateToSearchReferences:self];
  }

  else
  {
    v21 = 1;
  }

  [(TSDInteractiveCanvasController *)self scrollRectToVisibleWithSelectionOutset:v21 animated:v9, v11, v13, v15];
}

- (void)setSelection:(id)a3 onModel:(id)a4 withFlags:(unint64_t)a5
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v9 = TSUProtocolCast();
  if (!v9)
  {
    v10 = 0;
    if ((a5 & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = [(TSDInteractiveCanvasController *)self infoForModel:v9 withSelection:a3];
  if ((a5 & 0x80) == 0)
  {
LABEL_5:
    v11 = [(TSDInteractiveCanvasController *)self editorController];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__TSDInteractiveCanvasController_setSelection_onModel_withFlags___block_invoke;
    v21[3] = &unk_279D48338;
    v21[4] = a4;
    v21[5] = a3;
    v21[6] = v10;
    v21[7] = &v22;
    v21[8] = &v26;
    [(TSDEditorController *)v11 enumerateEditorsOnStackUsingBlock:v21];
  }

LABEL_6:
  self->mShouldAnimateAutoscroll = (a5 & 0x10) != 0;
  if (*(v23 + 24) == 1)
  {
    self->mShouldAutoscrollToSelectionAfterLayout = (a5 & 0x40) >> 6;
    self->mShouldCenterSelectionWhenAutoscrolling = (~a5 & 0x1000040) == 0;
    if ((a5 & 0x40) != 0)
    {
      [(TSDInteractiveCanvasController *)self layoutInvalidated];
    }

    if (v27[5] && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v12 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController setSelection:onModel:withFlags:]"];
      [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 1529, @"editor does not implement optional protocol method"}];
    }

    [v27[5] setSelection:a3 withFlags:a5];
  }

  else
  {
    self->mShouldAutoscrollToSelectionAfterLayout = 0;
    self->mShouldCenterSelectionWhenAutoscrolling = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v14 = [(TSDInteractiveCanvasController *)self editorController];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__TSDInteractiveCanvasController_setSelection_onModel_withFlags___block_invoke_2;
    v16[3] = &unk_279D48360;
    v16[4] = a3;
    v16[5] = v10;
    v16[6] = &v17;
    [(TSDEditorController *)v14 enumerateEditorsOnStackUsingBlock:v16];
    if (*(v18 + 24) == 1)
    {
      if ((a5 & 0x40) != 0)
      {
        v15 = [(TSDInteractiveCanvasController *)self p_setSelection:a3 onInfo:v10 withFlags:a5];
        v27[5] = v15;
        if (!v15)
        {
          [(TSDInteractiveCanvasController *)self endEditing];
        }

        [(TSDInteractiveCanvasController *)self layoutIfNeeded];
      }

      if (!v27[5])
      {
        [(TSDInteractiveCanvasController *)self p_setSelection:a3 onInfo:v10 withFlags:a5];
      }
    }

    _Block_object_dispose(&v17, 8);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
}

uint64_t __65__TSDInteractiveCanvasController_setSelection_onModel_withFlags___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [a2 model];
    if (result == a1[4])
    {
      result = objc_opt_respondsToSelector();
      if ((result & 1) == 0 || (result = [a2 readyToAcceptSelection:a1[5] onInfo:a1[6]], result))
      {
        *(*(a1[7] + 8) + 24) = 1;
        *(*(a1[8] + 8) + 40) = a2;
        *a3 = 1;
      }
    }
  }

  return result;
}

uint64_t __65__TSDInteractiveCanvasController_setSelection_onModel_withFlags___block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [a2 ignoreSetSelection:a1[4] onInfo:a1[5]];
    if (result)
    {
      *(*(a1[6] + 8) + 24) = 0;
      *a3 = 1;
    }
  }

  return result;
}

- (CGRect)scrollFocusRectForModel:(id)a3 withSelection:(id)a4
{
  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)scrollToSelection:(id)a3 onModel:(id)a4 scrollImmediately:(BOOL)a5
{
  v5 = a5;
  v8 = TSUProtocolCast();
  if (v8)
  {
    v9 = [(TSDInteractiveCanvasController *)self infoForModel:v8 withSelection:a3];
  }

  else
  {
    v9 = 0;
  }

  [(TSDInteractiveCanvasController *)self layoutIfNeeded];
  [(TSDInteractiveCanvasController *)self scrollFocusRectForModel:v8 withSelection:a3];

  [(TSDInteractiveCanvasController *)self p_autoscrollToSelection:a3 withInfo:v9 isInitialSelection:0 focusRect:v5 scrollImmediately:0 skipZoom:?];
}

- (void)p_scrollToPrimarySelectionForEditor:(id)a3 skipZoom:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    if (objc_opt_respondsToSelector() & 1) != 0 && [a3 selection] && (objc_opt_respondsToSelector())
    {
      if ([a3 model])
      {
        v7 = -[TSDInteractiveCanvasController infoToScrollToForModel:withSelection:](self, "infoToScrollToForModel:withSelection:", [a3 model], objc_msgSend(a3, "selection"));
      }

      else
      {
        v7 = 0;
      }

      v8 = [a3 selection];
      -[TSDInteractiveCanvasController scrollFocusRectForModel:withSelection:](self, "scrollFocusRectForModel:withSelection:", [a3 model], objc_msgSend(a3, "selection"));

      [(TSDInteractiveCanvasController *)self p_autoscrollToSelection:v8 withInfo:v7 isInitialSelection:0 focusRect:0 scrollImmediately:v4 skipZoom:?];
    }
  }
}

- (void)scrollToPrimarySelection
{
  v3 = [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] textInputEditor];

  [(TSDInteractiveCanvasController *)self scrollToPrimarySelectionForEditor:v3];
}

- (void)layoutInvalidated
{
  if (!self->mStaticLayoutAndRenderOnThread)
  {
    if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender && [MEMORY[0x277CCACC8] isMainThread])
    {
      [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
    }

    mCanvas = self->mCanvas;

    [(TSDCanvas *)mCanvas layoutInvalidated];
  }
}

- (void)invalidateReps
{
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender && [MEMORY[0x277CCACC8] isMainThread])
  {
    [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
  }

  mCanvas = self->mCanvas;

  [(TSDCanvas *)mCanvas invalidateReps];
}

- (void)invalidateRepsIfSynced
{
  if (!self->mLayoutAndRenderOnThreadDuringScroll || !self->mCurrentlyWaitingOnThreadedLayoutAndRender || ([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    mCanvas = self->mCanvas;

    [(TSDCanvas *)mCanvas invalidateReps];
  }
}

- (void)invalidateRepsInBackground
{
  if (self->mLayoutAndRenderOnThreadDuringScroll && (!self->mCurrentlyWaitingOnThreadedLayoutAndRender || ([(TSDInteractiveCanvasController *)self i_syncWithLayoutThread], self->mLayoutAndRenderOnThreadDuringScroll)) && [(TSDInteractiveCanvasController *)self p_currentlyScrolling]&& !self->mDisableThreadedLayoutAndRender)
  {
    [(NSRecursiveLock *)self->mSelfSync lock];
    self->mCurrentlyWaitingOnThreadedLayoutAndRender = 1;
    [(TSDCanvas *)self->mCanvas invalidateReps];
    [(NSRecursiveLock *)self->mSelfSync unlock];
    v4 = [(TSDInteractiveCanvasController *)self p_backgroundLayoutAndRenderState];

    [v4 setNeedsLayoutAndRender];
  }

  else
  {
    mCanvas = self->mCanvas;

    [(TSDCanvas *)mCanvas invalidateReps];
  }
}

- (void)invalidateLayoutInBackground:(id)a3
{
  if (self->mLayoutAndRenderOnThreadDuringScroll && (!self->mCurrentlyWaitingOnThreadedLayoutAndRender || ([(TSDInteractiveCanvasController *)self i_syncWithLayoutThread], self->mLayoutAndRenderOnThreadDuringScroll)) && [(TSDInteractiveCanvasController *)self p_currentlyScrolling]&& !self->mDisableThreadedLayoutAndRender)
  {
    [(NSRecursiveLock *)self->mSelfSync lock];
    self->mCurrentlyWaitingOnThreadedLayoutAndRender = 1;
    [a3 invalidate];
    [(NSRecursiveLock *)self->mSelfSync unlock];
    v5 = [(TSDInteractiveCanvasController *)self p_backgroundLayoutAndRenderState];

    [v5 setNeedsLayoutAndRender];
  }

  else
  {

    [a3 invalidate];
  }
}

- (void)invalidateVisibleBoundsInBackground
{
  if (self->mLayoutAndRenderOnThreadDuringScroll && (!self->mCurrentlyWaitingOnThreadedLayoutAndRender || ([(TSDInteractiveCanvasController *)self i_syncWithLayoutThread], self->mLayoutAndRenderOnThreadDuringScroll)) && [(TSDInteractiveCanvasController *)self p_currentlyScrolling]&& !self->mDisableThreadedLayoutAndRender)
  {
    [(NSRecursiveLock *)self->mSelfSync lock];
    self->mCurrentlyWaitingOnThreadedLayoutAndRender = 1;
    [(TSDCanvas *)self->mCanvas invalidateVisibleBounds];
    [(NSRecursiveLock *)self->mSelfSync unlock];
    v4 = [(TSDInteractiveCanvasController *)self p_backgroundLayoutAndRenderState];

    [v4 setNeedsLayoutAndRender];
  }

  else
  {
    mCanvas = self->mCanvas;

    [(TSDCanvas *)mCanvas invalidateVisibleBounds];
  }
}

- (void)invalidateVisibleBounds
{
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender && [MEMORY[0x277CCACC8] isMainThread] && (!self->mForceTilingLayoutOnThreadWhenScrolling || !-[TSDInteractiveCanvasController p_currentlyScrolling](self, "p_currentlyScrolling")))
  {
    [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
  }

  mCanvas = self->mCanvas;

  [(TSDCanvas *)mCanvas invalidateVisibleBounds];
}

- (void)invalidateLayers
{
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender && [MEMORY[0x277CCACC8] isMainThread])
  {
    [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
  }

  mCanvas = self->mCanvas;

  [(TSDCanvas *)mCanvas invalidateLayers];
}

- (void)setShouldSuppressRendering:(BOOL)a3 animated:(BOOL)a4
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->mShouldSuppressRendering != a3)
  {
    v4 = a4;
    v5 = a3;
    self->mShouldSuppressRendering = a3;
    v7 = [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
    v8 = v7;
    if (v5)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v31 + 1) + 8 * i) setHidden:1];
          }

          v10 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v10);
      }
    }

    else
    {
      if (v4)
      {
        [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
        [0 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", 0.0)}];
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = [v8 countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v28;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v8);
            }

            v17 = *(*(&v27 + 1) + 8 * j);
            [v17 setHidden:0];
            if (v4)
            {
              [v17 addAnimation:0 forKey:@"fade in"];
            }
          }

          v14 = [v8 countByEnumeratingWithState:&v27 objects:v36 count:16];
        }

        while (v14);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v18 = [(TSDCanvas *)self->mCanvas topLevelReps];
      v19 = [v18 countByEnumeratingWithState:&v23 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v24;
        do
        {
          for (k = 0; k != v20; ++k)
          {
            if (*v24 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v23 + 1) + 8 * k) recursivelyPerformSelector:sel_setNeedsDisplay];
          }

          v20 = [v18 countByEnumeratingWithState:&v23 objects:v35 count:16];
        }

        while (v20);
      }
    }

    [(TSDInteractiveCanvasController *)self invalidateReps];
  }
}

- (void)setAllowLayoutAndRenderOnThread:(BOOL)a3
{
  v3 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController setAllowLayoutAndRenderOnThread:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 1801, @"should only en/disable layoutAndRenderOnThreadDuringScroll from the MT"}];
  }

  if (self->mLayoutAndRenderOnThreadDuringScroll != v3)
  {
    if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender)
    {
      [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
    }

    self->mLayoutAndRenderOnThreadDuringScroll = v3;
  }
}

- (void)setStaticLayoutAndRenderOnThread:(BOOL)a3
{
  if (self->mStaticLayoutAndRenderOnThread != a3)
  {
    if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender)
    {
      [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
    }

    self->mStaticLayoutAndRenderOnThread = a3;
  }
}

- (BOOL)p_currentlyScrollingIncludeEmbeddedCanvasScrolling:(BOOL)a3
{
  if (self->mCurrentlyScrolling || a3 && self->mEmbeddedCanvasScrolling)
  {
    return 1;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasControllerIsRelatedCanvasScrolling:self];
}

- (void)setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:(BOOL)a3
{
  if (a3)
  {
    [(TSDTextInputResponder *)self->mTextInputResponder clearEditorAndResignFirstResponder];
    v4 = 1;
  }

  else
  {
    v5 = [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] textInputEditor];
    if ([v5 conformsToProtocol:&unk_287E358C8])
    {
      [(TSDTextInputResponder *)self->mTextInputResponder setEditor:v5];
    }

    v4 = 0;
  }

  self->mSuppressingKeyboard = v4;
}

- (void)reuseTextInputResponderFrom:(id)a3
{
  if (!*(a3 + 14))
  {
    *(a3 + 14) = [objc_alloc(TSDTextInputResponderClass()) initWithNextResponder:{objc_msgSend(objc_msgSend(a3, "layerHost"), "canvasView")}];
  }

  if ([(TSDTextInputResponder *)self->mTextInputResponder isFirstResponder])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController reuseTextInputResponderFrom:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 1888, @"Unexpected -reuseTextInputResponderFrom: when first responder."}];
  }

  if ([(TSDTextInputResponder *)self->mTextInputResponder isFirstResponder])
  {
    [*(a3 + 14) setEditor:{-[TSDTextInputResponder editor](self->mTextInputResponder, "editor")}];
    [*(a3 + 14) cancelDelayedResponderChange];
    [*(a3 + 14) becomeFirstResponder];
  }

  self->mTextInputResponder = *(a3 + 14);
  self->mTextInputResponderSource = a3;
  ++*(a3 + 16);
}

- (void)resumeEditing
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController resumeEditing]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 1905, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDInteractiveCanvasController resumeEditing]"), 0}]);
}

- (void)p_editorControllerDidChangeTextInputEditor:(id)a3
{
  v4 = __77__TSDInteractiveCanvasController_p_editorControllerDidChangeTextInputEditor___block_invoke;
  v5 = &unk_279D47708;
  v6 = a3;
  v7 = self;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4(&v3);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], &v3);
  }
}

uint64_t __77__TSDInteractiveCanvasController_p_editorControllerDidChangeTextInputEditor___block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "object")];
  v2 = TSUProtocolCast();
  if (v2 && !*(*(a1 + 40) + 112))
  {
    *(*(a1 + 40) + 112) = [objc_alloc(TSDTextInputResponderClass()) initWithNextResponder:{objc_msgSend(objc_msgSend(*(a1 + 40), "layerHost"), "canvasView")}];
  }

  v3 = *(a1 + 40);

  return [v3 p_maybeSetTextResponderEditorTo:v2];
}

- (BOOL)p_shouldSuppressAutozoomForEditor:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasControllerSupportsAutozoom:self]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a3 suppressAutozoom];
}

- (void)p_editorControllerSelectionDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"TSDEditorControllerEditorKey"];
  v6 = [objc_msgSend(v4 objectForKey:{@"TSDEditorControllerSelectionFlagsKey", "unsignedIntegerValue"}];
  [(TSDInteractiveCanvasController *)self p_editorDidChangeSelection:v5 withSelectionFlags:v6];
  if (!self->mTextGesturesInFlight)
  {
    [(TSDInteractiveCanvasController *)self p_editorDoneChangingSelection:v5 withFlags:v6];
    if ((v6 & 0x40) != 0 && !self->mShouldAutoscrollToSelectionAfterLayout)
    {
      self->mShouldAnimateAutoscroll = (v6 & 0x10) != 0;

      [(TSDInteractiveCanvasController *)self scrollToPrimarySelectionForEditor:v5];
    }
  }
}

- (void)p_editorControllerSelectionDidChangeAndWantsKeyboard:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"TSDEditorControllerEditorKey"];
  -[TSDInteractiveCanvasController p_editorDidChangeSelection:withSelectionFlags:](self, "p_editorDidChangeSelection:withSelectionFlags:", v5, [objc_msgSend(v4 objectForKey:{@"TSDEditorControllerSelectionFlagsKey", "unsignedIntegerValue"}]);

  [(TSDInteractiveCanvasController *)self p_editorDoneChangingSelection:v5];
}

- (TSDCanvasView)canvasView
{
  v2 = [(TSDInteractiveCanvasController *)self layerHost];

  return [(TSDCanvasLayerHosting *)v2 canvasView];
}

- (BOOL)canvasViewShouldBecomeFirstResponder:(id)a3
{
  [(TSDInteractiveCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = [(TSDInteractiveCanvasController *)self delegate];
  v5 = [(TSDInteractiveCanvasController *)self canvasView];

  return [(TSDInteractiveCanvasControllerDelegate *)v4 interactiveCanvasController:self canvasViewShouldBecomeFirstResponder:v5];
}

- (TSDCanvasLayer)canvasLayer
{
  v2 = [(TSDInteractiveCanvasController *)self layerHost];

  return [(TSDCanvasLayerHosting *)v2 canvasLayer];
}

- (double)viewScale
{
  v2 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [v2 viewScale];
  return result;
}

- (void)setViewScale:(double)a3
{
  v4 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [v4 setViewScale:a3];
}

- (double)currentViewScale
{
  if (self->mDynamicallyZooming)
  {
    return self->mDynamicViewScale;
  }

  v5 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [v5 viewScale];
  return result;
}

- (double)fitWidthViewScale
{
  v3 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  [(TSDInteractiveCanvasController *)self visibleBoundsRect];
  [(TSDCanvas *)self->mCanvas unscaledSize];
  [v3 minimumPinchViewScale];
  [v3 maximumPinchViewScale];

  TSUClamp();
  return result;
}

- (CGSize)canvasScrollingOutset
{
  v2 = 600.0;
  v3 = 600.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)shouldResizeCanvasToScrollView
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDInteractiveCanvasControllerDelegate *)mDelegate shouldResizeCanvasToScrollView];
}

- (CGRect)canvasViewBoundsWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self canvasViewBoundsWithBounds:x, y, width, height];
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 clampOffset:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a5;
  y = a4.y;
  x = a4.x;
  v11 = 0.0;
  if (a6)
  {
    if (objc_opt_respondsToSelector())
    {
      [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate autoZoomAnimationDurationForInteractiveCanvasController:self];
      v11 = v12;
    }

    else
    {
      v11 = 0.300000012;
    }
  }

  [(TSDInteractiveCanvasController *)self setViewScale:v6 contentOffset:0 clampOffset:a3 animationDuration:x completion:y, v11];
}

- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 clampOffset:(BOOL)a5 animationDuration:(double)a6 forceAnimation:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  x = a4.x;
  if (a5)
  {
    [(TSDInteractiveCanvasController *)self clampedUnscaledContentOffset:a4.x forViewScale:a4.y, a3];
    x = v14;
    a4.y = v15;
  }

  if (a6 == 0.0)
  {
    [(TSDInteractiveCanvasController *)self p_applyViewScale:a3 andContentOffset:x, a4.y];
    if (a8)
    {
      v16 = *(a8 + 2);

      v16(a8, 1);
    }
  }

  else
  {

    [(TSDInteractiveCanvasController *)self animateToViewScale:v9 contentOffset:a8 duration:a3 forceAnimation:x completion:a4.y, a6];
  }
}

- (CGPoint)clampedUnscaledContentOffset:(CGPoint)a3 forViewScale:(double)a4
{
  y = a3.y;
  x = a3.x;
  [-[TSDCanvasLayerHosting clippingLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];

  [(TSDInteractiveCanvasController *)self clampedUnscaledContentOffset:x forViewScale:y scrollViewBoundsSize:a4, v8, v9];
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)clampedUnscaledContentOffset:(CGPoint)a3 forViewScale:(double)a4 scrollViewBoundsSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  TSDMultiplySizeScalar(width, height, 1.0 / a4);
  [v9 unscaledSize];
  [v9 contentInset];
  TSUClamp();
  v11 = v10;
  TSUClamp();
  v13 = v12;
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self clampContentOffset:TSDMultiplyPointScalar(v11 forViewScale:v13 scrollViewBoundsSize:a4)];
LABEL_5:
    v11 = TSDMultiplyPointScalar(v14, v15, 1.0 / a4);
    v13 = v16;
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self clampContentOffset:TSDMultiplyPointScalar(v11 forViewScale:v13, a4)];
    goto LABEL_5;
  }

LABEL_6:
  v17 = v11;
  v18 = v13;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)setViewScale:(double)a3 andScrollViewFrame:(CGRect)a4 maintainPosition:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [v13 setViewScale:v7 andScrollViewFrame:v6 maintainPosition:a3 animated:{x, y, width, height}];
}

- (void)setViewScale:(double)a3 andScrollViewFrame:(CGRect)a4 animated:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(TSDInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)self delegate] interactiveCanvasControllerShouldMaintainPositionOnSetViewScale:self];
  }

  else
  {
    v12 = 1;
  }

  v13 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [v13 setViewScale:v12 andScrollViewFrame:v5 maintainPosition:a3 animated:{x, y, width, height}];
}

- (CGRect)unobscuredFrameOfView:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController unobscuredFrameOfView:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2159, @"Cannot calculate unobscured frame without view"}];
  }

  [a3 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [MEMORY[0x277CBEB18] array];
  [(TSDInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v15 addObjectsFromArray:{-[TSDInteractiveCanvasControllerDelegate rectanglesObscuringView:](-[TSDInteractiveCanvasController delegate](self, "delegate"), "rectanglesObscuringView:", a3)}];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v31 + 1) + 8 * i) CGRectValue];
        v8 = TSDRectSubtractingRect(v8, v10, v12, v14, v20, v21, v22, v23);
        v10 = v24;
        v12 = v25;
        v14 = v26;
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }

  v27 = v8;
  v28 = v10;
  v29 = v12;
  v30 = v14;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)unobscuredFrameDidChange
{
  v3 = [(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView];
  if (v3)
  {
    v4 = v3;
    [(TSDInteractiveCanvasController *)self unobscuredFrameOfView:v3];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(TSDInteractiveCanvasController *)self setUnobscuredScrollViewFrame:?];
    if ([(TSDInteractiveCanvasController *)self wantsUpdatedScrollIndicatorInsets])
    {
      [(TSKScrollView *)v4 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v30.origin.x = v6;
      v30.origin.y = v8;
      v30.size.width = v10;
      v30.size.height = v12;
      MinY = CGRectGetMinY(v30);
      v31.origin.x = v14;
      v31.origin.y = v16;
      v31.size.width = v18;
      v31.size.height = v20;
      v28 = MinY - CGRectGetMinY(v31);
      v32.origin.x = v6;
      v32.origin.y = v8;
      v32.size.width = v10;
      v32.size.height = v12;
      MinX = CGRectGetMinX(v32);
      v33.origin.x = v14;
      v33.origin.y = v16;
      v33.size.width = v18;
      v33.size.height = v20;
      v26 = MinX - CGRectGetMinX(v33);
      v34.origin.x = v14;
      v34.origin.y = v16;
      v34.size.width = v18;
      v34.size.height = v20;
      MaxY = CGRectGetMaxY(v34);
      v35.origin.x = v6;
      v35.origin.y = v8;
      v35.size.width = v10;
      v35.size.height = v12;
      v24 = MaxY - CGRectGetMaxY(v35);
      v36.origin.x = v14;
      v36.origin.y = v16;
      v36.size.width = v18;
      v36.size.height = v20;
      MaxX = CGRectGetMaxX(v36);
      v37.origin.x = v6;
      v37.origin.y = v8;
      v37.size.width = v10;
      v37.size.height = v12;
      v22 = MaxX - CGRectGetMaxX(v37);
      [(TSKScrollView *)v4 setContentInset:v28, v26, v24, v22];

      [(TSKScrollView *)v4 setScrollIndicatorInsets:v28, v26, v24, v22];
    }
  }
}

- (CGRect)unobscuredScrollViewFrame
{
  if (CGRectEqualToRect(self->mUnobscuredScrollViewFrame, *MEMORY[0x277CBF3A0]))
  {
    [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] frame];
  }

  else
  {
    x = self->mUnobscuredScrollViewFrame.origin.x;
    y = self->mUnobscuredScrollViewFrame.origin.y;
    width = self->mUnobscuredScrollViewFrame.size.width;
    height = self->mUnobscuredScrollViewFrame.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  [v6 contentInset];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (v9 == 0.0 && v7 == 0.0)
  {
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
  }

  else
  {
    [v6 bounds];
    v18 = v17;
    [(TSDInteractiveCanvasController *)self viewScale];
    v15 = v18 / v19;
    [v6 bounds];
    v21 = v20;
    [(TSDInteractiveCanvasController *)self viewScale];
    v16 = v21 / v22;
  }

  [v6 unscaledSize];
  v24 = v23;
  v26 = v25;
  [(TSDInteractiveCanvasController *)self viewScale];
  v28 = v26 - (v8 + v12) / v27;
  [(TSDInteractiveCanvasController *)self viewScale];
  v168.size.width = v24 - (v10 + v14) / v29;
  v168.origin.x = v15;
  v168.origin.y = v16;
  v168.size.height = v28;
  v123 = CGRectIntersection(a3, v168);
  x = v123.origin.x;
  y = v123.origin.y;
  width = v123.size.width;
  height = v123.size.height;
  if (!CGRectIsEmpty(v123))
  {
    [(TSDInteractiveCanvasController *)self convertUnscaledToBoundsRect:x, y, width, height];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasView];
    v43 = [v42 enclosingScrollView];
    [v42 convertRect:objc_msgSend(v43 toView:{"contentView"), v35, v37, v39, v41}];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] contentsScale];
    v113 = TSDRoundedRectForScale(v45, v47, v49, v51, v52);
    v54 = v53;
    v56 = v55;
    v117 = v57;
    if (v4)
    {
      if (objc_opt_respondsToSelector())
      {
        [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate autoZoomAnimationDurationForInteractiveCanvasController:self];
        v4 = v58 > 0.0;
      }

      else
      {
        v4 = 1;
      }
    }

    [(TSDInteractiveCanvasController *)self unobscuredScrollViewFrame];
    [objc_msgSend(v43 "contentView")];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    [v43 contentOffset];
    v116 = v71;
    v111 = v72;
    v124.origin.x = v64;
    v124.origin.y = v66;
    v124.size.width = v68;
    v124.size.height = v70;
    MaxX = CGRectGetMaxX(v124);
    v74 = v113;
    v125.origin.x = v113;
    v125.origin.y = v54;
    v125.size.width = v56;
    v125.size.height = v117;
    v112 = v64;
    if (MaxX <= CGRectGetMaxX(v125) || (v126.origin.x = v64, v126.origin.y = v66, v126.size.width = v68, v126.size.height = v70, v75 = CGRectGetMinX(v126), v127.origin.x = v113, v127.origin.y = v54, v127.size.width = v56, v127.size.height = v117, v75 <= CGRectGetMinX(v127)))
    {
      v133.origin.x = v64;
      v133.origin.y = v66;
      v133.size.width = v68;
      v133.size.height = v70;
      MinX = CGRectGetMinX(v133);
      v134.origin.x = v113;
      v134.origin.y = v54;
      v134.size.width = v56;
      v134.size.height = v117;
      if (MinX >= CGRectGetMinX(v134))
      {
        v83 = v56;
      }

      else
      {
        v135.origin.x = v64;
        v135.origin.y = v66;
        v135.size.width = v68;
        v135.size.height = v70;
        v82 = CGRectGetMaxX(v135);
        v136.origin.x = v113;
        v136.origin.y = v54;
        v83 = v56;
        v136.size.width = v56;
        v136.size.height = v117;
        if (v82 < CGRectGetMaxX(v136))
        {
          v137.origin.x = v113;
          v137.origin.y = v54;
          v137.size.width = v56;
          v137.size.height = v117;
          v109 = CGRectGetMinX(v137);
          v138.origin.x = v112;
          v138.origin.y = v66;
          v138.size.width = v68;
          v138.size.height = v70;
          v110 = v109 - CGRectGetMinX(v138);
          v139.origin.x = v113;
          v139.origin.y = v54;
          v139.size.width = v56;
          v139.size.height = v117;
          v84 = CGRectGetMaxX(v139);
          v140.origin.x = v112;
          v140.origin.y = v66;
          v140.size.width = v68;
          v140.size.height = v70;
          v76 = v110 < v84 - CGRectGetMaxX(v140);
          v85 = v113;
          v86 = v54;
          v87 = v56;
          v91 = v117;
          if (v76)
          {
            v92 = CGRectGetMinX(*&v85);
            v141.origin.x = v112;
            v141.size.height = v70;
            v93 = v66;
            v141.origin.y = v66;
            v141.size.width = v68;
            v94 = CGRectGetMinX(v141);
          }

          else
          {
            v92 = CGRectGetMaxX(*&v85);
            v143.origin.x = v112;
            v143.size.height = v70;
            v93 = v66;
            v143.origin.y = v66;
            v143.size.width = v68;
            v94 = CGRectGetMaxX(v143);
          }

          v74 = v113;
          v116 = v116 + v92 - v94;
          v83 = v56;
          v66 = v93;
        }
      }
    }

    else
    {
      v128.origin.x = v64;
      v128.origin.y = v66;
      v128.size.width = v68;
      v128.size.height = v70;
      v107 = CGRectGetMaxX(v128);
      v129.origin.x = v113;
      v129.origin.y = v54;
      v129.size.width = v56;
      v129.size.height = v117;
      v108 = v107 - CGRectGetMaxX(v129);
      v130.origin.x = v64;
      v130.origin.y = v66;
      v130.size.width = v68;
      v130.size.height = v70;
      v106 = CGRectGetMinX(v130);
      v131.origin.x = v113;
      v131.origin.y = v54;
      v131.size.width = v56;
      v131.size.height = v117;
      v76 = v108 < v106 - CGRectGetMinX(v131);
      v77 = v64;
      v78 = v66;
      v79 = v68;
      v80 = v70;
      if (v76)
      {
        v88 = CGRectGetMaxX(*&v77);
        v132.origin.x = v113;
        v132.origin.y = v54;
        v132.size.width = v56;
        v89 = v56;
        v132.size.height = v117;
        v90 = CGRectGetMaxX(v132);
      }

      else
      {
        v88 = CGRectGetMinX(*&v77);
        v142.origin.x = v113;
        v142.origin.y = v54;
        v142.size.width = v56;
        v89 = v56;
        v142.size.height = v117;
        v90 = CGRectGetMinX(v142);
      }

      v74 = v113;
      v116 = v116 - (v88 - v90);
      v83 = v89;
    }

    v144.origin.x = v112;
    v144.origin.y = v66;
    v144.size.width = v68;
    v144.size.height = v70;
    MaxY = CGRectGetMaxY(v144);
    v145.origin.x = v74;
    v145.origin.y = v54;
    v145.size.width = v83;
    v145.size.height = v117;
    if (MaxY <= CGRectGetMaxY(v145) || (v146.origin.x = v112, v146.origin.y = v66, v146.size.width = v68, v146.size.height = v70, v96 = CGRectGetMinY(v146), v147.origin.x = v74, v147.origin.y = v54, v147.size.width = v83, v147.size.height = v117, v96 <= CGRectGetMinY(v147)))
    {
      v154.origin.x = v112;
      v154.origin.y = v66;
      v154.size.width = v68;
      v154.size.height = v70;
      MinY = CGRectGetMinY(v154);
      v155.origin.x = v74;
      v155.origin.y = v54;
      v155.size.width = v83;
      v155.size.height = v117;
      if (MinY >= CGRectGetMinY(v155))
      {
        v103 = v111;
      }

      else
      {
        v156.origin.x = v112;
        v156.origin.y = v66;
        v156.size.width = v68;
        v156.size.height = v70;
        v101 = CGRectGetMaxY(v156);
        v157.origin.x = v74;
        v157.origin.y = v54;
        v157.size.width = v83;
        v157.size.height = v117;
        v102 = CGRectGetMaxY(v157);
        v103 = v111;
        if (v101 < v102)
        {
          v158.origin.x = v74;
          v158.origin.y = v54;
          v158.size.width = v83;
          v158.size.height = v117;
          rectb = CGRectGetMinY(v158);
          v159.origin.x = v112;
          v159.origin.y = v66;
          v159.size.width = v68;
          v159.size.height = v70;
          rectc = rectb - CGRectGetMinY(v159);
          v160.origin.x = v74;
          v160.origin.y = v54;
          v160.size.width = v83;
          v160.size.height = v117;
          v114 = CGRectGetMaxY(v160);
          v161.origin.x = v112;
          v161.origin.y = v66;
          v161.size.width = v68;
          v161.size.height = v70;
          if (rectc >= v114 - CGRectGetMaxY(v161))
          {
            v166.origin.x = v74;
            v166.origin.y = v54;
            v166.size.width = v83;
            v166.size.height = v117;
            v104 = CGRectGetMaxY(v166);
            v167.origin.x = v112;
            v167.origin.y = v66;
            v167.size.width = v68;
            v167.size.height = v70;
            v105 = CGRectGetMaxY(v167);
          }

          else
          {
            v162.origin.x = v74;
            v162.origin.y = v54;
            v162.size.width = v83;
            v162.size.height = v117;
            v104 = CGRectGetMinY(v162);
            v163.origin.x = v112;
            v163.origin.y = v66;
            v163.size.width = v68;
            v163.size.height = v70;
            v105 = CGRectGetMinY(v163);
          }

          v103 = v111 + v104 - v105;
        }
      }
    }

    else
    {
      v148.origin.x = v112;
      v148.origin.y = v66;
      v148.size.width = v68;
      v148.size.height = v70;
      rect = CGRectGetMaxY(v148);
      v149.origin.x = v74;
      v149.origin.y = v54;
      v149.size.width = v83;
      v149.size.height = v117;
      recta = rect - CGRectGetMaxY(v149);
      v150.origin.x = v112;
      v150.origin.y = v66;
      v150.size.width = v68;
      v150.size.height = v70;
      v97 = CGRectGetMinY(v150);
      v151.origin.x = v74;
      v151.origin.y = v54;
      v151.size.width = v83;
      v151.size.height = v117;
      if (recta >= v97 - CGRectGetMinY(v151))
      {
        v164.origin.x = v112;
        v164.origin.y = v66;
        v164.size.width = v68;
        v164.size.height = v70;
        v98 = CGRectGetMinY(v164);
        v165.origin.x = v74;
        v165.origin.y = v54;
        v165.size.width = v83;
        v165.size.height = v117;
        v99 = CGRectGetMinY(v165);
      }

      else
      {
        v152.origin.x = v112;
        v152.origin.y = v66;
        v152.size.width = v68;
        v152.size.height = v70;
        v98 = CGRectGetMaxY(v152);
        v153.origin.x = v74;
        v153.origin.y = v54;
        v153.size.width = v83;
        v153.size.height = v117;
        v99 = CGRectGetMaxY(v153);
      }

      v103 = v111 - (v98 - v99);
    }

    [v43 setContentOffset:v4 animated:{v116, v103}];
  }
}

- (void)scrollRectToVisibleCenter:(CGRect)a3 animated:(BOOL)a4 onlyScrollNecessaryAxes:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TSDInteractiveCanvasController *)self visibleUnscaledRectForScrollingAutomatically];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v42 = v18;
  [(TSDInteractiveCanvasController *)self visibleUnscaledRect];
  v41 = v19;
  v39 = v20;
  v40 = TSDSubtractPoints(v13, v15, v21);
  v38 = v22;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  MinY = CGRectGetMinY(v46);
  v47.origin.x = v13;
  v47.origin.y = v15;
  v47.size.width = v17;
  v47.size.height = v42;
  if (MinY >= CGRectGetMinY(v47))
  {
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    MaxY = CGRectGetMaxY(v48);
    v49.origin.x = v13;
    v49.origin.y = v15;
    v49.size.width = v17;
    v49.size.height = v42;
    v24 = MaxY > CGRectGetMaxY(v49);
  }

  else
  {
    v24 = 1;
  }

  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MinX = CGRectGetMinX(v50);
  v51.origin.x = v13;
  v51.origin.y = v15;
  v51.size.width = v17;
  v51.size.height = v42;
  v44 = width;
  v43 = x;
  if (MinX >= CGRectGetMinX(v51))
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v27 = height;
    v52.size.height = height;
    MaxX = CGRectGetMaxX(v52);
    v53.origin.x = v13;
    v53.origin.y = v15;
    v29 = v17;
    v53.size.width = v17;
    v53.size.height = v42;
    v28 = MaxX > CGRectGetMaxX(v53);
  }

  else
  {
    v27 = height;
    v28 = 1;
    v29 = v17;
  }

  v31 = !v5 && (v24 || v28);
  v32 = v31 | v28;
  if (((v31 | v24) & 1) == 0)
  {
    v36 = y;
    v34 = width;
    v33 = v43;
    if (((v31 | v28) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v33 = v43;
  v54.origin.y = y;
  v54.origin.x = v43;
  v34 = v44;
  v54.size.width = v44;
  v54.size.height = v27;
  MidY = CGRectGetMidY(v54);
  v27 = v39;
  v36 = MidY + v42 * -0.5 - v38;
  if (v32)
  {
LABEL_11:
    v55.origin.x = v33;
    v55.origin.y = v36;
    v55.size.width = v34;
    v55.size.height = v27;
    MidX = CGRectGetMidX(v55);
    v34 = v41;
    v33 = MidX + v29 * -0.5 - v40;
  }

LABEL_12:

  [(TSDInteractiveCanvasController *)self scrollRectToVisible:v6 animated:v33, v36, v34, v27];
}

- (void)scrollRectToVisibleWithSelectionOutset:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(TSDInteractiveCanvasController *)self p_outsetSelectionRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [(TSDInteractiveCanvasController *)self scrollRectToVisible:v4 animated:?];
}

- (void)setContentOffset:(CGPoint)a3 clamp:(BOOL)a4 animated:(BOOL)a5 completionBlock:(id)a6
{
  v7 = a5;
  y = a3.y;
  x = a3.x;
  if (a4)
  {
    [(TSDInteractiveCanvasController *)self viewScale];
    [(TSDInteractiveCanvasController *)self clampedUnscaledContentOffset:x forViewScale:y, v11];
    x = v12;
    y = v13;
  }

  [(TSDInteractiveCanvasController *)self convertUnscaledToBoundsPoint:x, y];
  v15 = v14;
  v17 = v16;
  v18 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasView];
  v19 = [v18 enclosingScrollView];
  [v18 convertPoint:v19 toView:{v15, v17}];

  [v19 setContentOffset:v7 animated:a6 completionBlock:?];
}

- (CGPoint)contentOffset
{
  v3 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasView];
  v4 = [v3 enclosingScrollView];
  if (v4)
  {
    v5 = v4;
    [v4 contentOffset];
    [v5 convertPoint:v3 toView:?];
    [(TSDInteractiveCanvasController *)self convertBoundsToUnscaledPoint:?];
  }

  else
  {
    v6 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (double)viewScaleForZoomToFitRect:(CGRect)a3 outset:(BOOL)a4 fitWidthOnly:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    [(TSDInteractiveCanvasController *)self p_outsetSelectionRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  [(TSDInteractiveCanvasController *)self viewScale];
  v15 = v14;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (CGRectIsNull(v18))
  {
    return v15;
  }

  [(TSDInteractiveCanvasController *)self visibleBoundsRect];
  [(TSDCanvasLayer *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] canvasLayer] minimumPinchViewScale];
  [(TSDCanvasLayer *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] canvasLayer] maximumPinchViewScale];

  TSUClamp();
  return result;
}

- (BOOL)zoomToFitRect:(CGRect)a3 outset:(BOOL)a4 fitWidthOnly:(BOOL)a5 centerHorizontally:(BOOL)a6 centerVertically:(BOOL)a7 animated:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    [(TSDInteractiveCanvasController *)self p_outsetSelectionRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  else
  {
    v25 = a3.size.height;
    v23 = a3.size.width;
    v21 = a3.origin.y;
    v19 = a3.origin.x;
  }

  if (self->mAnimatingViewScale)
  {
    return 0;
  }

  v55.origin.x = v19;
  v55.origin.y = v21;
  v55.size.width = v23;
  v55.size.height = v25;
  if (CGRectIsNull(v55))
  {
    return 0;
  }

  [(TSDInteractiveCanvasController *)self visibleBoundsRect];
  v54 = v26;
  v52 = v28;
  v53 = v27;
  [(TSDInteractiveCanvasController *)self viewScaleForZoomToFitRect:v12 outset:v11 fitWidthOnly:x, y, width, height];
  v30 = v29;
  v31 = v52 / v29;
  v32 = v19 - (v53 / v29 - v23) * 0.5;
  v33 = v10 ? v32 : v19;
  v34 = v9 ? v21 - (v31 - v25) * 0.5 : v21;
  v35 = [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] layer];
  [v35 bounds];
  [v35 convertRect:-[TSDCanvasView layer](-[TSDInteractiveCanvasController canvasView](self toLayer:{"canvasView"), "layer"), v36, v37, v38, v39}];
  v42 = TSDSubtractPoints(v40, v41, v54);
  v44 = TSDMultiplyPointScalar(v42, v43, 1.0 / v30);
  [(TSDInteractiveCanvasController *)self clampedUnscaledContentOffset:TSDAddPoints(v33 forViewScale:v34, v44)];
  v46 = v45;
  v48 = v47;
  [(TSDCanvasLayer *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] canvasLayer] viewScale];
  if (vabdd_f64(v49, v30) < 0.00999999978)
  {
    return 0;
  }

  v50 = 1;
  [(TSDInteractiveCanvasController *)self setViewScale:1 contentOffset:v8 clampOffset:v30 animated:v46, v48];
  return v50;
}

- (CGSize)sizeOfScrollViewEnclosingCanvas
{
  [objc_msgSend(-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
  v4 = v3;
  v6 = v5;
  if (![(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasView])
  {
    [-[TSDCanvasLayerHosting clippingLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
    v4 = v7;
    v6 = v8;
  }

  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate sizeOfScrollViewEnclosingCanvas];
  }

  else
  {
    v10 = v4;
    v11 = v6;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setNeedsDisplayOnLayer:(id)a3
{
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender == [MEMORY[0x277CCACC8] isMainThread])
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController setNeedsDisplayOnLayer:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2468, @"invaling on MT while waiting for secondary thread layout / render, or invaling on secondary thread when not waiting on a secondary thread layout / render"}];
  }

  [a3 setNeedsDisplay];
}

- (void)setNeedsDisplayInRect:(CGRect)a3 onLayer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender == [MEMORY[0x277CCACC8] isMainThread])
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController setNeedsDisplayInRect:onLayer:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2474, @"invaling on MT while waiting for secondary thread layout / render, or invaling on secondary thread when not waiting on a secondary thread layout / render"}];
  }

  [a4 setNeedsDisplayInRect:{x, y, width, height}];
}

- (CGColor)selectionHighlightColor
{
  result = self->mSelectionHighlightColor;
  if (!result)
  {
    result = [(TSDInteractiveCanvasController *)self newDefaultSelectionHighlightColor];
    self->mSelectionHighlightColor = result;
  }

  return result;
}

- (void)setSelectionHighlightColor:(CGColor *)a3
{
  Copy = CGColorCreateCopy(a3);
  CGColorRelease(self->mSelectionHighlightColor);
  self->mSelectionHighlightColor = Copy;

  [(TSDInteractiveCanvasController *)self i_invalidateSelectionHighlightLayers];
}

- (void)displayRulerWithSlowFade:(BOOL)a3
{
  v3 = [(TSDInteractiveCanvasController *)self rulerController];

  [(TSDRulerController *)v3 displayRulerDragUI];
}

- (void)displayRulerForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(TSDInteractiveCanvasController *)self rulerController];

  [(TSDRulerController *)v7 displayRulerDragUIForRect:x, y, width, height];
}

- (void)hideRuler
{
  v2 = [(TSDInteractiveCanvasController *)self rulerController];

  [(TSDRulerController *)v2 hideRulerDragUI];
}

- (id)replaceImageController
{
  [(TSDInteractiveCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(TSDInteractiveCanvasController *)self delegate];

  return [(TSDInteractiveCanvasControllerDelegate *)v3 imageReplacerForInteractiveCanvasController:self];
}

- (CGImage)textImageFromRect:(CGRect)a3
{
  v3 = [MEMORY[0x277D6C2F8] imageWithSize:&__block_literal_global_22 drawnUsingBlock:{a3.size.width, a3.size.height}];

  return [v3 CGImage];
}

- (BOOL)spellCheckingSupported
{
  v3 = [(TSDInteractiveCanvasController *)self isCanvasInteractive];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      mDelegate = self->mDelegate;

      LOBYTE(v3) = [(TSDInteractiveCanvasControllerDelegate *)mDelegate spellCheckingSupported];
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)spellCheckingSuppressed
{
  v3 = ![(TSDInteractiveCanvasController *)self spellCheckingSupported];
  if (v3)
  {
    return 1;
  }

  if (objc_opt_respondsToSelector())
  {
    return [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate spellCheckingSuppressed]| v3;
  }

  return 0;
}

- (BOOL)isCanvasInteractive
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDInteractiveCanvasControllerDelegate *)mDelegate isCanvasInteractive];
}

- (BOOL)isPrinting
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDInteractiveCanvasControllerDelegate *)mDelegate isPrintingCanvas];
}

- (BOOL)shouldShowTextOverflowGlyphs
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  mDelegate = self->mDelegate;

  return [(TSDInteractiveCanvasControllerDelegate *)mDelegate shouldShowTextOverflowGlyphs];
}

- (BOOL)shouldShowInstructionalText
{
  if (self->mDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    mDelegate = self->mDelegate;

    return [(TSDInteractiveCanvasControllerDelegate *)mDelegate shouldShowInstructionalText];
  }

  else
  {

    return [(TSDInteractiveCanvasController *)self isCanvasInteractive];
  }
}

- (void)pushThreadedLayoutAndRenderDisabled
{
  mDisableThreadedLayoutAndRender = self->mDisableThreadedLayoutAndRender;
  if (!mDisableThreadedLayoutAndRender)
  {
    if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender)
    {
      [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
      mDisableThreadedLayoutAndRender = self->mDisableThreadedLayoutAndRender;
    }

    else
    {
      mDisableThreadedLayoutAndRender = 0;
    }
  }

  self->mDisableThreadedLayoutAndRender = mDisableThreadedLayoutAndRender + 1;
}

- (void)popThreadedLayoutAndRenderDisabled
{
  mDisableThreadedLayoutAndRender = self->mDisableThreadedLayoutAndRender;
  if (mDisableThreadedLayoutAndRender || (v4 = [MEMORY[0x277D6C290] currentHandler], v5 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSDInteractiveCanvasController popThreadedLayoutAndRenderDisabled]"), objc_msgSend(v4, "handleFailureInFunction:file:lineNumber:description:", v5, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2633, @"unbalanced calls to push/popThreadedLayoutAndRenderDisabled"), (mDisableThreadedLayoutAndRender = self->mDisableThreadedLayoutAndRender) != 0))
  {
    self->mDisableThreadedLayoutAndRender = mDisableThreadedLayoutAndRender - 1;
  }
}

- (void)embeddedCanvasWillBeginScrolling
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController embeddedCanvasWillBeginScrolling]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2643, @"This operation must only be performed on the main thread."}];
  }

  ++self->mEmbeddedCanvasScrolling;
}

- (void)embeddedCanvasDidEndScrolling
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController embeddedCanvasDidEndScrolling]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2649, @"This operation must only be performed on the main thread."}];
  }

  mEmbeddedCanvasScrolling = self->mEmbeddedCanvasScrolling;
  if (mEmbeddedCanvasScrolling)
  {
    self->mEmbeddedCanvasScrolling = mEmbeddedCanvasScrolling - 1;
  }
}

- (void)forceStopScrolling
{
  mCurrentlyScrolling = self->mCurrentlyScrolling;
  if (mCurrentlyScrolling)
  {
    objc_opt_class();
    [-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
    v4 = TSUDynamicCast();
    [(TSDInteractiveCanvasController *)self contentOffset];
    [v4 setContentOffset:?];
    mCurrentlyScrolling = self->mCurrentlyScrolling;
  }

  if (mCurrentlyScrolling)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController forceStopScrolling]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2665, @"scroll view should no longer be scrolling"}];
  }

  [(TSDInteractiveCanvasController *)self layoutIfNeeded];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_i_viewScrollingEnded object:0];

  [(TSDInteractiveCanvasController *)self i_viewScrollingEnded];
}

- (void)toggleShouldShowUserDefinedGuides
{
  v3 = [(TSDInteractiveCanvasController *)self shouldShowUserDefinedGuides]^ 1;

  [(TSDInteractiveCanvasController *)self setShouldShowUserDefinedGuides:v3];
}

- (CGRect)boundingRectForActiveGuidesForRect:(CGRect)a3
{
  v3 = *MEMORY[0x277CBF390];
  v4 = *(MEMORY[0x277CBF390] + 8);
  v5 = *(MEMORY[0x277CBF390] + 16);
  v6 = *(MEMORY[0x277CBF390] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setInfosToDisplay:(id)a3
{
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender)
  {
    if ([(TSDInteractiveCanvasController *)self p_currentlyScrolling])
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController setInfosToDisplay:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2762, @"this will probably cause a hiccup"}];
    }

    [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
  }

  v7 = [(TSDInteractiveCanvasController *)self p_shouldLayoutAndRenderOnThread];
  if (!v7 && self->mStaticLayoutAndRenderOnThread && self->mDisableThreadedLayoutAndRender <= 0 && [(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] window])
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController setInfosToDisplay:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2768, @"we want to do a static layout+render on the BG thread, but threaded layout+render is disabled"}];
  }

  [(TSDCanvas *)self->mCanvas i_setInfosToDisplay:a3 updatingLayoutController:0];
  [(TSDCanvasEditor *)self->mCanvasEditor canvasInfosDidChange];
  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__TSDInteractiveCanvasController_setInfosToDisplay___block_invoke;
    v11[3] = &unk_279D46770;
    v11[4] = self;
    [(TSDInteractiveCanvasController *)self p_acquireLockAndPerformAction:v11];
    [-[TSDInteractiveCanvasController p_backgroundLayoutAndRenderState](self "p_backgroundLayoutAndRenderState")];
  }

  else
  {
    mCanvas = self->mCanvas;

    [(TSDCanvas *)mCanvas i_updateInfosInLayoutController];
  }
}

- (id)topLevelZOrderedSiblingsOfInfos:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) parentInfo];
        if (v6)
        {
          if (v9 != v6)
          {
            v10 = [MEMORY[0x277D6C290] currentHandler];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController topLevelZOrderedSiblingsOfInfos:]"];
            [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2802, @"Infos supplied to topLevelZOrderedSiblingsOfInfos: should have same parent."}];
          }
        }

        else
        {
          v6 = v9;
        }
      }

      v5 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return [v6 childInfos];
}

- (id)repsForInfo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(TSDInteractiveCanvasController *)self layoutsForInfo:a3];
  if (v6)
  {
    v7 = v6;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(TSDInteractiveCanvasController *)self repForLayout:*(*(&v14 + 1) + 8 * v11)];
          if (v12)
          {
            [v5 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v5;
}

- (id)repForInfo:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v7 = [(TSDInteractiveCanvasController *)self layoutForInfo:?];
  v8 = v7;
  if (!v7)
  {
    v8 = 0;
    if (v4)
    {
      [(TSDInteractiveCanvasController *)self i_layout];
      v8 = [(TSDInteractiveCanvasController *)self layoutForInfo:a3];
    }
  }

  result = [(TSDInteractiveCanvasController *)self repForLayout:v8];
  if (result)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v4;
  }

  if (v7 && (v10 & 1) == 0)
  {
    [(TSDInteractiveCanvasController *)self i_layout];
    result = [(TSDInteractiveCanvasController *)self repForLayout:v8];
  }

  if (!result)
  {
    v11 = [(TSDInteractiveCanvasController *)self layoutsForInfo:a3];
    v12 = [MEMORY[0x277CBEB18] arrayWithArray:{objc_msgSend(v11, "allObjects")}];
    [v12 sortUsingSelector:sel_orderedBefore_];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v13 = [v12 reverseObjectEnumerator];
    result = [v13 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (result)
    {
      v14 = result;
      v15 = *v18;
LABEL_14:
      v16 = 0;
      while (1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v13);
        }

        result = [(TSDInteractiveCanvasController *)self repForLayout:*(*(&v17 + 1) + 8 * v16)];
        if (result)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v13 countByEnumeratingWithState:&v17 objects:v21 count:16];
          result = 0;
          if (v14)
          {
            goto LABEL_14;
          }

          return result;
        }
      }
    }
  }

  return result;
}

- (id)p_repForLayout:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  result = [(TSDCanvas *)self->mCanvas repForLayout:?];
  if (result)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    [(TSDInteractiveCanvasController *)self i_layout];
    mCanvas = self->mCanvas;

    return [(TSDCanvas *)mCanvas repForLayout:a3];
  }

  return result;
}

- (id)layerForRep:(id)a3
{
  if (![(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController layerForRep:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2902, @"asking for layerForRep: in a non-interactive canvas"}];
  }

  mRepLayersByRep = self->mRepLayersByRep;

  return CFDictionaryGetValue(mRepLayersByRep, a3);
}

- (id)containerLayerForRep:(id)a3
{
  if (![(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController containerLayerForRep:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2910, @"asking for layerForRep: in a non-interactive canvas"}];
  }

  mContainerLayersByRep = self->mContainerLayersByRep;

  return CFDictionaryGetValue(mContainerLayersByRep, a3);
}

- (id)repForLayer:(id)a3
{
  if (![(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController repForLayer:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2917, @"asking for d_repForLayer: in a non-interactive canvas"}];
  }

  mRepsByRepLayer = self->mRepsByRepLayer;

  return CFDictionaryGetValue(mRepsByRepLayer, a3);
}

- (id)repForContainerLayer:(id)a3
{
  if (![(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController repForContainerLayer:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2923, @"asking for d_repForLayer: in a non-interactive canvas"}];
  }

  mRepsByContainerLayer = self->mRepsByContainerLayer;

  return CFDictionaryGetValue(mRepsByContainerLayer, a3);
}

- (void)recreateAllLayoutsAndReps
{
  [(TSDInteractiveCanvasController *)self endEditing];
  [(TSDCanvasEditor *)self->mCanvasEditor setSelection:0];
  [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
  [(TSDCanvas *)self->mCanvas recreateAllLayoutsAndReps];
  v3 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [v3 popLayoutDisabled];
}

- (void)discardRepForClassChange:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [a3 parentRep];
    if (v6)
    {
      v7 = v6;
      if ([v6 conformsToProtocol:&unk_287E30E10])
      {
        [v7 removeChildRep:a3];
      }

      else
      {
        v10 = [MEMORY[0x277D6C290] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController discardRepForClassChange:]"];
        [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2975, @"couldn't remove rep from parent"}];
      }
    }

    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] i_unregisterRep:a3];

    [(TSDInteractiveCanvasController *)self layoutInvalidated];
  }

  else
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController discardRepForClassChange:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2963, @"invalid nil value for '%s'", "rep"}];
  }
}

- (CGRect)visibleBoundsRect
{
  [(TSDInteractiveCanvasController *)self p_visibleBoundsRectUsingSizeOfEnclosingScrollView:0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)visibleBoundsRectUsingSizeOfEnclosingScrollView
{
  [(TSDInteractiveCanvasController *)self p_visibleBoundsRectUsingSizeOfEnclosingScrollView:1];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)p_visibleBoundsRectUsingSizeOfEnclosingScrollView:(BOOL)a3
{
  v4 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] clippingLayer];
    objc_opt_class();
    [-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
    v15 = TSUDynamicCast();
    if (v14)
    {
      [v14 bounds];
    }

    else
    {
      v20 = v15;
      v21 = [v15 contentView];
      [(TSDInteractiveCanvasController *)self unobscuredScrollViewFrame];
      [v21 convertRect:objc_msgSend(v20 fromView:{"superview"), v22, v23, v24, v25}];
    }

    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    [(TSDInteractiveCanvasController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)self delegate] interactiveCanvasController:self visibleBoundsWithClippingLayerBounds:v26 canvasBounds:v27, v28, v29, v7, v9, v11, v13];
    }

    else
    {
      if (v14 && (([v14 masksToBounds] & 1) != 0 || (-[TSDInteractiveCanvasController delegate](self, "delegate"), (objc_opt_respondsToSelector() & 1) != 0) && -[TSDInteractiveCanvasControllerDelegate shouldClipToScrollViewBoundsInVisibleBounds](-[TSDInteractiveCanvasController delegate](self, "delegate"), "shouldClipToScrollViewBoundsInVisibleBounds")))
      {
        [v14 convertRect:v5 fromLayer:{v7, v9, v11, v13}];
        v59.origin.x = v26;
        v59.origin.y = v27;
        v59.size.width = v28;
        v59.size.height = v29;
        v55 = CGRectIntersection(v54, v59);
        v34 = v14;
      }

      else
      {
        [(TSDInteractiveCanvasController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v35 = [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)self delegate] visibleBoundsClipViewForInteractiveCanvasController:self];
        }

        else
        {
          v35 = [-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
        }

        v36 = [v35 layer];
        if (!v36)
        {
          goto LABEL_20;
        }

        v37 = v36;
        [v36 convertRect:v5 fromLayer:{v7, v9, v11, v13}];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;
        [v37 bounds];
        v60.origin.x = v46;
        v60.origin.y = v47;
        v60.size.width = v48;
        v60.size.height = v49;
        v56.origin.x = v39;
        v56.origin.y = v41;
        v56.size.width = v43;
        v56.size.height = v45;
        v55 = CGRectIntersection(v56, v60);
        v34 = v37;
      }

      [v34 convertRect:v5 toLayer:{v55.origin.x, v55.origin.y, v55.size.width, v55.size.height}];
    }

    v7 = v30;
    v9 = v31;
    v11 = v32;
    v13 = v33;
  }

  else
  {
    v7 = *MEMORY[0x277CBF390];
    v9 = *(MEMORY[0x277CBF390] + 8);
    v11 = *(MEMORY[0x277CBF390] + 16);
    v13 = *(MEMORY[0x277CBF390] + 24);
  }

LABEL_20:
  v57.origin.x = v7;
  v57.origin.y = v9;
  v57.size.width = v11;
  v57.size.height = v13;
  if (CGRectIsNull(v57))
  {
    v7 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v50 = v7;
  v51 = v9;
  v52 = v11;
  v53 = v13;
  result.size.height = v53;
  result.size.width = v52;
  result.origin.y = v51;
  result.origin.x = v50;
  return result;
}

- (CGRect)visibleBoundsRectClippedToWindow
{
  [(TSDInteractiveCanvasController *)self visibleBoundsRect];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  if (!CGRectIsEmpty(v30))
  {
    v7 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
    v8 = [-[TSDCanvasView window](-[TSDInteractiveCanvasController canvasView](self "canvasView")];
    if (v7)
    {
      v9 = v8;
      if (v8)
      {
        [v8 convertRect:v7 fromLayer:{x, y, width, height}];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        [v9 bounds];
        v34.origin.x = v18;
        v34.origin.y = v19;
        v34.size.width = v20;
        v34.size.height = v21;
        v31.origin.x = v11;
        v31.origin.y = v13;
        v31.size.width = v15;
        v31.size.height = v17;
        v32 = CGRectIntersection(v31, v34);
        [v9 convertRect:v7 toLayer:{v32.origin.x, v32.origin.y, v32.size.width, v32.size.height}];
        x = v22;
        y = v23;
        width = v24;
        height = v25;
      }
    }
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)visibleBoundsRectForTiling
{
  [(TSDInteractiveCanvasController *)self p_visibleBoundsRectForTiling];
  if (CGRectIsNull(v19))
  {
    [(TSDInteractiveCanvasController *)self p_calculateVisibleBoundsRectForTiling];
    [(TSDInteractiveCanvasController *)self setP_visibleBoundsRectForTiling:?];
  }

  [(TSDInteractiveCanvasController *)self p_visibleBoundsRectForTiling];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self expandVisibleBoundsForTiling:v4, v6, v8, v10];
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)p_calculateVisibleBoundsRectForTiling
{
  [(TSDInteractiveCanvasController *)self p_visibleBoundsRectUsingSizeOfEnclosingScrollView:1];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)visibleUnscaledRect
{
  [(TSDInteractiveCanvasController *)self p_visibleUnscaledRect];
  if (CGRectIsNull(v8))
  {
    [(TSDInteractiveCanvasController *)self p_calculateVisibleUnscaledRect];
    [(TSDInteractiveCanvasController *)self setP_visibleUnscaledRect:?];
  }

  [(TSDInteractiveCanvasController *)self p_visibleUnscaledRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)p_calculateVisibleUnscaledRect
{
  [(TSDInteractiveCanvasController *)self visibleBoundsRect];

  [(TSDInteractiveCanvasController *)self convertBoundsToUnscaledRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)convertUnscaledToBoundsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsInfinite(a3))
  {
    [(TSDInteractiveCanvasController *)self viewScale];
    x = TSDMultiplyRectScalar(x, y, width, height, v8);
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)convertBoundsToUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsInfinite(a3))
  {
    [(TSDInteractiveCanvasController *)self viewScale];
    x = TSDMultiplyRectScalar(x, y, width, height, 1.0 / v8);
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGPoint)convertUnscaledToBoundsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(TSDInteractiveCanvasController *)self viewScale];

  v6 = TSDMultiplyPointScalar(x, y, v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)convertBoundsToUnscaledPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(TSDInteractiveCanvasController *)self viewScale];

  v6 = TSDMultiplyPointScalar(x, y, 1.0 / v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGSize)convertUnscaledToBoundsSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(TSDInteractiveCanvasController *)self viewScale];

  v6 = TSDMultiplySizeScalar(width, height, v5);
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)convertBoundsToUnscaledSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(TSDInteractiveCanvasController *)self viewScale];

  v6 = TSDMultiplySizeScalar(width, height, 1.0 / v5);
  result.height = v7;
  result.width = v6;
  return result;
}

- (id)unitFormatter
{
  result = self->mUnitFormatter;
  if (!result)
  {
    result = [+[TSKRulerUnits instance](TSKRulerUnits "instance")];
    self->mUnitFormatter = result;
  }

  return result;
}

- (id)unitStringForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[TSKRulerUnits instance];
  v7 = [(TSDInteractiveCanvasController *)self unitFormatter];
  [v6 convertPointsToRulerUnits:x];
  v9 = v8;
  [v6 convertPointsToRulerUnits:y];
  v11 = v10;
  v12 = objc_alloc(MEMORY[0x277CCABB0]);
  v14 = v9 >= 0.0 || v9 <= -0.01;
  *&v13 = v9;
  if (!v14)
  {
    *&v13 = 0.0;
  }

  v15 = [v12 initWithFloat:v13];
  v16 = objc_alloc(MEMORY[0x277CCABB0]);
  v18 = v11 >= 0.0 || v11 <= -0.01;
  *&v17 = v11;
  if (!v18)
  {
    *&v17 = 0.0;
  }

  v19 = [v16 initWithFloat:v17];
  v20 = [v7 stringForObjectValue:v15];
  v21 = [v7 stringForObjectValue:v19];

  return [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(TSDBundle(), "localizedStringForKey:value:table:", @"x: %@  y: %@", &stru_287D36338, @"TSDrawables", v20, v21];
}

- (id)unitStringForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = +[TSKRulerUnits instance];
  v7 = [(TSDInteractiveCanvasController *)self unitFormatter];
  v8 = objc_alloc(MEMORY[0x277CCABB0]);
  [v6 convertPointsToRulerUnits:width];
  *&v9 = v9;
  v10 = [v8 initWithFloat:v9];
  v11 = objc_alloc(MEMORY[0x277CCABB0]);
  [v6 convertPointsToRulerUnits:height];
  *&v12 = v12;
  v13 = [v11 initWithFloat:v12];
  v14 = [v7 stringForObjectValue:v10];
  v15 = [v7 stringForObjectValue:v13];

  return [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(TSDBundle(), "localizedStringForKey:value:table:", @"w: %@  h: %@", &stru_287D36338, @"TSDrawables", v14, v15];
}

- (id)unitStringForNumber:(double)a3
{
  v5 = +[TSKRulerUnits instance];
  v6 = [(TSDInteractiveCanvasController *)self unitFormatter];
  v7 = objc_alloc(MEMORY[0x277CCABB0]);
  [v5 convertPointsToRulerUnits:a3];
  *&v8 = v8;
  v9 = [v7 initWithFloat:v8];
  v10 = [v6 stringForObjectValue:v9];

  return [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(TSDBundle(), "localizedStringForKey:value:table:", @"%@", &stru_287D36338, @"TSDrawables", v10];
}

- (id)unitStringForAngle:(double)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [TSDBundle() localizedStringForKey:@"%i\\U00B0" value:&stru_287D36338 table:@"TSDrawables"];
  TSURound();
  TSDNormalizeAngleInDegrees(v5);
  return [v3 stringWithFormat:v4, v6];
}

- (id)unitStringForAngle:(double)a3 andLength:(double)a4
{
  v7 = +[TSKRulerUnits instance];
  v8 = [(TSDInteractiveCanvasController *)self unitFormatter];
  v9 = objc_alloc(MEMORY[0x277CCABB0]);
  [v7 convertPointsToRulerUnits:a4];
  *&v10 = v10;
  v11 = [v9 initWithFloat:v10];
  v12 = [v8 stringForObjectValue:v11];

  return [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(TSDBundle(), "localizedStringForKey:value:table:", @"%@  l: %@", &stru_287D36338, @"TSDrawables", -[TSDInteractiveCanvasController unitStringForAngle:](self, "unitStringForAngle:", a3), v12];
}

- (id)ancestorRepOfRep:(id)a3 orDelegateConformingToProtocol:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v7 = [a3 parentRep];
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = [v8 delegateConformingToProtocol:a4 forRep:a3];
      if (v9)
      {
        return v9;
      }

      if ([v8 conformsToProtocol:a4])
      {
        return v8;
      }

      v8 = [v8 parentRep];
    }

    while (v8);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self delegateConformingToProtocol:a4 forRep:a3];
}

- (TSDContainerRep)topLevelContainerRepForEditing
{
  objc_opt_class();
  [(TSDInteractiveCanvasController *)self repForInfo:[(TSDCanvasSelection *)[(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] canvasSelection] container]];

  return TSUDynamicCast();
}

- (id)topLevelRepsForHitTesting
{
  v3 = [(TSDInteractiveCanvasController *)self topLevelContainerRepForEditing];
  if (v3)
  {

    return [(TSDContainerRep *)v3 childReps];
  }

  else
  {
    mCanvas = self->mCanvas;

    return [(TSDCanvas *)mCanvas topLevelReps];
  }
}

- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5
{
  y = a3.y;
  x = a3.x;
  v10 = [(TSDInteractiveCanvasController *)self canvas];
  v11 = [(TSDInteractiveCanvasController *)self topLevelRepsForHitTesting];
  [objc_opt_class() smallRepOutsetForHitTesting];

  return [(TSDCanvas *)v10 hitRep:v11 inTopLevelReps:a4 smallRepOutset:a5 withGesture:x passingTest:y, v12];
}

- (id)hitRep:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender && [(TSDInteractiveCanvasController *)self p_currentlyScrollingIncludeEmbeddedCanvasScrolling:0])
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController hitRep:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 3410, @"unsafe to find hit reps during scroll if we layout and render on a thread during scroll"}];
  }

  return [(TSDInteractiveCanvasController *)self hitRep:0 withGesture:0 passingTest:x, y];
}

- (id)hitRepsAtPoint:(CGPoint)a3 withSlop:(CGSize)a4
{
  y = a3.y;
  x = a3.x;
  v21 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(TSDCanvas *)self->mCanvas topLevelReps];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v13 convertNaturalPointFromUnscaledCanvas:{x, y}];
        v14 = [v13 hitReps:? withSlop:?];
        if (v14)
        {
          [v7 addObjectsFromArray:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)p_recursiveHitKnobAtPoint:(CGPoint)a3 inRep:(id)a4 minDistance:(double *)a5 hitKnob:(id *)a6 hitRep:(id *)a7
{
  y = a3.y;
  x = a3.x;
  v41 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = [objc_msgSend(a4 "knobs")];
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v35 + 1) + 8 * v16);
        v34 = 0.0;
        if (!*a6 || ![v17 overlapsWithKnob:?])
        {
          if (([v17 isHitByUnscaledPoint:a4 andRep:&v34 returningDistance:{x, y}] & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_12:
          v20 = v34;
          if (v34 >= *a5)
          {
            goto LABEL_14;
          }

LABEL_13:
          *a5 = v20;
          *a6 = v17;
          *a7 = a4;
          goto LABEL_14;
        }

        v18 = [*a6 obscuresKnob:v17];
        v19 = [v17 obscuresKnob:*a6];
        if (([v17 isHitByUnscaledPoint:a4 andRep:&v34 returningDistance:{x, y}] & 1) == 0)
        {
          goto LABEL_14;
        }

        if (v19)
        {
          v20 = v34;
          goto LABEL_13;
        }

        if ((v18 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_14:
        ++v16;
      }

      while (v14 != v16);
      v21 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:{16, v20}];
      v14 = v21;
    }

    while (v21);
  }

  v22 = TSUProtocolCast();
  if (v22)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = [v22 childReps];
    v24 = [v23 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [(TSDInteractiveCanvasController *)self p_recursiveHitKnobAtPoint:*(*(&v30 + 1) + 8 * i) inRep:a5 minDistance:a6 hitKnob:a7 hitRep:x, y];
        }

        v25 = [v23 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v25);
    }
  }
}

- (id)hitKnobAtPoint:(CGPoint)a3 returningRep:(id *)a4
{
  y = a3.y;
  x = a3.x;
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = 0;
  v18 = 0x47EFFFFFE0000000;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(TSDCanvas *)self->mCanvas topLevelReps];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(TSDInteractiveCanvasController *)self p_recursiveHitKnobAtPoint:*(*(&v14 + 1) + 8 * v12++) inRep:&v18 minDistance:&v20 hitKnob:&v19 hitRep:x, y];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
    }

    while (v10);
  }

  if (a4)
  {
    *a4 = v19;
  }

  return v20;
}

- (id)validatedLayoutForInfo:(id)a3
{
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender && [MEMORY[0x277CCACC8] isMainThread])
  {
    [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
  }

  v5 = [(TSDInteractiveCanvasController *)self layoutController];

  return [(TSDLayoutController *)v5 validatedLayoutForInfo:a3];
}

- (id)layoutsForInfo:(id)a3
{
  v4 = [(TSDInteractiveCanvasController *)self layoutController];

  return [(TSDLayoutController *)v4 layoutsForInfo:a3];
}

- (id)layoutsForModel:(id)a3 withSelection:(id)a4
{
  result = [(TSDInteractiveCanvasController *)self infoForModel:a3 withSelection:a4];
  if (result)
  {

    return [(TSDInteractiveCanvasController *)self layoutsForInfo:result];
  }

  return result;
}

- (id)layoutForInfo:(id)a3
{
  v4 = [(TSDInteractiveCanvasController *)self layoutController];

  return [(TSDLayoutController *)v4 layoutForInfo:a3];
}

- (id)layoutForModel:(id)a3 withSelection:(id)a4
{
  v4 = [(TSDInteractiveCanvasController *)self layoutsForModel:a3 withSelection:a4];

  return [v4 anyObject];
}

- (id)layoutsForInfo:(id)a3 intersectingSelection:(id)a4
{
  v5 = [(TSDInteractiveCanvasController *)self layoutsForInfo:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__TSDInteractiveCanvasController_layoutsForInfo_intersectingSelection___block_invoke;
  v7[3] = &unk_279D483A8;
  v7[4] = a4;
  return [v5 objectsPassingTest:v7];
}

void *__71__TSDInteractiveCanvasController_layoutsForInfo_intersectingSelection___block_invoke(uint64_t a1)
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    [result rectForSelection:*(a1 + 32)];
    return !CGRectIsNull(v3);
  }

  return result;
}

- (id)layoutForInfoNearestVisibleRect:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = [(TSDInteractiveCanvasController *)self layoutsForInfo:a3];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v32;
  v9 = INFINITY;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v31 + 1) + 8 * i);
      [v11 frameInRoot];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [(TSDInteractiveCanvasController *)self visibleUnscaledRect];
      TSDDistanceToRectFromRect(v13, v15, v17, v19, v20, v21, v22, v23);
      if (v24 < v9)
      {
        [(TSDInteractiveCanvasController *)self visibleUnscaledRect];
        TSDDistanceToRectFromRect(v13, v15, v17, v19, v25, v26, v27, v28);
        v9 = v29;
        v7 = v11;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v6);
  return v7;
}

- (id)layoutForInfoNearestVisibleRect:(id)a3 intersectingSelection:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = [(TSDInteractiveCanvasController *)self layoutsForInfo:a3 intersectingSelection:?];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v34;
  v11 = INFINITY;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v34 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v33 + 1) + 8 * i);
      [v13 rectForSelection:a4];
      [v13 rectInRoot:?];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [(TSDInteractiveCanvasController *)self visibleUnscaledRect];
      TSDDistanceToRectFromRect(v15, v17, v19, v21, v22, v23, v24, v25);
      if (v26 < v11)
      {
        [(TSDInteractiveCanvasController *)self visibleUnscaledRect];
        TSDDistanceToRectFromRect(v15, v17, v19, v21, v27, v28, v29, v30);
        v11 = v31;
        v9 = v13;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
  }

  while (v8);
  return v9;
}

- (void)layoutIfNeeded
{
  if (([-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")] & 1) == 0)
  {
    if (self->mCurrentlyWaitingOnThreadedLayoutAndRender && [MEMORY[0x277CCACC8] isMainThread])
    {
      [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
    }

    mCanvas = self->mCanvas;

    [(TSDCanvas *)mCanvas layoutIfNeeded];
  }
}

- (void)performBlockAfterNextLayout:(id)a3
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController performBlockAfterNextLayout:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 3573, @"This operation must only be performed on the main thread."}];
  }

  if (a3)
  {
    v7 = [a3 copy];
    mNextLayoutBlocks = self->mNextLayoutBlocks;
    v9 = v7;
    if (!mNextLayoutBlocks)
    {
      mNextLayoutBlocks = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = v9;
      self->mNextLayoutBlocks = mNextLayoutBlocks;
    }

    [(NSMutableArray *)mNextLayoutBlocks addObject:v7];
  }
}

- (BOOL)shouldPopKnobsOutsideEnclosingScrollView
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDInteractiveCanvasControllerDelegate *)mDelegate shouldPopKnobsOutsideEnclosingScrollView];
}

- (void)setOverlayLayerSuppressed:(BOOL)a3
{
  if (self->mOverlayLayerSuppressed != a3)
  {
    self->mOverlayLayerSuppressed = a3;
    [(TSDInteractiveCanvasController *)self layoutInvalidated];
  }
}

- (void)addDecorator:(id)a3
{
  if (a3)
  {
    mDecorators = self->mDecorators;
    if (!mDecorators)
    {
      mDecorators = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->mDecorators = mDecorators;
    }

    if (([(NSMutableArray *)mDecorators containsObject:a3]& 1) == 0)
    {
      [(NSMutableArray *)self->mDecorators addObject:a3];

      [(TSDInteractiveCanvasController *)self layoutInvalidated];
    }
  }

  else
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController addDecorator:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 3681, @"invalid nil value for '%s'", "decorator"}];
  }
}

- (void)removeDecorator:(id)a3
{
  if (a3)
  {
    if ([(NSMutableArray *)self->mDecorators containsObject:?])
    {
      [(NSMutableArray *)self->mDecorators removeObject:a3];

      [(TSDInteractiveCanvasController *)self invalidateLayers];
    }
  }

  else
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController removeDecorator:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 3699, @"invalid nil value for '%s'", "decorator"}];
  }
}

- (id)p_decorators
{
  v2 = [(NSMutableArray *)self->mDecorators copy];

  return v2;
}

- (void)showOrHideComments:(id)a3
{
  v4 = [(TSDInteractiveCanvasController *)self showsComments]^ 1;

  [(TSDInteractiveCanvasController *)self setShowsComments:v4];
}

- (BOOL)shouldDisplayCommentUIForInfo:(id)a3
{
  if ([(TSDInteractiveCanvasController *)self i_inPrintPreviewMode])
  {
    return 0;
  }

  return [(TSDInteractiveCanvasController *)self showsComments];
}

- (void)invalidateComments
{
  v23 = *MEMORY[0x277D85DE8];
  [(TSDInteractiveCanvasController *)self showsComments];
  [(TSDInteractiveCanvasController *)self invalidateReps];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(TSDCanvas *)self->mCanvas topLevelReps];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v17 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_invalidateKnobs];
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(TSDCanvas *)self->mCanvas topLevelReps];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * j) recursivelyPerformSelectorIfImplemented:sel_invalidateComments];
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

- (BOOL)hasAnnotations
{
  v2 = [(TSDInteractiveCanvasController *)self annotationController];

  return [v2 hasAnnotations];
}

- (void)beginDynamicOperation
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->mInDynamicOperation)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController beginDynamicOperation]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4075, @"didn't end previous dynamic operation before starting a new one"}];
  }

  if (self->mDynamicOperationCounter)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController beginDynamicOperation]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4076, @"Inspector-driven dynamic operation in process when beginning separate dynamic operation"}];
  }

  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate dynamicOperationWillBegin];
  }

  self->mInDynamicOperation = 1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(TSDInteractiveCanvasController *)self p_decorators];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 willBeginDynamicOperation];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [objc_msgSend(-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
}

- (void)endDynamicOperation
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->mInDynamicOperation)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController endDynamicOperation]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4099, @"ending dynamic operation without starting a new one"}];
  }

  if (self->mDynamicOperationCounter)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController endDynamicOperation]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4100, @"Cannot begin inspector dynamic operation while in non-inspector dynamic operation"}];
  }

  self->mInDynamicOperation = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(TSDInteractiveCanvasController *)self p_decorators];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 didEndDynamicOperation];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate dynamicOperationDidEnd];
  }

  [(TSDCanvas *)self->mCanvas layoutInvalidated];
  [objc_msgSend(-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
}

- (void)endPossiblyParallelInspectorDynamicOperation
{
  atomic_fetch_add(&self->mDynamicOperationCounter, 0xFFFFFFFF);
  if (self->mDynamicOperationCounter < 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController endPossiblyParallelInspectorDynamicOperation]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"];

    [v3 handleFailureInFunction:v4 file:v5 lineNumber:4133 description:@"Ended more dynamic operations than you began!"];
  }
}

- (void)setInReadMode:(BOOL)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->mInReadMode != a3)
  {
    self->mInReadMode = a3;
    if (a3)
    {
      v20 = 0uLL;
      v21 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v4 = [(TSDCanvas *)self->mCanvas topLevelReps];
      v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v19;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v19 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v18 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_willBeginReadMode];
          }

          v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v6);
      }

      [-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
    }

    else
    {
      v16 = 0uLL;
      v17 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v9 = [(TSDCanvas *)self->mCanvas topLevelReps];
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v14 + 1) + 8 * j) recursivelyPerformSelectorIfImplemented:sel_willEndReadMode];
          }

          v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
        }

        while (v11);
      }
    }

    [(TSDInteractiveCanvasController *)self layoutInvalidated];
  }
}

- (void)setUsesAlternateDrawableSelectionHighlight:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->mUsesAlternateDrawableSelectionHighlight != a3)
  {
    self->mUsesAlternateDrawableSelectionHighlight = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(TSDCanvas *)self->mCanvas topLevelReps];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          [v9 recursivelyPerformSelectorIfImplemented:sel_i_invalidateSelectionHighlightLayer];
          [v9 recursivelyPerformSelectorIfImplemented:sel_invalidateKnobs];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(TSDInteractiveCanvasController *)self layoutInvalidated];
  }
}

- (void)i_invalidateSelectionHighlightLayers
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(TSDCanvas *)self->mCanvas topLevelReps];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_i_invalidateSelectionHighlightLayer];
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(TSDInteractiveCanvasController *)self layoutInvalidated];
}

- (void)beginScrollingOperation
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(TSDInteractiveCanvasController *)self p_decorators];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 willBeginScrollingOperation];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)endScrollingOperation
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(TSDInteractiveCanvasController *)self p_decorators];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 didEndScrollingOperation];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)p_beginZoomingOperation
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(TSDInteractiveCanvasController *)self p_decorators];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 willBeginZoomingOperation];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v9 setDuration:0.15];
  [v9 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", 0.0)}];
  [v9 setRemovedOnCompletion:0];
  [v9 setFillMode:*MEMORY[0x277CDA238]];
  v10 = [(NSArray *)[(CALayer *)[(TSDInteractiveCanvasController *)self overlayLayer] sublayers] copy];
  self->mLayersWithZoomFadeAnimation = v10;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) addAnimation:v9 forKey:@"TSDInteractiveCanvasControllerBeginZoomingOperation"];
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)p_endZoomingOperation
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(TSDInteractiveCanvasController *)self p_decorators];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 didEndZoomingOperation];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
  v9 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v9 setDuration:0.15];
  [v9 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", 0.0)}];
  [v9 setRemovedOnCompletion:1];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = self;
  mLayersWithZoomFadeAnimation = self->mLayersWithZoomFadeAnimation;
  v11 = [(NSArray *)mLayersWithZoomFadeAnimation countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(mLayersWithZoomFadeAnimation);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        v16 = MEMORY[0x277CCABB0];
        [v15 opacity];
        [v9 setToValue:{objc_msgSend(v16, "numberWithFloat:")}];
        [v15 addAnimation:v9 forKey:@"TSDInteractiveCanvasControllerEndZoomingOperation"];
        [v15 removeAnimationForKey:@"TSDInteractiveCanvasControllerBeginZoomingOperation"];
      }

      v12 = [(NSArray *)mLayersWithZoomFadeAnimation countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  v17->mLayersWithZoomFadeAnimation = 0;
}

- (void)setShowInvisibleObjects:(BOOL)a3
{
  if (self->mShowInvisibleObjects != a3)
  {
    self->mShowInvisibleObjects = a3;
    [(TSDInteractiveCanvasController *)self layoutInvalidated];
  }
}

- (TSDDynamicOperationController)dynamicOperationController
{
  result = self->mDynOpController;
  if (!result)
  {
    result = [[TSDDynamicOperationController alloc] initWithInteractiveCanvasController:self];
    self->mDynOpController = result;
  }

  return result;
}

- (TSDTrackerManipulatorCoordinator)tmCoordinator
{
  result = self->mTMCoordinator;
  if (!result)
  {
    result = objc_alloc_init(TSDTrackerManipulatorCoordinator);
    self->mTMCoordinator = result;
  }

  return result;
}

- (TSDGestureDispatcher)gestureDispatcher
{
  result = self->mGestureDispatcher;
  if (!result)
  {
    result = [[TSDGestureDispatcher alloc] initWithInteractiveCanvasController:self];
    self->mGestureDispatcher = result;
  }

  return result;
}

- (void)updateSelectionForTapAtPoint:(CGPoint)a3 extendingSelection:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(TSDInteractiveCanvasController *)self canvasEditor];
  v9 = [-[TSDInteractiveCanvasController hitRep:](self hitRep:{x, y), "repForSelecting"}];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 parentRepToPerformSelecting];
    if (v11)
    {

      [v11 selectChildRep:v10];
    }

    else if (v4)
    {
      [(TSDInteractiveCanvasController *)self endEditing];
      v12 = [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] canvasSelection];
      if (!v12)
      {
        v12 = [(TSDCanvasEditor *)v8 canvasSelectionWithInfos:0];
      }

      v13 = [v10 info];
      if ([v10 isSelectedIgnoringLocking])
      {
        v14 = [(TSDCanvasSelection *)v12 copyExcludingInfo:v13];
      }

      else
      {
        v14 = [(TSDCanvasSelection *)v12 copyIncludingInfo:v13];
      }

      v15 = v14;
      [(TSDCanvasEditor *)v8 setSelection:v14];
    }

    else if ([v10 isSelectedIgnoringLocking])
    {

      [(TSDInteractiveCanvasController *)self updateSelectionForTapOnSelectedRep:v10];
    }

    else
    {
      [(TSDInteractiveCanvasController *)self endEditing];

      [(TSDCanvasEditor *)v8 setSelectionToRep:v10];
    }
  }

  else if (!v4)
  {
    [(TSDInteractiveCanvasController *)self endEditing];

    [(TSDCanvasEditor *)v8 setSelectionToInfo:0];
  }
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(TSDInteractiveCanvasController *)self hitRep:?];
  v7 = [v6 repForHandleSingleTap];
  if (v7 && ([v6 isLocked] && !objc_msgSend(v6, "wantsToHandleTapsWhenLocked") || (objc_msgSend(v7, "handleSingleTapAtPoint:", x, y) & 1) == 0))
  {
    [(TSDInteractiveCanvasController *)self updateSelectionForTapAtPoint:0 extendingSelection:x, y];
  }

  return v7 != 0;
}

- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [-[TSDInteractiveCanvasController hitRep:](self "hitRep:"repForSelecting"")];
  v7 = v6;
  if (v6)
  {
    if ([v6 info])
    {
      v8 = [(TSDInteractiveCanvasController *)self canvasEditor];
      -[TSDCanvasEditor setSelection:](v8, "setSelection:", -[TSDCanvasEditor canvasSelectionWithInfos:](v8, "canvasSelectionWithInfos:", [MEMORY[0x277CBEB98] setWithObject:{objc_msgSend(v7, "info")}]));
    }

    if (([v7 isLocked] & 1) == 0)
    {
      [v7 handleDoubleTapAtPoint:{x, y}];
    }
  }

  return v7 != 0;
}

- (void)tappedCanvasBackgroundAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] selection])
  {
    v6 = ![(TSDCanvasSelection *)[(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] canvasSelection] isEmpty];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] setSelection:0];
  v7 = [(TSDInteractiveCanvasController *)self p_endEditingToBeginEditingRep:0];
  v8 = [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] canvasSelection];
  if (v8 && [(TSDCanvasSelection *)v8 infoCount])
  {
    if (objc_opt_respondsToSelector())
    {
      mDelegate = self->mDelegate;

      [(TSDInteractiveCanvasControllerDelegate *)mDelegate tappedCanvasBackgroundAtPoint:x, y];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      if (([(TSDInteractiveCanvasControllerDelegate *)self->mDelegate tappedCanvasBackgroundAtPoint:x, y]| v7))
      {
        return;
      }
    }

    else if (v7)
    {
      return;
    }

    v10 = [-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self "layerHost")] | v6;
    v11 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] asiOSCVC];
    if (v10)
    {

      [v11 hideEditMenu];
    }

    else
    {

      [v11 showEditMenu:0];
    }
  }
}

- (id)gestureTargetStack:(id)a3
{
  v5 = [MEMORY[0x277CBEA60] array];
  if (![(TSDInteractiveCanvasController *)self currentlyScrolling])
  {
    v5 = [MEMORY[0x277CBEB18] array];
    if (objc_opt_respondsToSelector())
    {
      v8 = [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self primaryTargetForGesture:a3];
      if (v8)
      {
        [v5 addObject:v8];
      }
    }

    [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] textInputEditor];
    v9 = TSUProtocolCast();
    if (v9)
    {
      [v5 addObject:v9];
    }

    [a3 unscaledLocationForICC:self];
    v11 = v10;
    v13 = v12;
    v14 = [(TSDInteractiveCanvasController *)self hitRep:a3 withGesture:&__block_literal_global_790 passingTest:?];
    v15 = TSUProtocolCast();
    if (v15)
    {
      v16 = v15;
      do
      {
        [v5 addObject:v16];
        v14 = [v14 parentRep];
        v16 = TSUProtocolCast();
      }

      while (v16);
    }

    v17 = [(TSDInteractiveCanvasController *)self hitRep:a3 withGesture:&__block_literal_global_792 passingTest:v11, v13];
    v18 = [v17 parentRep];
    if (v18)
    {
      v19 = v18;
      do
      {
        v20 = TSUProtocolCast();
        if (v20)
        {
          v21 = v20;
          if (objc_opt_respondsToSelector())
          {
            if ([v19 canHandleGesture:a3 forChildRep:v17])
            {
              [v5 addObject:v21];
            }
          }
        }

        v19 = [v19 parentRep];
      }

      while (v19);
    }

    v22 = TSUProtocolCast();
    if (v22)
    {
      [v5 addObject:v22];
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate additionalGestureTargetsForInteractiveCanvasController:self gesture:a3];
      if (v23)
      {
        [v5 addObjectsFromArray:v23];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self updateGestureTargetStack:v5 gesture:a3];
    }

    return v5;
  }

  [(TSDInteractiveCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v5;
  }

  v6 = [(TSDInteractiveCanvasController *)self delegate];

  return [(TSDInteractiveCanvasControllerDelegate *)v6 interactiveCanvasController:self gestureTargetStackWhenScrollingWithGesture:a3];
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  mCurrentAnimation = self->mCurrentAnimation;
  if (mCurrentAnimation)
  {

    return [(TSDCanvasAnimation *)mCurrentAnimation actionForLayer:a3 forKey:a4];
  }

  else
  {
    mRepsByRepLayer = self->mRepsByRepLayer;
    if (mRepsByRepLayer && CFDictionaryGetValue(mRepsByRepLayer, a3) || (mRepsByContainerLayer = self->mRepsByContainerLayer) != 0 && CFDictionaryGetValue(mRepsByContainerLayer, a3) || self->mRepContainerLayer == a3 || self->mOverlayLayer == a3 || [a3 superlayer] == self->mOverlayLayer || !objc_msgSend(a3, "superlayer") || self->mPopoutLayer == a3 || objc_msgSend(a3, "superlayer") == self->mPopoutLayer)
    {
      v10 = MEMORY[0x277CBEB68];

      return [v10 null];
    }

    else
    {
      return 0;
    }
  }
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  if (!self->mShouldSuppressRendering)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{a3, @"TSDInteractiveCanvasControllerLayerKey", objc_msgSend(MEMORY[0x277CCAE60], "valueWithPointer:", a4), @"TSDInteractiveCanvasControllerContextKey", 0}];
    if (+[TSDTilingBackgroundQueue isHoldingReadLockFromBackgroundQueue])
    {

      [(TSDInteractiveCanvasController *)self p_drawLayerWithReadLock:v5];
    }

    else
    {
      v6 = [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)self documentRoot] accessController];
      if (!v6)
      {
        v7 = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController drawLayer:inContext:]"];
        [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4621, @"invalid nil value for '%s'", "ac"}];
      }

      [(TSKAccessController *)v6 performRead:sel_p_drawLayerWithReadLock_ withTarget:self argument:v5];
    }
  }
}

- (BOOL)shouldLayoutTilingLayer:(id)a3
{
  if (([-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self layerHost] & 1) != 0 || self->mAnimatingViewScale)
  {
    return 0;
  }

  if ([MEMORY[0x277CCACC8] isMainThread] && self->mForceTilingLayoutOnThreadWhenScrolling && self->mCurrentlyWaitingOnThreadedLayoutAndRender)
  {
    return ![(TSDInteractiveCanvasController *)self p_currentlyScrolling];
  }

  return 1;
}

- (CGRect)visibleBoundsForTilingLayer:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController visibleBoundsForTilingLayer:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4639, @"invalid nil value for '%s'", "layer"}];
  }

  v7 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  [a3 bounds];
  [v7 convertRect:a3 fromLayer:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(TSDInteractiveCanvasController *)self visibleBoundsRectForTiling];
  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  v22 = CGRectIntersection(v21, v24);

  [v7 convertRect:a3 toLayer:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)canDrawTilingLayerInBackground:(id)a3
{
  v5 = [(TSDInteractiveCanvasController *)self supportsBackgroundTileRendering];
  if (v5)
  {
    Value = CFDictionaryGetValue(self->mRepsByRepLayer, a3);
    if (Value)
    {

      LOBYTE(v5) = [Value canDrawTilingLayerInBackground:a3];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)shouldBeginDrawingTilingLayerInBackground:(id)a3 returningToken:(id *)a4 andQueue:(id *)a5
{
  Value = CFDictionaryGetValue(self->mRepsByRepLayer, a3);
  v8 = Value;
  if (Value)
  {
    v9 = Value;
    *a4 = v8;
    *a5 = [v8 i_tileQueue];
  }

  return v8 != 0;
}

- (BOOL)mustDrawTilingLayerOnMainThread:(id)a3
{
  Value = CFDictionaryGetValue(self->mRepsByRepLayer, a3);
  if (Value)
  {

    LOBYTE(Value) = [Value mustDrawOnMainThreadForInteractiveCanvas];
  }

  return Value;
}

- (id)queueForDrawingTilingLayerInBackground:(id)a3
{
  Value = CFDictionaryGetValue(self->mRepsByRepLayer, a3);
  if (!-[TSDInteractiveCanvasController supportsBackgroundTileRendering](self, "supportsBackgroundTileRendering") || ([Value mustDrawOnMainThreadForInteractiveCanvas] & 1) != 0)
  {
    return 0;
  }

  return [Value i_tileQueue];
}

- (void)backgroundLayoutAndRenderState:(id)a3 performWorkInBackgroundTilingOnly:(BOOL)a4
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController backgroundLayoutAndRenderState:performWorkInBackgroundTilingOnly:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4748, @"should be called on a BG thread"}];
  }

  v8 = [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)self documentRoot] accessController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__TSDInteractiveCanvasController_backgroundLayoutAndRenderState_performWorkInBackgroundTilingOnly___block_invoke;
  v9[3] = &unk_279D483F0;
  v9[4] = self;
  v10 = a4;
  [(TSKAccessController *)v8 performRead:v9];
}

uint64_t __99__TSDInteractiveCanvasController_backgroundLayoutAndRenderState_performWorkInBackgroundTilingOnly___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __99__TSDInteractiveCanvasController_backgroundLayoutAndRenderState_performWorkInBackgroundTilingOnly___block_invoke_2;
  v3[3] = &unk_279D483F0;
  v3[4] = v1;
  v4 = *(a1 + 40);
  return [v1 p_acquireLockAndPerformAction:v3];
}

uint64_t __99__TSDInteractiveCanvasController_backgroundLayoutAndRenderState_performWorkInBackgroundTilingOnly___block_invoke_2(uint64_t result)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 418) == 1)
  {
    v1 = result;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] activateBackground:1];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v2 = [*(*(v1 + 32) + 16) topLevelReps];
    v3 = [v2 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v31;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v31 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v30 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_willLayoutAndRenderInBackground];
        }

        v4 = [v2 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v4);
    }

    [objc_msgSend(objc_msgSend(*(v1 + 32) "layerHost")];
    if ((*(v1 + 40) & 1) == 0)
    {
      [*(v1 + 32) layoutIfNeeded];
      v25 = v1;
      if ([*(*(v1 + 32) + 432) count])
      {
        v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
        [v7 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", 0.0)}];
        v8 = [objc_msgSend(*(v1 + 32) "layerHost")];
        [v8 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v17 = *(*(v1 + 32) + 432);
        v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v27;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v27 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v26 + 1) + 8 * j);
              if (([v22 isHidden] & 1) == 0)
              {
                v23 = [MEMORY[0x277D6C290] currentHandler];
                v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController backgroundLayoutAndRenderState:performWorkInBackgroundTilingOnly:]_block_invoke_2"];
                [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4774, @"should have hidden this layer just after creating it"}];
              }

              [v22 bounds];
              [v8 convertRect:v22 fromLayer:?];
              v38.origin.x = v10;
              v38.origin.y = v12;
              v38.size.width = v14;
              v38.size.height = v16;
              if (CGRectIntersectsRect(v37, v38))
              {
                [v22 addAnimation:v7 forKey:@"fade in"];
              }

              [v22 setHidden:0];
            }

            v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v19);
        }
      }

      v1 = v25;

      *(*(v25 + 32) + 432) = 0;
    }

    [MEMORY[0x277CD9FF0] commit];
    [MEMORY[0x277CD9FF0] flush];
    *(*(v1 + 32) + 418) = 0;
    return [*(v1 + 32) didLayoutAndRenderOnThread];
  }

  return result;
}

- (BOOL)backgroundLayoutAndRenderState:(id)a3 shouldDispatchBackgroundWork:(id)a4
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController backgroundLayoutAndRenderState:shouldDispatchBackgroundWork:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4812, @"This operation must only be performed on the main thread."}];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  mDelegate = self->mDelegate;

  return [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self shouldDispatchBackgroundWork:a4];
}

- (void)backgroundLayoutAndRenderStateDidPerformBackgroundWork:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController backgroundLayoutAndRenderStateDidPerformBackgroundWork:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4826, @"This operation must only be performed on the main thread."}];
  }

  if (!self->mCurrentlyWaitingOnThreadedLayoutAndRender)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __89__TSDInteractiveCanvasController_backgroundLayoutAndRenderStateDidPerformBackgroundWork___block_invoke;
    v16[3] = &unk_279D46770;
    v16[4] = self;
    [(TSDInteractiveCanvasController *)self p_acquireLockAndPerformAction:v16];
    if (!self->mCurrentlyScrolling)
    {
      [(TSDTrackingController *)[(TSDInteractiveCanvasController *)self trackingController] interactiveCanvasControllerUpdatedRepsFromLayouts:self];
    }
  }

  if (![(TSDInteractiveCanvasController *)self currentlyScrolling])
  {
    [(TSDInteractiveCanvasController *)self invalidateLayers];
    [(TSDInteractiveCanvasController *)self layoutIfNeeded];
  }

  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:self];
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mNotificationsToPostWithValidLayouts = self->mNotificationsToPostWithValidLayouts;
  v8 = [(NSMutableSet *)mNotificationsToPostWithValidLayouts countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(mNotificationsToPostWithValidLayouts);
        }

        [v6 postNotificationName:*(*(&v12 + 1) + 8 * i) object:self];
      }

      v9 = [(NSMutableSet *)mNotificationsToPostWithValidLayouts countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }

  [(NSMutableSet *)self->mNotificationsToPostWithValidLayouts removeAllObjects];
}

- (void)scrollViewDidScroll:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  if (!self->mIgnoreContentOffsetChanges)
  {
    v5 = *MEMORY[0x277CBF398];
    v6 = *(MEMORY[0x277CBF398] + 8);
    v7 = *(MEMORY[0x277CBF398] + 16);
    v8 = *(MEMORY[0x277CBF398] + 24);
    [(TSDInteractiveCanvasController *)self setP_visibleBoundsRectForTiling:*MEMORY[0x277CBF398], v6, v7, v8];
    v9 = ([a3 isScrolling] & 1) != 0 || self->mAnimatingScroll;
    self->mCurrentlyScrolling = v9;
    [(TSDInteractiveCanvasController *)self setP_visibleUnscaledRect:v5, v6, v7, v8];
    if (!self->mCurrentlyScrolling)
    {
      [(TSDInteractiveCanvasController *)self p_viewScrollingEnded];
    }

    if (self->mPopoutLayer)
    {
      [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
      v11 = v10;
      v13 = v12;
      [objc_msgSend(-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
      v15 = v14;
      v17 = v16;
      [a3 frame];
      v19 = v18;
      [a3 contentOffset];
      v21 = v11 + v19 - v20 - v17;
      [a3 frame];
      v23 = v22;
      [a3 contentOffset];
      v25 = v13 + v23 - v24 - v15;
      [(CALayer *)self->mPopoutLayer position];
      if (v27 != v21 || v26 != v25)
      {
        [(CALayer *)self->mPopoutLayer setPosition:v21, v25];
      }

      [(TSDInteractiveCanvasController *)self visibleBoundsRect];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v37 = [(CALayer *)self->mPopoutLayer sublayers];
      v38 = [(NSArray *)v37 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v44;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v44 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v43 + 1) + 8 * i);
            [v42 frame];
            v50.origin.x = v30;
            v50.origin.y = v32;
            v50.size.width = v34;
            v50.size.height = v36;
            [v42 setHidden:{!CGRectIntersectsRect(v49, v50)}];
          }

          v39 = [(NSArray *)v37 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v39);
      }
    }

    [(TSDInteractiveCanvasController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)self delegate] interactiveCanvasControllerDidScroll:self];
    }

    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [(TSDInteractiveCanvasController *)self i_viewScrollDidChange];
    [(TSDInteractiveCanvasController *)self p_invalidateTilingLayers];
    if ([(TSDInteractiveCanvasController *)self shouldShowUserDefinedGuides])
    {
      [(TSDInteractiveCanvasController *)self invalidateLayers];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  self->mCurrentlyScrolling = 1;
  [(TSDInteractiveCanvasController *)self i_viewScrollWillChange];
  if (!self->mCreateRepsForOffscreenLayouts && !self->mSuspendedLowPriorityThreadDispatcher)
  {
    self->mSuspendedLowPriorityThreadDispatcher = 1;
    [+[TSKLowPriorityThreadDispatcher sharedLowPriorityDispatcher](TSKLowPriorityThreadDispatcher "sharedLowPriorityDispatcher")];
  }

  [(TSDInteractiveCanvasController *)self beginScrollingOperation];
  [(TSDTextInputResponder *)self->mTextInputResponder canvasWillScroll];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(TSDInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(TSDInteractiveCanvasController *)self delegate];

    [(TSDInteractiveCanvasControllerDelegate *)v5 interactiveCanvasController:self scrollViewWillBeginDragging:a3];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  [(TSDInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(TSDInteractiveCanvasController *)self delegate];
    objc_opt_class();
    v10 = TSUDynamicCast();

    [(TSDInteractiveCanvasControllerDelegate *)v9 interactiveCanvasController:self scrollViewWillEndDragging:v10 withVelocity:a5 targetContentOffset:x, y];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    self->mCurrentlyScrolling = 0;
    [(TSDInteractiveCanvasController *)self p_viewScrollingEnded];
  }
}

- (void)scrollView:(id)a3 willAnimateToContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(TSDInteractiveCanvasController *)self i_viewScrollWillChange];
  if (self->mAnimatingScroll)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController scrollView:willAnimateToContentOffset:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4979, @"scrollView:willAnimateToContentOffset: called whilst already animating"}];
  }

  *&self->mCurrentlyScrolling = 257;
  [a3 contentOffset];
  v12 = TSDSubtractPoints(x, y, v10);
  v13 = v11;
  if (v12 != 0.0 || v11 != 0.0)
  {
    [-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasController *)self visibleBoundsRect];
    v17 = CGRectOffset(v16, v12, v13);
    [(TSDInteractiveCanvasController *)self convertBoundsToUnscaledRect:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self willAnimateScrollToVisibleUnscaledRect:?];
  }
}

- (void)p_scrollViewDidEndScrollingAnimation:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
    [(TSDInteractiveCanvasController *)self scrollViewDidScroll:a3];
  }

  if ([a3 isScrolling])
  {
    self->mCurrentlyScrolling = 1;
  }

  else
  {
    mAnimatingScroll = self->mAnimatingScroll;
    self->mCurrentlyScrolling = mAnimatingScroll;
    if (!mAnimatingScroll)
    {
      [(TSDInteractiveCanvasController *)self p_viewScrollingEnded];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasControllerDidEndScrollingAnimation:self stillAnimating:self->mAnimatingScroll];
  }

  [(TSDInteractiveCanvasController *)self p_invalidateTilingLayers];
}

- (void)syncProcessChanges:(id)a3 forChangeSource:(id)a4
{
  v6 = TSUProtocolCast();
  if (v6)
  {
    v7 = [(TSDInteractiveCanvasController *)self layoutsForInfo:v6];

    [v7 makeObjectsPerformSelector:sel_processChanges_ withObject:a3];
  }
}

- (CGPoint)scrollView:(id)a3 restrictContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(TSDInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasController *)self convertBoundsToUnscaledPoint:x, y];
    v8 = v7;
    v10 = v9;
    v11 = [(TSDInteractiveCanvasController *)self delegate];
    [(TSDInteractiveCanvasController *)self viewScale];
    [(TSDInteractiveCanvasControllerDelegate *)v11 interactiveCanvasController:self restrictedContentOffset:v8 forViewScale:v10, v12];
    [(TSDInteractiveCanvasController *)self convertUnscaledToBoundsPoint:?];
    x = v13;
    y = v14;
  }

  v15 = x;
  v16 = y;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)asyncProcessChanges:(id)a3 forChangeSource:(id)a4
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController asyncProcessChanges:forChangeSource:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5095, @"async change notifications should only come in on the main thread"}];
  }

  if ([(TSDCanvas *)self->mCanvas i_needsLayout]&& [(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
  }

  v8 = TSUProtocolCast();
  if (v8)
  {
    v9 = [(TSDInteractiveCanvasController *)self repsForInfo:v8];

    [v9 makeObjectsPerformSelector:sel_processChanges_ withObject:a3];
  }
}

- (void)p_willEnterForeground:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(TSDCanvas *)self->mCanvas topLevelReps:a3];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelector:sel_i_willEnterForeground];
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)p_acquireLockAndPerformAction:(id)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __64__TSDInteractiveCanvasController_p_acquireLockAndPerformAction___block_invoke;
  v8 = &unk_279D48418;
  v9 = self;
  v10 = a3;
  v11 = &v12;
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self performLockedAction:v6];
  }

  else
  {
    v7(v6);
  }

  if ((v13[3] & 1) == 0)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_acquireLockAndPerformAction:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5152, @"failed to perform locked action"}];
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t __64__TSDInteractiveCanvasController_p_acquireLockAndPerformAction___block_invoke(void *a1)
{
  [*(a1[4] + 632) lock];
  (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = 1;
  v2 = *(a1[4] + 632);

  return [v2 unlock];
}

- (void)deselectAll:(id)a3
{
  if ([(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] editorForEditAction:a2 withSender:a3])
  {

    [(TSDInteractiveCanvasController *)self makeEditorPerformAction:a2 withSender:a3];
  }

  else
  {
    [(TSDInteractiveCanvasController *)self endEditing];
    v6 = [(TSDInteractiveCanvasController *)self canvasEditor];

    [(TSDCanvasEditor *)v6 setSelection:0];
  }
}

- (void)makeEditorPerformAction:(SEL)a3 withSender:(id)a4
{
  v7 = [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)self documentRoot] accessController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__TSDInteractiveCanvasController_makeEditorPerformAction_withSender___block_invoke;
  v8[3] = &unk_279D47668;
  v8[5] = a4;
  v8[6] = a3;
  v8[4] = self;
  [(TSKAccessController *)v7 performRead:v8];
}

void *__69__TSDInteractiveCanvasController_makeEditorPerformAction_withSender___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "editorController")];
  if (result)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);

    return [result performSelector:v3 withObject:v4];
  }

  return result;
}

- (BOOL)shouldResampleImages
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  mDelegate = self->mDelegate;

  return [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasControllerShouldResampleImages:self];
}

- (BOOL)canPerformInteractiveAction:(SEL)a3 withSender:(id)a4
{
  v8 = 0;
  if ([(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] editorForEditAction:a3 withSender:a4 response:&v8])
  {
    goto LABEL_2;
  }

  if (v8 == -1)
  {
    LOBYTE(isEqual) = 0;
  }

  else
  {
    if (sel_isEqual(a3, sel_deselectAll_))
    {
LABEL_2:
      LOBYTE(isEqual) = 1;
      return isEqual;
    }

    if (sel_isEqual(a3, sel_nextAnnotation_) || (isEqual = sel_isEqual(a3, sel_previousAnnotation_)))
    {
      LOBYTE(isEqual) = [(TSDInteractiveCanvasController *)self hasAnnotations];
    }
  }

  return isEqual;
}

- (void)p_maybeSetTextResponderEditorTo:(id)a3
{
  if (![(TSDInteractiveCanvasController *)self keyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges]&& (a3 || !self->mPreventSettingNilEditorOnTextResponder && (!self->mTextInputResponderShareCount || ![(TSDTextInputResponder *)self->mTextInputResponder editor]|| ([[(TSDTextInputResponder *)self->mTextInputResponder editor] wantsKeyboard]& 1) == 0)))
  {
    mTextInputResponder = self->mTextInputResponder;

    [(TSDTextInputResponder *)mTextInputResponder setEditor:a3];
  }
}

- (void)beginAnimations:(id)a3 context:(void *)a4
{
  if (self->mCurrentAnimation)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController beginAnimations:context:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5343, @"animation nesting not yet supported"}];
  }

  [MEMORY[0x277CD9FF0] flush];
  [MEMORY[0x277CD9FF0] begin];
  self->mCurrentAnimation = [[TSDCanvasAnimation alloc] initWithAnimationID:a3 interactiveCanvasController:self context:a4];
}

- (void)commitAnimations
{
  if (!self->mCurrentAnimation)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController commitAnimations]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5353, @"can't commit if we don't have an animation open"}];
  }

  [MEMORY[0x277CD9FF0] commit];

  self->mCurrentAnimation = 0;
}

- (void)i_layoutRegistered:(id)a3
{
  if ([a3 info])
  {
    -[TSKChangeNotifier addObserver:forChangeSource:](-[TSDInteractiveCanvasController changeNotifier](self, "changeNotifier"), "addObserver:forChangeSource:", self, [a3 info]);
  }

  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self layoutRegistered:a3];
  }
}

- (void)i_layoutUnregistered:(id)a3
{
  if ([a3 info])
  {
    -[TSKChangeNotifier removeObserver:forChangeSource:](-[TSDInteractiveCanvasController changeNotifier](self, "changeNotifier"), "removeObserver:forChangeSource:", self, [a3 info]);
  }

  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self layoutUnregistered:a3];
  }
}

- (void)i_layout
{
  if (!self->mTeardownOnBackgroundThread && ([MEMORY[0x277CCACC8] isMainThread] & 1) == 0 && (!self->mLayoutAndRenderOnThreadDuringScroll || !self->mCurrentlyWaitingOnThreadedLayoutAndRender) && !self->mNestedCanvasAllowLayoutAndRenderOnThread)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_layout]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5468, @"i_layout should only be called by our CV, from the main thread or during threaded layout"}];
  }

  if (self->mDelegate && ![(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_layout]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5469, @"should only get i_layout for interactive canvases"}];
  }

  if (!self->mTeardownOnBackgroundThread && (!self->mLayoutAndRenderOnThreadDuringScroll || !self->mCurrentlyWaitingOnThreadedLayoutAndRender && (![(TSDInteractiveCanvasController *)self p_currentlyScrolling]|| [(TSDCanvas *)self->mCanvas i_needsLayout])))
  {
    if ([(TSDInteractiveCanvasController *)self documentRoot])
    {
      v7 = [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)self documentRoot] accessController];
      if (!v7)
      {
        v8 = [MEMORY[0x277D6C290] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_layout]"];
        [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5475, @"invalid nil value for '%s'", "ac"}];
      }

      [(TSKAccessController *)v7 performRead:sel_p_layoutWithReadLock withTarget:self argument:0];
    }

    if (self->mShouldAutoscrollToSelectionAfterLayout)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        self->mShouldAutoscrollToSelectionAfterLayout = 0;
        [(TSDInteractiveCanvasController *)self p_scrollToPrimarySelectionForEditor:[(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] textInputEditor] skipZoom:self->mSuppressAutozoomToSelectionAfterLayout];
        self->mSuppressAutozoomToSelectionAfterLayout = 0;
        self->mShouldCenterSelectionWhenAutoscrolling = 0;
      }
    }
  }
}

- (void)i_viewWillBeginZooming
{
  v14 = *MEMORY[0x277D85DE8];
  [(TSDInteractiveCanvasController *)self viewScale];
  self->mDynamicViewScale = v3;
  self->mDynamicallyZooming = 1;
  [(TSDInteractiveCanvasController *)self p_beginZoomingOperation];
  [(TSDTextInputResponder *)self->mTextInputResponder canvasWillZoom];
  [(TSDInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)self delegate] interactiveCanvasControllerWillZoom:self];
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(TSDCanvas *)self->mCanvas topLevelReps];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_willBeginZooming];
      }

      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
}

- (void)i_viewDidZoomToViewScale:(double)a3
{
  [(TSDInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)self delegate] interactiveCanvasControllerIsZooming:self viewScale:a3];
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(TSDInteractiveCanvasController *)self willChangeValueForKey:@"currentViewScale"];
  self->mDynamicViewScale = a3;

  [(TSDInteractiveCanvasController *)self didChangeValueForKey:@"currentViewScale"];
}

- (void)viewDidEndZooming
{
  v13 = *MEMORY[0x277D85DE8];
  [(TSDInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)self delegate] interactiveCanvasControllerDidZoom:self];
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(TSDCanvas *)self->mCanvas topLevelReps];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_didEndZooming];
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(TSDInteractiveCanvasController *)self p_endZoomingOperation];
  self->mDynamicallyZooming = 0;
}

- (void)i_canvasContentsScaleDidChange
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(TSDInteractiveCanvasController *)self p_decorators];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 screenScaleDidChange];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [(TSDCanvas *)self->mCanvas topLevelReps];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * j) recursivelyPerformSelector:sel_screenScaleDidChange];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)i_canvasWideGamutValueDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->mCurrentlyWaitingOnThreadedLayoutAndRender && [MEMORY[0x277CCACC8] isMainThread])
  {
    [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(TSDCanvas *)self->mCanvas topLevelReps];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelector:sel_wideGamutValueDidChange];
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)i_viewScaleDidChange
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->mCurrentlyWaitingOnThreadedLayoutAndRender)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_viewScaleDidChange]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5585, @"Should not be called if waiting on background layout"}];
    if (self->mCurrentlyWaitingOnThreadedLayoutAndRender)
    {
      [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
    }
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(TSDCanvas *)self->mCanvas topLevelReps];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * i) recursivelyPerformSelector:sel_viewScaleDidChange];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(TSDInteractiveCanvasController *)self layoutInvalidated];
}

- (double)i_viewScaleForProposedViewScale:(double)a3 originalViewScale:(double)a4
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return a3;
  }

  mDelegate = self->mDelegate;

  [(TSDInteractiveCanvasControllerDelegate *)mDelegate canvasViewScaleForProposedViewScale:a3 originalViewScale:a4];
  return result;
}

- (CGSize)i_canvasCenterOffsetForProposedViewScale:(double)a3 originalViewScale:(double)a4
{
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate canvasCenterOffsetForProposedViewScale:a3 originalViewScale:a4];
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (double)i_adjustViewScale:(double)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return a3;
  }

  mDelegate = self->mDelegate;

  [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self adjustViewScale:a3];
  return result;
}

- (double)i_nextCanvasViewScaleDetentForProposedViewScale:(double)a3 greater:(BOOL)a4
{
  v4 = a4;
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate nextCanvasViewScaleDetentForProposedViewScale:v4 greater:a3];
  }

  else
  {
    v9 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
    if (v4)
    {

      [v9 maximumPinchViewScale];
    }

    else
    {

      [v9 minimumPinchViewScale];
    }
  }

  return result;
}

- (void)i_viewScrollDidChange
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->mLayoutAndRenderOnThreadDuringScroll || !self->mCurrentlyScrolling)
  {
    if (self->mCurrentlyWaitingOnThreadedLayoutAndRender)
    {
      v3 = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_viewScrollDidChange]"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5656, @"Shouldn't be iterating over reps during background layout"}];
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(TSDCanvas *)self->mCanvas topLevelReps];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) recursivelyPerformSelector:sel_viewScrollDidChange];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)i_viewScrollWillChange
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->mLayoutAndRenderOnThreadDuringScroll || !self->mCurrentlyScrolling)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(TSDCanvas *)self->mCanvas topLevelReps];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelector:sel_viewScrollWillChange];
        }

        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasControllerWillScroll:self];
  }

  [MEMORY[0x277CD9FF0] flush];
}

- (void)i_viewScrollingEnded
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->mLayerHostHasBeenTornDown && (!self->mLayoutAndRenderOnThreadDuringScroll || !self->mCurrentlyScrolling))
  {
    [(TSDInteractiveCanvasController *)self endScrollingOperation];
    [(NSRecursiveLock *)self->mSelfSync lock];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(TSDCanvas *)self->mCanvas topLevelReps];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelector:sel_viewScrollingEnded];
        }

        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    if (objc_opt_respondsToSelector())
    {
      [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasControllerDidStopScrolling:self];
    }

    if (!self->mCurrentlyWaitingOnThreadedLayoutAndRender)
    {
      [(TSDInteractiveCanvasController *)self p_updateViewsFromReps];
      [(TSDTrackingController *)[(TSDInteractiveCanvasController *)self trackingController] interactiveCanvasControllerUpdatedRepsFromLayouts:self];
    }

    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    if (self->mSuspendedLowPriorityThreadDispatcher)
    {
      self->mSuspendedLowPriorityThreadDispatcher = 0;
      [+[TSKLowPriorityThreadDispatcher sharedLowPriorityDispatcher](TSKLowPriorityThreadDispatcher "sharedLowPriorityDispatcher")];
    }

    [(NSRecursiveLock *)self->mSelfSync unlock];
  }
}

- (void)i_recordUserViewScale
{
  v3 = [(TSDEditorController *)self->mEditorController textInputEditor];
  if (objc_opt_respondsToSelector())
  {
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] viewScale];
    [v3 targetPointSizeForSelectionWithViewScale:?];
    if (v4 >= 12.0 && v4 <= 72.0)
    {
      [(TSDInteractiveCanvasController *)self p_setTargetPointSize:?];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasControllerDidZoomWithUserGesture:self];
  }
}

- (void)i_repNeedsDisplay:(id)a3
{
  Value = CFDictionaryGetValue(self->mRepLayersByRep, a3);

  [(TSDInteractiveCanvasController *)self setNeedsDisplayOnLayer:Value];
}

- (void)i_repNeedsDisplay:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  Value = CFDictionaryGetValue(self->mRepLayersByRep, a3);
  if (Value)
  {
    v11 = Value;
    [a3 convertNaturalRectToLayerRelative:{x, y, width, height}];

    [(TSDInteractiveCanvasController *)self setNeedsDisplayInRect:v11 onLayer:?];
  }
}

- (BOOL)i_inPrintPreviewMode
{
  [(TSDInteractiveCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(TSDInteractiveCanvasController *)self delegate];

  return [(TSDInteractiveCanvasControllerDelegate *)v3 inPrintPreviewMode];
}

- (id)i_descriptionForViewScale:(double)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate descriptionForCanvasViewScale:a3]) == 0)
  {
    LOBYTE(v7) = 0;
    v6 = [MEMORY[0x277D6C328] numberFormatWithValueType:2 formatString:0 decimalPlaces:0 currencyCode:0 useAccountingStyle:0 negativeStyle:4 showThousandsSeparator:v7 fractionAccuracy:?];

    return [v6 stringFromDouble:a3];
  }

  return result;
}

- (CGRect)i_clippingBoundsForScrollViewEnclosingCanvas
{
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v3 = TSDRectWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate scrollViewClippingBoundsForInteractiveCanvasController:self];
    v3 = v10;
    v5 = v11;
    v7 = v12;
    v9 = v13;
  }

  v14 = v3;
  v15 = v5;
  v16 = v7;
  v17 = v9;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)i_topLevelLayersForTiling
{
  v3 = [(TSDInteractiveCanvasController *)self p_cachedTopLevelTilingLayers];
  if (!v3)
  {
    if (self->_directLayerHostProvider)
    {
      v3 = [MEMORY[0x277D6C318] set];
      mDirectLayerHostsByRep = self->mDirectLayerHostsByRep;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __59__TSDInteractiveCanvasController_i_topLevelLayersForTiling__block_invoke;
      v6[3] = &unk_279D48440;
      v6[4] = v3;
      [(__CFDictionary *)mDirectLayerHostsByRep enumerateKeysAndObjectsUsingBlock:v6];
    }

    else
    {
      v3 = [MEMORY[0x277D6C318] setWithArray:{objc_msgSend(-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self, "layerHost"), "canvasLayer"), "sublayers")}];
      [-[TSDCanvasLayerHosting subviewsController](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
    }

    [(TSDInteractiveCanvasController *)self setP_cachedTopLevelTilingLayers:v3];
  }

  return v3;
}

- (void)p_postNotificationOnMainThreadWithValidLayouts:(id)a3
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v9 = __81__TSDInteractiveCanvasController_p_postNotificationOnMainThreadWithValidLayouts___block_invoke;
  v10 = &unk_279D48468;
  v11 = self;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) != 0 || !self->mLayoutAndRenderOnThreadDuringScroll)
  {
    v9(v8, a3);
  }

  else
  {
    Main = CFRunLoopGetMain();
    v6 = *MEMORY[0x277CBF048];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__TSDInteractiveCanvasController_p_postNotificationOnMainThreadWithValidLayouts___block_invoke_2;
    block[3] = &unk_279D48490;
    block[4] = a3;
    block[5] = v8;
    CFRunLoopPerformBlock(Main, v6, block);
    CFRunLoopWakeUp(Main);
  }
}

uint64_t __81__TSDInteractiveCanvasController_p_postNotificationOnMainThreadWithValidLayouts___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (*(v4 + 401) == 1 && *(v4 + 418) == 1)
  {
    v5 = *(v4 + 448);

    return [v5 addObject:a2];
  }

  else
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *(a1 + 32);

    return [v7 postNotificationName:a2 object:v8];
  }
}

- (void)p_updateCanvasSizeFromLayouts
{
  [(TSDInteractiveCanvasController *)self defaultMinimumUnscaledCanvasSize];
  v3 = TSDRectWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(TSDCanvas *)self->mCanvas i_unscaledRectOfLayouts];
  v28.origin.x = v10;
  v28.origin.y = v11;
  v28.size.width = v12;
  v28.size.height = v13;
  v26.origin.x = v3;
  v26.origin.y = v5;
  v26.size.width = v7;
  v26.size.height = v9;
  v27 = CGRectUnion(v26, v28);
  width = v27.size.width;
  height = v27.size.height;
  [(TSDInteractiveCanvasController *)self canvasScrollingOutset:v27.origin.x];
  v17 = TSDAddSizes(width, height, v16);
  v19 = v18;
  if ([(TSDInteractiveCanvasController *)self isInDynamicOperation])
  {
    [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
    if (v20 > v17)
    {
      [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
      v17 = v21;
    }

    [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
    if (v22 > v19)
    {
      [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
      v19 = v23;
    }
  }

  v24 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [v24 setUnscaledSize:{v17, v19}];
}

- (BOOL)p_allowUpdateViewsFromReps
{
  if ([(TSDInteractiveCanvasController *)self currentlyScrolling])
  {
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    return [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasControllerShouldDeferViewCreation:self]^ 1;
  }

  return 1;
}

- (void)p_updateViewsFromRepsForceUpdate:(BOOL)a3
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_updateViewsFromRepsForceUpdate:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5889, @"This operation must only be performed on the main thread."}];
  }

  if (a3 || [(TSDInteractiveCanvasController *)self p_allowUpdateViewsFromReps]&& [(TSDInteractiveCanvasController *)self canvasView])
  {
    if (self->mCurrentlyWaitingOnThreadedLayoutAndRender)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_updateViewsFromRepsForceUpdate:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5893, @"Should not be called if waiting on background layout"}];
    }

    v10 = [(TSDInteractiveCanvasController *)self layerHost];
    v9 = [(TSDCanvasLayerHosting *)v10 subviewsController];
    [-[TSDCanvasLayerHosting subviewsController](v10 "subviewsController")];
  }
}

- (void)p_updateLayersFromReps
{
  v78 = *MEMORY[0x277D85DE8];
  if (![(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    return;
  }

  v3 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] contentsScale];
  v5 = v4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = v3;
  [v3 bounds];
  [(CALayer *)self->mRepContainerLayer setFrame:TSDRectWithSize()];
  v7 = [(TSDInteractiveCanvasController *)self additionalLayersUnderRepLayers];
  directLayerHostProvider = self->_directLayerHostProvider;
  if (directLayerHostProvider)
  {
    [(TSDRepDirectLayerHostProvider *)directLayerHostProvider directLayerHostUpdateAdditionalLayersUnderRepLayers:v7];
  }

  else if (v7)
  {
    [v6 addObjectsFromArray:?];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v54 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v55 = v6;
  v57 = v10;
  v53 = [(__CFDictionary *)self->mRepLayersByRep allKeys];
  if (self->mLayoutAndRenderOnThreadDuringScroll && !self->mStaticLayoutAndRenderOnThread)
  {
    v11 = [MEMORY[0x277CCACC8] isMainThread] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [(TSDCanvas *)self->mCanvas topLevelReps];
  v12 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v71;
    v15 = *MEMORY[0x277CBF348];
    v16 = *(MEMORY[0x277CBF348] + 8);
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v71 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v70 + 1) + 8 * i);
        v19 = [(TSDInteractiveCanvasController *)self layerForRep:v18];
        v20 = [v9 count];
        [(TSDInteractiveCanvasController *)self p_recursivelyUpdateLayerForRep:v18 accumulatingLayers:v9 andReps:v57];
        if (v19)
        {
          v21 = 0;
        }

        else
        {
          v21 = v11;
        }

        if (v21 == 1)
        {
          v22 = [v9 count];
          if (v20 < v22)
          {
            v23 = v22;
            do
            {
              v24 = [v9 objectAtIndex:v20];
              [v24 setHidden:1];
              mHiddenTopLevelLayers = self->mHiddenTopLevelLayers;
              if (!mHiddenTopLevelLayers)
              {
                mHiddenTopLevelLayers = objc_alloc_init(MEMORY[0x277CBEB18]);
                self->mHiddenTopLevelLayers = mHiddenTopLevelLayers;
              }

              [(NSMutableArray *)mHiddenTopLevelLayers addObject:v24];
              ++v20;
            }

            while (v23 != v20);
          }
        }

        if (-[TSDInteractiveCanvasController shouldClipThemeContentToCanvas](self, "shouldClipThemeContentToCanvas") && [v18 canClipThemeContentToCanvas])
        {
          Value = CFDictionaryGetValue(self->mContainerLayersByRep, v18);
          v27 = [(TSDInteractiveCanvasController *)self canvas];
          [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
          [(TSDCanvas *)v27 convertUnscaledToBoundsRect:TSDRectWithSize()];
          [Value setBounds:?];
          [Value setPosition:{v15, v16}];
          [Value setAnchorPoint:{0.0, 0.0}];
          [Value setMasksToBounds:1];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    }

    while (v13);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v28 = [v53 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v67;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v67 != v30)
        {
          objc_enumerationMutation(v53);
        }

        v32 = *(*(&v66 + 1) + 8 * j);
        if (([v57 containsObject:v32] & 1) == 0)
        {
          v33 = CFDictionaryGetValue(self->mRepLayersByRep, v32);
          v34 = CFDictionaryGetValue(self->mContainerLayersByRep, v32);
          [(TSDInteractiveCanvasController *)self p_discardLayer:v33 forRep:v32];
          [(TSDInteractiveCanvasController *)self p_discardContainerLayer:v34 forRep:v32];
        }
      }

      v29 = [v53 countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v29);
  }

  if (!self->_directLayerHostProvider && ([v9 isEqualToArray:{-[CALayer sublayers](self->mRepContainerLayer, "sublayers")}] & 1) == 0)
  {
    [(CALayer *)self->mRepContainerLayer setSublayers:v9];
  }

  [v55 addObject:self->mRepContainerLayer];
  [(TSDInteractiveCanvasController *)self p_setupPopoutLayerForReps:v57];
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (![(TSDInteractiveCanvasController *)self overlayLayerSuppressed])
  {
    v36 = [(TSDInteractiveCanvasController *)self p_overlayLayerForReps:v57];
    if (v36)
    {
      v37 = v36;
      [v36 setContentsScale:v5];
      [v35 addObject:v37];
    }
  }

  v38 = self->_directLayerHostProvider;
  if (v38)
  {
    [(TSDRepDirectLayerHostProvider *)v38 directLayerHostUpdateRepOverlayLayers:v35];
  }

  else
  {
    [v55 addObjectsFromArray:v35];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v39 = [-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
  v40 = [v39 countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v63;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v63 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v62 + 1) + 8 * k) layer];
        if (v44)
        {
          v45 = v44;
          [v44 setContentsScale:v5];
          [v55 addObject:v45];
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v41);
  }

  if (!self->_directLayerHostProvider)
  {
    [v55 addObjectsFromArray:{objc_msgSend(-[TSDCanvasLayerHosting subviewsController](-[TSDInteractiveCanvasController layerHost](self, "layerHost"), "subviewsController"), "updateAlternateLayersForViews")}];
  }

  v46 = [(TSDInteractiveCanvasController *)self additionalLayersOverRepLayers];
  v47 = self->_directLayerHostProvider;
  if (v47)
  {
    [(TSDRepDirectLayerHostProvider *)v47 directLayerHostUpdateAdditionalLayersAboveRepLayers:v46];
  }

  else
  {
    if (!v46)
    {
      goto LABEL_62;
    }

    [v55 addObjectsFromArray:?];
  }

  if (!self->_directLayerHostProvider)
  {
LABEL_62:
    if (([v55 isEqualToArray:{objc_msgSend(v52, "sublayers")}] & 1) == 0)
    {
      [v52 setSublayers:v55];
    }
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v48 = [v55 countByEnumeratingWithState:&v58 objects:v74 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v59;
    do
    {
      for (m = 0; m != v49; ++m)
      {
        if (*v59 != v50)
        {
          objc_enumerationMutation(v55);
        }

        [(TSDInteractiveCanvasController *)self p_recursivelyUpdateLayerEdgeAntialiasingForLayer:*(*(&v58 + 1) + 8 * m)];
      }

      v49 = [v55 countByEnumeratingWithState:&v58 objects:v74 count:16];
    }

    while (v49);
  }

  [(TSDInteractiveCanvasController *)self setP_cachedTopLevelTilingLayers:0];
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasControllerDidUpdateLayersFromReps:self];
  }
}

- (void)p_recursivelyUpdateLayerForRep:(id)a3 accumulatingLayers:(id)a4 andReps:(id)a5
{
  v82 = *MEMORY[0x277D85DE8];
  v9 = [TSUProtocolCast() layerAndSubviewHost];
  if (self->_directLayerHostProvider)
  {
    Value = CFDictionaryGetValue(self->mDirectLayerHostsByRep, a3);
    directLayerHostProvider = self->_directLayerHostProvider;
    if (directLayerHostProvider)
    {
      v12 = [(TSDRepDirectLayerHostProvider *)directLayerHostProvider directLayerHostForRep:a3];
    }

    else
    {
      v12 = 0;
    }

    if (v12 != Value)
    {
      if (Value)
      {
        [Value directLayerHostUpdateWithContainerLayer:0 forRep:a3];
        CFDictionaryRemoveValue(self->mDirectLayerHostsByRep, a3);
      }

      if (v12)
      {
        CFDictionarySetValue(self->mDirectLayerHostsByRep, a3, v12);
        *&v59[8] = 0;
        *v59 = v9 == 0;
        v13 = 1;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 != 0;
  if (v9)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    a4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = 0;
    v59[0] = 0;
    v12 = 0;
    *&v59[4] = a4;
  }

  else
  {
    v59[0] = v9 == 0;
    *&v59[4] = 0;
  }

LABEL_17:
  [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] contentsScale];
  v16 = v15;
  v17 = CFDictionaryGetValue(self->mContainerLayersByRep, a3);
  if (v17)
  {
    v18 = v17;
    v19 = v17;
    if (v13)
    {
LABEL_19:
      [v12 directLayerHostUpdateWithContainerLayer:v18 forRep:a3];
      goto LABEL_22;
    }
  }

  else
  {
    v18 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v20 = MEMORY[0x277CCACA8];
    v21 = objc_opt_class();
    [v18 setName:{objc_msgSend(v20, "stringWithFormat:", @"containerLayer(%@)", NSStringFromClass(v21))}];
    CFDictionarySetValue(self->mContainerLayersByRep, a3, v18);
    CFDictionarySetValue(self->mRepsByContainerLayer, v18, a3);
    [v18 setDelegate:self];
    if (v13)
    {
      goto LABEL_19;
    }
  }

  [a4 addObject:v18];
LABEL_22:
  v22 = CFDictionaryGetValue(self->mRepLayersByRep, a3);
  v23 = [a3 layerClass];
  v61 = v18;
  if (v22)
  {
    if ([v22 isMemberOfClass:v23])
    {
      goto LABEL_32;
    }

    [(TSDInteractiveCanvasController *)self p_discardLayer:v22 forRep:a3];
  }

  v22 = objc_alloc_init(v23);
  [a3 didCreateLayer:v22];
  CFDictionarySetValue(self->mRepLayersByRep, a3, v22);
  CFDictionarySetValue(self->mRepsByRepLayer, v22, a3);
  [v22 setDelegate:self];
  v24 = objc_opt_class();
  [v22 setName:NSStringFromClass(v24)];
  if (([a3 directlyManagesLayerContent] & 1) == 0)
  {
    [v22 setNeedsDisplay];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v22 setTilingMode:{objc_msgSend(a3, "tilingMode")}];
    [v22 setDrawsInBackground:{objc_msgSend(a3, "canDrawInBackgroundDuringScroll")}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] contentsScale];
    [v22 setContentsScale:?];
  }

LABEL_32:
  v60 = v13;
  if (([a3 layerUpdatesPaused] & 1) == 0)
  {
    [a3 willUpdateLayer:v22];
  }

  if (v22)
  {
    [a5 addObject:a3];
    v57 = v12;
    v58 = v9;
    if (([a3 layerUpdatesPaused] & 1) == 0)
    {
      [a3 updateLayerGeometryFromLayout:v22];
      [v22 setMasksToBounds:{objc_msgSend(a3, "masksToBounds")}];
      [v22 setOpaque:{objc_msgSend(a3, "isOpaque")}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v22 setContentsScale:v16];
      }

      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v26 = [a3 additionalLayersUnderLayer];
      v56 = v25;
      if (v26)
      {
        v27 = v26;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v28 = [v26 countByEnumeratingWithState:&v74 objects:v81 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v75;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v75 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v74 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 && ([a3 repDirectlyManagesContentsScaleOfLayer:v32] & 1) == 0)
              {
                [v32 setContentsScale:v16];
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v74 objects:v81 count:16];
          }

          while (v29);
        }

        v25 = v56;
        [v56 addObjectsFromArray:v27];
      }

      [v25 addObject:v22];
      v33 = [a3 additionalLayersOverLayer];
      if (v33)
      {
        v34 = v33;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v35 = [v33 countByEnumeratingWithState:&v70 objects:v80 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v71;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v71 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v70 + 1) + 8 * j);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [v39 setContentsScale:v16];
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v70 objects:v80 count:16];
          }

          while (v36);
        }

        v25 = v56;
        [v56 addObjectsFromArray:v34];
      }

      [v61 setSublayers:v25];

      v12 = v57;
      v9 = v58;
    }

    v40 = TSUProtocolCast();
    if (v40)
    {
      v41 = v40;
      if (![v40 layerUpdatesPaused] || (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v41, "allowSublayerUpdatesWhenPaused"))
      {
        v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (objc_opt_respondsToSelector())
        {
          [v41 addAdditionalChildBackgroundLayersToArray:v42];
        }

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v43 = [v41 childReps];
        v44 = [v43 countByEnumeratingWithState:&v66 objects:v79 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v67;
          do
          {
            for (k = 0; k != v45; ++k)
            {
              if (*v67 != v46)
              {
                objc_enumerationMutation(v43);
              }

              [(TSDInteractiveCanvasController *)self p_recursivelyUpdateLayerForRep:*(*(&v66 + 1) + 8 * k) accumulatingLayers:v42 andReps:a5];
            }

            v45 = [v43 countByEnumeratingWithState:&v66 objects:v79 count:16];
          }

          while (v45);
        }

        v48 = v41;
        goto LABEL_79;
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v51 = [v41 childReps];
      v52 = [v51 countByEnumeratingWithState:&v62 objects:v78 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v63;
        do
        {
          for (m = 0; m != v53; ++m)
          {
            if (*v63 != v54)
            {
              objc_enumerationMutation(v51);
            }

            [(TSDInteractiveCanvasController *)self p_recursivelyUpdateLayerForRep:*(*(&v62 + 1) + 8 * m) accumulatingLayers:0 andReps:a5];
          }

          v53 = [v51 countByEnumeratingWithState:&v62 objects:v78 count:16];
        }

        while (v53);
      }
    }

    else if (([0 layerUpdatesPaused] & 1) == 0)
    {
      v49 = TSUProtocolCast();
      if (v49)
      {
        v50 = v49;
        v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v48 = v50;
LABEL_79:
        [v48 addAdditionalChildLayersToArray:v42];
        [v22 tilingSafeSetSublayers:v42];

        v12 = v57;
        v9 = v58;
      }
    }
  }

  if (([a3 layerUpdatesPaused] & 1) == 0)
  {
    [a3 didUpdateLayer:v22];
  }

  if ((v59[0] & 1) == 0)
  {
    [objc_msgSend(v9 "containerLayer")];
  }

  if (v60 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 directLayerHostUpdateOverlayLayers:objc_msgSend(a3 forRep:{"overlayLayers"), a3}];
  }
}

- (void)p_discardContainerLayer:(id)a3 forRep:(id)a4
{
  v6 = a3;
  [(TSDInteractiveCanvasController *)self p_recursivelyClearLayerDelegate:a3];
  if (a3)
  {
    CFDictionaryRemoveValue(self->mRepsByContainerLayer, a3);
  }

  if (a4)
  {
    CFDictionaryRemoveValue(self->mContainerLayersByRep, a4);
    if (self->_directLayerHostProvider)
    {
      [CFDictionaryGetValue(self->mDirectLayerHostsByRep a4)];
      CFDictionaryRemoveValue(self->mDirectLayerHostsByRep, a4);
    }
  }
}

- (void)p_recursivelyUpdateLayerEdgeAntialiasingForLayer:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [a3 setAllowsEdgeAntialiasing:1];
  }

  v5 = [a3 mask];
  if (v5)
  {
    [(TSDInteractiveCanvasController *)self p_recursivelyUpdateLayerEdgeAntialiasingForLayer:v5];
  }

  v6 = [objc_msgSend(a3 "sublayers")];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(TSDInteractiveCanvasController *)self p_recursivelyUpdateLayerEdgeAntialiasingForLayer:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)p_discardLayer:(id)a3 forRep:(id)a4
{
  v6 = a3;
  v7 = [(TSDInteractiveCanvasController *)self p_recursivelyClearLayerDelegate:a3];
  if (a3)
  {
    CFDictionaryRemoveValue(self->mRepsByRepLayer, a3);
  }

  if (a4)
  {
    CFDictionaryRemoveValue(self->mRepLayersByRep, a4);
  }

  MEMORY[0x2821F9730](v7);
}

- (void)p_setupPopoutLayerForReps:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v52 = [-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = self;
  [(TSDInteractiveCanvasController *)self visibleBoundsRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v14 = [a3 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v60;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v60 != v16)
        {
          objc_enumerationMutation(a3);
        }

        v18 = [*(*(&v59 + 1) + 8 * i) popoutLayers];
        if (v18)
        {
          v19 = v18;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v20 = [v18 countByEnumeratingWithState:&v55 objects:v63 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v56;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v56 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v55 + 1) + 8 * j);
                [v24 frame];
                v68.origin.x = v7;
                v68.origin.y = v9;
                v68.size.width = v11;
                v68.size.height = v13;
                [v24 setHidden:{!CGRectIntersectsRect(v66, v68)}];
                [v5 addObject:v24];
              }

              v21 = [v19 countByEnumeratingWithState:&v55 objects:v63 count:16];
            }

            while (v21);
          }
        }
      }

      v15 = [a3 countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v15);
  }

  v25 = [v5 count];
  mPopoutLayer = v54->mPopoutLayer;
  if (v25)
  {
    if (!mPopoutLayer)
    {
      v27 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      v54->mPopoutLayer = v27;
      [(CALayer *)v27 setName:@"popout"];
      [(CALayer *)v54->mPopoutLayer setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      [(CALayer *)v54->mPopoutLayer setDelegate:v54];
      [(CALayer *)v54->mPopoutLayer setBackgroundColor:0];
      v28 = [objc_msgSend(v53 "layer")];
      if (!v28)
      {
        v28 = [objc_msgSend(v53 "superview")];
      }

      [v28 addSublayer:v54->mPopoutLayer];
    }

    [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](v54 "layerHost")];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    [(CALayer *)v54->mPopoutLayer bounds];
    v69.origin.x = v30;
    v69.origin.y = v32;
    v69.size.width = v34;
    v69.size.height = v36;
    if (!CGRectEqualToRect(v67, v69))
    {
      [(CALayer *)v54->mPopoutLayer setBounds:v30, v32, v34, v36];
    }

    [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](v54 "layerHost")];
    v38 = v37;
    v40 = v39;
    [v53 frame];
    v42 = v41;
    [v53 contentOffset];
    v44 = v30 + v42 - v43 - v40;
    [v53 frame];
    v46 = v45;
    [v53 contentOffset];
    v48 = v32 + v46 - v47 - v38;
    [(CALayer *)v54->mPopoutLayer position];
    if (v50 != v44 || v49 != v48)
    {
      [(CALayer *)v54->mPopoutLayer setPosition:v44, v48];
    }

    [(CALayer *)v54->mPopoutLayer setSublayers:v5];
  }

  else
  {
    [(CALayer *)mPopoutLayer setDelegate:0];
    [(CALayer *)v54->mPopoutLayer removeFromSuperlayer];

    v54->mPopoutLayer = 0;
  }
}

- (id)p_overlayLayerForReps:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      v9 = 0;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        if (!self->_directLayerHostProvider || !CFDictionaryGetValue(self->mDirectLayerHostsByRep, *(*(&v36 + 1) + 8 * v9)) || (objc_opt_respondsToSelector() & 1) == 0)
        {
          v11 = [v10 overlayLayers];
          if (v11)
          {
            [v5 addObjectsFromArray:v11];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v7);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = [(TSDInteractiveCanvasController *)self p_decorators];
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v32 + 1) + 8 * v16) decoratorOverlayLayers];
        if (v17)
        {
          [v5 addObjectsFromArray:v17];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v14);
  }

  if ([v5 count] || self->mShowGrayOverlay)
  {
    mOverlayLayer = self->mOverlayLayer;
    if (!mOverlayLayer)
    {
      v19 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      self->mOverlayLayer = v19;
      [(CALayer *)v19 setName:@"overlayLayer"];
      [(CALayer *)self->mOverlayLayer setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      [(CALayer *)self->mOverlayLayer setDelegate:self];
      [(CALayer *)self->mOverlayLayer setZPosition:3.0];
      mOverlayLayer = self->mOverlayLayer;
    }

    [(CALayer *)mOverlayLayer setSublayers:v5];
    if (self->mShowGrayOverlay)
    {
      DeviceRGB = TSUCGColorCreateDeviceRGB();
      [(CALayer *)self->mOverlayLayer setBackgroundColor:DeviceRGB];
      CGColorRelease(DeviceRGB);
    }

    else
    {
      [(CALayer *)self->mOverlayLayer setBackgroundColor:0];
    }

    [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [(CALayer *)self->mOverlayLayer bounds];
    v44.origin.x = v22;
    v44.origin.y = v24;
    v44.size.width = v26;
    v44.size.height = v28;
    if (!CGRectEqualToRect(v43, v44))
    {
      [(CALayer *)self->mOverlayLayer setBounds:v22, v24, v26, v28];
    }

    [(CALayer *)self->mOverlayLayer position];
    if (v30 != v22 || v29 != v24)
    {
      [(CALayer *)self->mOverlayLayer setPosition:v22, v24];
    }
  }

  else
  {
    [(CALayer *)self->mOverlayLayer setDelegate:0];
    [(CALayer *)self->mOverlayLayer removeFromSuperlayer];

    self->mOverlayLayer = 0;
  }

  return self->mOverlayLayer;
}

- (void)p_drawLayerWithReadLock:(id)a3
{
  v5 = [a3 objectForKey:@"TSDInteractiveCanvasControllerLayerKey"];
  v6 = [objc_msgSend(a3 objectForKey:{@"TSDInteractiveCanvasControllerContextKey", "pointerValue"}];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_drawLayerWithReadLock:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6459, @"invalid nil value for '%s'", "layer"}];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x277D6C290] currentHandler];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_drawLayerWithReadLock:]"];
  [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6460, @"invalid nil value for '%s'", "ctx"}];
LABEL_3:
  Value = CFDictionaryGetValue(self->mRepsByRepLayer, v5);
  if (Value)
  {

    [(TSDInteractiveCanvasController *)self i_drawRepWithReadLock:Value inContext:v7 forLayer:v5];
  }
}

- (void)i_drawRepWithReadLock:(id)a3 inContext:(CGContext *)a4 forLayer:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_drawRepWithReadLock:inContext:forLayer:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6472, @"invalid nil value for '%s'", "rep"}];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x277D6C290] currentHandler];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_drawRepWithReadLock:inContext:forLayer:]"];
  [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6473, @"invalid nil value for '%s'", "ctx"}];
LABEL_3:
  CGContextSaveGState(a4);
  [a3 setupForDrawingInLayer:a5 context:a4];
  [a3 drawInLayerContext:a4];
  [a3 didDrawInLayer:a5 context:a4];

  CGContextRestoreGState(a4);
}

- (BOOL)p_endEditingToBeginEditingRep:(id)a3
{
  self->mShouldAutoscrollToSelectionAfterLayout = 0;
  self->mShouldCenterSelectionWhenAutoscrolling = 0;
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate canvasWillEndEditingToBeginEditingRep:a3];
  }

  v5 = [(TSDInteractiveCanvasController *)self editorController];
  v6 = [(TSDInteractiveCanvasController *)self canvasEditor];
  if (-[TSDEditorController textInputEditor](v5, "textInputEditor") == v6 || [-[TSDEditorController currentEditors](v5 "currentEditors")] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = [(TSDCanvasEditor *)v6 editorToPopToOnEndEditing];
  if (v8)
  {
    [(TSDEditorController *)v5 popToEditor:v8];
  }

  [(TSDEditorController *)v5 setTextInputEditor:v6];
  return 1;
}

- (id)p_backgroundLayoutAndRenderState
{
  result = self->mBackgroundLayoutAndRenderState;
  if (!result)
  {
    result = [[TSDBackgroundLayoutAndRenderState alloc] initWithDelegate:self];
    self->mBackgroundLayoutAndRenderState = result;
  }

  return result;
}

- (BOOL)p_shouldLayoutAndRenderOnThreadForcePendingLayout:(BOOL)a3
{
  if (!self->mLayoutAndRenderOnThreadDuringScroll)
  {
    return 0;
  }

  v3 = a3;
  if ((![(TSDInteractiveCanvasController *)self p_currentlyScrolling]|| ![(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] window]) && !self->mStaticLayoutAndRenderOnThread)
  {
    return 0;
  }

  if (self->mDisableThreadedLayoutAndRender)
  {
    return 0;
  }

  self->mLayoutAndRenderOnThreadDuringScroll = 0;
  v5 = 1;
  self->mTemporarilyDisabledLayoutAndRenderOnThreadDuringScroll = 1;
  if (v3)
  {
    [(TSDInteractiveCanvasController *)self layoutIfNeeded];
    [MEMORY[0x277CD9FF0] flush];
  }

  self->mTemporarilyDisabledLayoutAndRenderOnThreadDuringScroll = 0;
  self->mLayoutAndRenderOnThreadDuringScroll = 1;
  return v5;
}

- (void)p_viewScrollingEnded
{
  if (!self->mStaticLayoutAndRenderOnThread && !self->mHasBeenTornDown)
  {
    if (self->mLayerHostHasBeenTornDown)
    {
      v3 = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_viewScrollingEnded]"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6596, @"not expecting layerHost to have been torn down at this point"}];
    }

    if (self->mLayoutAndRenderOnThreadDuringScroll)
    {
      [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
    }

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_i_viewScrollingEnded object:0];

    [(TSDInteractiveCanvasController *)self performSelector:sel_i_viewScrollingEnded withObject:0 afterDelay:0.0];
  }
}

- (void)p_invalidateForBackgroundLayout
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_invalidateForBackgroundLayout]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6610, @"This operation must only be performed on the main thread."}];
  }

  if ([(TSDInteractiveCanvasController *)self p_shouldLayoutAndRenderOnThread])
  {
    self->mCurrentlyWaitingOnThreadedLayoutAndRender = 1;
    v5 = [(TSDInteractiveCanvasController *)self p_backgroundLayoutAndRenderState];

    [v5 setNeedsLayoutAndRender];
  }
}

- (void)p_invalidateTilingLayers
{
  if (self->mCreateRepsForOffscreenLayouts)
  {
    if (!self->mCurrentlyWaitingOnThreadedLayoutAndRender)
    {
      if ([(TSDInteractiveCanvasController *)self p_shouldLayoutAndRenderOnThreadForcePendingLayout:!self->mForceTilingLayoutOnThreadWhenScrolling])
      {
        self->mCurrentlyWaitingOnThreadedLayoutAndRender = 1;
        v3 = [(TSDInteractiveCanvasController *)self p_backgroundLayoutAndRenderState];
      }

      else
      {
        v3 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
      }

      [v3 setNeedsLayoutForTilingLayers];
    }
  }

  else if (!self->mCurrentlyWaitingOnThreadedLayoutAndRender)
  {

    [(TSDInteractiveCanvasController *)self invalidateVisibleBoundsInBackground];
  }
}

- (void)p_textGesturesDidEndNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->mTextGesturesInFlight)
  {
    self->mTextGesturesInFlight = 0;
    if (self->mSelectionChangeNotificationDeferredEditor)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate allowTextEditingToBegin])
      {
        [(TSDInteractiveCanvasController *)self p_editorDoneChangingSelection:self->mSelectionChangeNotificationDeferredEditor];
      }

      if (self->mShouldAutoscrollToSelectionAfterGestures && !self->mShouldAutoscrollToSelectionAfterLayout)
      {
        [(TSDInteractiveCanvasController *)self scrollToPrimarySelection];
      }

      self->mSelectionChangeNotificationDeferredEditor = 0;
    }

    if (![(TSDInteractiveCanvasController *)self currentlyScrolling])
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v4 = [(TSDCanvas *)self->mCanvas topLevelReps];
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v9 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_gesturesDidEnd];
          }

          v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }
    }
  }
}

- (void)p_editorDidChangeSelection:(id)a3 withSelectionFlags:(unint64_t)a4
{
  v4 = a4;
  if ([(TSDInteractiveCanvasController *)self canvasEditor]== a3)
  {
    [(TSDInteractiveCanvasController *)self invalidateLayers];
  }

  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate selectionDidChange];
  }

  [(UITextInputDelegate *)[(TSDTextInputResponder *)self->mTextInputResponder inputDelegate] selectionDidChange:self->mTextInputResponder];
  if (self->mTextGesturesInFlight)
  {
    self->mSelectionChangeNotificationDeferredEditor = a3;
    v7 = (v4 >> 6) & 1;
    self->mShouldAnimateAutoscroll = (v4 & 0x10) != 0;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  self->mShouldAutoscrollToSelectionAfterGestures = v7;
}

- (void)p_editorDoneChangingSelection:(id)a3 withFlags:(unint64_t)a4
{
  v7 = [(TSDEditorController *)self->mEditorController textInputEditor];
  v8 = TSUProtocolCast();
  [(TSDInteractiveCanvasController *)self p_maybeSetTextResponderEditorTo:v8];
  [(TSDTextInputResponder *)self->mTextInputResponder editorDidChangeSelection:v7 withFlags:a4];
  if (v8 && v7 != [(TSDEditorController *)self->mEditorController textInputEditor])
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_editorDoneChangingSelection:withFlags:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6751, @"Text input editor changed during -[TSDInteractiveCanvasController p_editorDoneChangingSelection]."}];
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_editorDoneChangingSelection:withFlags:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6752, @"If the text input editor changes during p_editorDoneChangingSelection, you are likely to zombie 'editor' right now:"}];
  }

  v13 = objc_opt_respondsToSelector();
  mDelegate = self->mDelegate;
  if (v13)
  {

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate editorDidChangeSelectionWithTextInputEditor:v7 changingEditor:a3];
  }

  else if (objc_opt_respondsToSelector())
  {
    v15 = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)v15 editorDidChangeSelection:v7];
  }
}

- (double)p_targetPointSize
{
  result = self->mTargetPointSize;
  if (result == 0.0)
  {
    [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
    v5 = v4;
    result = v4;
    self->mTargetPointSize = result;
    if (v5 == 0.0)
    {
      self->mTargetPointSize = 17.0;
      return 17.0;
    }
  }

  return result;
}

- (void)p_setTargetPointSize:(double)a3
{
  self->mTargetPointSize = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  *&v5 = a3;
  [v4 setFloat:@"TSDTargetPointSize" forKey:v5];
}

- (BOOL)p_centerOnInitialSelection
{
  v2 = +[TSKApplicationDelegate sharedDelegate];

  return [v2 centerOnInitialSelection];
}

- (CGRect)p_outsetSelectionRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsNull(a3))
  {
    v8 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v10 = *(MEMORY[0x277CBF398] + 16);
    v11 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v21 = CGRectInset(v20, -15.0, -15.0);
    v8 = v21.origin.x;
    v9 = v21.origin.y;
    v10 = v21.size.width;
    v11 = v21.size.height;
  }

  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self outsetSelectionRect:x, y, width, height];
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v11 = v15;
  }

  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)p_autoscrollToSelection:(id)a3 withInfo:(id)a4 isInitialSelection:(BOOL)a5 focusRect:(CGRect)a6 scrollImmediately:(BOOL)a7 skipZoom:(BOOL)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = a5;
  v120 = *MEMORY[0x277D85DE8];
  v18 = [(TSDEditorController *)self->mEditorController textInputEditor];
  if (self->mAnimatingViewScale)
  {
    return;
  }

  v19 = v18;
  if ([(TSDInteractiveCanvasController *)self p_shouldSuppressAutozoomForEditor:v18]|| !a7 && self->mTextGesturesInFlight)
  {
    return;
  }

  v20 = *MEMORY[0x277CBF398];
  v21 = *(MEMORY[0x277CBF398] + 8);
  v22 = *(MEMORY[0x277CBF398] + 16);
  v23 = *(MEMORY[0x277CBF398] + 24);
  v113 = v21;
  v114 = *MEMORY[0x277CBF398];
  v111 = v23;
  v112 = v22;
  if (a4)
  {
    v24 = [(TSDInteractiveCanvasController *)self layoutForInfoNearestVisibleRect:a4 intersectingSelection:a3];
    if (v24 || (v24 = [(TSDInteractiveCanvasController *)self layoutForInfo:a4], v28 = v23, v27 = v22, v26 = v21, v25 = v20, v24))
    {
      v29 = v24;
      [v24 rectForSelection:{a3, v25, v26, v27, v28}];
      [v29 rectInRoot:?];
      [(TSDInteractiveCanvasController *)self p_outsetSelectionRect:?];
      v20 = v30;
      v21 = v31;
      v22 = v32;
      v23 = v33;
      if (objc_opt_respondsToSelector())
      {
        [v19 zoomRectForSelection:a3];
      }

      else
      {
        [v29 frameInRoot];
      }

      [(TSDInteractiveCanvasController *)self p_outsetSelectionRect:?];
    }
  }

  else
  {
    v34 = TSUProtocolCast();
    v28 = v23;
    v27 = v22;
    v26 = v21;
    v25 = v20;
    if (v34)
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v35 = [v34 infos];
      v36 = [v35 countByEnumeratingWithState:&v115 objects:v119 count:16];
      v28 = v23;
      v27 = v22;
      v20 = v114;
      v26 = v21;
      v25 = v114;
      if (v36)
      {
        v37 = v36;
        v38 = *v116;
        v20 = v114;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v116 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = [(TSDInteractiveCanvasController *)self layoutForInfoNearestVisibleRect:*(*(&v115 + 1) + 8 * i)];
            if (v40)
            {
              v41 = v40;
              v42 = [(TSDInteractiveCanvasController *)self p_repForLayout:v40 createIfNeeded:1];
              if (v42)
              {
                [v42 frameInUnscaledCanvasIncludingChrome];
              }

              else
              {
                [v41 frameInRoot];
              }

              [(TSDInteractiveCanvasController *)self p_outsetSelectionRect:?];
              v129.origin.x = v43;
              v129.origin.y = v44;
              v129.size.width = v45;
              v129.size.height = v46;
              v121.origin.x = v20;
              v121.origin.y = v21;
              v121.size.width = v22;
              v121.size.height = v23;
              v122 = CGRectUnion(v121, v129);
              v20 = v122.origin.x;
              v21 = v122.origin.y;
              v22 = v122.size.width;
              v23 = v122.size.height;
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v115 objects:v119 count:16];
        }

        while (v37);
        v28 = v111;
        v27 = v112;
        v26 = v113;
        v25 = v114;
      }
    }
  }

  v106 = v28;
  v109 = v25;
  v100 = v26;
  v102 = v27;
  v123.origin.x = v20;
  v123.origin.y = v21;
  v123.size.width = v22;
  v123.size.height = v23;
  if (!CGRectIsNull(v123))
  {
    v124.size.height = v106;
    v124.origin.x = v109;
    v124.origin.y = v100;
    v124.size.width = v102;
    if (!CGRectIsEmpty(v124))
    {
      if ([(TSDInteractiveCanvasController *)self shouldZoomOnSelectionChange])
      {
        if (objc_opt_respondsToSelector())
        {
          [(TSDInteractiveCanvasController *)self p_targetPointSize];
          [v19 viewScaleForSelectionWithTargetPointSize:?];
          *&v47 = v47;
          if (*&v47 > 0.0)
          {
            v48 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
            [(TSDInteractiveCanvasController *)self fitWidthViewScale];
            [v48 maximumPinchViewScale];
            TSUClamp();
            *&v49 = v49;
            v99 = *&v49;
            [(TSDInteractiveCanvasController *)self visibleUnscaledRect];
            v93 = v51;
            v96 = v50;
            v90 = v53;
            v91 = v52;
            [(TSDInteractiveCanvasController *)self visibleUnscaledRectForAutoscroll];
            v130.origin.x = v54;
            v130.origin.y = v55;
            v130.size.width = v56;
            v130.size.height = v57;
            v125.origin.y = v93;
            v125.origin.x = v96;
            v125.size.height = v90;
            v125.size.width = v91;
            if (!CGRectEqualToRect(v125, v130))
            {
              v58 = [MEMORY[0x277D6C290] currentHandler];
              v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_autoscrollToSelection:withInfo:isInitialSelection:focusRect:scrollImmediately:skipZoom:]"];
              [v58 handleFailureInFunction:v59 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6883, @"Scrolling automatically in an unsupported configuration!"}];
            }

            [(TSDInteractiveCanvasController *)self visibleBoundsRect];
            v61 = v99;
            v94 = v62;
            v97 = v60 / v99;
            if (v22 > v97)
            {
              v98 = v60;
              [(TSDInteractiveCanvasController *)self fitWidthViewScale];
              [v48 maximumPinchViewScale];
              TSUClamp();
              *&v63 = v63;
              v99 = *&v63;
              v61 = *&v63;
              v97 = v98 / *&v63;
            }

            v92 = v61;
            if (v14)
            {
              v64 = [(TSDInteractiveCanvasController *)self p_centerOnInitialSelection];
              if (v64)
              {
                v68 = 1;
LABEL_40:
                v95 = v94 / v92;
                if (v109 > v20)
                {
                  v69 = [MEMORY[0x277D6C290] currentHandler];
                  v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_autoscrollToSelection:withInfo:isInitialSelection:focusRect:scrollImmediately:skipZoom:]"];
                  v64 = [v69 handleFailureInFunction:v70 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6899, @"zoomrect should be a superrect of target rect"}];
                }

                v67.n128_f64[0] = v95;
                v66.n128_f64[0] = v97;
                v71 = (v97 - v22) * 0.5;
                if (v71 < 0.0)
                {
                  v71 = 0.0;
                }

                v65.n128_f64[0] = v20 - v71;
                v72 = (v95 - v23) * 0.5;
                if (v72 < 0.0)
                {
                  v72 = 0.0;
                }

                v73 = TSDRectWithOriginAndSize(v64, v65, v21 - v72, v66, v67);
                v103 = TSDTranslatedRectMaximizingOverlapWithRect(v73, v74, v75, v76, v109, v100, v102, v106);
                v107 = v77;
                if ((v68 & 1) == 0)
                {
                  v101 = v79;
                  v110 = v78;
                  v126.origin.x = x;
                  v126.origin.y = y;
                  v126.size.width = width;
                  v126.size.height = height;
                  v131.origin.y = v113;
                  v131.origin.x = v114;
                  v131.size.height = v111;
                  v131.size.width = v112;
                  if (!CGRectEqualToRect(v126, v131))
                  {
                    TSDTranslatedRectMaximizingOverlapWithRect(v103, v107, v110, v101, x, y, width, height);
                  }
                }

                [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
                [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] unscaledSize];
                TSUClamp();
                v104 = v80;
                [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
                [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] unscaledSize];
                TSUClamp();
                [(TSDInteractiveCanvasController *)self clampedUnscaledContentOffset:v104 forViewScale:v81, v99];
                if (!a8)
                {
                  v105 = v83;
                  v108 = v82;
                  [(TSDInteractiveCanvasController *)self viewScale];
                  v84 = v99;
                  if (v85 != v99 || (([(TSDInteractiveCanvasController *)self contentOffset], v84 = v99, v108 == v87) ? (v88 = v105 == v86) : (v88 = 0), !v88))
                  {
                    [(TSDInteractiveCanvasController *)self setViewScale:1 contentOffset:1 clampOffset:v84 animated:v108, v105];
                    v21 = v113;
                    v20 = v114;
                    v23 = v111;
                    v22 = v112;
                  }
                }

                goto LABEL_56;
              }
            }

            v64 = [(TSDInteractiveCanvasController *)self viewScale];
            if (v65.n128_f64[0] != v99)
            {
              v68 = 0;
              goto LABEL_40;
            }
          }
        }
      }
    }
  }

LABEL_56:
  v127.origin.x = v20;
  v127.origin.y = v21;
  v127.size.width = v22;
  v127.size.height = v23;
  if (!CGRectIsNull(v127))
  {
    v128.origin.x = x;
    v128.origin.y = y;
    v128.size.width = width;
    v128.size.height = height;
    if (!CGRectIsNull(v128))
    {
      v23 = height;
      v22 = width;
      v21 = y;
      v20 = x;
    }

    mShouldAnimateAutoscroll = self->mShouldAnimateAutoscroll;
    if (self->mShouldCenterSelectionWhenAutoscrolling)
    {
      [(TSDInteractiveCanvasController *)self scrollRectToVisibleCenter:mShouldAnimateAutoscroll animated:1 onlyScrollNecessaryAxes:v20, v21, v22, v23];
    }

    else
    {
      [(TSDInteractiveCanvasController *)self scrollRectToVisible:mShouldAnimateAutoscroll animated:v20, v21, v22, v23];
    }
  }
}

- (void)i_syncWithLayoutThread
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__TSDInteractiveCanvasController_i_syncWithLayoutThread__block_invoke;
  v2[3] = &unk_279D46770;
  v2[4] = self;
  [(TSDInteractiveCanvasController *)self p_acquireLockAndPerformAction:v2];
}

- (void)animateToViewScale:(double)a3 contentOffset:(CGPoint)a4 duration:(double)a5 forceAnimation:(BOOL)a6 completion:(id)a7
{
  y = a4.y;
  x = a4.x;
  v85[1] = *MEMORY[0x277D85DE8];
  if (!a6 && ([-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")], v13 == a3) && (-[TSDInteractiveCanvasController contentOffset](self, "contentOffset"), x == v15) && y == v14)
  {
    if (a7)
    {
      v16 = *(a7 + 2);

      v16(a7, 1);
    }
  }

  else if (!self->mAnimatingViewScale)
  {
    v59 = x;
    v60 = y;
    v61 = a5;
    self->mAnimatingViewScale = 1;
    v17 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasView];
    v18 = [v17 canvasLayer];
    v19 = [v17 enclosingScrollView];
    [(TSDInteractiveCanvasController *)self i_viewWillBeginZooming];
    [v18 bounds];
    v21 = v20;
    v23 = v22;
    [v18 contentInset];
    v25 = v24;
    v27 = v26;
    memset(&v83, 0, sizeof(v83));
    CGAffineTransformMakeTranslation(&v83, -v21, -v23);
    v82 = v83;
    CGAffineTransformTranslate(&v62, &v82, v27, v25);
    *&v83.c = *&v62.m13;
    *&v83.tx = *&v62.m21;
    *&v83.a = *&v62.m11;
    [v17 setTransform:&v62];
    [v18 bounds];
    v29 = v28;
    [v18 bounds];
    v56 = v27;
    v57 = v25;
    [v18 setBounds:{v27, v25, v29}];
    [(TSDInteractiveCanvasController *)self viewScale];
    v31 = v30;
    memset(&v82, 0, sizeof(v82));
    v58 = a3;
    v32 = a3 / v30;
    if (v17)
    {
      [v17 transform];
    }

    m = v82;
    CGAffineTransformTranslate(&v62, &m, v21, v23);
    *&v82.c = *&v62.m13;
    *&v82.tx = *&v62.m21;
    *&v82.a = *&v62.m11;
    *&m.a = *&v62.m11;
    *&m.c = *&v62.m13;
    *&m.tx = *&v62.m21;
    CGAffineTransformScale(&v62, &m, a3 / v31, a3 / v31);
    *&v82.a = *&v62.m11;
    *&v82.c = *&v62.m13;
    *&v82.tx = *&v62.m21;
    [v18 position];
    v34 = v33;
    v36 = v35;
    [v19 contentOffset];
    v38 = v37;
    v40 = v39;
    v41 = TSDSubtractPoints(v37, v39, v34);
    v43 = TSDMultiplyPointScalar(v41, v42, v32);
    v45 = TSDSubtractPoints(v43, v44, v41);
    v46 = TSDSubtractPoints(v34, v36, v45) - (v56 - v56 * v32 + -(v38 - v59 * v31) * v32);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v74 = __102__TSDInteractiveCanvasController_animateToViewScale_contentOffset_duration_forceAnimation_completion___block_invoke;
    v75 = &unk_279D484B8;
    v48 = v47 - (v57 - v57 * v32 + -(v40 - v60 * v31) * v32);
    v78 = v82;
    v76 = v17;
    v77 = v18;
    v79 = v46;
    v80 = v48;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v64 = __102__TSDInteractiveCanvasController_animateToViewScale_contentOffset_duration_forceAnimation_completion___block_invoke_2;
    v65 = &unk_279D484E0;
    v66 = v18;
    v67 = v17;
    v70 = v58;
    v71 = v59;
    v72 = v60;
    v68 = self;
    v69 = a7;
    if (objc_opt_respondsToSelector())
    {
      [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self willAnimateToViewScale:v58 withDuration:v61 unscaledContentOffset:v59, v60];
    }

    v49 = [MEMORY[0x277CCAB98] defaultCenter];
    v84 = @"TSDInteractiveCanvasControllerDurationKey";
    *&v50 = v61;
    v85[0] = [MEMORY[0x277CCABB0] numberWithFloat:v50];
    [v49 postNotificationName:@"TSDCanvasUpdateZoomNotification" object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v85, &v84, 1)}];
    if (v61 <= 0.0)
    {
      v74(v73);
      v64(v63);
    }

    else
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setCompletionBlock:v63];
      v51 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
      [v51 setToValue:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGPoint:", v46, v48)}];
      v52 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
      v53 = MEMORY[0x277CCAE60];
      m = v82;
      CATransform3DMakeAffineTransform(&v62, &m);
      [v52 setToValue:{objc_msgSend(v53, "valueWithCATransform3D:", &v62)}];
      v54 = [MEMORY[0x277CD9E00] animation];
      [v54 setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v51, v52, 0)}];
      [v54 setDuration:v61];
      [v54 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7B8])}];
      [v54 setRemovedOnCompletion:0];
      [v54 setFillMode:*MEMORY[0x277CDA230]];
      mCurrentAnimation = self->mCurrentAnimation;
      if (mCurrentAnimation)
      {
        [(TSDCanvasAnimation *)mCurrentAnimation beginTime];
        [v54 setBeginTime:?];
        [v54 setBeginTimeMode:{-[TSDCanvasAnimation beginTimeMode](self->mCurrentAnimation, "beginTimeMode")}];
      }

      [v18 addAnimation:v54 forKey:@"viewScaleAnimation"];
      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

uint64_t __102__TSDInteractiveCanvasController_animateToViewScale_contentOffset_duration_forceAnimation_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4[0] = *(a1 + 48);
  v4[1] = v2;
  v4[2] = *(a1 + 80);
  [*(a1 + 32) setTransform:v4];
  return [*(a1 + 40) setPosition:{*(a1 + 96), *(a1 + 104)}];
}

uint64_t __102__TSDInteractiveCanvasController_animateToViewScale_contentOffset_duration_forceAnimation_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeAnimationForKey:@"viewScaleAnimation"];
  [objc_msgSend(objc_msgSend(*(a1 + 40) "enclosingScrollView")];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CD9DE8] + 80);
  v8[4] = *(MEMORY[0x277CD9DE8] + 64);
  v8[5] = v3;
  v4 = *(MEMORY[0x277CD9DE8] + 112);
  v8[6] = *(MEMORY[0x277CD9DE8] + 96);
  v8[7] = v4;
  v5 = *(MEMORY[0x277CD9DE8] + 16);
  v8[0] = *MEMORY[0x277CD9DE8];
  v8[1] = v5;
  v6 = *(MEMORY[0x277CD9DE8] + 48);
  v8[2] = *(MEMORY[0x277CD9DE8] + 32);
  v8[3] = v6;
  [v2 setTransform:v8];
  [*(a1 + 48) p_applyViewScale:*(a1 + 64) andContentOffset:{*(a1 + 72), *(a1 + 80)}];
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 48) + 8) interactiveCanvasControllerDidAnimateViewScale:?];
  }

  *(*(a1 + 48) + 496) = 0;
  [*(a1 + 48) viewDidEndZooming];
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)p_applyViewScale:(double)a3 andContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  self->mIgnoreContentOffsetChanges = 1;
  [(TSDInteractiveCanvasController *)self setViewScale:a3];
  self->mIgnoreContentOffsetChanges = 0;

  [(TSDInteractiveCanvasController *)self setContentOffset:0 animated:x, y];
}

- (void)doubleTappedCanvasBackgroundAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate doubleTappedCanvasBackgroundAtPoint:x, y];
  }
}

- (id)viewWithTransferredLayers
{
  if (![(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController viewWithTransferredLayers]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 7136, @"viewWithTransferredLayers makes sense only when the canvas is interactive"}];
  }

  v5 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasView];
  v6 = objc_alloc(MEMORY[0x277D75D18]);
  [v5 frame];
  v7 = [v6 initWithFrame:?];
  [v5 bounds];
  [v7 setBounds:?];
  v8 = [(NSArray *)[(CALayer *)[(TSDInteractiveCanvasController *)self repContainerLayer] sublayers] copy];
  [v8 makeObjectsPerformSelector:sel_removeFromSuperlayer];
  [objc_msgSend(v7 "layer")];

  self->mOverlayLayer = 0;

  return v7;
}

- (CGPoint)lastTapPoint
{
  x = self->mLastTapPoint.x;
  y = self->mLastTapPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)p_visibleBoundsRectForTiling
{
  objc_copyStruct(v6, &self->mVisibleBoundsRectForTiling, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)p_visibleUnscaledRect
{
  objc_copyStruct(v6, &self->mVisibleUnscaledRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)screenTopContentPlacement
{
  [(TSDInteractiveCanvasController *)self i_clippingBoundsForScrollViewEnclosingCanvas];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  MidX = CGRectGetMidX(v19);
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v9 = MidX / v8;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MinY = CGRectGetMinY(v20);
  v11 = [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v14.n128_f64[0] = v9;

  v12.n128_f64[0] = MinY / v13;
  TSDContentPlacementWithAnchorPoint(v11, v14, v12);
  result.var0.y = v16;
  result.var0.x = v15;
  return result;
}

- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)screenBottomContentPlacement
{
  [(TSDInteractiveCanvasController *)self i_clippingBoundsForScrollViewEnclosingCanvas];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  MidX = CGRectGetMidX(v19);
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v9 = MidX / v8;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MaxY = CGRectGetMaxY(v20);
  v11 = [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v14.n128_f64[0] = v9;

  v12.n128_f64[0] = MaxY / v13;
  TSDContentPlacementWithAnchorPoint(v11, v14, v12);
  result.var0.y = v16;
  result.var0.x = v15;
  return result;
}

- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)touchContentPlacement
{
  v2 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] asiOSCVC];

  [v2 touchContentPlacement];
  result.var0.y = v4;
  result.var0.x = v3;
  return result;
}

- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)centerPlusMovementContentPlacement
{
  v2 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] asiOSCVC];

  [v2 centerPlusMovementContentPlacement];
  result.var0.y = v4;
  result.var0.x = v3;
  return result;
}

- (id)clampContentLocation:(id)a3 forPlacement:(id)a4
{
  y = a4.var0.y;
  x = a4.var0.x;
  v7 = [(TSDInteractiveCanvasController *)self convertContentLocation:a3 fromPlacement:a4.var0.x toPlacement:a4.var0.y, 0.0, 0.0];
  [v7 unscaledPoint];
  v9 = v8;
  v11 = v10;
  [v7 viewScale];
  [(TSDInteractiveCanvasController *)self clampedUnscaledContentOffset:v9 forViewScale:v11, v12];
  [v7 setUnscaledPoint:?];

  return [(TSDInteractiveCanvasController *)self convertContentLocation:v7 fromPlacement:0.0 toPlacement:0.0, x, y];
}

- (id)convertContentLocation:(id)a3 fromPlacement:(id)a4 toPlacement:(id)a5
{
  v7 = TSDSubtractPoints(a5.var0.x, a5.var0.y, a4.var0.x);
  v9 = v8;
  [a3 unscaledPoint];
  v11 = v10;
  v13 = v12;
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v15 = v7 * v14;
  [a3 viewScale];
  v17 = v11 + v15 / v16;
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v19 = v9 * v18;
  [a3 viewScale];
  v21 = v13 + v19 / v20;
  [a3 viewScale];

  return [TSDContentLocation contentLocationWithUnscaledPoint:v17 viewScale:v21, v22];
}

- (id)clampedCenterContentLocationForPoint:(CGPoint)a3 withPlacement:(id)a4 viewScale:(double)a5
{
  v6 = [(TSDInteractiveCanvasController *)self convertContentLocation:[TSDContentLocation fromPlacement:"contentLocationWithUnscaledPoint:viewScale:" toPlacement:a3.x contentLocationWithUnscaledPoint:a5 viewScale:?], a4.var0.x, a4.var0.y, 0.5, 0.5];

  return [(TSDInteractiveCanvasController *)self clampContentLocation:v6 forPlacement:0.5, 0.5];
}

- (CGPoint)clampedCenterPointForPoint:(CGPoint)a3 withPlacement:(id)a4 viewScale:(double)a5
{
  v5 = [(TSDInteractiveCanvasController *)self clampedCenterContentLocationForPoint:a3.x withPlacement:a3.y viewScale:a4.var0.x, a4.var0.y, a5];

  [v5 unscaledPoint];
  result.y = v7;
  result.x = v6;
  return result;
}

- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)contentPlacementForPoint:(CGPoint)a3 inView:(id)a4
{
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] convertPoint:a4 fromView:a3.x, a3.y];
  v6 = v5;
  v8 = v7;
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] contentOffset];
  v10 = TSDSubtractPoints(v6, v8, v9);
  v12 = v11;
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v14 = v10 / v13;
  v15 = [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v18.n128_f64[0] = v14;

  v16.n128_f64[0] = v12 / v17;
  TSDContentPlacementWithAnchorPoint(v15, v18, v16);
  result.var0.y = v20;
  result.var0.x = v19;
  return result;
}

@end