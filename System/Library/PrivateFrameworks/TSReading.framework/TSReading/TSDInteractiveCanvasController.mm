@interface TSDInteractiveCanvasController
+ (BOOL)selectorIsActionMethod:(SEL)method;
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)centerPlusMovementContentPlacement;
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)contentPlacementForPoint:(CGPoint)point inView:(id)view;
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)screenBottomContentPlacement;
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)screenTopContentPlacement;
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)touchContentPlacement;
- (BOOL)backgroundLayoutAndRenderState:(id)state shouldDispatchBackgroundWork:(id)work;
- (BOOL)canDrawTilingLayerInBackground:(id)background;
- (BOOL)canPerformInteractiveAction:(SEL)action withSender:(id)sender;
- (BOOL)canvasViewShouldBecomeFirstResponder:(id)responder;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)point;
- (BOOL)handleSingleTapAtPoint:(CGPoint)point;
- (BOOL)hasAnnotations;
- (BOOL)i_inPrintPreviewMode;
- (BOOL)isCanvasInteractive;
- (BOOL)isPrinting;
- (BOOL)mustDrawTilingLayerOnMainThread:(id)thread;
- (BOOL)p_allowUpdateViewsFromReps;
- (BOOL)p_centerOnInitialSelection;
- (BOOL)p_currentlyScrollingIncludeEmbeddedCanvasScrolling:(BOOL)scrolling;
- (BOOL)p_endEditingToBeginEditingRep:(id)rep;
- (BOOL)p_shouldLayoutAndRenderOnThreadForcePendingLayout:(BOOL)layout;
- (BOOL)p_shouldSuppressAutozoomForEditor:(id)editor;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)shouldBeginDrawingTilingLayerInBackground:(id)background returningToken:(id *)token andQueue:(id *)queue;
- (BOOL)shouldDisplayCommentUIForInfo:(id)info;
- (BOOL)shouldLayoutTilingLayer:(id)layer;
- (BOOL)shouldPopKnobsOutsideEnclosingScrollView;
- (BOOL)shouldResampleImages;
- (BOOL)shouldResizeCanvasToScrollView;
- (BOOL)shouldShowInstructionalText;
- (BOOL)shouldShowTextOverflowGlyphs;
- (BOOL)shouldZoomOnSelectionChange;
- (BOOL)spellCheckingSupported;
- (BOOL)spellCheckingSuppressed;
- (BOOL)zoomToFitRect:(CGRect)rect outset:(BOOL)outset fitWidthOnly:(BOOL)only centerHorizontally:(BOOL)horizontally centerVertically:(BOOL)vertically animated:(BOOL)animated;
- (CGColor)selectionHighlightColor;
- (CGImage)textImageFromRect:(CGRect)rect;
- (CGPoint)clampedCenterPointForPoint:(CGPoint)point withPlacement:(id)placement viewScale:(double)scale;
- (CGPoint)clampedUnscaledContentOffset:(CGPoint)offset forViewScale:(double)scale;
- (CGPoint)clampedUnscaledContentOffset:(CGPoint)offset forViewScale:(double)scale scrollViewBoundsSize:(CGSize)size;
- (CGPoint)contentOffset;
- (CGPoint)convertBoundsToUnscaledPoint:(CGPoint)point;
- (CGPoint)convertUnscaledToBoundsPoint:(CGPoint)point;
- (CGPoint)lastTapPoint;
- (CGPoint)scrollView:(id)view restrictContentOffset:(CGPoint)offset;
- (CGPoint)smartZoomCenterForNoSelection;
- (CGRect)boundingRectForActiveGuidesForRect:(CGRect)rect;
- (CGRect)canvasViewBoundsWithBounds:(CGRect)bounds;
- (CGRect)convertBoundsToUnscaledRect:(CGRect)rect;
- (CGRect)convertUnscaledToBoundsRect:(CGRect)rect;
- (CGRect)i_clippingBoundsForScrollViewEnclosingCanvas;
- (CGRect)p_calculateVisibleBoundsRectForTiling;
- (CGRect)p_calculateVisibleUnscaledRect;
- (CGRect)p_outsetSelectionRect:(CGRect)rect;
- (CGRect)p_visibleBoundsRectForTiling;
- (CGRect)p_visibleBoundsRectUsingSizeOfEnclosingScrollView:(BOOL)view;
- (CGRect)p_visibleUnscaledRect;
- (CGRect)scrollFocusRectForModel:(id)model withSelection:(id)selection;
- (CGRect)unobscuredFrameOfView:(id)view;
- (CGRect)unobscuredScrollViewFrame;
- (CGRect)visibleBoundsForTilingLayer:(id)layer;
- (CGRect)visibleBoundsRect;
- (CGRect)visibleBoundsRectClippedToWindow;
- (CGRect)visibleBoundsRectForTiling;
- (CGRect)visibleBoundsRectUsingSizeOfEnclosingScrollView;
- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)canvas;
- (CGRect)visibleUnscaledRect;
- (CGSize)canvasScrollingOutset;
- (CGSize)convertBoundsToUnscaledSize:(CGSize)size;
- (CGSize)convertUnscaledToBoundsSize:(CGSize)size;
- (CGSize)defaultMinimumUnscaledCanvasSize;
- (CGSize)i_canvasCenterOffsetForProposedViewScale:(double)scale originalViewScale:(double)viewScale;
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
- (double)i_adjustViewScale:(double)scale;
- (double)i_nextCanvasViewScaleDetentForProposedViewScale:(double)scale greater:(BOOL)greater;
- (double)i_viewScaleForProposedViewScale:(double)scale originalViewScale:(double)viewScale;
- (double)p_targetPointSize;
- (double)viewScale;
- (double)viewScaleForZoomToFitRect:(CGRect)rect outset:(BOOL)outset fitWidthOnly:(BOOL)only;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (id)additionalVisibleInfosForCanvas:(id)canvas;
- (id)ancestorRepOfRep:(id)rep orDelegateConformingToProtocol:(id)protocol;
- (id)beginEditingRep:(id)rep;
- (id)beginEditingRep:(id)rep clearingSelection:(BOOL)selection withEditorProvider:(id)provider;
- (id)beginEditingRepForInfo:(id)info;
- (id)canvas:(id)canvas layoutGeometryProviderForLayout:(id)layout;
- (id)clampContentLocation:(id)location forPlacement:(id)placement;
- (id)clampedCenterContentLocationForPoint:(CGPoint)point withPlacement:(id)placement viewScale:(double)scale;
- (id)containerLayerForRep:(id)rep;
- (id)convertContentLocation:(id)location fromPlacement:(id)placement toPlacement:(id)toPlacement;
- (id)gestureTargetStack:(id)stack;
- (id)hitKnobAtPoint:(CGPoint)point returningRep:(id *)rep;
- (id)hitRep:(CGPoint)rep;
- (id)hitRep:(CGPoint)rep withGesture:(id)gesture passingTest:(id)test;
- (id)hitRepsAtPoint:(CGPoint)point withSlop:(CGSize)slop;
- (id)i_descriptionForViewScale:(double)scale;
- (id)i_topLevelLayersForTiling;
- (id)infoForModel:(id)model withSelection:(id)selection;
- (id)infoToScrollToForModel:(id)model withSelection:(id)selection;
- (id)layerForRep:(id)rep;
- (id)layoutForInfo:(id)info;
- (id)layoutForInfoNearestVisibleRect:(id)rect;
- (id)layoutForInfoNearestVisibleRect:(id)rect intersectingSelection:(id)selection;
- (id)layoutForModel:(id)model withSelection:(id)selection;
- (id)layoutsForInfo:(id)info;
- (id)layoutsForInfo:(id)info intersectingSelection:(id)selection;
- (id)layoutsForModel:(id)model withSelection:(id)selection;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)newCanvasEditor;
- (id)p_backgroundLayoutAndRenderState;
- (id)p_decorators;
- (id)p_overlayLayerForReps:(id)reps;
- (id)p_repForLayout:(id)layout createIfNeeded:(BOOL)needed;
- (id)p_setSelection:(id)selection onInfo:(id)info withFlags:(unint64_t)flags;
- (id)queueForDrawingTilingLayerInBackground:(id)background;
- (id)repForContainerLayer:(id)layer;
- (id)repForInfo:(id)info createIfNeeded:(BOOL)needed;
- (id)repForLayer:(id)layer;
- (id)replaceImageController;
- (id)repsForInfo:(id)info;
- (id)topLevelRepsForHitTesting;
- (id)topLevelZOrderedSiblingsOfInfos:(id)infos;
- (id)unitFormatter;
- (id)unitStringForAngle:(double)angle;
- (id)unitStringForAngle:(double)angle andLength:(double)length;
- (id)unitStringForNumber:(double)number;
- (id)unitStringForPoint:(CGPoint)point;
- (id)unitStringForSize:(CGSize)size;
- (id)validatedLayoutForInfo:(id)info;
- (id)viewWithTransferredLayers;
- (void)addBackgroundRenderingObject:(id)object;
- (void)addCommonObservers;
- (void)addDecorator:(id)decorator;
- (void)animateToViewScale:(double)scale contentOffset:(CGPoint)offset duration:(double)duration forceAnimation:(BOOL)animation completion:(id)completion;
- (void)asyncProcessChanges:(id)changes forChangeSource:(id)source;
- (void)backgroundLayoutAndRenderState:(id)state performWorkInBackgroundTilingOnly:(BOOL)only;
- (void)backgroundLayoutAndRenderStateDidPerformBackgroundWork:(id)work;
- (void)beginAnimations:(id)animations context:(void *)context;
- (void)beginDynamicOperation;
- (void)beginScrollingOperation;
- (void)canvas:(id)canvas createdRep:(id)rep;
- (void)canvas:(id)canvas willLayoutRep:(id)rep;
- (void)canvasDidLayout:(id)layout;
- (void)canvasDidUpdateRepsFromLayouts:(id)layouts;
- (void)canvasDidUpdateVisibleBounds:(id)bounds;
- (void)canvasDidValidateLayouts:(id)layouts;
- (void)canvasLayoutInvalidated:(id)invalidated;
- (void)canvasWillLayout:(id)layout;
- (void)canvasWillUpdateRepsFromLayouts:(id)layouts;
- (void)commitAnimations;
- (void)dealloc;
- (void)deselectAll:(id)all;
- (void)discardRepForClassChange:(id)change;
- (void)displayRulerForRect:(CGRect)rect;
- (void)displayRulerWithSlowFade:(BOOL)fade;
- (void)doubleTappedCanvasBackgroundAtPoint:(CGPoint)point;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)embeddedCanvasDidEndScrolling;
- (void)embeddedCanvasWillBeginScrolling;
- (void)endDynamicOperation;
- (void)endPossiblyParallelInspectorDynamicOperation;
- (void)endScrollingOperation;
- (void)forceStopScrolling;
- (void)forwardInvocation:(id)invocation;
- (void)hideRuler;
- (void)i_canvasContentsScaleDidChange;
- (void)i_canvasWideGamutValueDidChange;
- (void)i_cvcWillBecomeFirstResponder;
- (void)i_cvcWillResignFirstResponder;
- (void)i_drawRepWithReadLock:(id)lock inContext:(CGContext *)context forLayer:(id)layer;
- (void)i_invalidateSelectionHighlightLayers;
- (void)i_layout;
- (void)i_layoutRegistered:(id)registered;
- (void)i_layoutUnregistered:(id)unregistered;
- (void)i_recordUserViewScale;
- (void)i_repNeedsDisplay:(id)display;
- (void)i_repNeedsDisplay:(id)display inRect:(CGRect)rect;
- (void)i_syncWithLayoutThread;
- (void)i_viewDidZoomToViewScale:(double)scale;
- (void)i_viewScaleDidChange;
- (void)i_viewScrollDidChange;
- (void)i_viewScrollWillChange;
- (void)i_viewScrollingEnded;
- (void)i_viewWillBeginZooming;
- (void)invalidateComments;
- (void)invalidateLayers;
- (void)invalidateLayoutInBackground:(id)background;
- (void)invalidateReps;
- (void)invalidateRepsIfSynced;
- (void)invalidateRepsInBackground;
- (void)invalidateVisibleBounds;
- (void)invalidateVisibleBoundsInBackground;
- (void)layoutIfNeeded;
- (void)layoutInvalidated;
- (void)makeEditorPerformAction:(SEL)action withSender:(id)sender;
- (void)p_acquireLockAndPerformAction:(id)action;
- (void)p_applyViewScale:(double)scale andContentOffset:(CGPoint)offset;
- (void)p_autoscrollToSelection:(id)selection withInfo:(id)info isInitialSelection:(BOOL)initialSelection focusRect:(CGRect)rect scrollImmediately:(BOOL)immediately skipZoom:(BOOL)zoom;
- (void)p_beginZoomingOperation;
- (void)p_commonInit;
- (void)p_discardContainerLayer:(id)layer forRep:(id)rep;
- (void)p_discardLayer:(id)layer forRep:(id)rep;
- (void)p_drawLayerWithReadLock:(id)lock;
- (void)p_editorControllerDidChangeTextInputEditor:(id)editor;
- (void)p_editorControllerSelectionDidChange:(id)change;
- (void)p_editorControllerSelectionDidChangeAndWantsKeyboard:(id)keyboard;
- (void)p_editorDidChangeSelection:(id)selection withSelectionFlags:(unint64_t)flags;
- (void)p_editorDoneChangingSelection:(id)selection withFlags:(unint64_t)flags;
- (void)p_endZoomingOperation;
- (void)p_iccWillBecomeFirstResponderNotification:(id)notification;
- (void)p_iccWillResignFirstResponderNotification:(id)notification;
- (void)p_invalidateForBackgroundLayout;
- (void)p_invalidateTilingLayers;
- (void)p_maybeSetTextResponderEditorTo:(id)to;
- (void)p_postNotificationOnMainThreadWithValidLayouts:(id)layouts;
- (void)p_recursiveHitKnobAtPoint:(CGPoint)point inRep:(id)rep minDistance:(double *)distance hitKnob:(id *)knob hitRep:(id *)hitRep;
- (void)p_recursivelyClearLayerDelegate:(id)delegate;
- (void)p_recursivelyUpdateLayerEdgeAntialiasingForLayer:(id)layer;
- (void)p_recursivelyUpdateLayerForRep:(id)rep accumulatingLayers:(id)layers andReps:(id)reps;
- (void)p_scrollModelToVisible:(id)visible withSelection:(id)selection;
- (void)p_scrollToPrimarySelectionForEditor:(id)editor skipZoom:(BOOL)zoom;
- (void)p_scrollViewDidEndScrollingAnimation:(id)animation;
- (void)p_setTargetPointSize:(double)size;
- (void)p_setupPopoutLayerForReps:(id)reps;
- (void)p_textGesturesDidEndNotification:(id)notification;
- (void)p_updateCanvasSizeFromLayouts;
- (void)p_updateLayersFromReps;
- (void)p_updateViewsFromRepsForceUpdate:(BOOL)update;
- (void)p_viewScrollingEnded;
- (void)p_willEnterForeground:(id)foreground;
- (void)performBlockAfterNextLayout:(id)layout;
- (void)popThreadedLayoutAndRenderDisabled;
- (void)presentError:(id)error completionHandler:(id)handler;
- (void)presentErrors:(id)errors withLocalizedDescription:(id)description completionHandler:(id)handler;
- (void)pushThreadedLayoutAndRenderDisabled;
- (void)recreateAllLayoutsAndReps;
- (void)removeBackgroundRenderingObject:(id)object;
- (void)removeCommonObservers;
- (void)removeDecorator:(id)decorator;
- (void)resumeEditing;
- (void)reuseTextInputResponderFrom:(id)from;
- (void)scrollCurrentSelectionToVisible;
- (void)scrollRectToVisible:(CGRect)visible animated:(BOOL)animated;
- (void)scrollRectToVisibleCenter:(CGRect)center animated:(BOOL)animated onlyScrollNecessaryAxes:(BOOL)axes;
- (void)scrollRectToVisibleWithSelectionOutset:(CGRect)outset animated:(BOOL)animated;
- (void)scrollSearchReferenceToVisible:(id)visible;
- (void)scrollToPrimarySelection;
- (void)scrollToSelection:(id)selection onModel:(id)model scrollImmediately:(BOOL)immediately;
- (void)scrollView:(id)view willAnimateToContentOffset:(CGPoint)offset;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setAllowLayoutAndRenderOnThread:(BOOL)thread;
- (void)setContentOffset:(CGPoint)offset clamp:(BOOL)clamp animated:(BOOL)animated completionBlock:(id)block;
- (void)setDelegate:(id)delegate;
- (void)setInReadMode:(BOOL)mode;
- (void)setInfosToDisplay:(id)display;
- (void)setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:(BOOL)changes;
- (void)setLayerHost:(id)host;
- (void)setNeedsDisplayInRect:(CGRect)rect onLayer:(id)layer;
- (void)setNeedsDisplayOnLayer:(id)layer;
- (void)setOverlayLayerSuppressed:(BOOL)suppressed;
- (void)setSelection:(id)selection onModel:(id)model withFlags:(unint64_t)flags;
- (void)setSelectionHighlightColor:(CGColor *)color;
- (void)setShouldSuppressRendering:(BOOL)rendering animated:(BOOL)animated;
- (void)setShowInvisibleObjects:(BOOL)objects;
- (void)setStaticLayoutAndRenderOnThread:(BOOL)thread;
- (void)setUsesAlternateDrawableSelectionHighlight:(BOOL)highlight;
- (void)setViewScale:(double)scale;
- (void)setViewScale:(double)scale andScrollViewFrame:(CGRect)frame animated:(BOOL)animated;
- (void)setViewScale:(double)scale andScrollViewFrame:(CGRect)frame maintainPosition:(BOOL)position animated:(BOOL)animated;
- (void)setViewScale:(double)scale contentOffset:(CGPoint)offset clampOffset:(BOOL)clampOffset animated:(BOOL)animated;
- (void)setViewScale:(double)scale contentOffset:(CGPoint)offset clampOffset:(BOOL)clampOffset animationDuration:(double)duration forceAnimation:(BOOL)animation completion:(id)completion;
- (void)showOrHideComments:(id)comments;
- (void)syncProcessChanges:(id)changes forChangeSource:(id)source;
- (void)tappedCanvasBackgroundAtPoint:(CGPoint)point;
- (void)teardown;
- (void)teardownBackgroundRendering;
- (void)teardownCanvasEditor;
- (void)toggleShouldShowUserDefinedGuides;
- (void)unobscuredFrameDidChange;
- (void)updateSelectionForTapAtPoint:(CGPoint)point extendingSelection:(BOOL)selection;
- (void)viewDidEndZooming;
- (void)zoomToCurrentSelection;
- (void)zoomWithAnimationToUnscaledRect:(CGRect)rect;
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_p_rulerUnitsDidChangeNotification_ name:TSKRulerUnitsDidChangeNotification object:0];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [defaultCenter addObserver:self selector:sel_p_textGesturesWillBeginNotification_ name:@"TSDTextGesturesWillBeginNotification" object:0];
  [defaultCenter addObserver:self selector:sel_p_textGesturesDidEndNotification_ name:@"TSDTextGesturesDidEndNotification" object:0];
  v4 = *MEMORY[0x277D76758];

  [defaultCenter addObserver:self selector:sel_p_willEnterForeground_ name:v4 object:0];
}

