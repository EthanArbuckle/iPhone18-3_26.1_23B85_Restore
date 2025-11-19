@interface TSDCanvas
+ (void)p_recursivelyAddOrderedChildrenOfRep:(id)a3 toArray:(id)a4;
- (BOOL)i_updateRepsFromLayouts;
- (BOOL)isCanvasInteractive;
- (BOOL)isDrawingIntoPDF;
- (BOOL)isPrinting;
- (BOOL)isRenderingForKPF;
- (BOOL)p_canvasShouldAlwaysUpdateLayers;
- (BOOL)shouldShowComments;
- (BOOL)shouldShowInstructionalTextForLayout:(id)a3;
- (BOOL)shouldShowTextCommentHighlights;
- (BOOL)shouldShowTextOverflowGlyphs;
- (BOOL)shouldSuppressBackgrounds;
- (BOOL)spellCheckingSupported;
- (BOOL)spellCheckingSuppressed;
- (BOOL)supportsAdaptiveLayout;
- (BOOL)textLayoutMustIncludeAdornments;
- (BOOL)wantsEditingLayoutsForOffscreenInfos;
- (CGContext)i_createContextToDrawImageInScaledRect:(CGRect)a3 withTargetIntegralSize:(CGSize)a4 distortedToMatch:(BOOL)a5 returningBounds:(CGRect *)a6 integralBounds:(CGRect *)a7;
- (CGImage)i_imageInScaledRect:(CGRect)a3 withTargetIntegralSize:(CGSize)a4 distortedToMatch:(BOOL)a5 preservingContentHeadroom:(double *)a6 tonemappedHDRContentToSDR:(BOOL *)a7 keepingChildrenPassingTest:(id)a8;
- (CGImage)i_newImageInContext:(CGContext *)a3 bounds:(CGRect)a4 integralBounds:(CGRect)a5 distortedToMatch:(BOOL)a6 tonemappedHDRContentToSDR:(BOOL *)a7 keepingChildrenPassingTest:(id)a8;
- (CGPoint)convertBoundsToUnscaledPoint:(CGPoint)a3;
- (CGPoint)convertUnscaledToBoundsPoint:(CGPoint)a3;
- (CGRect)convertBoundsToUnscaledRect:(CGRect)a3;
- (CGRect)convertUnscaledToBoundsRect:(CGRect)a3;
- (CGRect)i_approximateScaledFrameOfEditingMenuAtPoint:(CGPoint)a3;
- (CGRect)i_clipRectForCreatingRepsFromLayouts;
- (CGRect)p_bounds;
- (CGRect)unscaledRectOfLayouts;
- (CGRect)visibleUnscaledRectForClippingReps;
- (CGSize)convertBoundsToUnscaledSize:(CGSize)a3;
- (CGSize)convertUnscaledToBoundsSize:(CGSize)a3;
- (CGSize)unscaledSize;
- (Class)rootLayoutClass;
- (NSArray)allRepsOrdered;
- (TSCKDocumentRoot)documentRoot;
- (TSDCanvas)init;
- (TSDCanvas)initWithLayoutControllerClass:(Class)a3 delegate:(id)a4;
- (TSDCanvasDelegate)delegate;
- (TSDImageRenderingConfiguration)currentlyPreferredRenderingConfiguration;
- (TSDInteractiveCanvasController)canvasController;
- (TSKAccessController)accessController;
- (TSKChangeNotifier)changeNotifier;
- (TSPObjectContext)objectContext;
- (UIEdgeInsets)contentInset;
- (id)initForTemporaryLayout;
- (id)repForLayout:(id)a3;
- (void)addBitmapsToRenderingQualityInfo:(id)a3 inContext:(CGContext *)a4;
- (void)dealloc;
- (void)i_drawBackgroundInContext:(CGContext *)a3;
- (void)i_drawBackgroundInContext:(CGContext *)a3 bounds:(CGRect)a4;
- (void)i_drawRepsInContext:(CGContext *)a3 passingTest:(id)a4;
- (void)i_drawRepsInContext:(CGContext *)a3 passingTest:(id)a4 distort:(CGAffineTransform *)a5;
- (void)i_layoutIfNeededUpdatingLayerTree;
- (void)i_performBlockWhileIgnoringClickThrough:(id)a3;
- (void)i_registerRep:(id)a3;
- (void)i_setCanvasController:(id)a3;
- (void)i_setInfosToDisplay:(id)a3 updatingLayoutController:(BOOL)a4;
- (void)i_unregisterRep:(id)a3;
- (void)i_updateInfosInLayoutController;
- (void)invalidateLayers;
- (void)invalidateReps;
- (void)invalidateVisibleBounds;
- (void)layoutInvalidated;
- (void)nonInteractiveLayoutIfNeeded;
- (void)p_invalidateCachedRenderingConfiguration;
- (void)p_layoutWithReadLock;
- (void)p_removeAllReps;
- (void)performBlockAfterLayoutIfNecessary:(id)a3;
- (void)recreateAllLayoutsAndReps;
- (void)setDelegate:(id)a3;
- (void)setEnableInstructionalText:(BOOL)a3;
- (void)setSupportsHDR:(BOOL)a3;
- (void)setSuppressesShadowsAndReflections:(BOOL)a3;
- (void)setViewScale:(double)a3;
- (void)teardown;
@end

@implementation TSDCanvas

- (TSDCanvas)init
{
  v3 = objc_opt_class();

  return MEMORY[0x2821F9670](self, sel_initWithLayoutControllerClass_delegate_, v3);
}

