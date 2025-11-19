@interface NSTextViewportLayoutController
+ (BOOL)flushesCachedViewportElements;
- (BOOL)addRenderingSurface:(id)a3 key:(id)a4 group:(int64_t)a5 placement:(int64_t)a6;
- (CGFloat)relocateViewportToTextLocation:(id)textLocation;
- (CGRect)_viewportBounds;
- (CGRect)viewportBounds;
- (NSTextContainer)textContainer;
- (NSTextRange)viewportRange;
- (NSTextViewportLayoutController)initWithTextContainer:(id)a3;
- (NSTextViewportLayoutController)initWithTextLayoutManager:(NSTextLayoutManager *)textLayoutManager;
- (id)locationAtPoint:(CGPoint)a3;
- (id)renderingSurfaceForKey:(id)a3;
- (id)textViewportElementAtPoint:(CGPoint)a3;
- (id)textViewportElementForLocation:(id)a3;
- (id)textViewportElementsInRect:(CGRect)a3;
- (void)addViewportLayoutObserver:(id)a3;
- (void)adjustViewport:(double)a3 atLocation:(id)a4 verticalOffsetFromLocation:(double)a5;
- (void)dealloc;
- (void)enumerateTextViewportElementsInRect:(CGRect)a3 options:(int64_t)a4 usingBlock:(id)a5;
- (void)enumerateViewportElementsFromLocation:(id)a3 options:(int64_t)a4 usingBlock:(id)a5;
- (void)layoutViewport;
- (void)removeViewportLayoutObserver:(id)a3;
- (void)setDelegate:(id)delegate;
- (void)setNeedsLayout;
- (void)setRenderingSurface:(id)a3 forKey:(id)a4;
@end

@implementation NSTextViewportLayoutController

- (NSTextContainer)textContainer
{
  result = objc_loadWeak(&self->_textContainer);
  if (!result)
  {
    Weak = objc_loadWeak(&self->_textLayoutManager);

    return [Weak textContainer];
  }

  return result;
}

uint64_t __48__NSTextViewportLayoutController_layoutViewport__block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  [a2 layoutPoint];
  v7 = v6;
  v9 = v8;
  [a2 layoutSize];
  v11 = v10;
  v13 = v12;
  *(*(*(a1 + 56) + 8) + 40) = [a2 representedRange];
  v14 = *(a1 + 32);
  if ((*(v14 + 112) & 0x10) != 0)
  {
    v15 = *(a1 + 64);
    v16 = *(*(v15 + 8) + 40);
    if (v16)
    {
      v17 = [objc_msgSend(v16 "enclosingTextRange")];
      v15 = *(a1 + 64);
      if ((v17 & 1) == 0)
      {
        *(*(v15 + 8) + 40) = 0;
        v15 = *(a1 + 64);
      }
    }

    v18 = *(*(v15 + 8) + 40);
    v14 = *(a1 + 32);
    if (!v18)
    {
      *(*(*(a1 + 64) + 8) + 40) = [objc_loadWeak((v14 + 8)) _textAnimationContextForLocation:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "location")}];
      v14 = *(a1 + 32);
    }
  }

  if ((*(v14 + 112) & 0x200) != 0 || *(*(*(a1 + 64) + 8) + 40))
  {
    *(*(*(a1 + 72) + 8) + 32) = v7;
    v19 = *(a1 + 32);
    if ((*(v19 + 112) & 0x200) != 0)
    {
      [objc_loadWeak((v19 + 24)) textViewportLayoutController:*(a1 + 32) presentationLayoutFragmentFrameForTextLayoutFragment:a2 proposedOrigin:{*(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40)}];
    }

    else
    {
      v20 = *(*(*(a1 + 64) + 8) + 40);
      v21 = v13;
      v22 = v11;
      v23 = v9;
      v24 = v7;
      if (!v20)
      {
        goto LABEL_14;
      }

      [v20 presentationLayoutFragmentFrameForTextLayoutFragment:a2 proposedOrigin:{*(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40), v11}];
    }

    v24 = v25;
    v23 = v26;
    v21 = v27;
LABEL_14:
    v28 = v24;
    v29 = v23;
    v30 = v21;
    v50.origin.x = v7;
    v50.origin.y = v9;
    v50.size.width = v11;
    v50.size.height = v13;
    if (!CGRectEqualToRect(*(&v22 - 2), v50))
    {
      v31 = *(*(a1 + 72) + 8);
      *(v31 + 32) = v24;
      *(v31 + 40) = v23;
      v13 = v21;
    }
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    *(*(*(a1 + 72) + 8) + 32) = v7;
    [a2 setLayoutPoint:{*(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40)}];
  }

  if ((*(*(a1 + 32) + 112) & 0x80) != 0 && ((objc_opt_respondsToSelector() & 1) != 0 && (v32 = [*(a1 + 40) textViewportLayoutController:*(a1 + 32) cachedRenderingSurfaceForCacheableObjectsInKey:a2]) != 0 || (v32 = objc_msgSend(objc_loadWeak((*(a1 + 32) + 24)), "textViewportLayoutController:renderingSurfaceForTextLayoutFragment:", *(a1 + 32), a2)) != 0))
  {
    v33 = v32;
    [*(a1 + 32) setRenderingSurface:v32 forKey:a2];
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) textViewportLayoutController:*(a1 + 32) cacheRenderingSurface:v33 forCacheableObjectsInKey:a2];
    }
  }

  v34 = *(*(*(a1 + 64) + 8) + 40);
  if (!v34 || [v34 _hasRenderableComponentsForRange:*(*(*(a1 + 56) + 8) + 40)])
  {
    v35 = *(a1 + 40);
    if ((*(*(a1 + 32) + 112) & 0x20) != 0)
    {
      [v35 textViewportLayoutController:? configureRenderingSurfaceForTextLayoutFragment:?];
    }

    else
    {
      [v35 layoutElement:a2];
    }

    objc_opt_respondsToSelector();
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) textViewportLayoutController:*(a1 + 32) didLayoutTextViewportElement:a2];
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v36 = *(*(a1 + 32) + 104);
  v37 = [v36 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v45;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v44 + 1) + 8 * i) object];
        if (v41 != *(a1 + 40) && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v41 textViewportLayoutController:*(a1 + 32) configureRenderingSurfaceForTextLayoutFragment:a2];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v38);
  }

  result = [*(a1 + 48) addObject:a2];
  *(*(*(a1 + 72) + 8) + 40) = v13 + *(*(*(a1 + 72) + 8) + 40);
  v43 = *(*(a1 + 88) + 8);
  if (!*(v43 + 40))
  {
    *(v43 + 40) = *(*(*(a1 + 56) + 8) + 40);
  }

  if (*(*(*(a1 + 72) + 8) + 40) >= *(a1 + 104) + *(a1 + 120))
  {
    *a3 = 1;
  }

  *(*(*(a1 + 80) + 8) + 24) = 1;
  return result;
}