- (void)removeCommonObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:TSKRulerUnitsDidChangeNotification object:0];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [defaultCenter removeObserver:self name:@"TSDTextGesturesWillBeginNotification" object:0];
  [defaultCenter removeObserver:self name:@"TSDTextGesturesDidEndNotification" object:0];
  v4 = *MEMORY[0x277D76758];

  [defaultCenter removeObserver:self name:v4 object:0];
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController dealloc]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 459, @"Must call -teardown on ICC before it is deallocated"}];
  }

  if (self->mHadLayerHost && !self->mLayerHostHasBeenTornDown)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController dealloc]"];
    [currentHandler2 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 462, @"Must call -teardown on CVC before ICC is deallocated"}];
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

- (id)methodSignatureForSelector:(SEL)selector
{
  v11 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = TSDInteractiveCanvasController;
  if ([(TSDInteractiveCanvasController *)&v9 respondsToSelector:?])
  {
    v8.receiver = self;
    v8.super_class = TSDInteractiveCanvasController;
    return [(TSDInteractiveCanvasController *)&v8 methodSignatureForSelector:selector];
  }

  else
  {
    result = methodSignatureForSelector__s_actionMethodSignature;
    if (!methodSignatureForSelector__s_actionMethodSignature)
    {
      if (snprintf(__str, 0x20uLL, "%s%s%s%s", "v", "@", ":", "@") >= 0x20)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController methodSignatureForSelector:]"];
        [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 580, @"ObjCTypes string overflowed"}];
      }

      result = [MEMORY[0x277CBEB08] signatureWithObjCTypes:__str];
      methodSignatureForSelector__s_actionMethodSignature = result;
    }
  }

  return result;
}

+ (BOOL)selectorIsActionMethod:(SEL)method
{
  Name = sel_getName(method);
  v5 = &Name[strlen(Name) - 1];
  if (*v5 != 58 || strchr(Name, 58) != v5)
  {
    return 0;
  }

  return sel_tilingLayerWillSetNeedsLayout_ != method && sel_descriptionWithLocale_ != method;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = TSDInteractiveCanvasController;
  if ([(TSDInteractiveCanvasController *)&v7 respondsToSelector:?])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [TSDInteractiveCanvasController selectorIsActionMethod:selector];
    if (v5)
    {
      LOBYTE(v5) = [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] editorForEditAction:selector withSender:0]!= 0;
    }
  }

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  selector = [invocation selector];
  v12 = 0;
  [invocation getArgument:&v12 atIndex:2];
  editorController = [(TSDInteractiveCanvasController *)self editorController];
  v7 = [(TSDEditorController *)editorController editorForEditAction:selector withSender:v12];
  if (v7 && (v8 = v7, (objc_opt_respondsToSelector() & 1) != 0))
  {
    accessController = [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)self documentRoot] accessController];
    if (accessController)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __52__TSDInteractiveCanvasController_forwardInvocation___block_invoke;
      v11[3] = &unk_279D47708;
      v11[4] = invocation;
      v11[5] = v8;
      [(TSKAccessController *)accessController performRead:v11];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TSDInteractiveCanvasController;
    [(TSDInteractiveCanvasController *)&v10 doesNotRecognizeSelector:selector];
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
    currentEditors = [(TSDEditorController *)self->mEditorController currentEditors];
    if (!currentEditors || [currentEditors indexOfObjectIdenticalTo:self->mCanvasEditor] == 0x7FFFFFFFFFFFFFFFLL)
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

- (void)p_recursivelyClearLayerDelegate:(id)delegate
{
  v15 = *MEMORY[0x277D85DE8];
  [delegate setDelegate:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  sublayers = [delegate sublayers];
  v6 = [sublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(sublayers);
        }

        [(TSDInteractiveCanvasController *)self p_recursivelyClearLayerDelegate:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [sublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setLayerHost:(id)host
{
  if (host)
  {
    self->mHadLayerHost = 1;
  }

  self->mLayerHost = host;
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"TSDInteractiveCanvasControllerWillResignFirstResponderNotification" object:self userInfo:0];
}

- (void)p_iccWillBecomeFirstResponderNotification:(id)notification
{
  object = [notification object];
  if (object != self)
  {
    rootCanvasView = [(TSDCanvasView *)[(TSDInteractiveCanvasController *)object canvasView] rootCanvasView];
    if (rootCanvasView == [(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] rootCanvasView])
    {

      [(TSDInteractiveCanvasController *)self endEditing];
    }
  }
}

- (void)p_iccWillResignFirstResponderNotification:(id)notification
{
  if ([notification object] == self && (objc_opt_respondsToSelector() & 1) != 0 && -[TSDInteractiveCanvasControllerDelegate interactiveCanvasControllerShouldEndEditingWhenLosingFirstResponder:](self->mDelegate, "interactiveCanvasControllerShouldEndEditingWhenLosingFirstResponder:", self))
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
  allReps = [(TSDCanvas *)self->mCanvas allReps];
  v4 = [allReps countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(allReps);
        }

        [*(*(&v16 + 1) + 8 * i) i_shutdownTileQueue];
      }

      v4 = [allReps countByEnumeratingWithState:&v16 objects:v21 count:16];
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

- (void)addBackgroundRenderingObject:(id)object
{
  mBackgroundRenderingObjects = self->mBackgroundRenderingObjects;
  objc_sync_enter(mBackgroundRenderingObjects);
  v6 = self->mBackgroundRenderingObjects;
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->mBackgroundRenderingObjects = v6;
  }

  [(NSMutableArray *)v6 addObject:object];

  objc_sync_exit(mBackgroundRenderingObjects);
}

- (void)removeBackgroundRenderingObject:(id)object
{
  mBackgroundRenderingObjects = self->mBackgroundRenderingObjects;
  objc_sync_enter(mBackgroundRenderingObjects);
  v6 = [(NSMutableArray *)self->mBackgroundRenderingObjects indexOfObject:object];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController removeBackgroundRenderingObject:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 879, @"removeBackgroundRenderingObject called on an object that is not in the array"}];
  }

  [(NSMutableArray *)self->mBackgroundRenderingObjects removeObjectAtIndex:v6];

  objc_sync_exit(mBackgroundRenderingObjects);
}

- (void)setDelegate:(id)delegate
{
  if (self->mDelegate != delegate)
  {
    self->mDelegate = delegate;
  }
}

- (TSPObjectContext)objectContext
{
  documentRoot = [(TSDInteractiveCanvasController *)self documentRoot];

  return [(TSPObject *)documentRoot context];
}

- (TSKChangeNotifier)changeNotifier
{
  documentRoot = [(TSDInteractiveCanvasController *)self documentRoot];

  return [(TSKDocumentRoot *)documentRoot changeNotifier];
}

- (TSKAccessController)accessController
{
  documentRoot = [(TSDInteractiveCanvasController *)self documentRoot];

  return [(TSKDocumentRoot *)documentRoot accessController];
}

- (CGSize)defaultMinimumUnscaledCanvasSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)canvasLayoutInvalidated:(id)invalidated
{
  if (-[TSDInteractiveCanvasController isCanvasInteractive](self, "isCanvasInteractive", invalidated) && ([MEMORY[0x277CCACC8] isMainThread] || !self->mLayoutAndRenderOnThreadDuringScroll && self->mNestedCanvasAllowLayoutAndRenderOnThread))
  {
    canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

    [canvasLayer setNeedsLayout];
  }
}

- (void)canvasDidUpdateVisibleBounds:(id)bounds
{
  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  [(TSDInteractiveCanvasController *)self setP_visibleBoundsRectForTiling:bounds, *MEMORY[0x277CBF398], v5, v6, v7];

  [(TSDInteractiveCanvasController *)self setP_visibleUnscaledRect:v4, v5, v6, v7];
}

- (void)canvasWillLayout:(id)layout
{
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasControllerWillLayout:self];
  }
}

- (void)canvasDidValidateLayouts:(id)layouts
{
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasControllerDidValidateLayouts:self];
  }
}

- (void)canvasDidLayout:(id)layout
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

- (void)canvasWillUpdateRepsFromLayouts:(id)layouts
{
  if ([(TSDInteractiveCanvasController *)self resizeCanvasOnLayout])
  {

    [(TSDInteractiveCanvasController *)self p_updateCanvasSizeFromLayouts];
  }
}

- (void)canvasDidUpdateRepsFromLayouts:(id)layouts
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

- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)canvas
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

- (id)additionalVisibleInfosForCanvas:(id)canvas
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->mCreateRepsForOffscreenLayouts)
  {
    return 0;
  }

  [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] canvasSelection];
  infos = [TSUProtocolCast() infos];
  allTransformedReps = [(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self dynamicOperationController] allTransformedReps];
  if (allTransformedReps)
  {
    v6 = allTransformedReps;
    infos = [MEMORY[0x277CBEB58] setWithSet:infos];
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

          [infos addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v10++), "info")}];
        }

        while (v8 != v10);
        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  return infos;
}

- (void)canvas:(id)canvas willLayoutRep:(id)rep
{
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self willLayoutRep:rep];
  }
}

- (void)canvas:(id)canvas createdRep:(id)rep
{
  canvasEditor = [(TSDInteractiveCanvasController *)self canvasEditor];

  [(TSDCanvasEditor *)canvasEditor repWasCreated:rep];
}

- (id)canvas:(id)canvas layoutGeometryProviderForLayout:(id)layout
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self layoutGeometryProviderForLayout:layout];
}

- (void)presentError:(id)error completionHandler:(id)handler
{
  layerHost = [(TSDInteractiveCanvasController *)self layerHost];

  [(TSDCanvasLayerHosting *)layerHost presentError:error completionHandler:handler];
}

- (void)presentErrors:(id)errors withLocalizedDescription:(id)description completionHandler:(id)handler
{
  layerHost = [(TSDInteractiveCanvasController *)self layerHost];

  [(TSDCanvasLayerHosting *)layerHost presentErrors:errors withLocalizedDescription:description completionHandler:handler];
}

- (TSDEditorController)editorController
{
  if (!self->mEditorController && -[TSDInteractiveCanvasController documentRoot](self, "documentRoot") && [MEMORY[0x277CCACC8] isMainThread])
  {
    delegate = [(TSDInteractiveCanvasController *)self delegate];
    if (delegate && (v5 = delegate, (objc_opt_respondsToSelector() & 1) != 0))
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_p_editorControllerDidChangeTextInputEditor_ name:@"TSDEditorControllerDidChangeTextInputEditor" object:self->mEditorController];
    [defaultCenter addObserver:self selector:sel_p_editorControllerDidChangeCurrentEditors_ name:@"TSDEditorControllerDidChangeCurrentEditors" object:self->mEditorController];
    [defaultCenter addObserver:self selector:sel_p_editorControllerSelectionDidChange_ name:@"TSDEditorControllerSelectionDidChange" object:self->mEditorController];
    [defaultCenter addObserver:self selector:sel_p_editorControllerSelectionDidChange_ name:@"TSDEditorControllerSelectionWasForciblyChanged" object:self->mEditorController];
    [defaultCenter addObserver:self selector:sel_p_editorControllerSelectionDidChangeAndWantsKeyboard_ name:@"TSDEditorControllerSelectionDidChangeAndWantsKeyboard" object:self->mEditorController];
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

- (id)beginEditingRepForInfo:(id)info
{
  [(TSDInteractiveCanvasController *)self p_layoutWithReadLock];
  result = [(TSDInteractiveCanvasController *)self repForInfo:info];
  if (result)
  {

    return [(TSDInteractiveCanvasController *)self beginEditingRep:result];
  }

  return result;
}

- (id)beginEditingRep:(id)rep clearingSelection:(BOOL)selection withEditorProvider:(id)provider
{
  selectionCopy = selection;
  editorController = [(TSDInteractiveCanvasController *)self editorController];
  [(TSDInteractiveCanvasController *)self p_layoutWithReadLock];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  editorController2 = [(TSDInteractiveCanvasController *)self editorController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__TSDInteractiveCanvasController_beginEditingRep_clearingSelection_withEditorProvider___block_invoke;
  v15[3] = &unk_279D482E8;
  v15[4] = rep;
  v15[5] = &v16;
  [(TSDEditorController *)editorController2 enumerateEditorsOnStackUsingBlock:v15];
  if (*(v17 + 24) == 1)
  {
    [(TSDInteractiveCanvasController *)self p_endEditingToBeginEditingRep:rep];
    repCopy = rep;
    if (selectionCopy)
    {
      [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] setSelection:0];
    }
  }

  if (rep)
  {
    v12 = (*(provider + 2))(provider);
    if (v12)
    {
      [(TSDEditorController *)editorController pushEditor:v12];
      [(TSDEditorController *)editorController setTextInputEditor:v12];
    }
  }

  textInputEditor = [(TSDEditorController *)editorController textInputEditor];
  _Block_object_dispose(&v16, 8);
  return textInputEditor;
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

- (id)beginEditingRep:(id)rep
{
  [(TSDInteractiveCanvasController *)self p_layoutWithReadLock];
  editorController = [(TSDInteractiveCanvasController *)self editorController];
  textInputEditor = [(TSDEditorController *)editorController textInputEditor];
  if (!rep || (v7 = textInputEditor) == 0 || ([rep canEditWithEditor:textInputEditor] & 1) == 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__TSDInteractiveCanvasController_beginEditingRep___block_invoke;
    v9[3] = &unk_279D48310;
    v9[4] = rep;
    [(TSDInteractiveCanvasController *)self beginEditingRep:rep clearingSelection:1 withEditorProvider:v9];
    return [(TSDEditorController *)editorController textInputEditor];
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
  canvasSelection = [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] canvasSelection];
  v5 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  infos = [(TSDCanvasSelection *)canvasSelection infos];
  v9 = [(NSSet *)infos countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(infos);
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
      v10 = [(NSSet *)infos countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (void)zoomWithAnimationToUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TSDInteractiveCanvasController *)self visibleUnscaledRect];
  [(TSDInteractiveCanvasController *)self viewScale];
  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  [canvasLayer minimumPinchViewScale];
  [canvasLayer maximumPinchViewScale];
  TSUClamp();
  v10 = v9;
  v11 = TSDCenterOfRect(x, y, width, height);
  v13 = v12;
  [canvasLayer contentInset];

  [canvasLayer animateToViewScale:0 contentCenter:v10 contentInset:v11 duration:v13 completionBlock:{v14, v15, v16, v17, 0.2}];
}

- (BOOL)shouldZoomOnSelectionChange
{
  [(TSDInteractiveCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = [(TSDInteractiveCanvasController *)self delegate];

  return [(TSDInteractiveCanvasControllerDelegate *)delegate zoomOnSelectionChange:self];
}

- (id)p_setSelection:(id)selection onInfo:(id)info withFlags:(unint64_t)flags
{
  if (info)
  {
    canvasEditor = [(TSDInteractiveCanvasController *)self beginEditingRepForInfo:info];
  }

  else
  {
    [(TSDInteractiveCanvasController *)self endEditing];
    if (![selection conformsToProtocol:&unk_287E360E8])
    {
      v9 = 0;
      goto LABEL_9;
    }

    canvasEditor = [(TSDInteractiveCanvasController *)self canvasEditor];
  }

  v9 = canvasEditor;
  if (canvasEditor && (objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_setSelection:onInfo:withFlags:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 1399, @"editor does not implement optional protocol method"}];
  }

LABEL_9:
  [(TSDCanvasEditor *)v9 setSelection:selection withFlags:flags];
  return v9;
}

- (id)infoForModel:(id)model withSelection:(id)selection
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self infoForModel:model withSelection:selection]) == 0)
  {

    return TSUProtocolCast();
  }

  return result;
}

- (id)infoToScrollToForModel:(id)model withSelection:(id)selection
{
  result = [(TSDInteractiveCanvasController *)self infoForModel:model withSelection:?];
  if (!result)
  {
    result = TSUProtocolCast();
    if (result)
    {
      v5 = result;
      result = [result infoCount];
      if (result)
      {
        infos = [v5 infos];

        return [infos anyObject];
      }
    }
  }

  return result;
}

- (void)scrollCurrentSelectionToVisible
{
  v3 = [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] mostSpecificCurrentEditorOfClass:0];
  selection = 0;
  if (objc_opt_respondsToSelector())
  {
    selection = [v3 selection];
  }

  if (objc_opt_respondsToSelector())
  {
    model = [v3 model];
    if (!selection)
    {
LABEL_7:
      selection = [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] selection];
      if (!selection)
      {
        return;
      }
    }
  }

  else
  {
    model = 0;
    if (!selection)
    {
      goto LABEL_7;
    }
  }

  [(TSDInteractiveCanvasController *)self scrollToSelection:selection onModel:model];
}

- (void)scrollSearchReferenceToVisible:(id)visible
{
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate willScrollSearchReferenceToVisible:visible];
  }

  model = [visible model];
  selection = [visible selection];

  [(TSDInteractiveCanvasController *)self p_scrollModelToVisible:model withSelection:selection];
}

- (void)p_scrollModelToVisible:(id)visible withSelection:(id)selection
{
  [(TSDInteractiveCanvasController *)self layoutIfNeeded];
  v7 = [(TSDInteractiveCanvasController *)self infoToScrollToForModel:visible withSelection:selection];
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self targetRectForInfo:v7 withSelection:selection];
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
    v16 = [(TSDInteractiveCanvasController *)self layoutForInfoNearestVisibleRect:v7 intersectingSelection:selection];
    if (!v16)
    {
      v16 = [(TSDInteractiveCanvasController *)self validatedLayoutForInfo:[(TSDInteractiveCanvasController *)self infoForModel:visible withSelection:selection]];
    }

    [v16 rectForSelection:selection];
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