- (TSDCanvas)initWithLayoutControllerClass:(Class)a3 delegate:(id)a4
{
  v6 = a4;
  v29.receiver = self;
  v29.super_class = TSDCanvas;
  v7 = [(TSDCanvas *)&v29 init];
  v8 = v7;
  if (v7)
  {
    *(v7 + 12) = 0x3FF0000000000000;
    *(v7 + 5) = vdupq_n_s64(0x4059000000000000uLL);
    v9 = *(MEMORY[0x277D81428] + 16);
    *(v7 + 184) = *MEMORY[0x277D81428];
    *(v7 + 200) = v9;
    v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v11 = *(v8 + 24);
    *(v8 + 24) = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v13 = *(v8 + 32);
    *(v8 + 32) = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB98]);
    v15 = *(v8 + 40);
    *(v8 + 40) = v14;

    v16 = objc_alloc_init(MEMORY[0x277D812B8]);
    v17 = *(v8 + 56);
    *(v8 + 56) = v16;

    objc_storeWeak((v8 + 8), v6);
    v18 = [a3 alloc];
    v20 = objc_msgSend_initWithCanvas_(v18, v19, v8);
    v21 = *(v8 + 64);
    *(v8 + 64) = v20;

    *(v8 + 104) = 0x3FF0000000000000;
    *(v8 + 112) = 1;
    *(v8 + 216) = 1;
    *(v8 + 152) = 0;
    __dmb(0xBu);
    v24 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], v22, v23);
    v25 = *(v8 + 160);
    *(v8 + 160) = v24;

    objc_msgSend_setI_viewScaleForAudioObjectsInNonInteractiveCanvas_(v8, v26, v27, 1.0);
  }

  return v8;
}

- (id)initForTemporaryLayout
{
  result = objc_msgSend_init(self, a2, v2);
  if (result)
  {
    *(result + 72) = 1;
  }

  return result;
}

- (void)teardown
{
  mInfos = self->mInfos;
  self->mInfos = 0;

  v6 = objc_msgSend_layoutController(self, v4, v5);
  objc_msgSend_i_removeAllLayouts(v6, v7, v8);

  objc_msgSend_p_removeAllReps(self, v9, v10);
  if (objc_msgSend_isCanvasInteractive(self, v11, v12))
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->mDelegate);
      objc_msgSend_updateLayerTreeForInteractiveCanvas_(v15, v16, self);
    }
  }

  os_unfair_lock_lock(&self->mBlocksToPerformLock);
  mBlocksToPerform = self->mBlocksToPerform;
  self->mBlocksToPerform = 0;

  os_unfair_lock_unlock(&self->mBlocksToPerformLock);
}

- (void)dealloc
{
  if (self->mInfos)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDCanvas dealloc]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCanvas.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 155, 0, "Canvas must be torn down before being deallocated");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  if (self->mBlocksToPerform)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDCanvas dealloc]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCanvas.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 158, 0, "expected nil value for '%{public}s'", "mBlocksToPerform");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  objc_msgSend_setInfos_(self->mLayoutController, a2, MEMORY[0x277CBEBF8]);
  v17.receiver = self;
  v17.super_class = TSDCanvas;
  [(TSDCanvas *)&v17 dealloc];
}

- (Class)rootLayoutClass
{
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->mDelegate);
    v3 = objc_msgSend_canvasRootLayoutClass(v6, v7, v8);
  }

  return v3;
}

- (void)performBlockAfterLayoutIfNecessary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16 = v4;
    if (objc_msgSend_isLayoutComplete(self, v5, v6))
    {
      v16[2]();
    }

    else
    {
      os_unfair_lock_lock(&self->mBlocksToPerformLock);
      mBlocksToPerform = self->mBlocksToPerform;
      if (mBlocksToPerform)
      {
        v8 = mBlocksToPerform;
      }

      else
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v9 = self->mBlocksToPerform;
      self->mBlocksToPerform = v8;

      v10 = self->mBlocksToPerform;
      v13 = objc_msgSend_copy(v16, v11, v12);
      v14 = MEMORY[0x277C9C8B0]();
      objc_msgSend_addObject_(v10, v15, v14);

      os_unfair_lock_unlock(&self->mBlocksToPerformLock);
    }

    v4 = v16;
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->mDelegate, obj);
    objc_msgSend_p_invalidateCachedRenderingConfiguration(self, v6, v7);
    v5 = obj;
  }
}

- (TSCKDocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v5 = objc_msgSend_documentRoot(WeakRetained, v3, v4);

  return v5;
}

- (TSPObjectContext)objectContext
{
  v3 = objc_msgSend_documentRoot(self, a2, v2);
  v6 = objc_msgSend_context(v3, v4, v5);

  return v6;
}

- (TSKChangeNotifier)changeNotifier
{
  v3 = objc_msgSend_documentRoot(self, a2, v2);
  v6 = objc_msgSend_changeNotifier(v3, v4, v5);

  return v6;
}

- (TSKAccessController)accessController
{
  v3 = objc_msgSend_documentRoot(self, a2, v2);
  v6 = objc_msgSend_accessController(v3, v4, v5);

  return v6;
}

- (void)i_setCanvasController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->mCanvasController);

  if (WeakRetained)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDCanvas i_setCanvasController:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCanvas.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 221, 0, "expected nil value for '%{public}s'", "mCanvasController");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  if (!obj)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDCanvas i_setCanvasController:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCanvas.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 222, 0, "invalid nil value for '%{public}s'", "icc");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  v20 = objc_loadWeakRetained(&self->mCanvasController);

  if (!v20)
  {
    objc_storeWeak(&self->mCanvasController, obj);
  }
}

- (TSDInteractiveCanvasController)canvasController
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasController);

  return WeakRetained;
}

- (void)i_setInfosToDisplay:(id)a3 updatingLayoutController:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v13 = v6;
  if (v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  mInfos = self->mInfos;
  self->mInfos = v9;

  if (v4)
  {
    objc_msgSend_i_updateInfosInLayoutController(self, v11, v12);
  }
}

- (void)i_updateInfosInLayoutController
{
  v5 = objc_msgSend_layoutController(self, a2, v2);
  objc_msgSend_setInfos_(v5, v4, self->mInfos);
}