uint64_t __48__NSTextViewportLayoutController_layoutViewport__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [objc_msgSend(a2 "representedRange")];
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a3 = 1;
  return result;
}

+ (BOOL)flushesCachedViewportElements
{
  if (flushesCachedViewportElements_onceToken != -1)
  {
    +[NSTextViewportLayoutController flushesCachedViewportElements];
  }

  return flushesCachedViewportElements_flushesCachedViewportElements;
}

- (void)layoutViewport
{
  v108 = *MEMORY[0x1E69E9840];
  v3 = [(NSTextViewportLayoutController *)self delegate];
  v4 = [(NSTextViewportLayoutController *)self elementProvider];
  v5 = MEMORY[0x1E695EFF8];
  if ((*&self->_viewportLayoutControllerFlags & 4) != 0)
  {
    v6 = *(MEMORY[0x1E695F058] + 16);
    self->_viewportBounds.origin = *MEMORY[0x1E695F058];
    self->_viewportBounds.size = v6;
    self->_viewportOffset = *v5;

    self->_viewportRange = 0;
  }

  v55 = v4;
  if (objc_opt_respondsToSelector())
  {
    [v3 textViewportLayoutControllerWillLayout:self];
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  viewportLayoutObservers = self->_viewportLayoutObservers;
  v8 = [(NSMutableArray *)viewportLayoutObservers countByEnumeratingWithState:&v102 objects:v107 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v103;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v103 != v10)
        {
          objc_enumerationMutation(viewportLayoutObservers);
        }

        v12 = *(*(&v102 + 1) + 8 * i);
        v13 = [v12 object];
        v14 = v13;
        if (v13)
        {
          if (v13 != v3 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v14 textViewportLayoutControllerWillLayout:self];
          }
        }

        else
        {
          v9 = v12;
        }
      }

      v8 = [(NSMutableArray *)viewportLayoutObservers countByEnumeratingWithState:&v102 objects:v107 count:16];
    }

    while (v8);
    if (v9)
    {
      [(NSMutableArray *)self->_viewportLayoutObservers removeObject:v9];
    }
  }

  *&self->_viewportLayoutControllerFlags &= ~1u;
  [(NSMapTable *)self->_renderingSurfaces removeAllObjects];
  v96 = 0;
  v97 = &v96;
  v98 = 0x3052000000;
  v99 = __Block_byref_object_copy__15;
  v100 = __Block_byref_object_dispose__15;
  v101 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3052000000;
  v93 = __Block_byref_object_copy__15;
  v94 = __Block_byref_object_dispose__15;
  v95 = 0;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = *MEMORY[0x1E696AA80];
  v17 = *(MEMORY[0x1E696AA80] + 16);
  v19 = *MEMORY[0x1E695EFF8];
  v18 = *(MEMORY[0x1E695EFF8] + 8);
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 1;
  if (v3 && v55)
  {
    if ((*&self->_viewportLayoutControllerFlags & 0x20) != 0)
    {
      [v3 viewportBoundsForTextViewportLayoutController:{self, v16.x, v17.width}];
    }

    else
    {
      [v3 viewport];
    }

    v53 = v23;
    v56 = v22;
    v58 = v20;
    v80 = 0;
    v81 = &v80;
    v82 = 0x3052000000;
    v83 = __Block_byref_object_copy__15;
    v84 = __Block_byref_object_dispose__15;
    v85 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x3010000000;
    v77 = "";
    v24 = self->_viewportBounds.origin.y - self->_viewportOffset.y;
    x = self->_viewportBounds.origin.x;
    v79 = v24;
    v54 = v21;
    if ((*&self->_viewportLayoutControllerFlags & 0x40) != 0)
    {
      v65 = *MEMORY[0x1E695F060];
      v25 = [v3 locationForPositionInViewport:&v65 offset:v20];
      v26 = v81;
      v81[5] = v25;
      if (v25)
      {
        *(v87 + 24) = 0;
        v27 = v75;
        v28 = v54;
        v29 = v54 + *(&v65 + 1);
        v75[4] = v58;
        v27[5] = v29;
        if (v26[5])
        {
          goto LABEL_37;
        }
      }
    }

    v30 = [(NSTextRange *)self->_viewportRange location];
    v81[5] = v30;
    if (v54 < 0.001)
    {
      v75[5] = 0.0;
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __48__NSTextViewportLayoutController_layoutViewport__block_invoke;
      v73[3] = &unk_1E72681B8;
      v73[4] = &v80;
      [(NSTextViewportLayoutController *)self enumerateViewportElementsFromLocation:0 options:4 usingBlock:v73];
      v28 = v54;
LABEL_37:
      v37 = v81;
      if (v81[5])
      {
        *&v65 = 0;
        *(&v65 + 1) = &v65;
        v66 = 0x3052000000;
        v67 = __Block_byref_object_copy__15;
        v68 = __Block_byref_object_dispose__15;
        v69 = 0;
        v38 = v75[4];
        v39 = fmax(v75[5], 0.0);
        v75[5] = v39;
        v18 = v28 - v39;
        v40 = v37[5];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __48__NSTextViewportLayoutController_layoutViewport__block_invoke_4;
        v64[3] = &unk_1E7268230;
        v64[8] = &v65;
        v64[9] = &v74;
        v64[4] = self;
        v64[5] = v3;
        v64[6] = v15;
        v64[7] = &v96;
        v64[10] = &v86;
        v64[11] = &v90;
        *&v64[12] = v38;
        *&v64[13] = v39;
        *&v64[14] = v56;
        v64[15] = ceil(*&v53 + v28 - v39);
        [(NSTextViewportLayoutController *)self enumerateViewportElementsFromLocation:v40 options:4 usingBlock:v64];
        v19 = v58 - v38;
        _Block_object_dispose(&v65, 8);
        v41.x = v56;
        *&v41.y = v53;
        v57 = v41;
        v41.x = v58;
        v41.y = v54;
        v59 = v41;
      }

      else
      {
        v57 = *(MEMORY[0x1E695F058] + 16);
        v59 = *MEMORY[0x1E695F058];
      }

      _Block_object_dispose(&v74, 8);
      _Block_object_dispose(&v80, 8);
      v17 = v57;
      v16 = v59;
      goto LABEL_41;
    }

    y = self->_viewportBounds.origin.y;
    if (v54 == y)
    {
      v32 = [(NSTextRange *)self->_viewportRange location];
      v28 = v54;
      v81[5] = v32;
      goto LABEL_37;
    }

    *&v65 = 0;
    *(&v65 + 1) = &v65;
    v66 = 0x2020000000;
    LOBYTE(v67) = 0;
    if (v54 >= y)
    {
      v71[0] = 0;
      v71[1] = v71;
      v35 = *(v75 + 5);
      v71[2] = 0x2020000000;
      v71[3] = v35;
      v36 = [(NSTextRange *)self->_viewportRange location];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __48__NSTextViewportLayoutController_layoutViewport__block_invoke_3;
      v70[3] = &unk_1E7268208;
      v70[4] = &v80;
      v70[5] = v71;
      *&v70[8] = v58;
      *&v70[9] = v54;
      *&v70[10] = v56;
      v70[11] = v53;
      v70[6] = &v74;
      v70[7] = &v65;
      [(NSTextViewportLayoutController *)self enumerateViewportElementsFromLocation:v36 options:2 usingBlock:v70];
      _Block_object_dispose(v71, 8);
      if (*(*(&v65 + 1) + 24))
      {
LABEL_36:
        _Block_object_dispose(&v65, 8);
        v28 = v54;
        goto LABEL_37;
      }
    }

    else
    {
      v33 = [(NSTextRange *)self->_viewportRange location];
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __48__NSTextViewportLayoutController_layoutViewport__block_invoke_2;
      v72[3] = &unk_1E72681E0;
      *&v72[6] = v58;
      *&v72[7] = v54;
      *&v72[8] = v56;
      v72[9] = v53;
      v72[4] = &v74;
      v72[5] = &v80;
      [(NSTextViewportLayoutController *)self enumerateViewportElementsFromLocation:v33 options:3 usingBlock:v72];
      v34 = v75[5];
      *(*(&v65 + 1) + 24) = v34 <= v54;
      if (v34 <= v54)
      {
        goto LABEL_36;
      }
    }

    v81[5] = 0;
    goto LABEL_36;
  }