- (void)setSelection:(id)selection onModel:(id)model withFlags:(unint64_t)flags
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
    if ((flags & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = [(TSDInteractiveCanvasController *)self infoForModel:v9 withSelection:selection];
  if ((flags & 0x80) == 0)
  {
LABEL_5:
    editorController = [(TSDInteractiveCanvasController *)self editorController];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__TSDInteractiveCanvasController_setSelection_onModel_withFlags___block_invoke;
    v21[3] = &unk_279D48338;
    v21[4] = model;
    v21[5] = selection;
    v21[6] = v10;
    v21[7] = &v22;
    v21[8] = &v26;
    [(TSDEditorController *)editorController enumerateEditorsOnStackUsingBlock:v21];
  }

LABEL_6:
  self->mShouldAnimateAutoscroll = (flags & 0x10) != 0;
  if (*(v23 + 24) == 1)
  {
    self->mShouldAutoscrollToSelectionAfterLayout = (flags & 0x40) >> 6;
    self->mShouldCenterSelectionWhenAutoscrolling = (~flags & 0x1000040) == 0;
    if ((flags & 0x40) != 0)
    {
      [(TSDInteractiveCanvasController *)self layoutInvalidated];
    }

    if (v27[5] && (objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController setSelection:onModel:withFlags:]"];
      [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 1529, @"editor does not implement optional protocol method"}];
    }

    [v27[5] setSelection:selection withFlags:flags];
  }

  else
  {
    self->mShouldAutoscrollToSelectionAfterLayout = 0;
    self->mShouldCenterSelectionWhenAutoscrolling = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    editorController2 = [(TSDInteractiveCanvasController *)self editorController];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__TSDInteractiveCanvasController_setSelection_onModel_withFlags___block_invoke_2;
    v16[3] = &unk_279D48360;
    v16[4] = selection;
    v16[5] = v10;
    v16[6] = &v17;
    [(TSDEditorController *)editorController2 enumerateEditorsOnStackUsingBlock:v16];
    if (*(v18 + 24) == 1)
    {
      if ((flags & 0x40) != 0)
      {
        v15 = [(TSDInteractiveCanvasController *)self p_setSelection:selection onInfo:v10 withFlags:flags];
        v27[5] = v15;
        if (!v15)
        {
          [(TSDInteractiveCanvasController *)self endEditing];
        }

        [(TSDInteractiveCanvasController *)self layoutIfNeeded];
      }

      if (!v27[5])
      {
        [(TSDInteractiveCanvasController *)self p_setSelection:selection onInfo:v10 withFlags:flags];
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

- (CGRect)scrollFocusRectForModel:(id)model withSelection:(id)selection
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

- (void)scrollToSelection:(id)selection onModel:(id)model scrollImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v8 = TSUProtocolCast();
  if (v8)
  {
    v9 = [(TSDInteractiveCanvasController *)self infoForModel:v8 withSelection:selection];
  }

  else
  {
    v9 = 0;
  }

  [(TSDInteractiveCanvasController *)self layoutIfNeeded];
  [(TSDInteractiveCanvasController *)self scrollFocusRectForModel:v8 withSelection:selection];

  [(TSDInteractiveCanvasController *)self p_autoscrollToSelection:selection withInfo:v9 isInitialSelection:0 focusRect:immediatelyCopy scrollImmediately:0 skipZoom:?];
}

- (void)p_scrollToPrimarySelectionForEditor:(id)editor skipZoom:(BOOL)zoom
{
  if (editor)
  {
    zoomCopy = zoom;
    if (objc_opt_respondsToSelector() & 1) != 0 && [editor selection] && (objc_opt_respondsToSelector())
    {
      if ([editor model])
      {
        v7 = -[TSDInteractiveCanvasController infoToScrollToForModel:withSelection:](self, "infoToScrollToForModel:withSelection:", [editor model], objc_msgSend(editor, "selection"));
      }

      else
      {
        v7 = 0;
      }

      selection = [editor selection];
      -[TSDInteractiveCanvasController scrollFocusRectForModel:withSelection:](self, "scrollFocusRectForModel:withSelection:", [editor model], objc_msgSend(editor, "selection"));

      [(TSDInteractiveCanvasController *)self p_autoscrollToSelection:selection withInfo:v7 isInitialSelection:0 focusRect:0 scrollImmediately:zoomCopy skipZoom:?];
    }
  }
}

- (void)scrollToPrimarySelection
{
  textInputEditor = [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] textInputEditor];

  [(TSDInteractiveCanvasController *)self scrollToPrimarySelectionForEditor:textInputEditor];
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
    p_backgroundLayoutAndRenderState = [(TSDInteractiveCanvasController *)self p_backgroundLayoutAndRenderState];

    [p_backgroundLayoutAndRenderState setNeedsLayoutAndRender];
  }

  else
  {
    mCanvas = self->mCanvas;

    [(TSDCanvas *)mCanvas invalidateReps];
  }
}

- (void)invalidateLayoutInBackground:(id)background
{
  if (self->mLayoutAndRenderOnThreadDuringScroll && (!self->mCurrentlyWaitingOnThreadedLayoutAndRender || ([(TSDInteractiveCanvasController *)self i_syncWithLayoutThread], self->mLayoutAndRenderOnThreadDuringScroll)) && [(TSDInteractiveCanvasController *)self p_currentlyScrolling]&& !self->mDisableThreadedLayoutAndRender)
  {
    [(NSRecursiveLock *)self->mSelfSync lock];
    self->mCurrentlyWaitingOnThreadedLayoutAndRender = 1;
    [background invalidate];
    [(NSRecursiveLock *)self->mSelfSync unlock];
    p_backgroundLayoutAndRenderState = [(TSDInteractiveCanvasController *)self p_backgroundLayoutAndRenderState];

    [p_backgroundLayoutAndRenderState setNeedsLayoutAndRender];
  }

  else
  {

    [background invalidate];
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
    p_backgroundLayoutAndRenderState = [(TSDInteractiveCanvasController *)self p_backgroundLayoutAndRenderState];

    [p_backgroundLayoutAndRenderState setNeedsLayoutAndRender];
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

- (void)setShouldSuppressRendering:(BOOL)rendering animated:(BOOL)animated
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->mShouldSuppressRendering != rendering)
  {
    animatedCopy = animated;
    renderingCopy = rendering;
    self->mShouldSuppressRendering = rendering;
    v7 = [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
    v8 = v7;
    if (renderingCopy)
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
      if (animatedCopy)
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
            if (animatedCopy)
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
      topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
      v19 = [topLevelReps countByEnumeratingWithState:&v23 objects:v35 count:16];
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
              objc_enumerationMutation(topLevelReps);
            }

            [*(*(&v23 + 1) + 8 * k) recursivelyPerformSelector:sel_setNeedsDisplay];
          }

          v20 = [topLevelReps countByEnumeratingWithState:&v23 objects:v35 count:16];
        }

        while (v20);
      }
    }

    [(TSDInteractiveCanvasController *)self invalidateReps];
  }
}

- (void)setAllowLayoutAndRenderOnThread:(BOOL)thread
{
  threadCopy = thread;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController setAllowLayoutAndRenderOnThread:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 1801, @"should only en/disable layoutAndRenderOnThreadDuringScroll from the MT"}];
  }

  if (self->mLayoutAndRenderOnThreadDuringScroll != threadCopy)
  {
    if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender)
    {
      [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
    }

    self->mLayoutAndRenderOnThreadDuringScroll = threadCopy;
  }
}

- (void)setStaticLayoutAndRenderOnThread:(BOOL)thread
{
  if (self->mStaticLayoutAndRenderOnThread != thread)
  {
    if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender)
    {
      [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
    }

    self->mStaticLayoutAndRenderOnThread = thread;
  }
}

- (BOOL)p_currentlyScrollingIncludeEmbeddedCanvasScrolling:(BOOL)scrolling
{
  if (self->mCurrentlyScrolling || scrolling && self->mEmbeddedCanvasScrolling)
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

- (void)setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:(BOOL)changes
{
  if (changes)
  {
    [(TSDTextInputResponder *)self->mTextInputResponder clearEditorAndResignFirstResponder];
    v4 = 1;
  }

  else
  {
    textInputEditor = [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] textInputEditor];
    if ([textInputEditor conformsToProtocol:&unk_287E358C8])
    {
      [(TSDTextInputResponder *)self->mTextInputResponder setEditor:textInputEditor];
    }

    v4 = 0;
  }

  self->mSuppressingKeyboard = v4;
}

- (void)reuseTextInputResponderFrom:(id)from
{
  if (!*(from + 14))
  {
    *(from + 14) = [objc_alloc(TSDTextInputResponderClass()) initWithNextResponder:{objc_msgSend(objc_msgSend(from, "layerHost"), "canvasView")}];
  }

  if ([(TSDTextInputResponder *)self->mTextInputResponder isFirstResponder])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController reuseTextInputResponderFrom:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 1888, @"Unexpected -reuseTextInputResponderFrom: when first responder."}];
  }

  if ([(TSDTextInputResponder *)self->mTextInputResponder isFirstResponder])
  {
    [*(from + 14) setEditor:{-[TSDTextInputResponder editor](self->mTextInputResponder, "editor")}];
    [*(from + 14) cancelDelayedResponderChange];
    [*(from + 14) becomeFirstResponder];
  }

  self->mTextInputResponder = *(from + 14);
  self->mTextInputResponderSource = from;
  ++*(from + 16);
}

- (void)resumeEditing
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController resumeEditing]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 1905, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDInteractiveCanvasController resumeEditing]"), 0}]);
}

- (void)p_editorControllerDidChangeTextInputEditor:(id)editor
{
  v4 = __77__TSDInteractiveCanvasController_p_editorControllerDidChangeTextInputEditor___block_invoke;
  v5 = &unk_279D47708;
  editorCopy = editor;
  selfCopy = self;
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

- (BOOL)p_shouldSuppressAutozoomForEditor:(id)editor
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasControllerSupportsAutozoom:self]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [editor suppressAutozoom];
}

- (void)p_editorControllerSelectionDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:@"TSDEditorControllerEditorKey"];
  v6 = [objc_msgSend(userInfo objectForKey:{@"TSDEditorControllerSelectionFlagsKey", "unsignedIntegerValue"}];
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

- (void)p_editorControllerSelectionDidChangeAndWantsKeyboard:(id)keyboard
{
  userInfo = [keyboard userInfo];
  v5 = [userInfo objectForKey:@"TSDEditorControllerEditorKey"];
  -[TSDInteractiveCanvasController p_editorDidChangeSelection:withSelectionFlags:](self, "p_editorDidChangeSelection:withSelectionFlags:", v5, [objc_msgSend(userInfo objectForKey:{@"TSDEditorControllerSelectionFlagsKey", "unsignedIntegerValue"}]);

  [(TSDInteractiveCanvasController *)self p_editorDoneChangingSelection:v5];
}

- (TSDCanvasView)canvasView
{
  layerHost = [(TSDInteractiveCanvasController *)self layerHost];

  return [(TSDCanvasLayerHosting *)layerHost canvasView];
}

- (BOOL)canvasViewShouldBecomeFirstResponder:(id)responder
{
  [(TSDInteractiveCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  delegate = [(TSDInteractiveCanvasController *)self delegate];
  canvasView = [(TSDInteractiveCanvasController *)self canvasView];

  return [(TSDInteractiveCanvasControllerDelegate *)delegate interactiveCanvasController:self canvasViewShouldBecomeFirstResponder:canvasView];
}

- (TSDCanvasLayer)canvasLayer
{
  layerHost = [(TSDInteractiveCanvasController *)self layerHost];

  return [(TSDCanvasLayerHosting *)layerHost canvasLayer];
}

- (double)viewScale
{
  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [canvasLayer viewScale];
  return result;
}

- (void)setViewScale:(double)scale
{
  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [canvasLayer setViewScale:scale];
}

- (double)currentViewScale
{
  if (self->mDynamicallyZooming)
  {
    return self->mDynamicViewScale;
  }

  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [canvasLayer viewScale];
  return result;
}

- (double)fitWidthViewScale
{
  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  [(TSDInteractiveCanvasController *)self visibleBoundsRect];
  [(TSDCanvas *)self->mCanvas unscaledSize];
  [canvasLayer minimumPinchViewScale];
  [canvasLayer maximumPinchViewScale];

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

- (CGRect)canvasViewBoundsWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)setViewScale:(double)scale contentOffset:(CGPoint)offset clampOffset:(BOOL)clampOffset animated:(BOOL)animated
{
  clampOffsetCopy = clampOffset;
  y = offset.y;
  x = offset.x;
  v11 = 0.0;
  if (animated)
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

  [(TSDInteractiveCanvasController *)self setViewScale:clampOffsetCopy contentOffset:0 clampOffset:scale animationDuration:x completion:y, v11];
}

- (void)setViewScale:(double)scale contentOffset:(CGPoint)offset clampOffset:(BOOL)clampOffset animationDuration:(double)duration forceAnimation:(BOOL)animation completion:(id)completion
{
  animationCopy = animation;
  x = offset.x;
  if (clampOffset)
  {
    [(TSDInteractiveCanvasController *)self clampedUnscaledContentOffset:offset.x forViewScale:offset.y, scale];
    x = v14;
    offset.y = v15;
  }

  if (duration == 0.0)
  {
    [(TSDInteractiveCanvasController *)self p_applyViewScale:scale andContentOffset:x, offset.y];
    if (completion)
    {
      v16 = *(completion + 2);

      v16(completion, 1);
    }
  }

  else
  {

    [(TSDInteractiveCanvasController *)self animateToViewScale:animationCopy contentOffset:completion duration:scale forceAnimation:x completion:offset.y, duration];
  }
}

- (CGPoint)clampedUnscaledContentOffset:(CGPoint)offset forViewScale:(double)scale
{
  y = offset.y;
  x = offset.x;
  [-[TSDCanvasLayerHosting clippingLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];

  [(TSDInteractiveCanvasController *)self clampedUnscaledContentOffset:x forViewScale:y scrollViewBoundsSize:scale, v8, v9];
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)clampedUnscaledContentOffset:(CGPoint)offset forViewScale:(double)scale scrollViewBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  TSDMultiplySizeScalar(width, height, 1.0 / scale);
  [canvasLayer unscaledSize];
  [canvasLayer contentInset];
  TSUClamp();
  v11 = v10;
  TSUClamp();
  v13 = v12;
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self clampContentOffset:TSDMultiplyPointScalar(v11 forViewScale:v13 scrollViewBoundsSize:scale)];
LABEL_5:
    v11 = TSDMultiplyPointScalar(v14, v15, 1.0 / scale);
    v13 = v16;
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self clampContentOffset:TSDMultiplyPointScalar(v11 forViewScale:v13, scale)];
    goto LABEL_5;
  }

LABEL_6:
  v17 = v11;
  v18 = v13;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)setViewScale:(double)scale andScrollViewFrame:(CGRect)frame maintainPosition:(BOOL)position animated:(BOOL)animated
{
  animatedCopy = animated;
  positionCopy = position;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [canvasLayer setViewScale:positionCopy andScrollViewFrame:animatedCopy maintainPosition:scale animated:{x, y, width, height}];
}

- (void)setViewScale:(double)scale andScrollViewFrame:(CGRect)frame animated:(BOOL)animated
{
  animatedCopy = animated;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(TSDInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)self delegate] interactiveCanvasControllerShouldMaintainPositionOnSetViewScale:self];
  }

  else
  {
    v12 = 1;
  }

  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [canvasLayer setViewScale:v12 andScrollViewFrame:animatedCopy maintainPosition:scale animated:{x, y, width, height}];
}

- (CGRect)unobscuredFrameOfView:(id)view
{
  v36 = *MEMORY[0x277D85DE8];
  if (!view)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController unobscuredFrameOfView:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2159, @"Cannot calculate unobscured frame without view"}];
  }

  [view frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  array = [MEMORY[0x277CBEB18] array];
  [(TSDInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [array addObjectsFromArray:{-[TSDInteractiveCanvasControllerDelegate rectanglesObscuringView:](-[TSDInteractiveCanvasController delegate](self, "delegate"), "rectanglesObscuringView:", view)}];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = [array countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(array);
        }

        [*(*(&v31 + 1) + 8 * i) CGRectValue];
        v8 = TSDRectSubtractingRect(v8, v10, v12, v14, v20, v21, v22, v23);
        v10 = v24;
        v12 = v25;
        v14 = v26;
      }

      v17 = [array countByEnumeratingWithState:&v31 objects:v35 count:16];
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
  enclosingScrollView = [(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView];
  if (enclosingScrollView)
  {
    v4 = enclosingScrollView;
    [(TSDInteractiveCanvasController *)self unobscuredFrameOfView:enclosingScrollView];
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

- (void)scrollRectToVisible:(CGRect)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  [canvasLayer contentInset];
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
    [canvasLayer bounds];
    v18 = v17;
    [(TSDInteractiveCanvasController *)self viewScale];
    v15 = v18 / v19;
    [canvasLayer bounds];
    v21 = v20;
    [(TSDInteractiveCanvasController *)self viewScale];
    v16 = v21 / v22;
  }

  [canvasLayer unscaledSize];
  v24 = v23;
  v26 = v25;
  [(TSDInteractiveCanvasController *)self viewScale];
  v28 = v26 - (v8 + v12) / v27;
  [(TSDInteractiveCanvasController *)self viewScale];
  v168.size.width = v24 - (v10 + v14) / v29;
  v168.origin.x = v15;
  v168.origin.y = v16;
  v168.size.height = v28;
  v123 = CGRectIntersection(visible, v168);
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
    canvasView = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasView];
    enclosingScrollView = [canvasView enclosingScrollView];
    [canvasView convertRect:objc_msgSend(enclosingScrollView toView:{"contentView"), v35, v37, v39, v41}];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] contentsScale];
    v113 = TSDRoundedRectForScale(v45, v47, v49, v51, v52);
    v54 = v53;
    v56 = v55;
    v117 = v57;
    if (animatedCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate autoZoomAnimationDurationForInteractiveCanvasController:self];
        animatedCopy = v58 > 0.0;
      }

      else
      {
        animatedCopy = 1;
      }
    }

    [(TSDInteractiveCanvasController *)self unobscuredScrollViewFrame];
    [objc_msgSend(enclosingScrollView "contentView")];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    [enclosingScrollView contentOffset];
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

    [enclosingScrollView setContentOffset:animatedCopy animated:{v116, v103}];
  }
}