- (id)repForLayout:(id)a3
{
  if (a3)
  {
    v4 = objc_msgSend_objectForKeyedSubscript_(self->mRepsByLayout, a2, a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)recreateAllLayoutsAndReps
{
  v4 = objc_msgSend_layoutController(self, a2, v2);
  objc_msgSend_i_removeAllLayouts(v4, v5, v6);

  objc_msgSend_i_updateRepsFromLayouts(self, v7, v8);
  if (objc_msgSend_isCanvasInteractive(self, v9, v10))
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->mDelegate);
      objc_msgSend_updateLayerTreeForInteractiveCanvas_(v15, v16, self);
    }
  }

  v17 = objc_msgSend_layoutController(self, v11, v12);
  objc_msgSend_setInfos_(v17, v18, self->mInfos);

  objc_msgSend_layoutInvalidated(self, v19, v20);
}

- (void)layoutInvalidated
{
  *&self->mInvalidFlags |= 1u;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = objc_loadWeakRetained(&self->mDelegate);
    objc_msgSend_canvasLayoutInvalidated_(v6, v5, self);
  }
}

- (void)invalidateReps
{
  *&self->mInvalidFlags |= 2u;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = objc_loadWeakRetained(&self->mDelegate);
    objc_msgSend_canvasLayoutInvalidated_(v6, v5, self);
  }
}

- (void)invalidateVisibleBounds
{
  *&self->mInvalidFlags |= 4u;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = objc_loadWeakRetained(&self->mDelegate);
    objc_msgSend_canvasLayoutInvalidated_(v6, v5, self);
  }
}

- (void)invalidateLayers
{
  *&self->mInvalidFlags |= 8u;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = objc_loadWeakRetained(&self->mDelegate);
    objc_msgSend_canvasLayoutInvalidated_(v6, v5, self);
  }
}

- (void)nonInteractiveLayoutIfNeeded
{
  if (objc_msgSend_isCanvasInteractive(self, a2, v2))
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDCanvas nonInteractiveLayoutIfNeeded]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCanvas.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 334, 0, "Interactive canvases should not be laid out directly!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  MEMORY[0x2821F9670](self, sel_i_layoutIfNeeded, v5);
}

- (void)i_layoutIfNeededUpdatingLayerTree
{
  if (self->mInLayout)
  {
    if (objc_msgSend_i_needsLayout(self, a2, v2) && !self->mShouldUpdateLayersDuringLayout && (objc_msgSend_p_canvasShouldAlwaysUpdateLayers(self, v4, v5) & 1) == 0)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = sub_2767A4740;
      v7[3] = &unk_27A6CC658;
      v7[4] = self;
      objc_msgSend_performBlockAfterLayoutIfNecessary_(self, v6, v7);
    }
  }

  else
  {
    self->mShouldUpdateLayersDuringLayout = 1;
    objc_msgSend_p_layoutWithReadLock(self, a2, v2);
    self->mShouldUpdateLayersDuringLayout = 0;
  }
}

- (BOOL)p_canvasShouldAlwaysUpdateLayers
{
  if (objc_msgSend_isCanvasInteractive(self, a2, v2))
  {
    return objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v3, v4) ^ 1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)supportsAdaptiveLayout
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->mDelegate);
      v8 = objc_msgSend_supportsAdaptiveLayout(v5, v6, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)spellCheckingSupported
{
  if (objc_msgSend_isCanvasInteractive(self, a2, v2))
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->mDelegate);
      v8 = objc_msgSend_spellCheckingSupported(v5, v6, v7);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)spellCheckingSuppressed
{
  v4 = objc_msgSend_spellCheckingSupported(self, a2, v2);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v6 = objc_loadWeakRetained(&self->mDelegate);
      v9 = objc_msgSend_spellCheckingSuppressed(v6, v7, v8);
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

  return v9 | v4 ^ 1;
}

- (BOOL)isCanvasInteractive
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->mDelegate);
      isCanvasInteractive = objc_msgSend_isCanvasInteractive(v5, v6, v7);
    }

    else
    {
      isCanvasInteractive = 0;
    }
  }

  else
  {
    isCanvasInteractive = 0;
  }

  return isCanvasInteractive;
}

- (BOOL)wantsEditingLayoutsForOffscreenInfos
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->mDelegate);
      v8 = objc_msgSend_wantsEditingLayoutsForOffscreenInfos(v5, v6, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isPrinting
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->mDelegate);
      isPrintingCanvas = objc_msgSend_isPrintingCanvas(v5, v6, v7);
    }

    else
    {
      isPrintingCanvas = 0;
    }
  }

  else
  {
    isPrintingCanvas = 0;
  }

  return isPrintingCanvas;
}

- (BOOL)shouldShowTextOverflowGlyphs
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (!WeakRetained)
  {
    return 1;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = objc_loadWeakRetained(&self->mDelegate);
  shouldShowTextOverflowGlyphs = objc_msgSend_shouldShowTextOverflowGlyphs(v7, v8, v9);

  return shouldShowTextOverflowGlyphs;
}

- (BOOL)shouldShowComments
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (!WeakRetained)
  {
    return 1;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = objc_loadWeakRetained(&self->mDelegate);
  shouldShowCommentsForCanvas = objc_msgSend_shouldShowCommentsForCanvas_(v7, v8, self);

  return shouldShowCommentsForCanvas;
}

- (BOOL)shouldShowTextCommentHighlights
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (!WeakRetained)
  {
    return 1;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = objc_loadWeakRetained(&self->mDelegate);
  shouldShowTextCommentHighlightsForCanvas = objc_msgSend_shouldShowTextCommentHighlightsForCanvas_(v7, v8, self);

  return shouldShowTextCommentHighlightsForCanvas;
}

- (void)setEnableInstructionalText:(BOOL)a3
{
  if (objc_msgSend_isCanvasInteractive(self, a2, a3))
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDCanvas setEnableInstructionalText:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCanvas.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 452, 0, "Setting enableInstructionalText on an interactive canvas is not allowed.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  self->mEnableInstructionalText = a3;
}