LABEL_41:
  self->_viewportBounds.origin = v16;
  self->_viewportBounds.size = v17;
  self->_viewportOffset.x = v19;
  self->_viewportOffset.y = v18;
  v42 = [v91[5] textRangeByFormingUnionWithTextRange:{v97[5], v53}];
  if (self->_viewportRange && [objc_opt_class() flushesCachedViewportElements] && (objc_opt_respondsToSelector() & (v42 != 0)) == 1 && (objc_msgSend(v42, "isEmpty") & 1) == 0 && (objc_msgSend(v42, "containsRange:", self->_viewportRange) & 1) == 0)
  {
    if ([-[NSTextRange location](self->_viewportRange "location")] == -1)
    {
      -[NSTextViewportElementProvider flushTextLayoutFragmentsFromLocation:direction:](v55, "flushTextLayoutFragmentsFromLocation:direction:", [v42 location], 1);
    }

    if ([objc_msgSend(v42 "endLocation")] == -1)
    {
      -[NSTextViewportElementProvider flushTextLayoutFragmentsFromLocation:direction:](v55, "flushTextLayoutFragmentsFromLocation:direction:", [v42 endLocation], 0);
    }
  }

  v43 = self->_viewportRange;
  self->_viewportRange = v42;
  viewportElements = self->_viewportElements;
  if (viewportElements)
  {
  }

  self->_viewportElements = [v15 copy];
  viewportLayoutControllerFlags = self->_viewportLayoutControllerFlags;
  *&self->_viewportLayoutControllerFlags = viewportLayoutControllerFlags | 1;
  if ((viewportLayoutControllerFlags & 0x100) == 0)
  {
    v46 = 0;
LABEL_54:
    v47 = 0;
    goto LABEL_57;
  }

  v46 = [(NSTextViewportLayoutController *)self _platformRenderingSurfaceUpdater];
  if ((*&self->_viewportLayoutControllerFlags & 0x100) == 0)
  {
    goto LABEL_54;
  }

  v47 = [(NSTextViewportLayoutController *)self renderingSurfaceUpdater];