- (void)scrollRectToVisibleCenter:(CGRect)center animated:(BOOL)animated onlyScrollNecessaryAxes:(BOOL)axes
{
  axesCopy = axes;
  animatedCopy = animated;
  height = center.size.height;
  width = center.size.width;
  y = center.origin.y;
  x = center.origin.x;
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

  v31 = !axesCopy && (v24 || v28);
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

  [(TSDInteractiveCanvasController *)self scrollRectToVisible:animatedCopy animated:v33, v36, v34, v27];
}

- (void)scrollRectToVisibleWithSelectionOutset:(CGRect)outset animated:(BOOL)animated
{
  animatedCopy = animated;
  [(TSDInteractiveCanvasController *)self p_outsetSelectionRect:outset.origin.x, outset.origin.y, outset.size.width, outset.size.height];

  [(TSDInteractiveCanvasController *)self scrollRectToVisible:animatedCopy animated:?];
}

- (void)setContentOffset:(CGPoint)offset clamp:(BOOL)clamp animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  if (clamp)
  {
    [(TSDInteractiveCanvasController *)self viewScale];
    [(TSDInteractiveCanvasController *)self clampedUnscaledContentOffset:x forViewScale:y, v11];
    x = v12;
    y = v13;
  }

  [(TSDInteractiveCanvasController *)self convertUnscaledToBoundsPoint:x, y];
  v15 = v14;
  v17 = v16;
  canvasView = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  [canvasView convertPoint:enclosingScrollView toView:{v15, v17}];

  [enclosingScrollView setContentOffset:animatedCopy animated:block completionBlock:?];
}

- (CGPoint)contentOffset
{
  canvasView = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  if (enclosingScrollView)
  {
    v5 = enclosingScrollView;
    [enclosingScrollView contentOffset];
    [v5 convertPoint:canvasView toView:?];
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

- (double)viewScaleForZoomToFitRect:(CGRect)rect outset:(BOOL)outset fitWidthOnly:(BOOL)only
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (outset)
  {
    [(TSDInteractiveCanvasController *)self p_outsetSelectionRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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

- (BOOL)zoomToFitRect:(CGRect)rect outset:(BOOL)outset fitWidthOnly:(BOOL)only centerHorizontally:(BOOL)horizontally centerVertically:(BOOL)vertically animated:(BOOL)animated
{
  animatedCopy = animated;
  verticallyCopy = vertically;
  horizontallyCopy = horizontally;
  onlyCopy = only;
  outsetCopy = outset;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (outset)
  {
    [(TSDInteractiveCanvasController *)self p_outsetSelectionRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  else
  {
    v25 = rect.size.height;
    v23 = rect.size.width;
    v21 = rect.origin.y;
    v19 = rect.origin.x;
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
  [(TSDInteractiveCanvasController *)self viewScaleForZoomToFitRect:outsetCopy outset:onlyCopy fitWidthOnly:x, y, width, height];
  v30 = v29;
  v31 = v52 / v29;
  v32 = v19 - (v53 / v29 - v23) * 0.5;
  v33 = horizontallyCopy ? v32 : v19;
  v34 = verticallyCopy ? v21 - (v31 - v25) * 0.5 : v21;
  layer = [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] layer];
  [layer bounds];
  [layer convertRect:-[TSDCanvasView layer](-[TSDInteractiveCanvasController canvasView](self toLayer:{"canvasView"), "layer"), v36, v37, v38, v39}];
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
  [(TSDInteractiveCanvasController *)self setViewScale:1 contentOffset:animatedCopy clampOffset:v30 animated:v46, v48];
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

- (void)setNeedsDisplayOnLayer:(id)layer
{
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender == [MEMORY[0x277CCACC8] isMainThread])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController setNeedsDisplayOnLayer:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2468, @"invaling on MT while waiting for secondary thread layout / render, or invaling on secondary thread when not waiting on a secondary thread layout / render"}];
  }

  [layer setNeedsDisplay];
}

- (void)setNeedsDisplayInRect:(CGRect)rect onLayer:(id)layer
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender == [MEMORY[0x277CCACC8] isMainThread])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController setNeedsDisplayInRect:onLayer:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2474, @"invaling on MT while waiting for secondary thread layout / render, or invaling on secondary thread when not waiting on a secondary thread layout / render"}];
  }

  [layer setNeedsDisplayInRect:{x, y, width, height}];
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

- (void)setSelectionHighlightColor:(CGColor *)color
{
  Copy = CGColorCreateCopy(color);
  CGColorRelease(self->mSelectionHighlightColor);
  self->mSelectionHighlightColor = Copy;

  [(TSDInteractiveCanvasController *)self i_invalidateSelectionHighlightLayers];
}

- (void)displayRulerWithSlowFade:(BOOL)fade
{
  rulerController = [(TSDInteractiveCanvasController *)self rulerController];

  [(TSDRulerController *)rulerController displayRulerDragUI];
}

- (void)displayRulerForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rulerController = [(TSDInteractiveCanvasController *)self rulerController];

  [(TSDRulerController *)rulerController displayRulerDragUIForRect:x, y, width, height];
}

- (void)hideRuler
{
  rulerController = [(TSDInteractiveCanvasController *)self rulerController];

  [(TSDRulerController *)rulerController hideRulerDragUI];
}

- (id)replaceImageController
{
  [(TSDInteractiveCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = [(TSDInteractiveCanvasController *)self delegate];

  return [(TSDInteractiveCanvasControllerDelegate *)delegate imageReplacerForInteractiveCanvasController:self];
}

- (CGImage)textImageFromRect:(CGRect)rect
{
  v3 = [MEMORY[0x277D6C2F8] imageWithSize:&__block_literal_global_22 drawnUsingBlock:{rect.size.width, rect.size.height}];

  return [v3 CGImage];
}

- (BOOL)spellCheckingSupported
{
  isCanvasInteractive = [(TSDInteractiveCanvasController *)self isCanvasInteractive];
  if (isCanvasInteractive)
  {
    if (objc_opt_respondsToSelector())
    {
      mDelegate = self->mDelegate;

      LOBYTE(isCanvasInteractive) = [(TSDInteractiveCanvasControllerDelegate *)mDelegate spellCheckingSupported];
    }

    else
    {
      LOBYTE(isCanvasInteractive) = 1;
    }
  }

  return isCanvasInteractive;
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController embeddedCanvasWillBeginScrolling]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2643, @"This operation must only be performed on the main thread."}];
  }

  ++self->mEmbeddedCanvasScrolling;
}

- (void)embeddedCanvasDidEndScrolling
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController embeddedCanvasDidEndScrolling]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2649, @"This operation must only be performed on the main thread."}];
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController forceStopScrolling]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2665, @"scroll view should no longer be scrolling"}];
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

- (CGRect)boundingRectForActiveGuidesForRect:(CGRect)rect
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

- (void)setInfosToDisplay:(id)display
{
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender)
  {
    if ([(TSDInteractiveCanvasController *)self p_currentlyScrolling])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController setInfosToDisplay:]"];
      [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2762, @"this will probably cause a hiccup"}];
    }

    [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
  }

  p_shouldLayoutAndRenderOnThread = [(TSDInteractiveCanvasController *)self p_shouldLayoutAndRenderOnThread];
  if (!p_shouldLayoutAndRenderOnThread && self->mStaticLayoutAndRenderOnThread && self->mDisableThreadedLayoutAndRender <= 0 && [(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] window])
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController setInfosToDisplay:]"];
    [currentHandler2 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2768, @"we want to do a static layout+render on the BG thread, but threaded layout+render is disabled"}];
  }

  [(TSDCanvas *)self->mCanvas i_setInfosToDisplay:display updatingLayoutController:0];
  [(TSDCanvasEditor *)self->mCanvasEditor canvasInfosDidChange];
  if (p_shouldLayoutAndRenderOnThread)
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

- (id)topLevelZOrderedSiblingsOfInfos:(id)infos
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [infos countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(infos);
        }

        parentInfo = [*(*(&v13 + 1) + 8 * i) parentInfo];
        if (v6)
        {
          if (parentInfo != v6)
          {
            currentHandler = [MEMORY[0x277D6C290] currentHandler];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController topLevelZOrderedSiblingsOfInfos:]"];
            [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2802, @"Infos supplied to topLevelZOrderedSiblingsOfInfos: should have same parent."}];
          }
        }

        else
        {
          v6 = parentInfo;
        }
      }

      v5 = [infos countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return [v6 childInfos];
}

- (id)repsForInfo:(id)info
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(TSDInteractiveCanvasController *)self layoutsForInfo:info];
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

- (id)repForInfo:(id)info createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v22 = *MEMORY[0x277D85DE8];
  v7 = [(TSDInteractiveCanvasController *)self layoutForInfo:?];
  v8 = v7;
  if (!v7)
  {
    v8 = 0;
    if (neededCopy)
    {
      [(TSDInteractiveCanvasController *)self i_layout];
      v8 = [(TSDInteractiveCanvasController *)self layoutForInfo:info];
    }
  }

  result = [(TSDInteractiveCanvasController *)self repForLayout:v8];
  if (result)
  {
    v10 = 1;
  }

  else
  {
    v10 = !neededCopy;
  }

  if (v7 && (v10 & 1) == 0)
  {
    [(TSDInteractiveCanvasController *)self i_layout];
    result = [(TSDInteractiveCanvasController *)self repForLayout:v8];
  }

  if (!result)
  {
    v11 = [(TSDInteractiveCanvasController *)self layoutsForInfo:info];
    v12 = [MEMORY[0x277CBEB18] arrayWithArray:{objc_msgSend(v11, "allObjects")}];
    [v12 sortUsingSelector:sel_orderedBefore_];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    reverseObjectEnumerator = [v12 reverseObjectEnumerator];
    result = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        result = [(TSDInteractiveCanvasController *)self repForLayout:*(*(&v17 + 1) + 8 * v16)];
        if (result)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)p_repForLayout:(id)layout createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  result = [(TSDCanvas *)self->mCanvas repForLayout:?];
  if (result)
  {
    v8 = 1;
  }

  else
  {
    v8 = !neededCopy;
  }

  if (!v8)
  {
    [(TSDInteractiveCanvasController *)self i_layout];
    mCanvas = self->mCanvas;

    return [(TSDCanvas *)mCanvas repForLayout:layout];
  }

  return result;
}

- (id)layerForRep:(id)rep
{
  if (![(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController layerForRep:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2902, @"asking for layerForRep: in a non-interactive canvas"}];
  }

  mRepLayersByRep = self->mRepLayersByRep;

  return CFDictionaryGetValue(mRepLayersByRep, rep);
}

- (id)containerLayerForRep:(id)rep
{
  if (![(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController containerLayerForRep:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2910, @"asking for layerForRep: in a non-interactive canvas"}];
  }

  mContainerLayersByRep = self->mContainerLayersByRep;

  return CFDictionaryGetValue(mContainerLayersByRep, rep);
}

- (id)repForLayer:(id)layer
{
  if (![(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController repForLayer:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2917, @"asking for d_repForLayer: in a non-interactive canvas"}];
  }

  mRepsByRepLayer = self->mRepsByRepLayer;

  return CFDictionaryGetValue(mRepsByRepLayer, layer);
}

- (id)repForContainerLayer:(id)layer
{
  if (![(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController repForContainerLayer:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2923, @"asking for d_repForLayer: in a non-interactive canvas"}];
  }

  mRepsByContainerLayer = self->mRepsByContainerLayer;

  return CFDictionaryGetValue(mRepsByContainerLayer, layer);
}

- (void)recreateAllLayoutsAndReps
{
  [(TSDInteractiveCanvasController *)self endEditing];
  [(TSDCanvasEditor *)self->mCanvasEditor setSelection:0];
  [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
  [(TSDCanvas *)self->mCanvas recreateAllLayoutsAndReps];
  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [canvasLayer popLayoutDisabled];
}

- (void)discardRepForClassChange:(id)change
{
  if (change)
  {
    changeCopy = change;
    parentRep = [change parentRep];
    if (parentRep)
    {
      v7 = parentRep;
      if ([parentRep conformsToProtocol:&unk_287E30E10])
      {
        [v7 removeChildRep:change];
      }

      else
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController discardRepForClassChange:]"];
        [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2975, @"couldn't remove rep from parent"}];
      }
    }

    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] i_unregisterRep:change];

    [(TSDInteractiveCanvasController *)self layoutInvalidated];
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController discardRepForClassChange:]"];
    [currentHandler2 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 2963, @"invalid nil value for '%s'", "rep"}];
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

- (CGRect)p_visibleBoundsRectUsingSizeOfEnclosingScrollView:(BOOL)view
{
  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  if (canvasLayer)
  {
    v5 = canvasLayer;
    [canvasLayer bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    clippingLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] clippingLayer];
    objc_opt_class();
    [-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
    v15 = TSUDynamicCast();
    if (clippingLayer)
    {
      [clippingLayer bounds];
    }

    else
    {
      v20 = v15;
      contentView = [v15 contentView];
      [(TSDInteractiveCanvasController *)self unobscuredScrollViewFrame];
      [contentView convertRect:objc_msgSend(v20 fromView:{"superview"), v22, v23, v24, v25}];
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
      if (clippingLayer && (([clippingLayer masksToBounds] & 1) != 0 || (-[TSDInteractiveCanvasController delegate](self, "delegate"), (objc_opt_respondsToSelector() & 1) != 0) && -[TSDInteractiveCanvasControllerDelegate shouldClipToScrollViewBoundsInVisibleBounds](-[TSDInteractiveCanvasController delegate](self, "delegate"), "shouldClipToScrollViewBoundsInVisibleBounds")))
      {
        [clippingLayer convertRect:v5 fromLayer:{v7, v9, v11, v13}];
        v59.origin.x = v26;
        v59.origin.y = v27;
        v59.size.width = v28;
        v59.size.height = v29;
        v55 = CGRectIntersection(v54, v59);
        v34 = clippingLayer;
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

        layer = [v35 layer];
        if (!layer)
        {
          goto LABEL_20;
        }

        v37 = layer;
        [layer convertRect:v5 fromLayer:{v7, v9, v11, v13}];
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
    canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
    v8 = [-[TSDCanvasView window](-[TSDInteractiveCanvasController canvasView](self "canvasView")];
    if (canvasLayer)
    {
      v9 = v8;
      if (v8)
      {
        [v8 convertRect:canvasLayer fromLayer:{x, y, width, height}];
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
        [v9 convertRect:canvasLayer toLayer:{v32.origin.x, v32.origin.y, v32.size.width, v32.size.height}];
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

- (CGRect)convertUnscaledToBoundsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectIsInfinite(rect))
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

- (CGRect)convertBoundsToUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectIsInfinite(rect))
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

- (CGPoint)convertUnscaledToBoundsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSDInteractiveCanvasController *)self viewScale];

  v6 = TSDMultiplyPointScalar(x, y, v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)convertBoundsToUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSDInteractiveCanvasController *)self viewScale];

  v6 = TSDMultiplyPointScalar(x, y, 1.0 / v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGSize)convertUnscaledToBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(TSDInteractiveCanvasController *)self viewScale];

  v6 = TSDMultiplySizeScalar(width, height, v5);
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)convertBoundsToUnscaledSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (id)unitStringForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = +[TSKRulerUnits instance];
  unitFormatter = [(TSDInteractiveCanvasController *)self unitFormatter];
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
  v20 = [unitFormatter stringForObjectValue:v15];
  v21 = [unitFormatter stringForObjectValue:v19];

  return [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(TSDBundle(), "localizedStringForKey:value:table:", @"x: %@  y: %@", &stru_287D36338, @"TSDrawables", v20, v21];
}

- (id)unitStringForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = +[TSKRulerUnits instance];
  unitFormatter = [(TSDInteractiveCanvasController *)self unitFormatter];
  v8 = objc_alloc(MEMORY[0x277CCABB0]);
  [v6 convertPointsToRulerUnits:width];
  *&v9 = v9;
  v10 = [v8 initWithFloat:v9];
  v11 = objc_alloc(MEMORY[0x277CCABB0]);
  [v6 convertPointsToRulerUnits:height];
  *&v12 = v12;
  v13 = [v11 initWithFloat:v12];
  v14 = [unitFormatter stringForObjectValue:v10];
  v15 = [unitFormatter stringForObjectValue:v13];

  return [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(TSDBundle(), "localizedStringForKey:value:table:", @"w: %@  h: %@", &stru_287D36338, @"TSDrawables", v14, v15];
}

- (id)unitStringForNumber:(double)number
{
  v5 = +[TSKRulerUnits instance];
  unitFormatter = [(TSDInteractiveCanvasController *)self unitFormatter];
  v7 = objc_alloc(MEMORY[0x277CCABB0]);
  [v5 convertPointsToRulerUnits:number];
  *&v8 = v8;
  v9 = [v7 initWithFloat:v8];
  v10 = [unitFormatter stringForObjectValue:v9];

  return [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(TSDBundle(), "localizedStringForKey:value:table:", @"%@", &stru_287D36338, @"TSDrawables", v10];
}

- (id)unitStringForAngle:(double)angle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [TSDBundle() localizedStringForKey:@"%i\\U00B0" value:&stru_287D36338 table:@"TSDrawables"];
  TSURound();
  TSDNormalizeAngleInDegrees(v5);
  return [v3 stringWithFormat:v4, v6];
}