- (BOOL)shouldShowInstructionalTextForLayout:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained && (v8 = WeakRetained, v9 = objc_loadWeakRetained(&self->mDelegate), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
  {
    v11 = objc_loadWeakRetained(&self->mDelegate);
    shouldShowInstructionalTextForLayout = objc_msgSend_shouldShowInstructionalTextForLayout_(v11, v12, v4);
  }

  else if (objc_msgSend_isCanvasInteractive(self, v6, v7) & 1) != 0 || (objc_msgSend_isTemporaryForLayout(self, v14, v15))
  {
    shouldShowInstructionalTextForLayout = 1;
  }

  else
  {
    shouldShowInstructionalTextForLayout = objc_msgSend_enableInstructionalText(self, v16, v17);
  }

  return shouldShowInstructionalTextForLayout;
}

- (BOOL)shouldSuppressBackgrounds
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->mDelegate);
      shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v5, v6, v7);
    }

    else
    {
      shouldSuppressBackgrounds = 0;
    }
  }

  else
  {
    shouldSuppressBackgrounds = 0;
  }

  return shouldSuppressBackgrounds;
}

- (BOOL)isDrawingIntoPDF
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (!WeakRetained)
  {
    return 0;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->mDelegate);
  isCanvasDrawingIntoPDF = objc_msgSend_isCanvasDrawingIntoPDF_(v7, v8, self);

  return isCanvasDrawingIntoPDF;
}

- (BOOL)isRenderingForKPF
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (!WeakRetained)
  {
    return 0;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->mDelegate);
  isRenderingForKPF = objc_msgSend_isRenderingForKPF(v7, v8, v9);

  return isRenderingForKPF;
}

- (BOOL)textLayoutMustIncludeAdornments
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (!WeakRetained)
  {
    return 0;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->mDelegate);
  MustIncludeAdornments = objc_msgSend_textLayoutMustIncludeAdornments(v7, v8, v9);

  return MustIncludeAdornments;
}

- (void)setSupportsHDR:(BOOL)a3
{
  if (self->mSupportsHDR != a3)
  {
    if (a3)
    {
      v5 = objc_msgSend_currentCapabilities(TSDCapabilities, a2, a3);
      isHDRCapable = objc_msgSend_isHDRCapable(v5, v6, v7);

      if ((isHDRCapable & 1) == 0)
      {
        v9 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDCanvas setSupportsHDR:]");
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCanvas.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 522, 0, "Canvas marked HDR on a device that does not support it.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
      }
    }

    self->mSupportsHDR = a3;
    objc_msgSend_p_invalidateCachedRenderingConfiguration(self, a2, a3);
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v19 = objc_loadWeakRetained(&self->mDelegate);
      objc_msgSend_canvasSupportsHDRDidChange_(v19, v18, self);
    }
  }
}

- (void)p_invalidateCachedRenderingConfiguration
{
  mCachedImageRenderingConfiguration = self->mCachedImageRenderingConfiguration;
  self->mCachedImageRenderingConfiguration = 0;
}

- (TSDImageRenderingConfiguration)currentlyPreferredRenderingConfiguration
{
  mCachedImageRenderingConfiguration = self->mCachedImageRenderingConfiguration;
  if (!mCachedImageRenderingConfiguration)
  {
    v4 = [TSDImageRenderingConfiguration alloc];
    v6 = objc_msgSend_i_initWithCanvas_(v4, v5, self);
    v7 = self->mCachedImageRenderingConfiguration;
    self->mCachedImageRenderingConfiguration = v6;

    mCachedImageRenderingConfiguration = self->mCachedImageRenderingConfiguration;
  }

  return mCachedImageRenderingConfiguration;
}

- (void)setSuppressesShadowsAndReflections:(BOOL)a3
{
  if (objc_msgSend_isCanvasInteractive(self, a2, a3))
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDCanvas setSuppressesShadowsAndReflections:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCanvas.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 555, 0, "Caller is trying to suppress shadows and reflections on an interactive canvas; this is not supported");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  self->mSuppressesShadowsAndReflections = a3;
}

- (void)setViewScale:(double)a3
{
  if (a3 <= 0.0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDCanvas setViewScale:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCanvas.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 569, 0, "Caller is trying to set the canvas view scale to invalid value: %f (Falling back to current value: %f)", *&a3, *&self->mViewScale);

    v13 = MEMORY[0x277D81150];

    objc_msgSend_logFullBacktrace(v13, v11, v12);
  }

  else
  {
    self->mViewScale = a3;

    objc_msgSend_p_invalidateCachedRenderingConfiguration(self, a2, v3);
  }
}

- (CGRect)convertUnscaledToBoundsRect:(CGRect)a3
{
  objc_msgSend_viewScale(self, a2, v3);

  TSUMultiplyRectScalar();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertBoundsToUnscaledRect:(CGRect)a3
{
  objc_msgSend_viewScale(self, a2, v3);

  TSUMultiplyRectScalar();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGPoint)convertUnscaledToBoundsPoint:(CGPoint)a3
{
  objc_msgSend_viewScale(self, a2, v3);

  TSUMultiplyPointScalar();
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertBoundsToUnscaledPoint:(CGPoint)a3
{
  objc_msgSend_viewScale(self, a2, v3);

  TSUMultiplyPointScalar();
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGSize)convertUnscaledToBoundsSize:(CGSize)a3
{
  objc_msgSend_viewScale(self, a2, v3);

  TSUMultiplySizeScalar();
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)convertBoundsToUnscaledSize:(CGSize)a3
{
  objc_msgSend_viewScale(self, a2, v3);

  TSUMultiplySizeScalar();
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)visibleUnscaledRectForClippingReps
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained && (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->mDelegate), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = objc_loadWeakRetained(&self->mDelegate);
    objc_msgSend_visibleScaledBoundsForClippingRepsOnCanvas_(v9, v10, self);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    objc_msgSend_convertBoundsToUnscaledRect_(self, v19, v20, v12, v14, v16, v18);
  }

  else
  {
    objc_msgSend_p_bounds(self, v4, v5);
  }

  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)i_performBlockWhileIgnoringClickThrough:(id)a3
{
  mIgnoringClickThrough = self->mIgnoringClickThrough;
  self->mIgnoringClickThrough = 1;
  (*(a3 + 2))(a3, a2);
  self->mIgnoringClickThrough = mIgnoringClickThrough;
}