LABEL_57:
  if (v47 | v46)
  {
    *&self->_viewportLayoutControllerFlags |= 8u;
    if (v46)
    {
      (*(v46 + 2))(v46, self, self->_viewportRange, self->_viewportBounds.origin.x, self->_viewportBounds.origin.y, self->_viewportBounds.size.width, self->_viewportBounds.size.height);
    }

    if (v47)
    {
      (*(v47 + 2))(v47, self, self->_viewportRange, self->_viewportBounds.origin.x, self->_viewportBounds.origin.y, self->_viewportBounds.size.width, self->_viewportBounds.size.height);
    }

    *&self->_viewportLayoutControllerFlags &= ~8u;
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 textViewportLayoutControllerDidLayout:self];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v48 = self->_viewportLayoutObservers;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v60 objects:v106 count:16];
  if (v49)
  {
    v50 = *v61;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v61 != v50)
        {
          objc_enumerationMutation(v48);
        }

        v52 = [*(*(&v60 + 1) + 8 * j) object];
        if (v52 != v3 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v52 textViewportLayoutControllerDidLayout:self];
        }
      }

      v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v60 objects:v106 count:16];
    }

    while (v49);
  }

  *&self->_viewportLayoutControllerFlags &= 0xFFF9u;
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v96, 8);
}

- (NSTextRange)viewportRange
{
  if (*&self->_viewportLayoutControllerFlags)
  {
    return self->_viewportRange;
  }

  else
  {
    return 0;
  }
}

uint64_t __48__NSTextViewportLayoutController_layoutViewport__block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  *(*(*(a1 + 32) + 8) + 40) = [objc_msgSend(a2 "representedRange")];
  v6 = *(*(*(a1 + 40) + 8) + 24);
  result = [a2 layoutSize];
  if (v6 + v8 <= *(a1 + 72))
  {
    result = [a2 layoutSize];
    *(*(*(a1 + 40) + 8) + 24) = v9 + *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 40) + 8) + 24);
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)setNeedsLayout
{
  viewportLayoutControllerFlags = self->_viewportLayoutControllerFlags;
  if ((*&viewportLayoutControllerFlags & 2) == 0)
  {
    v4 = (*&viewportLayoutControllerFlags >> 10) & 3;
    if (v4 == 2)
    {
      [objc_loadWeak(&self->_delegate) setNeedsLayout];
    }

    else if (v4 == 1)
    {
      [objc_loadWeak(&self->_delegate) setNeedsLayout:1];
    }

    *&self->_viewportLayoutControllerFlags |= 2u;
  }
}

uint64_t __63__NSTextViewportLayoutController_flushesCachedViewportElements__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  flushesCachedViewportElements_flushesCachedViewportElements = result ^ 1;
  return result;
}