- (id)unitStringForAngle:(double)angle andLength:(double)length
{
  v7 = +[TSKRulerUnits instance];
  unitFormatter = [(TSDInteractiveCanvasController *)self unitFormatter];
  v9 = objc_alloc(MEMORY[0x277CCABB0]);
  [v7 convertPointsToRulerUnits:length];
  *&v10 = v10;
  v11 = [v9 initWithFloat:v10];
  v12 = [unitFormatter stringForObjectValue:v11];

  return [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(TSDBundle(), "localizedStringForKey:value:table:", @"%@  l: %@", &stru_287D36338, @"TSDrawables", -[TSDInteractiveCanvasController unitStringForAngle:](self, "unitStringForAngle:", angle), v12];
}

- (id)ancestorRepOfRep:(id)rep orDelegateConformingToProtocol:(id)protocol
{
  if (!protocol)
  {
    return 0;
  }

  parentRep = [rep parentRep];
  if (parentRep)
  {
    parentRep2 = parentRep;
    do
    {
      v9 = [parentRep2 delegateConformingToProtocol:protocol forRep:rep];
      if (v9)
      {
        return v9;
      }

      if ([parentRep2 conformsToProtocol:protocol])
      {
        return parentRep2;
      }

      parentRep2 = [parentRep2 parentRep];
    }

    while (parentRep2);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self delegateConformingToProtocol:protocol forRep:rep];
}

- (TSDContainerRep)topLevelContainerRepForEditing
{
  objc_opt_class();
  [(TSDInteractiveCanvasController *)self repForInfo:[(TSDCanvasSelection *)[(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] canvasSelection] container]];

  return TSUDynamicCast();
}

- (id)topLevelRepsForHitTesting
{
  topLevelContainerRepForEditing = [(TSDInteractiveCanvasController *)self topLevelContainerRepForEditing];
  if (topLevelContainerRepForEditing)
  {

    return [(TSDContainerRep *)topLevelContainerRepForEditing childReps];
  }

  else
  {
    mCanvas = self->mCanvas;

    return [(TSDCanvas *)mCanvas topLevelReps];
  }
}

- (id)hitRep:(CGPoint)rep withGesture:(id)gesture passingTest:(id)test
{
  y = rep.y;
  x = rep.x;
  canvas = [(TSDInteractiveCanvasController *)self canvas];
  topLevelRepsForHitTesting = [(TSDInteractiveCanvasController *)self topLevelRepsForHitTesting];
  [objc_opt_class() smallRepOutsetForHitTesting];

  return [(TSDCanvas *)canvas hitRep:topLevelRepsForHitTesting inTopLevelReps:gesture smallRepOutset:test withGesture:x passingTest:y, v12];
}

- (id)hitRep:(CGPoint)rep
{
  y = rep.y;
  x = rep.x;
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender && [(TSDInteractiveCanvasController *)self p_currentlyScrollingIncludeEmbeddedCanvasScrolling:0])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController hitRep:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 3410, @"unsafe to find hit reps during scroll if we layout and render on a thread during scroll"}];
  }

  return [(TSDInteractiveCanvasController *)self hitRep:0 withGesture:0 passingTest:x, y];
}

- (id)hitRepsAtPoint:(CGPoint)point withSlop:(CGSize)slop
{
  y = point.y;
  x = point.x;
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
  v9 = [topLevelReps countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v13 convertNaturalPointFromUnscaledCanvas:{x, y}];
        v14 = [v13 hitReps:? withSlop:?];
        if (v14)
        {
          [array addObjectsFromArray:v14];
        }
      }

      v10 = [topLevelReps countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return array;
}

- (void)p_recursiveHitKnobAtPoint:(CGPoint)point inRep:(id)rep minDistance:(double *)distance hitKnob:(id *)knob hitRep:(id *)hitRep
{
  y = point.y;
  x = point.x;
  v41 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = [objc_msgSend(rep "knobs")];
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
        if (!*knob || ![v17 overlapsWithKnob:?])
        {
          if (([v17 isHitByUnscaledPoint:rep andRep:&v34 returningDistance:{x, y}] & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_12:
          v20 = v34;
          if (v34 >= *distance)
          {
            goto LABEL_14;
          }

LABEL_13:
          *distance = v20;
          *knob = v17;
          *hitRep = rep;
          goto LABEL_14;
        }

        v18 = [*knob obscuresKnob:v17];
        v19 = [v17 obscuresKnob:*knob];
        if (([v17 isHitByUnscaledPoint:rep andRep:&v34 returningDistance:{x, y}] & 1) == 0)
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
    childReps = [v22 childReps];
    v24 = [childReps countByEnumeratingWithState:&v30 objects:v39 count:16];
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
            objc_enumerationMutation(childReps);
          }

          [(TSDInteractiveCanvasController *)self p_recursiveHitKnobAtPoint:*(*(&v30 + 1) + 8 * i) inRep:distance minDistance:knob hitKnob:hitRep hitRep:x, y];
        }

        v25 = [childReps countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v25);
    }
  }
}

- (id)hitKnobAtPoint:(CGPoint)point returningRep:(id *)rep
{
  y = point.y;
  x = point.x;
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = 0;
  v18 = 0x47EFFFFFE0000000;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
  v9 = [topLevelReps countByEnumeratingWithState:&v14 objects:v21 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [(TSDInteractiveCanvasController *)self p_recursiveHitKnobAtPoint:*(*(&v14 + 1) + 8 * v12++) inRep:&v18 minDistance:&v20 hitKnob:&v19 hitRep:x, y];
      }

      while (v10 != v12);
      v10 = [topLevelReps countByEnumeratingWithState:&v14 objects:v21 count:16];
    }

    while (v10);
  }

  if (rep)
  {
    *rep = v19;
  }

  return v20;
}

- (id)validatedLayoutForInfo:(id)info
{
  if (self->mLayoutAndRenderOnThreadDuringScroll && self->mCurrentlyWaitingOnThreadedLayoutAndRender && [MEMORY[0x277CCACC8] isMainThread])
  {
    [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
  }

  layoutController = [(TSDInteractiveCanvasController *)self layoutController];

  return [(TSDLayoutController *)layoutController validatedLayoutForInfo:info];
}

- (id)layoutsForInfo:(id)info
{
  layoutController = [(TSDInteractiveCanvasController *)self layoutController];

  return [(TSDLayoutController *)layoutController layoutsForInfo:info];
}

- (id)layoutsForModel:(id)model withSelection:(id)selection
{
  result = [(TSDInteractiveCanvasController *)self infoForModel:model withSelection:selection];
  if (result)
  {

    return [(TSDInteractiveCanvasController *)self layoutsForInfo:result];
  }

  return result;
}

- (id)layoutForInfo:(id)info
{
  layoutController = [(TSDInteractiveCanvasController *)self layoutController];

  return [(TSDLayoutController *)layoutController layoutForInfo:info];
}

- (id)layoutForModel:(id)model withSelection:(id)selection
{
  v4 = [(TSDInteractiveCanvasController *)self layoutsForModel:model withSelection:selection];

  return [v4 anyObject];
}

- (id)layoutsForInfo:(id)info intersectingSelection:(id)selection
{
  v5 = [(TSDInteractiveCanvasController *)self layoutsForInfo:info];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__TSDInteractiveCanvasController_layoutsForInfo_intersectingSelection___block_invoke;
  v7[3] = &unk_279D483A8;
  v7[4] = selection;
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

- (id)layoutForInfoNearestVisibleRect:(id)rect
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = [(TSDInteractiveCanvasController *)self layoutsForInfo:rect];
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

- (id)layoutForInfoNearestVisibleRect:(id)rect intersectingSelection:(id)selection
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = [(TSDInteractiveCanvasController *)self layoutsForInfo:rect intersectingSelection:?];
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
      [v13 rectForSelection:selection];
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

- (void)performBlockAfterNextLayout:(id)layout
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController performBlockAfterNextLayout:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 3573, @"This operation must only be performed on the main thread."}];
  }

  if (layout)
  {
    v7 = [layout copy];
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

- (void)setOverlayLayerSuppressed:(BOOL)suppressed
{
  if (self->mOverlayLayerSuppressed != suppressed)
  {
    self->mOverlayLayerSuppressed = suppressed;
    [(TSDInteractiveCanvasController *)self layoutInvalidated];
  }
}

- (void)addDecorator:(id)decorator
{
  if (decorator)
  {
    mDecorators = self->mDecorators;
    if (!mDecorators)
    {
      mDecorators = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->mDecorators = mDecorators;
    }

    if (([(NSMutableArray *)mDecorators containsObject:decorator]& 1) == 0)
    {
      [(NSMutableArray *)self->mDecorators addObject:decorator];

      [(TSDInteractiveCanvasController *)self layoutInvalidated];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController addDecorator:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 3681, @"invalid nil value for '%s'", "decorator"}];
  }
}

- (void)removeDecorator:(id)decorator
{
  if (decorator)
  {
    if ([(NSMutableArray *)self->mDecorators containsObject:?])
    {
      [(NSMutableArray *)self->mDecorators removeObject:decorator];

      [(TSDInteractiveCanvasController *)self invalidateLayers];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController removeDecorator:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 3699, @"invalid nil value for '%s'", "decorator"}];
  }
}

- (id)p_decorators
{
  v2 = [(NSMutableArray *)self->mDecorators copy];

  return v2;
}

- (void)showOrHideComments:(id)comments
{
  v4 = [(TSDInteractiveCanvasController *)self showsComments]^ 1;

  [(TSDInteractiveCanvasController *)self setShowsComments:v4];
}

- (BOOL)shouldDisplayCommentUIForInfo:(id)info
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
  topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
  v4 = [topLevelReps countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v17 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_invalidateKnobs];
      }

      v5 = [topLevelReps countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  topLevelReps2 = [(TSDCanvas *)self->mCanvas topLevelReps];
  v9 = [topLevelReps2 countByEnumeratingWithState:&v13 objects:v21 count:16];
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
          objc_enumerationMutation(topLevelReps2);
        }

        [*(*(&v13 + 1) + 8 * j) recursivelyPerformSelectorIfImplemented:sel_invalidateComments];
      }

      v10 = [topLevelReps2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

- (BOOL)hasAnnotations
{
  annotationController = [(TSDInteractiveCanvasController *)self annotationController];

  return [annotationController hasAnnotations];
}

- (void)beginDynamicOperation
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->mInDynamicOperation)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController beginDynamicOperation]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4075, @"didn't end previous dynamic operation before starting a new one"}];
  }

  if (self->mDynamicOperationCounter)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController beginDynamicOperation]"];
    [currentHandler2 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4076, @"Inspector-driven dynamic operation in process when beginning separate dynamic operation"}];
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
  p_decorators = [(TSDInteractiveCanvasController *)self p_decorators];
  v8 = [p_decorators countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(p_decorators);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 willBeginDynamicOperation];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [p_decorators countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController endDynamicOperation]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4099, @"ending dynamic operation without starting a new one"}];
  }

  if (self->mDynamicOperationCounter)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController endDynamicOperation]"];
    [currentHandler2 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4100, @"Cannot begin inspector dynamic operation while in non-inspector dynamic operation"}];
  }

  self->mInDynamicOperation = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  p_decorators = [(TSDInteractiveCanvasController *)self p_decorators];
  v8 = [p_decorators countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(p_decorators);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 didEndDynamicOperation];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [p_decorators countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController endPossiblyParallelInspectorDynamicOperation]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"];

    [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:4133 description:@"Ended more dynamic operations than you began!"];
  }
}

- (void)setInReadMode:(BOOL)mode
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->mInReadMode != mode)
  {
    self->mInReadMode = mode;
    if (mode)
    {
      v20 = 0uLL;
      v21 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
      v5 = [topLevelReps countByEnumeratingWithState:&v18 objects:v23 count:16];
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
              objc_enumerationMutation(topLevelReps);
            }

            [*(*(&v18 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_willBeginReadMode];
          }

          v6 = [topLevelReps countByEnumeratingWithState:&v18 objects:v23 count:16];
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
      topLevelReps2 = [(TSDCanvas *)self->mCanvas topLevelReps];
      v10 = [topLevelReps2 countByEnumeratingWithState:&v14 objects:v22 count:16];
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
              objc_enumerationMutation(topLevelReps2);
            }

            [*(*(&v14 + 1) + 8 * j) recursivelyPerformSelectorIfImplemented:sel_willEndReadMode];
          }

          v11 = [topLevelReps2 countByEnumeratingWithState:&v14 objects:v22 count:16];
        }

        while (v11);
      }
    }

    [(TSDInteractiveCanvasController *)self layoutInvalidated];
  }
}

- (void)setUsesAlternateDrawableSelectionHighlight:(BOOL)highlight
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->mUsesAlternateDrawableSelectionHighlight != highlight)
  {
    self->mUsesAlternateDrawableSelectionHighlight = highlight;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
    v5 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(topLevelReps);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          [v9 recursivelyPerformSelectorIfImplemented:sel_i_invalidateSelectionHighlightLayer];
          [v9 recursivelyPerformSelectorIfImplemented:sel_invalidateKnobs];
        }

        v6 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
  v4 = [topLevelReps countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_i_invalidateSelectionHighlightLayer];
      }

      v5 = [topLevelReps countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  p_decorators = [(TSDInteractiveCanvasController *)self p_decorators];
  v3 = [p_decorators countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(p_decorators);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 willBeginScrollingOperation];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [p_decorators countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  p_decorators = [(TSDInteractiveCanvasController *)self p_decorators];
  v3 = [p_decorators countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(p_decorators);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 didEndScrollingOperation];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [p_decorators countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  p_decorators = [(TSDInteractiveCanvasController *)self p_decorators];
  v4 = [p_decorators countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(p_decorators);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 willBeginZoomingOperation];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [p_decorators countByEnumeratingWithState:&v19 objects:v24 count:16];
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
  p_decorators = [(TSDInteractiveCanvasController *)self p_decorators];
  v4 = [p_decorators countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(p_decorators);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 didEndZoomingOperation];
        }
      }

      v5 = [p_decorators countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  selfCopy = self;
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

  selfCopy->mLayersWithZoomFadeAnimation = 0;
}

- (void)setShowInvisibleObjects:(BOOL)objects
{
  if (self->mShowInvisibleObjects != objects)
  {
    self->mShowInvisibleObjects = objects;
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

- (void)updateSelectionForTapAtPoint:(CGPoint)point extendingSelection:(BOOL)selection
{
  selectionCopy = selection;
  y = point.y;
  x = point.x;
  canvasEditor = [(TSDInteractiveCanvasController *)self canvasEditor];
  v9 = [-[TSDInteractiveCanvasController hitRep:](self hitRep:{x, y), "repForSelecting"}];
  if (v9)
  {
    v10 = v9;
    parentRepToPerformSelecting = [v9 parentRepToPerformSelecting];
    if (parentRepToPerformSelecting)
    {

      [parentRepToPerformSelecting selectChildRep:v10];
    }

    else if (selectionCopy)
    {
      [(TSDInteractiveCanvasController *)self endEditing];
      canvasSelection = [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] canvasSelection];
      if (!canvasSelection)
      {
        canvasSelection = [(TSDCanvasEditor *)canvasEditor canvasSelectionWithInfos:0];
      }

      info = [v10 info];
      if ([v10 isSelectedIgnoringLocking])
      {
        v14 = [(TSDCanvasSelection *)canvasSelection copyExcludingInfo:info];
      }

      else
      {
        v14 = [(TSDCanvasSelection *)canvasSelection copyIncludingInfo:info];
      }

      v15 = v14;
      [(TSDCanvasEditor *)canvasEditor setSelection:v14];
    }

    else if ([v10 isSelectedIgnoringLocking])
    {

      [(TSDInteractiveCanvasController *)self updateSelectionForTapOnSelectedRep:v10];
    }

    else
    {
      [(TSDInteractiveCanvasController *)self endEditing];

      [(TSDCanvasEditor *)canvasEditor setSelectionToRep:v10];
    }
  }

  else if (!selectionCopy)
  {
    [(TSDInteractiveCanvasController *)self endEditing];

    [(TSDCanvasEditor *)canvasEditor setSelectionToInfo:0];
  }
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(TSDInteractiveCanvasController *)self hitRep:?];
  repForHandleSingleTap = [v6 repForHandleSingleTap];
  if (repForHandleSingleTap && ([v6 isLocked] && !objc_msgSend(v6, "wantsToHandleTapsWhenLocked") || (objc_msgSend(repForHandleSingleTap, "handleSingleTapAtPoint:", x, y) & 1) == 0))
  {
    [(TSDInteractiveCanvasController *)self updateSelectionForTapAtPoint:0 extendingSelection:x, y];
  }

  return repForHandleSingleTap != 0;
}

- (BOOL)handleDoubleTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [-[TSDInteractiveCanvasController hitRep:](self "hitRep:"repForSelecting"")];
  v7 = v6;
  if (v6)
  {
    if ([v6 info])
    {
      canvasEditor = [(TSDInteractiveCanvasController *)self canvasEditor];
      -[TSDCanvasEditor setSelection:](canvasEditor, "setSelection:", -[TSDCanvasEditor canvasSelectionWithInfos:](canvasEditor, "canvasSelectionWithInfos:", [MEMORY[0x277CBEB98] setWithObject:{objc_msgSend(v7, "info")}]));
    }

    if (([v7 isLocked] & 1) == 0)
    {
      [v7 handleDoubleTapAtPoint:{x, y}];
    }
  }

  return v7 != 0;
}

- (void)tappedCanvasBackgroundAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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
  canvasSelection = [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] canvasSelection];
  if (canvasSelection && [(TSDCanvasSelection *)canvasSelection infoCount])
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
    asiOSCVC = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] asiOSCVC];
    if (v10)
    {

      [asiOSCVC hideEditMenu];
    }

    else
    {

      [asiOSCVC showEditMenu:0];
    }
  }
}