- (void)i_registerRep:(id)a3
{
  v4 = a3;
  if (v4 && self->mRepsByLayout)
  {
    v9 = v4;
    v8 = objc_msgSend_layout(v4, v5, v6);
    if (v8)
    {
      objc_msgSend_setObject_forUncopiedKey_(self->mRepsByLayout, v7, v9, v8);
    }

    v4 = v9;
  }
}

- (void)i_unregisterRep:(id)a3
{
  v4 = a3;
  if (v4 && self->mRepsByLayout)
  {
    v11 = v4;
    v8 = objc_msgSend_layout(v4, v5, v6);
    if (v8)
    {
      v9 = objc_msgSend_objectForKeyedSubscript_(self->mRepsByLayout, v7, v8);

      if (v9 == v11)
      {
        objc_msgSend_removeObjectForKey_(self->mRepsByLayout, v10, v8);
      }
    }

    v4 = v11;
  }
}

- (CGRect)i_approximateScaledFrameOfEditingMenuAtPoint:(CGPoint)a3
{
  TSURectWithCenterAndSize();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)i_clipRectForCreatingRepsFromLayouts
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained && (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->mDelegate), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = objc_loadWeakRetained(&self->mDelegate);
    objc_msgSend_visibleScaledBoundsForClippingRepsOnCanvas_(v9, v10, self);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *MEMORY[0x277CBF390];
    v14 = *(MEMORY[0x277CBF390] + 8);
    v16 = *(MEMORY[0x277CBF390] + 16);
    v18 = *(MEMORY[0x277CBF390] + 24);
  }

  objc_msgSend_convertBoundsToUnscaledRect_(self, v4, v5, v12, v14, v16, v18);
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)i_drawBackgroundInContext:(CGContext *)a3
{
  ClipBoundingBox = CGContextGetClipBoundingBox(a3);
  CGRectIntegral(ClipBoundingBox);

  MEMORY[0x2821F9670](self, sel_i_drawBackgroundInContext_bounds_, a3);
}

- (void)i_drawBackgroundInContext:(CGContext *)a3 bounds:(CGRect)a4
{
  if (self->mBackgroundColor)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    CGContextSaveGState(a3);
    v12 = objc_msgSend_CGColor(self->mBackgroundColor, v10, v11);
    CGContextSetFillColorWithColor(a3, v12);
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    CGContextFillRect(a3, v14);

    CGContextRestoreGState(a3);
  }
}

- (void)addBitmapsToRenderingQualityInfo:(id)a3 inContext:(CGContext *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->mTopLevelReps;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v14, v18, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v7);
          }

          objc_msgSend_recursivelyPerformSelector_withObject_withObject_(*(*(&v14 + 1) + 8 * i), v10, sel_addBitmapsToRenderingQualityInfo_inContext_, v6, a4, v14);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v14, v18, 16);
      }

      while (v11);
    }
  }
}

- (void)i_drawRepsInContext:(CGContext *)a3 passingTest:(id)a4 distort:(CGAffineTransform *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (a3)
  {
    CGContextSaveGState(a3);
    CGContextScaleCTM(a3, self->mViewScale, self->mViewScale);
    v9 = a5->b == 0.0 && a5->c == 0.0 && a5->tx == 0.0 && a5->ty == 0.0 && fabs(a5->a + -1.0) < 0.001 && fabs(a5->d + -1.0) < 0.001;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = self->mTopLevelReps;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v23, v27, 16);
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        v15 = 0;
        do
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v23 + 1) + 8 * v15);
          if (!v8 || v8[2](v8, *(*(&v23 + 1) + 8 * v15)))
          {
            CGContextSaveGState(a3);
            if (!v9 || objc_msgSend_wantsToDistortWithImagerContext(v16, v18, v19))
            {
              v21 = *&a5->c;
              *&v22.a = *&a5->a;
              *&v22.c = v21;
              *&v22.tx = *&a5->tx;
              CGContextConcatCTM(a3, &v22);
            }

            objc_msgSend_recursivelyDrawInContext_keepingChildrenPassingTest_(v16, v20, a3, v8);
            CGContextRestoreGState(a3);
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, &v23, v27, 16);
      }

      while (v13);
    }

    CGContextRestoreGState(a3);
  }
}

- (void)i_drawRepsInContext:(CGContext *)a3 passingTest:(id)a4
{
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  objc_msgSend_i_drawRepsInContext_passingTest_distort_(self, a2, a3, a4, v5);
}