- (CGRect)_viewportBounds
{
  viewportLayoutControllerFlags = self->_viewportLayoutControllerFlags;
  p_viewportBounds = MEMORY[0x1E696AA80];
  p_height = (MEMORY[0x1E696AA80] + 24);
  p_size = (MEMORY[0x1E696AA80] + 16);
  v6 = (viewportLayoutControllerFlags & 1) == 0;
  if (viewportLayoutControllerFlags)
  {
    p_y = &self->_viewportBounds.origin.y;
  }

  else
  {
    p_y = (MEMORY[0x1E696AA80] + 8);
  }

  if (!v6)
  {
    p_viewportBounds = &self->_viewportBounds;
    p_size = &self->_viewportBounds.size;
    p_height = &self->_viewportBounds.size.height;
  }

  v8 = *p_height;
  width = p_size->width;
  x = p_viewportBounds->origin.x;
  v11 = *p_y;
  result.size.height = v8;
  result.size.width = width;
  result.origin.y = v11;
  result.origin.x = x;
  return result;
}

- (void)dealloc
{
  objc_storeWeak(&self->_textLayoutManager, 0);
  objc_storeWeak(&self->_textContainer, 0);
  objc_storeWeak(&self->_delegate, 0);

  v3.receiver = self;
  v3.super_class = NSTextViewportLayoutController;
  [(NSTextViewportLayoutController *)&v3 dealloc];
}

- (NSTextViewportLayoutController)initWithTextLayoutManager:(NSTextLayoutManager *)textLayoutManager
{
  v8.receiver = self;
  v8.super_class = NSTextViewportLayoutController;
  v4 = [(NSTextViewportLayoutController *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_viewportLayoutControllerFlags |= 1u;
    objc_storeWeak(&v4->_textLayoutManager, textLayoutManager);
    v5->_viewportLayoutObservers = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_loadWeak(&v5->_textLayoutManager);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = 16;
    }

    else
    {
      v6 = 0;
    }

    *&v5->_viewportLayoutControllerFlags = *&v5->_viewportLayoutControllerFlags & 0xFFEF | v6;
  }

  return v5;
}

- (NSTextViewportLayoutController)initWithTextContainer:(id)a3
{
  v4 = -[NSTextViewportLayoutController initWithTextLayoutManager:](self, "initWithTextLayoutManager:", [a3 textLayoutManager]);
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_textContainer, a3);
  }

  return v5;
}

- (void)setDelegate:(id)delegate
{
  if (objc_loadWeak(&self->_delegate) != delegate)
  {
    objc_storeWeak(&self->_delegate, delegate);
    v5 = [objc_loadWeak(&self->_delegate) conformsToProtocol:&unk_1F01F0EF0];
    if (v5)
    {
      v6 = 32;
    }

    else
    {
      v6 = 0;
    }

    *&self->_viewportLayoutControllerFlags = *&self->_viewportLayoutControllerFlags & 0xFFDF | v6;
    if (v5 && (objc_loadWeak(&self->_delegate), (objc_opt_respondsToSelector() & 1) != 0))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v7 = 32;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    *&self->_viewportLayoutControllerFlags = *&self->_viewportLayoutControllerFlags & 0xFFDF | v7;
    objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v8 = 64;
    }

    else
    {
      v8 = 0;
    }

    *&self->_viewportLayoutControllerFlags = *&self->_viewportLayoutControllerFlags & 0xFFBF | v8;
    objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v9 = 128;
    }

    else
    {
      v9 = 0;
    }

    *&self->_viewportLayoutControllerFlags = *&self->_viewportLayoutControllerFlags & 0xFF7F | v9;
    objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    *&self->_viewportLayoutControllerFlags = *&self->_viewportLayoutControllerFlags & 0xFEFF | v10;
    objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v11 = *&self->_viewportLayoutControllerFlags & 0xF3FF | 0x400;
    }

    else
    {
      objc_loadWeak(&self->_delegate);
      v12 = objc_opt_respondsToSelector();
      v11 = *&self->_viewportLayoutControllerFlags & 0xF3FF;
      if (v12)
      {
        v11 |= 0x800u;
      }
    }

    *&self->_viewportLayoutControllerFlags = v11;
    objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v13 = 512;
    }

    else
    {
      v13 = 0;
    }

    *&self->_viewportLayoutControllerFlags = *&self->_viewportLayoutControllerFlags & 0xFDFF | v13;
  }
}

- (void)enumerateViewportElementsFromLocation:(id)a3 options:(int64_t)a4 usingBlock:(id)a5
{
  if ((*&self->_viewportLayoutControllerFlags & 0x10) != 0)
  {
    if ((a4 & 4) != 0)
    {
      v10 = [(NSTextViewportLayoutController *)self textContainer];
    }

    else
    {
      v10 = 0;
    }

    Weak = objc_loadWeak(&self->_textLayoutManager);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91__NSTextViewportLayoutController_enumerateViewportElementsFromLocation_options_usingBlock___block_invoke;
    v12[3] = &unk_1E7268190;
    v12[4] = v10;
    v12[5] = a5;
    [Weak enumerateTextLayoutFragmentsFromLocation:a3 options:a4 | 8 usingBlock:v12];
  }

  else
  {
    v9 = [(NSTextViewportLayoutController *)self elementProvider];

    [(NSTextViewportElementProvider *)v9 enumerateViewportElementsFromLocation:a3 options:a4 usingBlock:a5];
  }
}