- (id)gestureTargetStack:(id)stack
{
  array = [MEMORY[0x277CBEA60] array];
  if (![(TSDInteractiveCanvasController *)self currentlyScrolling])
  {
    array = [MEMORY[0x277CBEB18] array];
    if (objc_opt_respondsToSelector())
    {
      v8 = [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self primaryTargetForGesture:stack];
      if (v8)
      {
        [array addObject:v8];
      }
    }

    [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] textInputEditor];
    v9 = TSUProtocolCast();
    if (v9)
    {
      [array addObject:v9];
    }

    [stack unscaledLocationForICC:self];
    v11 = v10;
    v13 = v12;
    parentRep = [(TSDInteractiveCanvasController *)self hitRep:stack withGesture:&__block_literal_global_790 passingTest:?];
    v15 = TSUProtocolCast();
    if (v15)
    {
      v16 = v15;
      do
      {
        [array addObject:v16];
        parentRep = [parentRep parentRep];
        v16 = TSUProtocolCast();
      }

      while (v16);
    }

    v17 = [(TSDInteractiveCanvasController *)self hitRep:stack withGesture:&__block_literal_global_792 passingTest:v11, v13];
    parentRep2 = [v17 parentRep];
    if (parentRep2)
    {
      parentRep3 = parentRep2;
      do
      {
        v20 = TSUProtocolCast();
        if (v20)
        {
          v21 = v20;
          if (objc_opt_respondsToSelector())
          {
            if ([parentRep3 canHandleGesture:stack forChildRep:v17])
            {
              [array addObject:v21];
            }
          }
        }

        parentRep3 = [parentRep3 parentRep];
      }

      while (parentRep3);
    }

    v22 = TSUProtocolCast();
    if (v22)
    {
      [array addObject:v22];
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate additionalGestureTargetsForInteractiveCanvasController:self gesture:stack];
      if (v23)
      {
        [array addObjectsFromArray:v23];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self updateGestureTargetStack:array gesture:stack];
    }

    return array;
  }

  [(TSDInteractiveCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return array;
  }

  delegate = [(TSDInteractiveCanvasController *)self delegate];

  return [(TSDInteractiveCanvasControllerDelegate *)delegate interactiveCanvasController:self gestureTargetStackWhenScrollingWithGesture:stack];
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  mCurrentAnimation = self->mCurrentAnimation;
  if (mCurrentAnimation)
  {

    return [(TSDCanvasAnimation *)mCurrentAnimation actionForLayer:layer forKey:key];
  }

  else
  {
    mRepsByRepLayer = self->mRepsByRepLayer;
    if (mRepsByRepLayer && CFDictionaryGetValue(mRepsByRepLayer, layer) || (mRepsByContainerLayer = self->mRepsByContainerLayer) != 0 && CFDictionaryGetValue(mRepsByContainerLayer, layer) || self->mRepContainerLayer == layer || self->mOverlayLayer == layer || [layer superlayer] == self->mOverlayLayer || !objc_msgSend(layer, "superlayer") || self->mPopoutLayer == layer || objc_msgSend(layer, "superlayer") == self->mPopoutLayer)
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

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  if (!self->mShouldSuppressRendering)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{layer, @"TSDInteractiveCanvasControllerLayerKey", objc_msgSend(MEMORY[0x277CCAE60], "valueWithPointer:", context), @"TSDInteractiveCanvasControllerContextKey", 0}];
    if (+[TSDTilingBackgroundQueue isHoldingReadLockFromBackgroundQueue])
    {

      [(TSDInteractiveCanvasController *)self p_drawLayerWithReadLock:v5];
    }

    else
    {
      accessController = [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)self documentRoot] accessController];
      if (!accessController)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController drawLayer:inContext:]"];
        [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4621, @"invalid nil value for '%s'", "ac"}];
      }

      [(TSKAccessController *)accessController performRead:sel_p_drawLayerWithReadLock_ withTarget:self argument:v5];
    }
  }
}

- (BOOL)shouldLayoutTilingLayer:(id)layer
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

- (CGRect)visibleBoundsForTilingLayer:(id)layer
{
  if (!layer)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController visibleBoundsForTilingLayer:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4639, @"invalid nil value for '%s'", "layer"}];
  }

  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  [layer bounds];
  [canvasLayer convertRect:layer fromLayer:?];
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

  [canvasLayer convertRect:layer toLayer:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)canDrawTilingLayerInBackground:(id)background
{
  supportsBackgroundTileRendering = [(TSDInteractiveCanvasController *)self supportsBackgroundTileRendering];
  if (supportsBackgroundTileRendering)
  {
    Value = CFDictionaryGetValue(self->mRepsByRepLayer, background);
    if (Value)
    {

      LOBYTE(supportsBackgroundTileRendering) = [Value canDrawTilingLayerInBackground:background];
    }

    else
    {
      LOBYTE(supportsBackgroundTileRendering) = 1;
    }
  }

  return supportsBackgroundTileRendering;
}

- (BOOL)shouldBeginDrawingTilingLayerInBackground:(id)background returningToken:(id *)token andQueue:(id *)queue
{
  Value = CFDictionaryGetValue(self->mRepsByRepLayer, background);
  v8 = Value;
  if (Value)
  {
    v9 = Value;
    *token = v8;
    *queue = [v8 i_tileQueue];
  }

  return v8 != 0;
}

- (BOOL)mustDrawTilingLayerOnMainThread:(id)thread
{
  Value = CFDictionaryGetValue(self->mRepsByRepLayer, thread);
  if (Value)
  {

    LOBYTE(Value) = [Value mustDrawOnMainThreadForInteractiveCanvas];
  }

  return Value;
}

- (id)queueForDrawingTilingLayerInBackground:(id)background
{
  Value = CFDictionaryGetValue(self->mRepsByRepLayer, background);
  if (!-[TSDInteractiveCanvasController supportsBackgroundTileRendering](self, "supportsBackgroundTileRendering") || ([Value mustDrawOnMainThreadForInteractiveCanvas] & 1) != 0)
  {
    return 0;
  }

  return [Value i_tileQueue];
}

- (void)backgroundLayoutAndRenderState:(id)state performWorkInBackgroundTilingOnly:(BOOL)only
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController backgroundLayoutAndRenderState:performWorkInBackgroundTilingOnly:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4748, @"should be called on a BG thread"}];
  }

  accessController = [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)self documentRoot] accessController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__TSDInteractiveCanvasController_backgroundLayoutAndRenderState_performWorkInBackgroundTilingOnly___block_invoke;
  v9[3] = &unk_279D483F0;
  v9[4] = self;
  onlyCopy = only;
  [(TSKAccessController *)accessController performRead:v9];
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

- (BOOL)backgroundLayoutAndRenderState:(id)state shouldDispatchBackgroundWork:(id)work
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController backgroundLayoutAndRenderState:shouldDispatchBackgroundWork:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4812, @"This operation must only be performed on the main thread."}];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  mDelegate = self->mDelegate;

  return [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self shouldDispatchBackgroundWork:work];
}

- (void)backgroundLayoutAndRenderStateDidPerformBackgroundWork:(id)work
{
  v18 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController backgroundLayoutAndRenderStateDidPerformBackgroundWork:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4826, @"This operation must only be performed on the main thread."}];
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
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

        [defaultCenter postNotificationName:*(*(&v12 + 1) + 8 * i) object:self];
      }

      v9 = [(NSMutableSet *)mNotificationsToPostWithValidLayouts countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }

  [(NSMutableSet *)self->mNotificationsToPostWithValidLayouts removeAllObjects];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v48 = *MEMORY[0x277D85DE8];
  if (!self->mIgnoreContentOffsetChanges)
  {
    v5 = *MEMORY[0x277CBF398];
    v6 = *(MEMORY[0x277CBF398] + 8);
    v7 = *(MEMORY[0x277CBF398] + 16);
    v8 = *(MEMORY[0x277CBF398] + 24);
    [(TSDInteractiveCanvasController *)self setP_visibleBoundsRectForTiling:*MEMORY[0x277CBF398], v6, v7, v8];
    v9 = ([scroll isScrolling] & 1) != 0 || self->mAnimatingScroll;
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
      [scroll frame];
      v19 = v18;
      [scroll contentOffset];
      v21 = v11 + v19 - v20 - v17;
      [scroll frame];
      v23 = v22;
      [scroll contentOffset];
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
      sublayers = [(CALayer *)self->mPopoutLayer sublayers];
      v38 = [(NSArray *)sublayers countByEnumeratingWithState:&v43 objects:v47 count:16];
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
              objc_enumerationMutation(sublayers);
            }

            v42 = *(*(&v43 + 1) + 8 * i);
            [v42 frame];
            v50.origin.x = v30;
            v50.origin.y = v32;
            v50.size.width = v34;
            v50.size.height = v36;
            [v42 setHidden:{!CGRectIntersectsRect(v49, v50)}];
          }

          v39 = [(NSArray *)sublayers countByEnumeratingWithState:&v43 objects:v47 count:16];
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

- (void)scrollViewWillBeginDragging:(id)dragging
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
    delegate = [(TSDInteractiveCanvasController *)self delegate];

    [(TSDInteractiveCanvasControllerDelegate *)delegate interactiveCanvasController:self scrollViewWillBeginDragging:dragging];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  [(TSDInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(TSDInteractiveCanvasController *)self delegate];
    objc_opt_class();
    v10 = TSUDynamicCast();

    [(TSDInteractiveCanvasControllerDelegate *)delegate interactiveCanvasController:self scrollViewWillEndDragging:v10 withVelocity:offset targetContentOffset:x, y];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    self->mCurrentlyScrolling = 0;
    [(TSDInteractiveCanvasController *)self p_viewScrollingEnded];
  }
}

- (void)scrollView:(id)view willAnimateToContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  [(TSDInteractiveCanvasController *)self i_viewScrollWillChange];
  if (self->mAnimatingScroll)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController scrollView:willAnimateToContentOffset:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 4979, @"scrollView:willAnimateToContentOffset: called whilst already animating"}];
  }

  *&self->mCurrentlyScrolling = 257;
  [view contentOffset];
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

- (void)p_scrollViewDidEndScrollingAnimation:(id)animation
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
    [(TSDInteractiveCanvasController *)self scrollViewDidScroll:animation];
  }

  if ([animation isScrolling])
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

- (void)syncProcessChanges:(id)changes forChangeSource:(id)source
{
  v6 = TSUProtocolCast();
  if (v6)
  {
    v7 = [(TSDInteractiveCanvasController *)self layoutsForInfo:v6];

    [v7 makeObjectsPerformSelector:sel_processChanges_ withObject:changes];
  }
}

- (CGPoint)scrollView:(id)view restrictContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  [(TSDInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasController *)self convertBoundsToUnscaledPoint:x, y];
    v8 = v7;
    v10 = v9;
    delegate = [(TSDInteractiveCanvasController *)self delegate];
    [(TSDInteractiveCanvasController *)self viewScale];
    [(TSDInteractiveCanvasControllerDelegate *)delegate interactiveCanvasController:self restrictedContentOffset:v8 forViewScale:v10, v12];
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

- (void)asyncProcessChanges:(id)changes forChangeSource:(id)source
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController asyncProcessChanges:forChangeSource:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5095, @"async change notifications should only come in on the main thread"}];
  }

  if ([(TSDCanvas *)self->mCanvas i_needsLayout]&& [(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
  }

  v8 = TSUProtocolCast();
  if (v8)
  {
    v9 = [(TSDInteractiveCanvasController *)self repsForInfo:v8];

    [v9 makeObjectsPerformSelector:sel_processChanges_ withObject:changes];
  }
}

- (void)p_willEnterForeground:(id)foreground
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(TSDCanvas *)self->mCanvas topLevelReps:foreground];
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

- (void)p_acquireLockAndPerformAction:(id)action
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __64__TSDInteractiveCanvasController_p_acquireLockAndPerformAction___block_invoke;
  v8 = &unk_279D48418;
  selfCopy = self;
  actionCopy = action;
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_acquireLockAndPerformAction:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5152, @"failed to perform locked action"}];
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

- (void)deselectAll:(id)all
{
  if ([(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] editorForEditAction:a2 withSender:all])
  {

    [(TSDInteractiveCanvasController *)self makeEditorPerformAction:a2 withSender:all];
  }

  else
  {
    [(TSDInteractiveCanvasController *)self endEditing];
    canvasEditor = [(TSDInteractiveCanvasController *)self canvasEditor];

    [(TSDCanvasEditor *)canvasEditor setSelection:0];
  }
}

- (void)makeEditorPerformAction:(SEL)action withSender:(id)sender
{
  accessController = [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)self documentRoot] accessController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__TSDInteractiveCanvasController_makeEditorPerformAction_withSender___block_invoke;
  v8[3] = &unk_279D47668;
  v8[5] = sender;
  v8[6] = action;
  v8[4] = self;
  [(TSKAccessController *)accessController performRead:v8];
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

- (BOOL)canPerformInteractiveAction:(SEL)action withSender:(id)sender
{
  v8 = 0;
  if ([(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] editorForEditAction:action withSender:sender response:&v8])
  {
    goto LABEL_2;
  }

  if (v8 == -1)
  {
    LOBYTE(isEqual) = 0;
  }

  else
  {
    if (sel_isEqual(action, sel_deselectAll_))
    {
LABEL_2:
      LOBYTE(isEqual) = 1;
      return isEqual;
    }

    if (sel_isEqual(action, sel_nextAnnotation_) || (isEqual = sel_isEqual(action, sel_previousAnnotation_)))
    {
      LOBYTE(isEqual) = [(TSDInteractiveCanvasController *)self hasAnnotations];
    }
  }

  return isEqual;
}

- (void)p_maybeSetTextResponderEditorTo:(id)to
{
  if (![(TSDInteractiveCanvasController *)self keyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges]&& (to || !self->mPreventSettingNilEditorOnTextResponder && (!self->mTextInputResponderShareCount || ![(TSDTextInputResponder *)self->mTextInputResponder editor]|| ([[(TSDTextInputResponder *)self->mTextInputResponder editor] wantsKeyboard]& 1) == 0)))
  {
    mTextInputResponder = self->mTextInputResponder;

    [(TSDTextInputResponder *)mTextInputResponder setEditor:to];
  }
}

- (void)beginAnimations:(id)animations context:(void *)context
{
  if (self->mCurrentAnimation)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController beginAnimations:context:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5343, @"animation nesting not yet supported"}];
  }

  [MEMORY[0x277CD9FF0] flush];
  [MEMORY[0x277CD9FF0] begin];
  self->mCurrentAnimation = [[TSDCanvasAnimation alloc] initWithAnimationID:animations interactiveCanvasController:self context:context];
}

- (void)commitAnimations
{
  if (!self->mCurrentAnimation)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController commitAnimations]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5353, @"can't commit if we don't have an animation open"}];
  }

  [MEMORY[0x277CD9FF0] commit];

  self->mCurrentAnimation = 0;
}

- (void)i_layoutRegistered:(id)registered
{
  if ([registered info])
  {
    -[TSKChangeNotifier addObserver:forChangeSource:](-[TSDInteractiveCanvasController changeNotifier](self, "changeNotifier"), "addObserver:forChangeSource:", self, [registered info]);
  }

  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self layoutRegistered:registered];
  }
}

- (void)i_layoutUnregistered:(id)unregistered
{
  if ([unregistered info])
  {
    -[TSKChangeNotifier removeObserver:forChangeSource:](-[TSDInteractiveCanvasController changeNotifier](self, "changeNotifier"), "removeObserver:forChangeSource:", self, [unregistered info]);
  }

  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self layoutUnregistered:unregistered];
  }
}

- (void)i_layout
{
  if (!self->mTeardownOnBackgroundThread && ([MEMORY[0x277CCACC8] isMainThread] & 1) == 0 && (!self->mLayoutAndRenderOnThreadDuringScroll || !self->mCurrentlyWaitingOnThreadedLayoutAndRender) && !self->mNestedCanvasAllowLayoutAndRenderOnThread)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_layout]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5468, @"i_layout should only be called by our CV, from the main thread or during threaded layout"}];
  }

  if (self->mDelegate && ![(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_layout]"];
    [currentHandler2 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5469, @"should only get i_layout for interactive canvases"}];
  }

  if (!self->mTeardownOnBackgroundThread && (!self->mLayoutAndRenderOnThreadDuringScroll || !self->mCurrentlyWaitingOnThreadedLayoutAndRender && (![(TSDInteractiveCanvasController *)self p_currentlyScrolling]|| [(TSDCanvas *)self->mCanvas i_needsLayout])))
  {
    if ([(TSDInteractiveCanvasController *)self documentRoot])
    {
      accessController = [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)self documentRoot] accessController];
      if (!accessController)
      {
        currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_layout]"];
        [currentHandler3 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5475, @"invalid nil value for '%s'", "ac"}];
      }

      [(TSKAccessController *)accessController performRead:sel_p_layoutWithReadLock withTarget:self argument:0];
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
  topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
  v5 = [topLevelReps countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v9 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_willBeginZooming];
      }

      v6 = [topLevelReps countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
}

- (void)i_viewDidZoomToViewScale:(double)scale
{
  [(TSDInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)self delegate] interactiveCanvasControllerIsZooming:self viewScale:scale];
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(TSDInteractiveCanvasController *)self willChangeValueForKey:@"currentViewScale"];
  self->mDynamicViewScale = scale;

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
  topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
  v4 = [topLevelReps countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_didEndZooming];
      }

      v5 = [topLevelReps countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  p_decorators = [(TSDInteractiveCanvasController *)self p_decorators];
  v4 = [p_decorators countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(p_decorators);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 screenScaleDidChange];
        }
      }

      v5 = [p_decorators countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
  v10 = [topLevelReps countByEnumeratingWithState:&v14 objects:v22 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v14 + 1) + 8 * j) recursivelyPerformSelector:sel_screenScaleDidChange];
      }

      v11 = [topLevelReps countByEnumeratingWithState:&v14 objects:v22 count:16];
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
  topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
  v4 = [topLevelReps countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelector:sel_wideGamutValueDidChange];
      }

      v5 = [topLevelReps countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)i_viewScaleDidChange
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->mCurrentlyWaitingOnThreadedLayoutAndRender)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_viewScaleDidChange]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5585, @"Should not be called if waiting on background layout"}];
    if (self->mCurrentlyWaitingOnThreadedLayoutAndRender)
    {
      [(TSDInteractiveCanvasController *)self i_syncWithLayoutThread];
    }
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
  v6 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v10 + 1) + 8 * i) recursivelyPerformSelector:sel_viewScaleDidChange];
      }

      v7 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(TSDInteractiveCanvasController *)self layoutInvalidated];
}

- (double)i_viewScaleForProposedViewScale:(double)scale originalViewScale:(double)viewScale
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return scale;
  }

  mDelegate = self->mDelegate;

  [(TSDInteractiveCanvasControllerDelegate *)mDelegate canvasViewScaleForProposedViewScale:scale originalViewScale:viewScale];
  return result;
}

- (CGSize)i_canvasCenterOffsetForProposedViewScale:(double)scale originalViewScale:(double)viewScale
{
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate canvasCenterOffsetForProposedViewScale:scale originalViewScale:viewScale];
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

- (double)i_adjustViewScale:(double)scale
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return scale;
  }

  mDelegate = self->mDelegate;

  [(TSDInteractiveCanvasControllerDelegate *)mDelegate interactiveCanvasController:self adjustViewScale:scale];
  return result;
}