- (CGImage)i_imageInScaledRect:(CGRect)a3 withTargetIntegralSize:(CGSize)a4 distortedToMatch:(BOOL)a5 preservingContentHeadroom:(double *)a6 tonemappedHDRContentToSDR:(BOOL *)a7 keepingChildrenPassingTest:(id)a8
{
  v10 = a5;
  height = a4.height;
  width = a4.width;
  v13 = a3.size.height;
  v14 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a8;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  matched = objc_msgSend_i_createContextToDrawImageInScaledRect_withTargetIntegralSize_distortedToMatch_returningBounds_integralBounds_(self, v19, v10, &v27, &v25, x, y, v14, v13, width, height);
  if (matched)
  {
    v22 = matched;
    if (a6)
    {
      TSDCGContextSetMaxHDRHeadroom(matched, 0.0);
    }

    v23 = objc_msgSend_i_newImageInContext_bounds_integralBounds_distortedToMatch_tonemappedHDRContentToSDR_keepingChildrenPassingTest_(self, v21, v22, v10, a7, v18, v27, v28, v25, v26);
    if (a6)
    {
      *a6 = TSDCGContextGetMaxHDRHeadroom(v22);
    }

    CGContextRelease(v22);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (CGContext)i_createContextToDrawImageInScaledRect:(CGRect)a3 withTargetIntegralSize:(CGSize)a4 distortedToMatch:(BOOL)a5 returningBounds:(CGRect *)a6 integralBounds:(CGRect *)a7
{
  height = a4.height;
  width = a4.width;
  v12 = a3.size.height;
  v13 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  TSURoundedRect();
  v54 = v18;
  v56 = v17;
  v20 = v19;
  v22 = v21;
  if (width <= 0.0 || height <= 0.0)
  {
    goto LABEL_6;
  }

  TSUCeilSize();
  if (a5)
  {
    v20 = v23;
LABEL_5:
    v22 = v24;
    goto LABEL_6;
  }

  v52 = v20 - v23;
  v53 = v22 - v24;
  if (v20 - v23 > 0.0 || v53 > 0.0)
  {
    if (v52 > 0.0)
    {
      v20 = v23;
    }

    if (v53 > 0.0)
    {
      goto LABEL_5;
    }
  }

  else if (v52 < 0.0 && v53 < 0.0)
  {
    if (v52 <= v53)
    {
      v22 = v24;
    }

    else
    {
      v20 = v23;
    }
  }

LABEL_6:
  v25 = TSUNearlyEqualRects();
  if (v25)
  {
    v26 = v56;
  }

  else
  {
    v26 = x;
  }

  if (v25)
  {
    v27 = v54;
  }

  else
  {
    v27 = y;
  }

  if (v25)
  {
    v13 = v20;
    v12 = v22;
    y = v54;
    x = v56;
  }

  v28 = v13;
  v29 = v12;
  v58.origin.x = v56;
  v58.origin.y = v54;
  v58.size.width = v20;
  v58.size.height = v22;
  if (CGRectEqualToRect(*&v26, v58) && (mBackgroundColor = self->mBackgroundColor) != 0 && (objc_msgSend_alphaComponent(mBackgroundColor, v30, v31), v33 == 1.0))
  {
    v34 = 1;
  }

  else
  {
    v34 = 3;
  }

  if (objc_msgSend_canvasIsWideGamut(self, v30, v31, *&v54, *&v56))
  {
    v34 |= 0x20uLL;
  }

  if (objc_msgSend_supportsHDR(self, v35, v36))
  {
    v34 |= 0x40uLL;
  }

  objc_msgSend_contentsScale(self, v37, v38);
  TSUMultiplySizeScalar();
  v41 = TSDBitmapContextCreate(v34, v39, v40);
  if (objc_msgSend_supportsHDR(self, v42, v43))
  {
    TSDCGContextSetShouldRenderHDRContent(v41, 1);
  }

  objc_msgSend_contentsScale(self, v44, v45);
  v47 = v46;
  objc_msgSend_contentsScale(self, v48, v49);
  CGContextScaleCTM(v41, v47, v50);
  if (a6)
  {
    a6->origin.x = x;
    a6->origin.y = y;
    a6->size.width = v13;
    a6->size.height = v12;
  }

  if (a7)
  {
    a7->origin.x = v57;
    a7->origin.y = v55;
    a7->size.width = v20;
    a7->size.height = v22;
  }

  return v41;
}

- (CGImage)i_newImageInContext:(CGContext *)a3 bounds:(CGRect)a4 integralBounds:(CGRect)a5 distortedToMatch:(BOOL)a6 tonemappedHDRContentToSDR:(BOOL *)a7 keepingChildrenPassingTest:(id)a8
{
  if (!a3)
  {
    return 0;
  }

  v9 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a4.size.height;
  v15 = a4.size.width;
  v18 = a8;
  CGContextSaveGState(a3);
  CGContextTranslateCTM(a3, 0.0, height);
  CGContextScaleCTM(a3, 1.0, -1.0);
  CGContextTranslateCTM(a3, -x, -y);
  CGContextClipToRectSafe();
  v20 = *(MEMORY[0x277CBF2C0] + 16);
  *&v24.a = *MEMORY[0x277CBF2C0];
  *&v24.c = v20;
  *&v24.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (v9)
  {
    CGAffineTransformMakeScale(&v24, width / v15, height / v14);
  }

  objc_msgSend_i_drawBackgroundInContext_(self, v19, a3);
  v23 = v24;
  objc_msgSend_i_drawRepsInContext_passingTest_distort_(self, v21, a3, v18, &v23);

  if (a7)
  {
    *a7 = TSDCGContextGetTonemappedHDRContentToSDR(a3);
  }

  TSDCGContextMarkTonemappedHDRContentToSDR(a3, 0);
  CGContextRestoreGState(a3);
  return CGBitmapContextCreateImage(a3);
}

- (CGRect)p_bounds
{
  TSURectWithSize();
  top = self->mContentInset.top;
  left = self->mContentInset.left;
  v6 = v5 + left;
  v8 = top + v7;
  v10 = v9 - (left + self->mContentInset.right);
  v12 = v11 - (top + self->mContentInset.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (void)p_layoutWithReadLock
{
  v59 = *MEMORY[0x277D85DE8];
  if (self->mInLayout)
  {
    return;
  }

  self->mInLayout = 1;
  objc_msgSend_isCanvasInteractive(self, a2, v2);
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v53 = &unk_2885CEDD8;
  v5 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_i_canvasWillLayout_(v5, v6, self, &unk_2885CEDD8);
  }

  mInvalidFlags = self->mInvalidFlags;
  if ((mInvalidFlags & 3) != 0)
  {
    if (*&self->mInvalidFlags)
    {
      v9 = objc_loadWeakRetained(&self->mDelegate);
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v13 = objc_loadWeakRetained(&self->mDelegate);
        objc_msgSend_canvasWillValidateLayouts_(v13, v14, self);
      }

      v15 = objc_msgSend_layoutController(self, v11, v12, v53);
      objc_msgSend_validateLayouts(v15, v16, v17);

      v18 = objc_loadWeakRetained(&self->mDelegate);
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v20 = objc_loadWeakRetained(&self->mDelegate);
        objc_msgSend_canvasDidValidateLayouts_(v20, v21, self);
      }
    }

    goto LABEL_12;
  }

  if ((*&self->mInvalidFlags & 4) != 0)
  {
LABEL_12:
    v23 = objc_loadWeakRetained(&self->mDelegate);
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v27 = objc_loadWeakRetained(&self->mDelegate);
      objc_msgSend_canvasWillUpdateRepsFromLayouts_(v27, v28, self);
    }

    updated = objc_msgSend_i_updateRepsFromLayouts(self, v25, v26, v53);
    *&self->mInvalidFlags &= 0xF9u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v31 = objc_msgSend_copy(self->mCanvasLayoutObservers, v29, v30);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v54, v58, 16);
    if (v34)
    {
      v35 = *v55;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v55 != v35)
          {
            objc_enumerationMutation(v31);
          }

          objc_msgSend_canvasDidUpdateReps_(*(*(&v54 + 1) + 8 * i), v33, self);
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v33, &v54, v58, 16);
      }

      while (v34);
    }

    goto LABEL_22;
  }

  updated = 0;