uint64_t __91__NSTextViewportLayoutController_enumerateViewportElementsFromLocation_options_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (!v3 || v3 == [objc_msgSend(a2 "textLayoutManager")])
    {
      (*(*(a1 + 40) + 16))();
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t __48__NSTextViewportLayoutController_layoutViewport__block_invoke_2(uint64_t result, void *a2, _BYTE *a3)
{
  if (*(*(*(result + 32) + 8) + 40) <= *(result + 56))
  {
    *a3 = 1;
  }

  else
  {
    v4 = result;
    [a2 layoutSize];
    *(*(*(v4 + 32) + 8) + 40) = *(*(*(v4 + 32) + 8) + 40) - v5;
    result = [objc_msgSend(a2 "representedRange")];
    *(*(*(v4 + 40) + 8) + 40) = result;
  }

  return result;
}

- (CGFloat)relocateViewportToTextLocation:(id)textLocation
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__15;
  v32 = __Block_byref_object_dispose__15;
  v33 = 0;
  if ([(NSTextRange *)self->_viewportRange containsLocation:?])
  {
    v5 = [(NSTextViewportLayoutController *)self textViewportElementForLocation:textLocation];
    v6 = v5;
    v29[5] = v6;
    [v5 layoutPoint];
    *(v35 + 3) = v7;
  }

  else
  {
    if ([-[NSTextRange location](self->_viewportRange "location")] == 1)
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x2020000000;
      v23[3] = 0;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __65__NSTextViewportLayoutController_relocateViewportToTextLocation___block_invoke;
      v22[3] = &unk_1E7268258;
      v22[4] = textLocation;
      v22[5] = v23;
      v22[6] = &v28;
      v22[7] = &v34;
      v22[8] = &v24;
      [(NSTextViewportLayoutController *)self enumerateViewportElementsFromLocation:0 options:2 usingBlock:v22];
      if (!v29[5])
      {
        v21[0] = 0;
        v21[1] = v21;
        v21[2] = 0x2020000000;
        v21[3] = 0;
        v8 = [(NSTextRange *)self->_viewportRange location];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __65__NSTextViewportLayoutController_relocateViewportToTextLocation___block_invoke_2;
        v20[3] = &unk_1E7268280;
        v20[6] = v21;
        v20[7] = &v28;
        v20[8] = &v34;
        v20[4] = textLocation;
        v20[5] = self;
        [(NSTextViewportLayoutController *)self enumerateViewportElementsFromLocation:v8 options:3 usingBlock:v20];
        _Block_object_dispose(v21, 8);
      }

      _Block_object_dispose(v23, 8);
    }

    else
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v9 = [(NSTextRange *)self->_viewportRange endLocation];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __65__NSTextViewportLayoutController_relocateViewportToTextLocation___block_invoke_3;
      v19[3] = &unk_1E72682A8;
      v19[4] = textLocation;
      v19[5] = &v28;
      v19[6] = &v24;
      [(NSTextViewportLayoutController *)self enumerateViewportElementsFromLocation:v9 options:2 usingBlock:v19];
      if (v29[5] || ![textLocation isEqual:{-[NSTextRange endLocation](self->_viewportRange, "endLocation")}])
      {
        v11 = CGRectGetMaxY(self->_viewportBounds) + self->_viewportOffset.y + v25[3];
      }

      else
      {
        v10 = [(NSArray *)self->_viewportElements lastObject];
        v29[5] = v10;
        [v10 layoutPoint];
      }

      v35[3] = v11;
    }

    _Block_object_dispose(&v24, 8);
  }

  v12 = MEMORY[0x1E695EFF8];
  v13 = v29[5];
  if (v13)
  {
    [v13 verticalOffsetOfTextLocation:textLocation withAffinity:1];
    v15 = v14;
  }

  else
  {
    v15 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v16 = *v12;
  v17 = fmax(v15 + v35[3], 0.0);
  self->_viewportBounds.origin.y = v17;
  self->_viewportOffset.x = v16;
  self->_viewportOffset.y = v15;

  self->_viewportRange = [[NSTextRange alloc] initWithLocation:textLocation];
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  return v17;
}

id __65__NSTextViewportLayoutController_relocateViewportToTextLocation___block_invoke(void *a1, void *a2, BOOL *a3)
{
  ++*(*(a1[5] + 8) + 24);
  if ([objc_msgSend(a2 "representedRange")])
  {
    result = a2;
    *(*(a1[6] + 8) + 40) = result;
    v7 = *(*(a1[8] + 8) + 24);
    v8 = *(a1[7] + 8);
  }

  else
  {
    result = [a2 layoutSize];
    v8 = *(a1[8] + 8);
    v7 = v9 + *(v8 + 24);
  }

  *(v8 + 24) = v7;
  if (*(*(a1[6] + 8) + 40))
  {
    v10 = 1;
  }

  else
  {
    v10 = *(*(a1[5] + 8) + 24) > 99;
  }

  *a3 = v10;
  return result;
}

CGFloat __65__NSTextViewportLayoutController_relocateViewportToTextLocation___block_invoke_2(void *a1, void *a2)
{
  [a2 layoutSize];
  *(*(a1[6] + 8) + 24) = v4 + *(*(a1[6] + 8) + 24);
  if ([objc_msgSend(a2 "representedRange")])
  {
    *(*(a1[7] + 8) + 40) = a2;
    v6 = a1[5];
    result = CGRectGetMinY(v6[1]) + v6[2].origin.y - *(*(a1[6] + 8) + 24);
    *(*(a1[8] + 8) + 24) = result;
  }

  return result;
}