- (double)i_nextCanvasViewScaleDetentForProposedViewScale:(double)scale greater:(BOOL)greater
{
  greaterCopy = greater;
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate nextCanvasViewScaleDetentForProposedViewScale:greaterCopy greater:scale];
  }

  else
  {
    canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
    if (greaterCopy)
    {

      [canvasLayer maximumPinchViewScale];
    }

    else
    {

      [canvasLayer minimumPinchViewScale];
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_viewScrollDidChange]"];
      [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5656, @"Shouldn't be iterating over reps during background layout"}];
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
    v6 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(topLevelReps);
          }

          [*(*(&v10 + 1) + 8 * i) recursivelyPerformSelector:sel_viewScrollDidChange];
        }

        v7 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
    v4 = [topLevelReps countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(topLevelReps);
          }

          [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelector:sel_viewScrollWillChange];
        }

        v5 = [topLevelReps countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
    v4 = [topLevelReps countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(topLevelReps);
          }

          [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelector:sel_viewScrollingEnded];
        }

        v5 = [topLevelReps countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  textInputEditor = [(TSDEditorController *)self->mEditorController textInputEditor];
  if (objc_opt_respondsToSelector())
  {
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] viewScale];
    [textInputEditor targetPointSizeForSelectionWithViewScale:?];
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

- (void)i_repNeedsDisplay:(id)display
{
  Value = CFDictionaryGetValue(self->mRepLayersByRep, display);

  [(TSDInteractiveCanvasController *)self setNeedsDisplayOnLayer:Value];
}

- (void)i_repNeedsDisplay:(id)display inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  Value = CFDictionaryGetValue(self->mRepLayersByRep, display);
  if (Value)
  {
    v11 = Value;
    [display convertNaturalRectToLayerRelative:{x, y, width, height}];

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

  delegate = [(TSDInteractiveCanvasController *)self delegate];

  return [(TSDInteractiveCanvasControllerDelegate *)delegate inPrintPreviewMode];
}

- (id)i_descriptionForViewScale:(double)scale
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate descriptionForCanvasViewScale:scale]) == 0)
  {
    LOBYTE(v7) = 0;
    v6 = [MEMORY[0x277D6C328] numberFormatWithValueType:2 formatString:0 decimalPlaces:0 currencyCode:0 useAccountingStyle:0 negativeStyle:4 showThousandsSeparator:v7 fractionAccuracy:?];

    return [v6 stringFromDouble:scale];
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
  p_cachedTopLevelTilingLayers = [(TSDInteractiveCanvasController *)self p_cachedTopLevelTilingLayers];
  if (!p_cachedTopLevelTilingLayers)
  {
    if (self->_directLayerHostProvider)
    {
      p_cachedTopLevelTilingLayers = [MEMORY[0x277D6C318] set];
      mDirectLayerHostsByRep = self->mDirectLayerHostsByRep;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __59__TSDInteractiveCanvasController_i_topLevelLayersForTiling__block_invoke;
      v6[3] = &unk_279D48440;
      v6[4] = p_cachedTopLevelTilingLayers;
      [(__CFDictionary *)mDirectLayerHostsByRep enumerateKeysAndObjectsUsingBlock:v6];
    }

    else
    {
      p_cachedTopLevelTilingLayers = [MEMORY[0x277D6C318] setWithArray:{objc_msgSend(-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self, "layerHost"), "canvasLayer"), "sublayers")}];
      [-[TSDCanvasLayerHosting subviewsController](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
    }

    [(TSDInteractiveCanvasController *)self setP_cachedTopLevelTilingLayers:p_cachedTopLevelTilingLayers];
  }

  return p_cachedTopLevelTilingLayers;
}

- (void)p_postNotificationOnMainThreadWithValidLayouts:(id)layouts
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v9 = __81__TSDInteractiveCanvasController_p_postNotificationOnMainThreadWithValidLayouts___block_invoke;
  v10 = &unk_279D48468;
  selfCopy = self;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) != 0 || !self->mLayoutAndRenderOnThreadDuringScroll)
  {
    v9(v8, layouts);
  }

  else
  {
    Main = CFRunLoopGetMain();
    v6 = *MEMORY[0x277CBF048];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__TSDInteractiveCanvasController_p_postNotificationOnMainThreadWithValidLayouts___block_invoke_2;
    block[3] = &unk_279D48490;
    block[4] = layouts;
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

  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];

  [canvasLayer setUnscaledSize:{v17, v19}];
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

- (void)p_updateViewsFromRepsForceUpdate:(BOOL)update
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_updateViewsFromRepsForceUpdate:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5889, @"This operation must only be performed on the main thread."}];
  }

  if (update || [(TSDInteractiveCanvasController *)self p_allowUpdateViewsFromReps]&& [(TSDInteractiveCanvasController *)self canvasView])
  {
    if (self->mCurrentlyWaitingOnThreadedLayoutAndRender)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_updateViewsFromRepsForceUpdate:]"];
      [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 5893, @"Should not be called if waiting on background layout"}];
    }

    layerHost = [(TSDInteractiveCanvasController *)self layerHost];
    subviewsController = [(TSDCanvasLayerHosting *)layerHost subviewsController];
    [-[TSDCanvasLayerHosting subviewsController](layerHost "subviewsController")];
  }
}

- (void)p_updateLayersFromReps
{
  v78 = *MEMORY[0x277D85DE8];
  if (![(TSDInteractiveCanvasController *)self isCanvasInteractive])
  {
    return;
  }

  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
  [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] contentsScale];
  v5 = v4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = canvasLayer;
  [canvasLayer bounds];
  [(CALayer *)self->mRepContainerLayer setFrame:TSDRectWithSize()];
  additionalLayersUnderRepLayers = [(TSDInteractiveCanvasController *)self additionalLayersUnderRepLayers];
  directLayerHostProvider = self->_directLayerHostProvider;
  if (directLayerHostProvider)
  {
    [(TSDRepDirectLayerHostProvider *)directLayerHostProvider directLayerHostUpdateAdditionalLayersUnderRepLayers:additionalLayersUnderRepLayers];
  }

  else if (additionalLayersUnderRepLayers)
  {
    [v6 addObjectsFromArray:?];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v54 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v55 = v6;
  v57 = v10;
  allKeys = [(__CFDictionary *)self->mRepLayersByRep allKeys];
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
          canvas = [(TSDInteractiveCanvasController *)self canvas];
          [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
          [(TSDCanvas *)canvas convertUnscaledToBoundsRect:TSDRectWithSize()];
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
  v28 = [allKeys countByEnumeratingWithState:&v66 objects:v76 count:16];
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
          objc_enumerationMutation(allKeys);
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

      v29 = [allKeys countByEnumeratingWithState:&v66 objects:v76 count:16];
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

        layer = [*(*(&v62 + 1) + 8 * k) layer];
        if (layer)
        {
          v45 = layer;
          [layer setContentsScale:v5];
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

  additionalLayersOverRepLayers = [(TSDInteractiveCanvasController *)self additionalLayersOverRepLayers];
  v47 = self->_directLayerHostProvider;
  if (v47)
  {
    [(TSDRepDirectLayerHostProvider *)v47 directLayerHostUpdateAdditionalLayersAboveRepLayers:additionalLayersOverRepLayers];
  }

  else
  {
    if (!additionalLayersOverRepLayers)
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

- (void)p_recursivelyUpdateLayerForRep:(id)rep accumulatingLayers:(id)layers andReps:(id)reps
{
  v82 = *MEMORY[0x277D85DE8];
  layerAndSubviewHost = [TSUProtocolCast() layerAndSubviewHost];
  if (self->_directLayerHostProvider)
  {
    Value = CFDictionaryGetValue(self->mDirectLayerHostsByRep, rep);
    directLayerHostProvider = self->_directLayerHostProvider;
    if (directLayerHostProvider)
    {
      v12 = [(TSDRepDirectLayerHostProvider *)directLayerHostProvider directLayerHostForRep:rep];
    }

    else
    {
      v12 = 0;
    }

    if (v12 != Value)
    {
      if (Value)
      {
        [Value directLayerHostUpdateWithContainerLayer:0 forRep:rep];
        CFDictionaryRemoveValue(self->mDirectLayerHostsByRep, rep);
      }

      if (v12)
      {
        CFDictionarySetValue(self->mDirectLayerHostsByRep, rep, v12);
        *&v59[8] = 0;
        *v59 = layerAndSubviewHost == 0;
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
  if (layerAndSubviewHost)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    layers = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = 0;
    v59[0] = 0;
    v12 = 0;
    *&v59[4] = layers;
  }

  else
  {
    v59[0] = layerAndSubviewHost == 0;
    *&v59[4] = 0;
  }

LABEL_17:
  [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] contentsScale];
  v16 = v15;
  v17 = CFDictionaryGetValue(self->mContainerLayersByRep, rep);
  if (v17)
  {
    v18 = v17;
    v19 = v17;
    if (v13)
    {
LABEL_19:
      [v12 directLayerHostUpdateWithContainerLayer:v18 forRep:rep];
      goto LABEL_22;
    }
  }

  else
  {
    v18 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v20 = MEMORY[0x277CCACA8];
    v21 = objc_opt_class();
    [v18 setName:{objc_msgSend(v20, "stringWithFormat:", @"containerLayer(%@)", NSStringFromClass(v21))}];
    CFDictionarySetValue(self->mContainerLayersByRep, rep, v18);
    CFDictionarySetValue(self->mRepsByContainerLayer, v18, rep);
    [v18 setDelegate:self];
    if (v13)
    {
      goto LABEL_19;
    }
  }

  [layers addObject:v18];
LABEL_22:
  v22 = CFDictionaryGetValue(self->mRepLayersByRep, rep);
  layerClass = [rep layerClass];
  v61 = v18;
  if (v22)
  {
    if ([v22 isMemberOfClass:layerClass])
    {
      goto LABEL_32;
    }

    [(TSDInteractiveCanvasController *)self p_discardLayer:v22 forRep:rep];
  }

  v22 = objc_alloc_init(layerClass);
  [rep didCreateLayer:v22];
  CFDictionarySetValue(self->mRepLayersByRep, rep, v22);
  CFDictionarySetValue(self->mRepsByRepLayer, v22, rep);
  [v22 setDelegate:self];
  v24 = objc_opt_class();
  [v22 setName:NSStringFromClass(v24)];
  if (([rep directlyManagesLayerContent] & 1) == 0)
  {
    [v22 setNeedsDisplay];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v22 setTilingMode:{objc_msgSend(rep, "tilingMode")}];
    [v22 setDrawsInBackground:{objc_msgSend(rep, "canDrawInBackgroundDuringScroll")}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] contentsScale];
    [v22 setContentsScale:?];
  }

LABEL_32:
  v60 = v13;
  if (([rep layerUpdatesPaused] & 1) == 0)
  {
    [rep willUpdateLayer:v22];
  }

  if (v22)
  {
    [reps addObject:rep];
    v57 = v12;
    v58 = layerAndSubviewHost;
    if (([rep layerUpdatesPaused] & 1) == 0)
    {
      [rep updateLayerGeometryFromLayout:v22];
      [v22 setMasksToBounds:{objc_msgSend(rep, "masksToBounds")}];
      [v22 setOpaque:{objc_msgSend(rep, "isOpaque")}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v22 setContentsScale:v16];
      }

      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      additionalLayersUnderLayer = [rep additionalLayersUnderLayer];
      v56 = v25;
      if (additionalLayersUnderLayer)
      {
        v27 = additionalLayersUnderLayer;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v28 = [additionalLayersUnderLayer countByEnumeratingWithState:&v74 objects:v81 count:16];
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
              if ((objc_opt_isKindOfClass() & 1) == 0 && ([rep repDirectlyManagesContentsScaleOfLayer:v32] & 1) == 0)
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
      additionalLayersOverLayer = [rep additionalLayersOverLayer];
      if (additionalLayersOverLayer)
      {
        v34 = additionalLayersOverLayer;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v35 = [additionalLayersOverLayer countByEnumeratingWithState:&v70 objects:v80 count:16];
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
      layerAndSubviewHost = v58;
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
        childReps = [v41 childReps];
        v44 = [childReps countByEnumeratingWithState:&v66 objects:v79 count:16];
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
                objc_enumerationMutation(childReps);
              }

              [(TSDInteractiveCanvasController *)self p_recursivelyUpdateLayerForRep:*(*(&v66 + 1) + 8 * k) accumulatingLayers:v42 andReps:reps];
            }

            v45 = [childReps countByEnumeratingWithState:&v66 objects:v79 count:16];
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
      childReps2 = [v41 childReps];
      v52 = [childReps2 countByEnumeratingWithState:&v62 objects:v78 count:16];
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
              objc_enumerationMutation(childReps2);
            }

            [(TSDInteractiveCanvasController *)self p_recursivelyUpdateLayerForRep:*(*(&v62 + 1) + 8 * m) accumulatingLayers:0 andReps:reps];
          }

          v53 = [childReps2 countByEnumeratingWithState:&v62 objects:v78 count:16];
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
        layerAndSubviewHost = v58;
      }
    }
  }

  if (([rep layerUpdatesPaused] & 1) == 0)
  {
    [rep didUpdateLayer:v22];
  }

  if ((v59[0] & 1) == 0)
  {
    [objc_msgSend(layerAndSubviewHost "containerLayer")];
  }

  if (v60 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 directLayerHostUpdateOverlayLayers:objc_msgSend(rep forRep:{"overlayLayers"), rep}];
  }
}

- (void)p_discardContainerLayer:(id)layer forRep:(id)rep
{
  layerCopy = layer;
  [(TSDInteractiveCanvasController *)self p_recursivelyClearLayerDelegate:layer];
  if (layer)
  {
    CFDictionaryRemoveValue(self->mRepsByContainerLayer, layer);
  }

  if (rep)
  {
    CFDictionaryRemoveValue(self->mContainerLayersByRep, rep);
    if (self->_directLayerHostProvider)
    {
      [CFDictionaryGetValue(self->mDirectLayerHostsByRep rep)];
      CFDictionaryRemoveValue(self->mDirectLayerHostsByRep, rep);
    }
  }
}

- (void)p_recursivelyUpdateLayerEdgeAntialiasingForLayer:(id)layer
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [layer setAllowsEdgeAntialiasing:1];
  }

  mask = [layer mask];
  if (mask)
  {
    [(TSDInteractiveCanvasController *)self p_recursivelyUpdateLayerEdgeAntialiasingForLayer:mask];
  }

  v6 = [objc_msgSend(layer "sublayers")];
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

- (void)p_discardLayer:(id)layer forRep:(id)rep
{
  layerCopy = layer;
  v7 = [(TSDInteractiveCanvasController *)self p_recursivelyClearLayerDelegate:layer];
  if (layer)
  {
    CFDictionaryRemoveValue(self->mRepsByRepLayer, layer);
  }

  if (rep)
  {
    CFDictionaryRemoveValue(self->mRepLayersByRep, rep);
  }

  MEMORY[0x2821F9730](v7);
}

- (void)p_setupPopoutLayerForReps:(id)reps
{
  v65 = *MEMORY[0x277D85DE8];
  v52 = [-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self "layerHost")];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  [(TSDInteractiveCanvasController *)self visibleBoundsRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v14 = [reps countByEnumeratingWithState:&v59 objects:v64 count:16];
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
          objc_enumerationMutation(reps);
        }

        popoutLayers = [*(*(&v59 + 1) + 8 * i) popoutLayers];
        if (popoutLayers)
        {
          v19 = popoutLayers;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v20 = [popoutLayers countByEnumeratingWithState:&v55 objects:v63 count:16];
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

      v15 = [reps countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v15);
  }

  v25 = [v5 count];
  mPopoutLayer = selfCopy->mPopoutLayer;
  if (v25)
  {
    if (!mPopoutLayer)
    {
      v27 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      selfCopy->mPopoutLayer = v27;
      [(CALayer *)v27 setName:@"popout"];
      [(CALayer *)selfCopy->mPopoutLayer setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      [(CALayer *)selfCopy->mPopoutLayer setDelegate:selfCopy];
      [(CALayer *)selfCopy->mPopoutLayer setBackgroundColor:0];
      v28 = [objc_msgSend(v53 "layer")];
      if (!v28)
      {
        v28 = [objc_msgSend(v53 "superview")];
      }

      [v28 addSublayer:selfCopy->mPopoutLayer];
    }

    [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](selfCopy "layerHost")];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    [(CALayer *)selfCopy->mPopoutLayer bounds];
    v69.origin.x = v30;
    v69.origin.y = v32;
    v69.size.width = v34;
    v69.size.height = v36;
    if (!CGRectEqualToRect(v67, v69))
    {
      [(CALayer *)selfCopy->mPopoutLayer setBounds:v30, v32, v34, v36];
    }

    [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](selfCopy "layerHost")];
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
    [(CALayer *)selfCopy->mPopoutLayer position];
    if (v50 != v44 || v49 != v48)
    {
      [(CALayer *)selfCopy->mPopoutLayer setPosition:v44, v48];
    }

    [(CALayer *)selfCopy->mPopoutLayer setSublayers:v5];
  }

  else
  {
    [(CALayer *)mPopoutLayer setDelegate:0];
    [(CALayer *)selfCopy->mPopoutLayer removeFromSuperlayer];

    selfCopy->mPopoutLayer = 0;
  }
}

- (id)p_overlayLayerForReps:(id)reps
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = [reps countByEnumeratingWithState:&v36 objects:v41 count:16];
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
          objc_enumerationMutation(reps);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        if (!self->_directLayerHostProvider || !CFDictionaryGetValue(self->mDirectLayerHostsByRep, *(*(&v36 + 1) + 8 * v9)) || (objc_opt_respondsToSelector() & 1) == 0)
        {
          overlayLayers = [v10 overlayLayers];
          if (overlayLayers)
          {
            [v5 addObjectsFromArray:overlayLayers];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [reps countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v7);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  p_decorators = [(TSDInteractiveCanvasController *)self p_decorators];
  v13 = [p_decorators countByEnumeratingWithState:&v32 objects:v40 count:16];
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
          objc_enumerationMutation(p_decorators);
        }

        decoratorOverlayLayers = [*(*(&v32 + 1) + 8 * v16) decoratorOverlayLayers];
        if (decoratorOverlayLayers)
        {
          [v5 addObjectsFromArray:decoratorOverlayLayers];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [p_decorators countByEnumeratingWithState:&v32 objects:v40 count:16];
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

- (void)p_drawLayerWithReadLock:(id)lock
{
  v5 = [lock objectForKey:@"TSDInteractiveCanvasControllerLayerKey"];
  v6 = [objc_msgSend(lock objectForKey:{@"TSDInteractiveCanvasControllerContextKey", "pointerValue"}];
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_drawLayerWithReadLock:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6459, @"invalid nil value for '%s'", "layer"}];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_drawLayerWithReadLock:]"];
  [currentHandler2 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6460, @"invalid nil value for '%s'", "ctx"}];