LABEL_22:
  if ((mInvalidFlags & 1) != 0 || (updated & 1) != 0 || (*&self->mInvalidFlags & 8) != 0)
  {
    if ((self->mShouldUpdateLayersDuringLayout | objc_msgSend_p_canvasShouldAlwaysUpdateLayers(self, v6, v7, v53)))
    {
      if (objc_msgSend_isCanvasInteractive(self, v37, v38))
      {
        v39 = objc_loadWeakRetained(&self->mDelegate);
        v40 = objc_opt_respondsToSelector();

        if (v40)
        {
          v41 = objc_loadWeakRetained(&self->mDelegate);
          objc_msgSend_updateLayerTreeForInteractiveCanvas_(v41, v42, self);
        }
      }

      v43 = *&self->mInvalidFlags & 0xF7;
    }

    else
    {
      v43 = *&self->mInvalidFlags | 8;
    }

    *&self->mInvalidFlags = v43;
    if (mInvalidFlags)
    {
      v44 = objc_loadWeakRetained(&self->mDelegate);
      v45 = objc_opt_respondsToSelector();

      if (v45)
      {
        v46 = objc_loadWeakRetained(&self->mDelegate);
        objc_msgSend_canvasDidLayout_(v46, v47, self);
      }
    }
  }

  *&self->mInvalidFlags &= ~1u;

  self->mInLayout = 0;
  os_unfair_lock_lock(&self->mBlocksToPerformLock);
  v50 = objc_msgSend_copy(self->mBlocksToPerform, v48, v49);
  mBlocksToPerform = self->mBlocksToPerform;
  self->mBlocksToPerform = 0;

  os_unfair_lock_unlock(&self->mBlocksToPerformLock);
  objc_msgSend_makeObjectsPerformSelector_(v50, v52, sel_invoke);
}