double __65__NSTextViewportLayoutController_relocateViewportToTextLocation___block_invoke_3(void *a1, void *a2, _BYTE *a3)
{
  if ([objc_msgSend(a2 "representedRange")])
  {
    *(*(a1[5] + 8) + 40) = a2;
    *a3 = 1;
  }

  else
  {
    [a2 layoutSize];
    v7 = *(a1[6] + 8);
    result = v8 + *(v7 + 24);
    *(v7 + 24) = result;
  }

  return result;
}

- (void)adjustViewport:(double)a3 atLocation:(id)a4 verticalOffsetFromLocation:(double)a5
{
  [(NSTextViewportLayoutController *)self adjustViewportByVerticalOffset:a3];
  if (a4)
  {
    v8 = self->_viewportRange;
    self->_viewportRange = [[NSTextRange alloc] initWithLocation:a4];
  }

  self->_viewportOffset.y = a5;
}

- (CGRect)viewportBounds
{
  viewportLayoutControllerFlags = self->_viewportLayoutControllerFlags;
  p_viewportBounds = MEMORY[0x1E696AA80];
  p_height = (MEMORY[0x1E696AA80] + 24);
  p_size = (MEMORY[0x1E696AA80] + 16);
  v6 = (viewportLayoutControllerFlags & 1) == 0;
  if (viewportLayoutControllerFlags)
  {
    p_y = &self->_viewportBounds.origin.y;
  }

  else
  {
    p_y = (MEMORY[0x1E696AA80] + 8);
  }

  if (!v6)
  {
    p_viewportBounds = &self->_viewportBounds;
    p_size = &self->_viewportBounds.size;
    p_height = &self->_viewportBounds.size.height;
  }

  v8 = *p_height;
  width = p_size->width;
  x = p_viewportBounds->origin.x;
  v11 = *p_y;
  result.size.height = v8;
  result.size.width = width;
  result.origin.y = v11;
  result.origin.x = x;
  return result;
}

- (void)setRenderingSurface:(id)a3 forKey:(id)a4
{
  objc_sync_enter(self);
  renderingSurfaces = self->_renderingSurfaces;
  if (!renderingSurfaces)
  {
    renderingSurfaces = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:0];
    self->_renderingSurfaces = renderingSurfaces;
  }

  [(NSMapTable *)renderingSurfaces setObject:a3 forKey:a4];

  objc_sync_exit(self);
}

- (id)renderingSurfaceForKey:(id)a3
{
  objc_sync_enter(self);
  v5 = [(NSMapTable *)self->_renderingSurfaces objectForKey:a3];
  objc_sync_exit(self);
  return v5;
}