LABEL_3:
  Value = CFDictionaryGetValue(self->mRepsByRepLayer, v5);
  if (Value)
  {

    [(TSDInteractiveCanvasController *)self i_drawRepWithReadLock:Value inContext:v7 forLayer:v5];
  }
}

- (void)i_drawRepWithReadLock:(id)lock inContext:(CGContext *)context forLayer:(id)layer
{
  if (lock)
  {
    if (context)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_drawRepWithReadLock:inContext:forLayer:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6472, @"invalid nil value for '%s'", "rep"}];
    if (context)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController i_drawRepWithReadLock:inContext:forLayer:]"];
  [currentHandler2 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6473, @"invalid nil value for '%s'", "ctx"}];
LABEL_3:
  CGContextSaveGState(context);
  [lock setupForDrawingInLayer:layer context:context];
  [lock drawInLayerContext:context];
  [lock didDrawInLayer:layer context:context];

  CGContextRestoreGState(context);
}

- (BOOL)p_endEditingToBeginEditingRep:(id)rep
{
  self->mShouldAutoscrollToSelectionAfterLayout = 0;
  self->mShouldCenterSelectionWhenAutoscrolling = 0;
  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate canvasWillEndEditingToBeginEditingRep:rep];
  }

  editorController = [(TSDInteractiveCanvasController *)self editorController];
  canvasEditor = [(TSDInteractiveCanvasController *)self canvasEditor];
  if (-[TSDEditorController textInputEditor](editorController, "textInputEditor") == canvasEditor || [-[TSDEditorController currentEditors](editorController "currentEditors")] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  editorToPopToOnEndEditing = [(TSDCanvasEditor *)canvasEditor editorToPopToOnEndEditing];
  if (editorToPopToOnEndEditing)
  {
    [(TSDEditorController *)editorController popToEditor:editorToPopToOnEndEditing];
  }

  [(TSDEditorController *)editorController setTextInputEditor:canvasEditor];
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

- (BOOL)p_shouldLayoutAndRenderOnThreadForcePendingLayout:(BOOL)layout
{
  if (!self->mLayoutAndRenderOnThreadDuringScroll)
  {
    return 0;
  }

  layoutCopy = layout;
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
  if (layoutCopy)
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_viewScrollingEnded]"];
      [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6596, @"not expecting layerHost to have been torn down at this point"}];
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_invalidateForBackgroundLayout]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6610, @"This operation must only be performed on the main thread."}];
  }

  if ([(TSDInteractiveCanvasController *)self p_shouldLayoutAndRenderOnThread])
  {
    self->mCurrentlyWaitingOnThreadedLayoutAndRender = 1;
    p_backgroundLayoutAndRenderState = [(TSDInteractiveCanvasController *)self p_backgroundLayoutAndRenderState];

    [p_backgroundLayoutAndRenderState setNeedsLayoutAndRender];
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
        p_backgroundLayoutAndRenderState = [(TSDInteractiveCanvasController *)self p_backgroundLayoutAndRenderState];
      }

      else
      {
        p_backgroundLayoutAndRenderState = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
      }

      [p_backgroundLayoutAndRenderState setNeedsLayoutForTilingLayers];
    }
  }

  else if (!self->mCurrentlyWaitingOnThreadedLayoutAndRender)
  {

    [(TSDInteractiveCanvasController *)self invalidateVisibleBoundsInBackground];
  }
}

- (void)p_textGesturesDidEndNotification:(id)notification
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
      topLevelReps = [(TSDCanvas *)self->mCanvas topLevelReps];
      v5 = [topLevelReps countByEnumeratingWithState:&v9 objects:v13 count:16];
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
              objc_enumerationMutation(topLevelReps);
            }

            [*(*(&v9 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_gesturesDidEnd];
          }

          v6 = [topLevelReps countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }
    }
  }
}

- (void)p_editorDidChangeSelection:(id)selection withSelectionFlags:(unint64_t)flags
{
  flagsCopy = flags;
  if ([(TSDInteractiveCanvasController *)self canvasEditor]== selection)
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
    self->mSelectionChangeNotificationDeferredEditor = selection;
    v7 = (flagsCopy >> 6) & 1;
    self->mShouldAnimateAutoscroll = (flagsCopy & 0x10) != 0;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  self->mShouldAutoscrollToSelectionAfterGestures = v7;
}

- (void)p_editorDoneChangingSelection:(id)selection withFlags:(unint64_t)flags
{
  textInputEditor = [(TSDEditorController *)self->mEditorController textInputEditor];
  v8 = TSUProtocolCast();
  [(TSDInteractiveCanvasController *)self p_maybeSetTextResponderEditorTo:v8];
  [(TSDTextInputResponder *)self->mTextInputResponder editorDidChangeSelection:textInputEditor withFlags:flags];
  if (v8 && textInputEditor != [(TSDEditorController *)self->mEditorController textInputEditor])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_editorDoneChangingSelection:withFlags:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6751, @"Text input editor changed during -[TSDInteractiveCanvasController p_editorDoneChangingSelection]."}];
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_editorDoneChangingSelection:withFlags:]"];
    [currentHandler2 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6752, @"If the text input editor changes during p_editorDoneChangingSelection, you are likely to zombie 'editor' right now:"}];
  }

  v13 = objc_opt_respondsToSelector();
  mDelegate = self->mDelegate;
  if (v13)
  {

    [(TSDInteractiveCanvasControllerDelegate *)mDelegate editorDidChangeSelectionWithTextInputEditor:textInputEditor changingEditor:selection];
  }

  else if (objc_opt_respondsToSelector())
  {
    v15 = self->mDelegate;

    [(TSDInteractiveCanvasControllerDelegate *)v15 editorDidChangeSelection:textInputEditor];
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

- (void)p_setTargetPointSize:(double)size
{
  self->mTargetPointSize = size;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  *&v5 = size;
  [standardUserDefaults setFloat:@"TSDTargetPointSize" forKey:v5];
}

- (BOOL)p_centerOnInitialSelection
{
  v2 = +[TSKApplicationDelegate sharedDelegate];

  return [v2 centerOnInitialSelection];
}

- (CGRect)p_outsetSelectionRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsNull(rect))
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

- (void)p_autoscrollToSelection:(id)selection withInfo:(id)info isInitialSelection:(BOOL)initialSelection focusRect:(CGRect)rect scrollImmediately:(BOOL)immediately skipZoom:(BOOL)zoom
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  initialSelectionCopy = initialSelection;
  v120 = *MEMORY[0x277D85DE8];
  textInputEditor = [(TSDEditorController *)self->mEditorController textInputEditor];
  if (self->mAnimatingViewScale)
  {
    return;
  }

  v19 = textInputEditor;
  if ([(TSDInteractiveCanvasController *)self p_shouldSuppressAutozoomForEditor:textInputEditor]|| !immediately && self->mTextGesturesInFlight)
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
  if (info)
  {
    v24 = [(TSDInteractiveCanvasController *)self layoutForInfoNearestVisibleRect:info intersectingSelection:selection];
    if (v24 || (v24 = [(TSDInteractiveCanvasController *)self layoutForInfo:info], v28 = v23, v27 = v22, v26 = v21, v25 = v20, v24))
    {
      v29 = v24;
      [v24 rectForSelection:{selection, v25, v26, v27, v28}];
      [v29 rectInRoot:?];
      [(TSDInteractiveCanvasController *)self p_outsetSelectionRect:?];
      v20 = v30;
      v21 = v31;
      v22 = v32;
      v23 = v33;
      if (objc_opt_respondsToSelector())
      {
        [v19 zoomRectForSelection:selection];
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
      infos = [v34 infos];
      v36 = [infos countByEnumeratingWithState:&v115 objects:v119 count:16];
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
              objc_enumerationMutation(infos);
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

          v37 = [infos countByEnumeratingWithState:&v115 objects:v119 count:16];
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
            canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasLayer];
            [(TSDInteractiveCanvasController *)self fitWidthViewScale];
            [canvasLayer maximumPinchViewScale];
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
              currentHandler = [MEMORY[0x277D6C290] currentHandler];
              v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_autoscrollToSelection:withInfo:isInitialSelection:focusRect:scrollImmediately:skipZoom:]"];
              [currentHandler handleFailureInFunction:v59 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6883, @"Scrolling automatically in an unsupported configuration!"}];
            }

            [(TSDInteractiveCanvasController *)self visibleBoundsRect];
            v61 = v99;
            v94 = v62;
            v97 = v60 / v99;
            if (v22 > v97)
            {
              v98 = v60;
              [(TSDInteractiveCanvasController *)self fitWidthViewScale];
              [canvasLayer maximumPinchViewScale];
              TSUClamp();
              *&v63 = v63;
              v99 = *&v63;
              v61 = *&v63;
              v97 = v98 / *&v63;
            }

            v92 = v61;
            if (initialSelectionCopy)
            {
              p_centerOnInitialSelection = [(TSDInteractiveCanvasController *)self p_centerOnInitialSelection];
              if (p_centerOnInitialSelection)
              {
                v68 = 1;
LABEL_40:
                v95 = v94 / v92;
                if (v109 > v20)
                {
                  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
                  v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController p_autoscrollToSelection:withInfo:isInitialSelection:focusRect:scrollImmediately:skipZoom:]"];
                  p_centerOnInitialSelection = [currentHandler2 handleFailureInFunction:v70 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 6899, @"zoomrect should be a superrect of target rect"}];
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

                v73 = TSDRectWithOriginAndSize(p_centerOnInitialSelection, v65, v21 - v72, v66, v67);
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
                if (!zoom)
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

            p_centerOnInitialSelection = [(TSDInteractiveCanvasController *)self viewScale];
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

- (void)animateToViewScale:(double)scale contentOffset:(CGPoint)offset duration:(double)duration forceAnimation:(BOOL)animation completion:(id)completion
{
  y = offset.y;
  x = offset.x;
  v85[1] = *MEMORY[0x277D85DE8];
  if (!animation && ([-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](self "layerHost")], v13 == scale) && (-[TSDInteractiveCanvasController contentOffset](self, "contentOffset"), x == v15) && y == v14)
  {
    if (completion)
    {
      v16 = *(completion + 2);

      v16(completion, 1);
    }
  }

  else if (!self->mAnimatingViewScale)
  {
    v59 = x;
    v60 = y;
    durationCopy = duration;
    self->mAnimatingViewScale = 1;
    canvasView = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasView];
    canvasLayer = [canvasView canvasLayer];
    enclosingScrollView = [canvasView enclosingScrollView];
    [(TSDInteractiveCanvasController *)self i_viewWillBeginZooming];
    [canvasLayer bounds];
    v21 = v20;
    v23 = v22;
    [canvasLayer contentInset];
    v25 = v24;
    v27 = v26;
    memset(&v83, 0, sizeof(v83));
    CGAffineTransformMakeTranslation(&v83, -v21, -v23);
    v82 = v83;
    CGAffineTransformTranslate(&v62, &v82, v27, v25);
    *&v83.c = *&v62.m13;
    *&v83.tx = *&v62.m21;
    *&v83.a = *&v62.m11;
    [canvasView setTransform:&v62];
    [canvasLayer bounds];
    v29 = v28;
    [canvasLayer bounds];
    v56 = v27;
    v57 = v25;
    [canvasLayer setBounds:{v27, v25, v29}];
    [(TSDInteractiveCanvasController *)self viewScale];
    v31 = v30;
    memset(&v82, 0, sizeof(v82));
    scaleCopy = scale;
    v32 = scale / v30;
    if (canvasView)
    {
      [canvasView transform];
    }

    m = v82;
    CGAffineTransformTranslate(&v62, &m, v21, v23);
    *&v82.c = *&v62.m13;
    *&v82.tx = *&v62.m21;
    *&v82.a = *&v62.m11;
    *&m.a = *&v62.m11;
    *&m.c = *&v62.m13;
    *&m.tx = *&v62.m21;
    CGAffineTransformScale(&v62, &m, scale / v31, scale / v31);
    *&v82.a = *&v62.m11;
    *&v82.c = *&v62.m13;
    *&v82.tx = *&v62.m21;
    [canvasLayer position];
    v34 = v33;
    v36 = v35;
    [enclosingScrollView contentOffset];
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
    v76 = canvasView;
    v77 = canvasLayer;
    v79 = v46;
    v80 = v48;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v64 = __102__TSDInteractiveCanvasController_animateToViewScale_contentOffset_duration_forceAnimation_completion___block_invoke_2;
    v65 = &unk_279D484E0;
    v66 = canvasLayer;
    v67 = canvasView;
    v70 = scaleCopy;
    v71 = v59;
    v72 = v60;
    selfCopy = self;
    completionCopy = completion;
    if (objc_opt_respondsToSelector())
    {
      [(TSDInteractiveCanvasControllerDelegate *)self->mDelegate interactiveCanvasController:self willAnimateToViewScale:scaleCopy withDuration:durationCopy unscaledContentOffset:v59, v60];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v84 = @"TSDInteractiveCanvasControllerDurationKey";
    *&v50 = durationCopy;
    v85[0] = [MEMORY[0x277CCABB0] numberWithFloat:v50];
    [defaultCenter postNotificationName:@"TSDCanvasUpdateZoomNotification" object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v85, &v84, 1)}];
    if (durationCopy <= 0.0)
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
      animation = [MEMORY[0x277CD9E00] animation];
      [animation setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v51, v52, 0)}];
      [animation setDuration:durationCopy];
      [animation setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7B8])}];
      [animation setRemovedOnCompletion:0];
      [animation setFillMode:*MEMORY[0x277CDA230]];
      mCurrentAnimation = self->mCurrentAnimation;
      if (mCurrentAnimation)
      {
        [(TSDCanvasAnimation *)mCurrentAnimation beginTime];
        [animation setBeginTime:?];
        [animation setBeginTimeMode:{-[TSDCanvasAnimation beginTimeMode](self->mCurrentAnimation, "beginTimeMode")}];
      }

      [canvasLayer addAnimation:animation forKey:@"viewScaleAnimation"];
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

- (void)p_applyViewScale:(double)scale andContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  self->mIgnoreContentOffsetChanges = 1;
  [(TSDInteractiveCanvasController *)self setViewScale:scale];
  self->mIgnoreContentOffsetChanges = 0;

  [(TSDInteractiveCanvasController *)self setContentOffset:0 animated:x, y];
}

- (void)doubleTappedCanvasBackgroundAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInteractiveCanvasController viewWithTransferredLayers]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 7136, @"viewWithTransferredLayers makes sense only when the canvas is interactive"}];
  }

  canvasView = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] canvasView];
  v6 = objc_alloc(MEMORY[0x277D75D18]);
  [canvasView frame];
  v7 = [v6 initWithFrame:?];
  [canvasView bounds];
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
  bounds = [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v14.n128_f64[0] = v9;

  v12.n128_f64[0] = MinY / v13;
  TSDContentPlacementWithAnchorPoint(bounds, v14, v12);
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
  bounds = [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v14.n128_f64[0] = v9;

  v12.n128_f64[0] = MaxY / v13;
  TSDContentPlacementWithAnchorPoint(bounds, v14, v12);
  result.var0.y = v16;
  result.var0.x = v15;
  return result;
}

- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)touchContentPlacement
{
  asiOSCVC = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] asiOSCVC];

  [asiOSCVC touchContentPlacement];
  result.var0.y = v4;
  result.var0.x = v3;
  return result;
}

- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)centerPlusMovementContentPlacement
{
  asiOSCVC = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] asiOSCVC];

  [asiOSCVC centerPlusMovementContentPlacement];
  result.var0.y = v4;
  result.var0.x = v3;
  return result;
}

- (id)clampContentLocation:(id)location forPlacement:(id)placement
{
  y = placement.var0.y;
  x = placement.var0.x;
  v7 = [(TSDInteractiveCanvasController *)self convertContentLocation:location fromPlacement:placement.var0.x toPlacement:placement.var0.y, 0.0, 0.0];
  [v7 unscaledPoint];
  v9 = v8;
  v11 = v10;
  [v7 viewScale];
  [(TSDInteractiveCanvasController *)self clampedUnscaledContentOffset:v9 forViewScale:v11, v12];
  [v7 setUnscaledPoint:?];

  return [(TSDInteractiveCanvasController *)self convertContentLocation:v7 fromPlacement:0.0 toPlacement:0.0, x, y];
}

- (id)convertContentLocation:(id)location fromPlacement:(id)placement toPlacement:(id)toPlacement
{
  v7 = TSDSubtractPoints(toPlacement.var0.x, toPlacement.var0.y, placement.var0.x);
  v9 = v8;
  [location unscaledPoint];
  v11 = v10;
  v13 = v12;
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v15 = v7 * v14;
  [location viewScale];
  v17 = v11 + v15 / v16;
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v19 = v9 * v18;
  [location viewScale];
  v21 = v13 + v19 / v20;
  [location viewScale];

  return [TSDContentLocation contentLocationWithUnscaledPoint:v17 viewScale:v21, v22];
}

- (id)clampedCenterContentLocationForPoint:(CGPoint)point withPlacement:(id)placement viewScale:(double)scale
{
  v6 = [(TSDInteractiveCanvasController *)self convertContentLocation:[TSDContentLocation fromPlacement:"contentLocationWithUnscaledPoint:viewScale:" toPlacement:point.x contentLocationWithUnscaledPoint:scale viewScale:?], placement.var0.x, placement.var0.y, 0.5, 0.5];

  return [(TSDInteractiveCanvasController *)self clampContentLocation:v6 forPlacement:0.5, 0.5];
}

- (CGPoint)clampedCenterPointForPoint:(CGPoint)point withPlacement:(id)placement viewScale:(double)scale
{
  scale = [(TSDInteractiveCanvasController *)self clampedCenterContentLocationForPoint:point.x withPlacement:point.y viewScale:placement.var0.x, placement.var0.y, scale];

  [scale unscaledPoint];
  result.y = v7;
  result.x = v6;
  return result;
}

- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)contentPlacementForPoint:(CGPoint)point inView:(id)view
{
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] convertPoint:view fromView:point.x, point.y];
  v6 = v5;
  v8 = v7;
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] contentOffset];
  v10 = TSDSubtractPoints(v6, v8, v9);
  v12 = v11;
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v14 = v10 / v13;
  bounds = [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)self canvasView] enclosingScrollView] bounds];
  v18.n128_f64[0] = v14;

  v16.n128_f64[0] = v12 / v17;
  TSDContentPlacementWithAnchorPoint(bounds, v18, v16);
  result.var0.y = v20;
  result.var0.x = v19;
  return result;
}

@end