- (BOOL)i_updateRepsFromLayouts
{
  v3 = self;
  v166 = *MEMORY[0x277D85DE8];
  objc_msgSend_i_clipRectForCreatingRepsFromLayouts(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v14 = objc_msgSend_layoutController(v3, v12, v13);
  v17 = objc_msgSend_layoutsInRect_(v14, v15, v16, v5, v7, v9, v11);

  WeakRetained = objc_loadWeakRetained(&v3->mDelegate);
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = objc_loadWeakRetained(&v3->mDelegate);
    v22 = objc_msgSend_additionalVisibleInfosForCanvas_(v20, v21, v3);

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v23 = v22;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v155, v165, 16);
    if (v25)
    {
      v26 = v25;
      v27 = *v156;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v156 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = TSDTopmostInfoFromInfo(*(*(&v155 + 1) + 8 * i), 0);
          v32 = objc_msgSend_layoutForInfo_(v3->mLayoutController, v30, v29);
          if (v32 && (objc_msgSend_containsObject_(v17, v31, v32) & 1) == 0)
          {
            v34 = objc_msgSend_arrayByAddingObject_(v17, v33, v32);

            v17 = v34;
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v35, &v155, v165, 16);
      }

      while (v26);
    }
  }

  v36 = objc_loadWeakRetained(&v3->mDelegate);
  v37 = objc_opt_respondsToSelector();

  if (v37)
  {
    v38 = objc_loadWeakRetained(&v3->mDelegate);
    v40 = objc_msgSend_infosToHideForCanvas_(v38, v39, v3);

    if (objc_msgSend_count(v40, v41, v42))
    {
      v45 = objc_msgSend_mutableCopy(v17, v43, v44);
      v151 = 0u;
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      v46 = v17;
      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v151, v164, 16);
      if (v48)
      {
        v51 = v48;
        v52 = *v152;
        do
        {
          for (j = 0; j != v51; ++j)
          {
            if (*v152 != v52)
            {
              objc_enumerationMutation(v46);
            }

            v54 = *(*(&v151 + 1) + 8 * j);
            v55 = objc_msgSend_info(v54, v49, v50);
            v57 = objc_msgSend_containsObject_(v40, v56, v55);

            if (v57)
            {
              objc_msgSend_removeObject_(v45, v49, v54);
            }
          }

          v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v49, &v151, v164, 16);
        }

        while (v51);
      }

      v17 = v45;
    }
  }

  v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v59 = v17;
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v147, v163, 16);
  if (v61)
  {
    v64 = v61;
    v65 = *v148;
    do
    {
      for (k = 0; k != v64; ++k)
      {
        if (*v148 != v65)
        {
          objc_enumerationMutation(v59);
        }

        v67 = objc_msgSend_additionalLayoutsForRepCreation(*(*(&v147 + 1) + 8 * k), v62, v63);
        objc_msgSend_addObjectsFromArray_(v58, v68, v67);
      }

      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v62, &v147, v163, 16);
    }

    while (v64);
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v69 = v58;
  v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v143, v162, 16);
  if (v71)
  {
    v73 = v71;
    v74 = *v144;
    do
    {
      for (m = 0; m != v73; ++m)
      {
        if (*v144 != v74)
        {
          objc_enumerationMutation(v69);
        }

        v76 = *(*(&v143 + 1) + 8 * m);
        if ((objc_msgSend_containsObject_(v59, v72, v76) & 1) == 0)
        {
          v77 = objc_msgSend_arrayByAddingObject_(v59, v72, v76);

          v59 = v77;
        }
      }

      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v72, &v143, v162, 16);
    }

    while (v73);
  }

  if ((*&v3->mInvalidFlags & 3) != 0 || (objc_msgSend_isEqualToArray_(v59, v78, v3->mPreviouslyVisibleLayouts) & 1) == 0)
  {
    v126 = v69;
    objc_storeStrong(&v3->mPreviouslyVisibleLayouts, v59);
    v130 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v129 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    obj = v59;
    v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v80, &v139, v161, 16);
    if (v81)
    {
      v83 = v81;
      v84 = *v140;
      v85 = v3;
      do
      {
        for (n = 0; n != v83; ++n)
        {
          if (*v140 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v87 = *(*(&v139 + 1) + 8 * n);
          v88 = objc_msgSend_repForLayout_(v3, v82, v87, v126);
          if (v88 || (v90 = objc_alloc(objc_msgSend_repClassOverride(v87, v82, v89)), (v88 = objc_msgSend_initWithLayout_canvas_(v90, v91, v87, v3)) != 0))
          {
            v92 = v88;
            objc_msgSend_setParentRep_(v88, v82, 0);
            objc_msgSend_addObject_(v130, v93, v92);
            objc_msgSend_updateChildrenFromLayout(v92, v94, v95);
            objc_msgSend_recursivelyPerformSelector_(v92, v96, sel_updateFromLayout);
            objc_msgSend_recursivelyPerformSelector_withObject_(v92, v97, sel_addToSet_, v129);
          }

          v3 = v85;
        }

        v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, &v139, v161, 16);
      }

      while (v83);
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v98 = v3->mAllReps;
    v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v135, v160, 16);
    if (v100)
    {
      v102 = v100;
      v103 = *v136;
      do
      {
        for (ii = 0; ii != v102; ++ii)
        {
          if (*v136 != v103)
          {
            objc_enumerationMutation(v98);
          }

          v105 = *(*(&v135 + 1) + 8 * ii);
          if ((objc_msgSend_containsObject_(v129, v101, v105, v126) & 1) == 0)
          {
            objc_msgSend_i_willBeRemoved(v105, v101, v106);
          }
        }

        v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v101, &v135, v160, 16);
      }

      while (v102);
    }

    v107 = objc_loadWeakRetained(&v3->mDelegate);
    v108 = objc_opt_respondsToSelector();

    if (v108)
    {
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v110 = v129;
      v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v111, &v131, v159, 16);
      if (v112)
      {
        v114 = v112;
        v115 = *v132;
        do
        {
          for (jj = 0; jj != v114; ++jj)
          {
            if (*v132 != v115)
            {
              objc_enumerationMutation(v110);
            }

            v117 = *(*(&v131 + 1) + 8 * jj);
            if ((objc_msgSend_containsObject_(v3->mAllReps, v113, v117, v126) & 1) == 0)
            {
              v118 = objc_loadWeakRetained(&v3->mDelegate);
              objc_msgSend_canvas_createdRep_(v118, v119, v3, v117);
            }
          }

          v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v113, &v131, v159, 16);
        }

        while (v114);
      }
    }

    objc_msgSend_orderRepsForLayout_(v3, v109, v130, v126);
    mAllReps = v3->mAllReps;
    v3->mAllReps = v129;
    v121 = v129;

    mTopLevelReps = v3->mTopLevelReps;
    v3->mTopLevelReps = v130;
    v123 = v130;

    mAllRepsOrdered = v3->mAllRepsOrdered;
    v3->mAllRepsOrdered = 0;

    v79 = 1;
    v69 = v127;
  }

  else
  {
    v79 = 0;
  }

  return v79;
}

- (void)p_removeAllReps
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->mAllReps;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v16, v20, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_i_willBeRemoved(*(*(&v16 + 1) + 8 * v10++), v6, v7, v16);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v16, v20, 16);
    }

    while (v8);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB98]);
  mAllReps = self->mAllReps;
  self->mAllReps = v11;

  v13 = objc_alloc_init(MEMORY[0x277CBEA60]);
  mTopLevelReps = self->mTopLevelReps;
  self->mTopLevelReps = v13;

  mAllRepsOrdered = self->mAllRepsOrdered;
  self->mAllRepsOrdered = 0;
}

- (NSArray)allRepsOrdered
{
  v26 = *MEMORY[0x277D85DE8];
  mAllRepsOrdered = self->mAllRepsOrdered;
  if (!mAllRepsOrdered)
  {
    v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = self->mTopLevelReps;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = objc_opt_class();
          objc_msgSend_p_recursivelyAddOrderedChildrenOfRep_toArray_(v13, v14, v12, v5, v21);
          ++v11;
        }

        while (v9 != v11);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v15, &v21, v25, 16);
      }

      while (v9);
    }

    v18 = objc_msgSend_copy(v5, v16, v17);
    v19 = self->mAllRepsOrdered;
    self->mAllRepsOrdered = v18;

    mAllRepsOrdered = self->mAllRepsOrdered;
  }

  return mAllRepsOrdered;
}

- (CGRect)unscaledRectOfLayouts
{
  v3 = objc_msgSend_layoutController(self, a2, v2);
  objc_msgSend_rectOfTopLevelLayouts(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ (void)p_recursivelyAddOrderedChildrenOfRep:(id)a3 toArray:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_msgSend_addObject_(v7, v8, v6);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = objc_msgSend_childReps(v6, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v18, v22, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_p_recursivelyAddOrderedChildrenOfRep_toArray_(a1, v14, *(*(&v18 + 1) + 8 * v17++), v7);
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v18, v22, 16);
    }

    while (v15);
  }
}

- (TSDCanvasDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentInset
{
  top = self->mContentInset.top;
  left = self->mContentInset.left;
  bottom = self->mContentInset.bottom;
  right = self->mContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)unscaledSize
{
  width = self->mUnscaledSize.width;
  height = self->mUnscaledSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end