- (BOOL)addRenderingSurface:(id)a3 key:(id)a4 group:(int64_t)a5 placement:(int64_t)a6
{
  if ((~*&self->_viewportLayoutControllerFlags & 0x108) != 0)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [objc_loadWeak(&self->_delegate) textViewportLayoutController:self addRenderingSurface:a3 group:a5 placement:a6];
    if (v9)
    {
      [(NSTextViewportLayoutController *)self setRenderingSurface:a3 forKey:a4];
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (id)textViewportElementAtPoint:(CGPoint)a3
{
  if ((*&self->_viewportLayoutControllerFlags & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: %@ cannot be called during layout.", self, _NSFullMethodName()}];
    return 0;
  }

  y = a3.y;
  viewportElements = self->_viewportElements;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v19 = __61__NSTextViewportLayoutController_textViewportElementAtPoint___block_invoke;
  v20 = &__block_descriptor_48_e33_B16__0___NSTextViewportElement__8l;
  v21 = a3;
  v6 = [(NSArray *)viewportElements count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v9 = v8 + (v7 >> 1);
      v10 = [(NSArray *)viewportElements objectAtIndexedSubscript:v9];
      v11 = (v19)(v18, v10);
      if (v11)
      {
        v7 += ~(v7 >> 1);
      }

      else
      {
        v7 >>= 1;
      }

      if (v11)
      {
        v8 = v9 + 1;
      }
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= [(NSArray *)self->_viewportElements count])
  {
    return 0;
  }

  v12 = [(NSArray *)self->_viewportElements objectAtIndexedSubscript:v8];
  [v12 layoutPoint];
  if (y < v13)
  {
    return 0;
  }

  [v12 layoutPoint];
  v15 = v14;
  [v12 layoutSize];
  if (y > v15 + v16)
  {
    return 0;
  }

  return v12;
}

BOOL __61__NSTextViewportLayoutController_textViewportElementAtPoint___block_invoke(uint64_t a1, void *a2)
{
  [a2 layoutPoint];
  v5 = v4;
  [a2 layoutSize];
  return v5 + v6 <= *(a1 + 40);
}

- (id)textViewportElementsInRect:(CGRect)a3
{
  if (*&self->_viewportLayoutControllerFlags)
  {
    v29 = NSIntersectionRect(a3, self->_viewportBounds);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    viewportElements = self->_viewportElements;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v26 = __61__NSTextViewportLayoutController_textViewportElementsInRect___block_invoke;
    v27 = &__block_descriptor_64_e33_B16__0___NSTextViewportElement__8l;
    v28 = v29;
    v10 = [(NSArray *)viewportElements count];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      do
      {
        v13 = v12 + (v11 >> 1);
        v14 = [(NSArray *)viewportElements objectAtIndexedSubscript:v13];
        v15 = (v26)(v25, v14);
        if (v15)
        {
          v11 += ~(v11 >> 1);
        }

        else
        {
          v11 >>= 1;
        }

        if (v15)
        {
          v12 = v13 + 1;
        }
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    for (i = [MEMORY[0x1E695DF70] array]; v12 < -[NSArray count](self->_viewportElements, "count"); ++v12)
    {
      v17 = [(NSArray *)self->_viewportElements objectAtIndexedSubscript:v12];
      [v17 layoutPoint];
      v19 = v18;
      [v17 layoutPoint];
      v21 = v20;
      [v17 layoutSize];
      v23 = v22;
      [v17 layoutSize];
      if (y + height < v21)
      {
        break;
      }

      v31.size.height = v24;
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v31.origin.x = v19;
      v31.origin.y = v21;
      v31.size.width = v23;
      if (NSIntersectsRect(v30, v31))
      {
        [i addObject:v17];
      }
    }

    return [i copy];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: %@ cannot be called during layout.", self, _NSFullMethodName()}];
    return MEMORY[0x1E695E0F0];
  }
}

BOOL __61__NSTextViewportLayoutController_textViewportElementsInRect___block_invoke(uint64_t a1, void *a2)
{
  [a2 layoutPoint];
  v5 = v4;
  [a2 layoutSize];
  return v5 + v6 <= *(a1 + 40);
}

- (void)enumerateTextViewportElementsInRect:(CGRect)a3 options:(int64_t)a4 usingBlock:(id)a5
{
  v6 = a4;
  v7 = [(NSTextViewportLayoutController *)self textViewportElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__NSTextViewportLayoutController_enumerateTextViewportElementsInRect_options_usingBlock___block_invoke;
  v8[3] = &unk_1E7268310;
  v8[4] = a5;
  [v7 enumerateObjectsWithOptions:2 * (v6 & 1) usingBlock:v8];
}

- (id)locationAtPoint:(CGPoint)a3
{
  if (*&self->_viewportLayoutControllerFlags)
  {
    y = a3.y;
    x = a3.x;
    v6 = [(NSTextViewportLayoutController *)self textViewportElementAtPoint:?];
    [v6 layoutPoint];
    v8 = x - v7;
    [v6 layoutPoint];
    v10 = y - v9;

    return [v6 representedRangeAtPoint:{v8, v10}];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: %@ cannot be called during layout.", self, _NSFullMethodName()}];
    return 0;
  }
}

- (id)textViewportElementForLocation:(id)a3
{
  if ((*&self->_viewportLayoutControllerFlags & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: %@ cannot be called during layout.", self, _NSFullMethodName()}];
    return 0;
  }

  viewportElements = self->_viewportElements;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v15 = __65__NSTextViewportLayoutController_textViewportElementForLocation___block_invoke;
  v16 = &unk_1E7268338;
  v17 = a3;
  v6 = [(NSArray *)viewportElements count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v9 = v8 + (v7 >> 1);
      v10 = [(NSArray *)viewportElements objectAtIndexedSubscript:v9];
      v11 = (v15)(v14, v10);
      if (v11)
      {
        v7 += ~(v7 >> 1);
      }

      else
      {
        v7 >>= 1;
      }

      if (v11)
      {
        v8 = v9 + 1;
      }
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (v8 == -[NSArray count](self->_viewportElements, "count") && -[NSArray count](self->_viewportElements, "count") && [objc_msgSend(objc_msgSend(-[NSArray lastObject](self->_viewportElements "lastObject")])
  {
    v8 = [(NSArray *)self->_viewportElements count]- 1;
  }

  if (v8 >= [(NSArray *)self->_viewportElements count])
  {
    return 0;
  }

  v12 = [(NSArray *)self->_viewportElements objectAtIndexedSubscript:v8];
  if ([objc_msgSend(objc_msgSend(v12 "representedRange")] == 1 || objc_msgSend(objc_msgSend(objc_msgSend(v12, "representedRange"), "endLocation"), "compare:", a3) == -1)
  {
    return 0;
  }

  return v12;
}

- (void)addViewportLayoutObserver:(id)a3
{
  v4 = [[_NSTextViewportLayoutObserver alloc] initWithWeakObject:a3];
  if (([(NSMutableArray *)self->_viewportLayoutObservers containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->_viewportLayoutObservers addObject:v4];
  }
}

- (void)removeViewportLayoutObserver:(id)a3
{
  v4 = [[_NSTextViewportLayoutObserver alloc] initWithWeakObject:a3];
  [(NSMutableArray *)self->_viewportLayoutObservers removeObject:v4];
}

@end