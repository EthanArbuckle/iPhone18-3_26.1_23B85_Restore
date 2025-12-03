@interface TSWPLayout
- (BOOL)containsStartOfPencilAnnotation:(id)annotation;
- (BOOL)containsStartOfRange:(_NSRange)range;
- (BOOL)descendersCannotClip;
- (BOOL)invalidateForPageCountChange;
- (BOOL)isLayoutOffscreen;
- (BOOL)isOverflowing;
- (BOOL)p_shouldAssertDependenciesAreCorrect;
- (BOOL)parentAutosizes;
- (BOOL)shouldValidate;
- (BOOL)shouldWrapAroundExternalDrawables;
- (BOOL)supportsPageNumbers;
- (BOOL)textIsVertical;
- (CGPoint)anchorPoint;
- (CGPoint)capturedInfoPositionForAttachment;
- (CGPoint)p_calculateReferencePointFromSelection:(id)selection;
- (CGPoint)position;
- (CGRect)maskRect;
- (CGRect)p_protectedRectWithinLayoutForSelectionRect:(CGRect)rect;
- (CGRect)p_rectForSelectionPath:(id)path useParagraphModeRects:(BOOL)rects;
- (CGRect)p_rectInRootForSelectionPath:(id)path useParagraphModeRects:(BOOL)rects forZoom:(BOOL)zoom forAnchorRect:(BOOL)rect;
- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)path;
- (CGRect)rectInRootForSelectionAnchorRectOfSelectionPath:(id)path;
- (CGRect)rectInRootForSelectionPath:(id)path;
- (CGRect)rectInRootForZoomingToSelectionPath:(id)path;
- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path;
- (CGRect)targetRectForCanvasRect:(CGRect)rect;
- (CGSize)currentSize;
- (CGSize)maxSize;
- (CGSize)maximumFrameSizeForChild:(id)child;
- (CGSize)minSize;
- (CGSize)p_maximumFrameSizeForChild:(id)child;
- (CGSize)p_maximumFrameSizeForChild:(id)child foundInColumn:(id *)column;
- (Class)repClassOverride;
- (TSDCanvas)canvas;
- (TSUBezierPath)interiorClippingPath;
- (TSWPFootnoteHeightMeasurer)footnoteHeightMeasurer;
- (TSWPFootnoteMarkProvider)footnoteMarkProvider;
- (TSWPLayout)initWithInfo:(id)info frame:(CGRect)frame;
- (TSWPLayout)initWithInfo:(id)info storage:(id)storage frame:(CGRect)frame;
- (TSWPLayoutManager)layoutManager;
- (_NSRange)containedTextRange;
- (_NSRange)restrictedLayoutCharRange;
- (double)maxAnchorInBlockDirection;
- (double)textScaleForChild:(id)child;
- (id)addPartitionableAttachmentLayout:(id)layout;
- (id)additionalDependenciesForChildLayout:(id)layout;
- (id)columnMetricsForCharIndex:(unint64_t)index outRange:(_NSRange *)range;
- (id)computeLayoutGeometry;
- (id)containedPencilAnnotations;
- (id)dependentLayouts;
- (id)interiorWrapSegments;
- (id)layoutForInlineDrawable:(id)drawable;
- (id)p_firstAncestorRespondingToSelector:(SEL)selector;
- (id)p_styleProvidingAncestor;
- (id)p_wpLayoutParent;
- (id)pageAnchorDetailsForPencilAnnotationAtSelectionPath:(id)path attachedType:(int64_t)type;
- (id)reliedOnLayouts;
- (id)styleProvider;
- (id)styleProviderForCells;
- (id)styleProviderForTextLayout:(id)layout;
- (id)textWrapper;
- (id)unscaledContentRectsToAvoidPencilAnnotationOverlap;
- (id)validatedLayoutForAnchoredDrawable:(id)drawable;
- (int)naturalAlignment;
- (int)verticalAlignment;
- (unint64_t)autosizeFlags;
- (unint64_t)pageCount;
- (unint64_t)pageNumber;
- (void)clearHiddenInlineDrawableLayoutMarks;
- (void)didLayoutIntoTarget;
- (void)didLayoutWithLayoutManager:(id)manager;
- (void)i_validateTextLayout;
- (void)initialLayoutState;
- (void)invalidate;
- (void)invalidateForFootnoteNumberingChange;
- (void)invalidateForcingFullReLayOut;
- (void)invalidateParentForAutosizing;
- (void)invalidateSize;
- (void)invalidateTextLayout;
- (void)layoutManagerNeedsLayout:(id)layout;
- (void)markHiddenInlineDrawableLayout:(id)layout;
- (void)p_clearOutLayoutManager;
- (void)parentDidChange;
- (void)parentWillChangeTo:(id)to;
- (void)setUseBlackTextColor:(BOOL)color;
- (void)validate;
- (void)willBeAddedToLayoutController:(id)controller;
- (void)willBeRemovedFromLayoutController:(id)controller;
- (void)willLayoutIntoTarget;
- (void)wrappableChildInvalidated:(id)invalidated;
@end

@implementation TSWPLayout

- (TSWPLayout)initWithInfo:(id)info frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  infoCopy = info;
  v29.receiver = self;
  v29.super_class = TSWPLayout;
  v10 = [(TSWPLayout *)&v29 initWithInfo:infoCopy];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    columns = v10->_columns;
    v10->_columns = v11;

    objc_opt_class();
    v13 = TSUDynamicCast();
    storage = v10->_storage;
    v10->_storage = v13;

    if (!v10->_storage)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSWPLayout initWithInfo:frame:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 97, 0, "invalid nil value for '%{public}s'", "_storage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    }

    if (width > 0.0)
    {
      v23 = objc_alloc(MEMORY[0x277D80300]);
      v26 = objc_msgSend_initWithFrame_(v23, v24, v25, x, y, width, height);
      objc_msgSend_setGeometry_(v10, v27, v26);
    }
  }

  return v10;
}

- (TSWPLayout)initWithInfo:(id)info storage:(id)storage frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  infoCopy = info;
  storageCopy = storage;
  v30.receiver = self;
  v30.super_class = TSWPLayout;
  v13 = [(TSWPLayout *)&v30 initWithInfo:infoCopy];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    columns = v13->_columns;
    v13->_columns = v14;

    objc_storeStrong(&v13->_storage, storage);
    if (!v13->_storage)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPLayout initWithInfo:storage:frame:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 111, 0, "invalid nil value for '%{public}s'", "_storage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    }

    if (width > 0.0)
    {
      v24 = objc_alloc(MEMORY[0x277D80300]);
      v27 = objc_msgSend_initWithFrame_(v24, v25, v26, x, y, width, height);
      objc_msgSend_setGeometry_(v13, v28, v27);
    }
  }

  return v13;
}

- (id)interiorWrapSegments
{
  objc_opt_class();
  v5 = objc_msgSend_parent(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    v9 = objc_msgSend_interiorWrapSegments(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TSWPLayoutManager)layoutManager
{
  layoutManager = self->_layoutManager;
  if (!layoutManager)
  {
    v4 = [TSWPLayoutManager alloc];
    v7 = objc_msgSend_storage(self, v5, v6);
    v9 = objc_msgSend_initWithStorage_owner_(v4, v8, v7, self);
    v10 = self->_layoutManager;
    self->_layoutManager = v9;

    layoutManager = self->_layoutManager;
  }

  return layoutManager;
}

- (BOOL)supportsPageNumbers
{
  v4 = objc_msgSend_storage(self, a2, v2);
  if (objc_msgSend_wpKind(v4, v5, v6) == 3)
  {
  }

  else
  {
    v11 = objc_msgSend_storage(self, v7, v8);
    v14 = objc_msgSend_wpKind(v11, v12, v13);

    if (v14 != 7)
    {
      return 1;
    }
  }

  v15 = objc_msgSend_parent(self, v9, v10);
  if (!v15)
  {
    return 1;
  }

  v16 = v15;
  do
  {
    v24 = &unk_288666638;
    v17 = TSUProtocolCast();
    if (objc_opt_respondsToSelector())
    {
      v20 = objc_msgSend_supportsPageNumbers(v17, v18, v19, &unk_288666638);
    }

    else
    {
      v20 = 1;
    }

    v21 = objc_msgSend_parent(v16, v18, v19, v24);

    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    v16 = v21;
  }

  while ((v22 & 1) != 0);

  return v20;
}

- (BOOL)descendersCannotClip
{
  v4 = objc_msgSend_p_wpLayoutParent(self, a2, v2);

  if (!v4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPLayout descendersCannotClip]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 184, 0, "invalid nil value for '%{public}s'", "self.p_wpLayoutParent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_p_wpLayoutParent(self, v5, v6);
  v17 = objc_msgSend_descendersCannotClip(v14, v15, v16);

  return v17;
}

- (_NSRange)containedTextRange
{
  if ((objc_msgSend_textLayoutValid(self, a2, v2) & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPLayout containedTextRange]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v8, v10, 194, 0, "[%@ %@] with invalid layout.", v12, v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_columns(self, v5, v6);
  v19 = objc_msgSend_rangeOfColumns_(TSWPColumn, v18, v17);
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.length = v23;
  result.location = v22;
  return result;
}

- (void)invalidateSize
{
  if (!self->_isLayingOutIntoTarget)
  {
    objc_msgSend_p_invalidateTextLayout(self, a2, v2);
    v4.receiver = self;
    v4.super_class = TSWPLayout;
    [(TSWPLayout *)&v4 invalidateSize];
  }
}

- (void)invalidate
{
  if (!self->_isLayingOutIntoTarget)
  {
    v2.receiver = self;
    v2.super_class = TSWPLayout;
    [(TSWPLayout *)&v2 invalidate];
  }
}

- (BOOL)parentAutosizes
{
  v4 = objc_msgSend_p_wpLayoutParent(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    v7 = objc_msgSend_autosizeFlagsForTextLayout_(v4, v5, self) != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dependentLayouts
{
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = TSWPLayout;
  dependentLayouts = [(TSWPLayout *)&v24 dependentLayouts];
  v6 = objc_msgSend_p_wpLayoutParent(self, v4, v5);
  v8 = v6;
  if (v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = objc_msgSend_dependentsOfTextLayout_(v6, v7, self, 0);
    v11 = 0;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v25, 16);
    if (v14)
    {
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          if (!v11)
          {
            if (dependentLayouts)
            {
              v18 = objc_msgSend_mutableCopy(dependentLayouts, v12, v13);
            }

            else
            {
              v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13);
            }

            v11 = v18;

            dependentLayouts = v11;
          }

          objc_msgSend_addObject_(v11, v12, v17);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v20, v25, 16);
      }

      while (v14);
    }
  }

  return dependentLayouts;
}

- (id)additionalDependenciesForChildLayout:(id)layout
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_info(layout, a2, layout);
  if (objc_msgSend_isInlineWithText(v4, v5, v6) && (objc_msgSend_parentInfo(v4, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v12 = objc_msgSend_parentInfo(v4, v10, v11);
    v15 = objc_msgSend_info(self, v13, v14);
    v18 = v15;
    if (v12 == v15)
    {
    }

    else
    {
      v19 = objc_msgSend_info(self, v16, v17);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v22 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSWPLayout additionalDependenciesForChildLayout:]");
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 252, 0, "Expect the inline childLayout to have parent which is this layout's info or nil.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
      }
    }

    v31[0] = self;
    v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v31, 1);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)reliedOnLayouts
{
  v4 = objc_msgSend_set(MEMORY[0x277CBEB98], a2, v2);
  v7 = objc_msgSend_p_wpLayoutParent(self, v5, v6);
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_msgSend_reliedOnLayoutsForTextLayout_(v7, v8, self);

    v4 = v9;
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = objc_msgSend_additionalReliedOnLayoutsForTextWrap(self, v10, v11);
    if (objc_msgSend_count(v12, v13, v14))
    {
      v16 = objc_msgSend_setByAddingObjectsFromSet_(v4, v15, v12);

      v4 = v16;
    }
  }

  return v4;
}

- (void)setUseBlackTextColor:(BOOL)color
{
  if (self->_useBlackTextColor != color)
  {
    self->_useBlackTextColor = color;
    objc_msgSend_removeAllObjects(self->_columns, a2, color);
    objc_msgSend_invalidateSize(self, v5, v6);

    objc_msgSend_invalidate(self, v7, v8);
  }
}

- (void)i_validateTextLayout
{
  if (objc_msgSend_textIsHidden(self, a2, v2))
  {
    objc_msgSend_removeAllObjects(self->_columns, v4, v5);
    self->_textLayoutValid = 1;
    return;
  }

  if (!self->_textLayoutValid)
  {
    v6 = objc_msgSend_layoutManager(self, v4, v5);
    v54 = objc_msgSend_owner(v6, v7, v8);

    if (v54 != self)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPLayout i_validateTextLayout]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 300, 0, "Not the owner of our layout manager");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    }

    v18 = objc_msgSend_initialLayoutState(self, v9, v10);
    v21 = v18;
    if (self->_textLayoutValid)
    {
      if (!v18)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v22 = objc_msgSend_layoutManager(self, v19, v20);
      v21 = objc_msgSend_layOutIntoTarget_withLayoutState_outSync_(v22, v23, self, v21, 0);

      if (!v21)
      {
LABEL_11:
        v26 = objc_msgSend_columns(self, v19, v20);
        v28 = objc_msgSend_rangeOfColumns_(TSWPColumn, v27, v26);
        v30 = v29;

        v33 = objc_msgSend_layoutManager(self, v31, v32);
        v36 = objc_msgSend_dirtyRanges(v33, v34, v35);
        v38 = objc_msgSend_dirtyRangesIntersecting_(v36, v37, v28, v30);
        LOBYTE(v30) = objc_msgSend_isEmpty(v38, v39, v40);

        if ((v30 & 1) == 0)
        {
          v43 = MEMORY[0x277D81150];
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSWPLayout i_validateTextLayout]");
          v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 313, 0, "Dirty ranges should not intersect columns range.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
        }

        v50 = objc_msgSend_layoutManager(self, v41, v42);
        objc_msgSend_resetDirtyRange(v50, v51, v52);

        objc_msgSend_i_setTextLayoutValid_(self, v53, 1);

        return;
      }
    }

    v24 = objc_msgSend_layoutManager(self, v19, v20);
    objc_msgSend_destroyLayoutState_(v24, v25, v21);

    goto LABEL_11;
  }
}

- (BOOL)p_shouldAssertDependenciesAreCorrect
{
  v4 = objc_msgSend_storage(self, a2, v2);
  v7 = objc_msgSend_wpKind(v4, v5, v6);

  if (v7 - 1) < 6 && ((0x3Bu >> (v7 - 1)))
  {
    return 0;
  }

  objc_opt_class();
  v11 = objc_msgSend_parent(self, v9, v10);
  v12 = TSUDynamicCast();

  shouldAssertDependenciesAreCorrect = objc_msgSend_shouldAssertDependenciesAreCorrect(v12, v13, v14);
  return shouldAssertDependenciesAreCorrect;
}

- (BOOL)shouldValidate
{
  v21.receiver = self;
  v21.super_class = TSWPLayout;
  if ([(TSWPLayout *)&v21 shouldValidate])
  {
    v5 = objc_msgSend_layoutController(self, v3, v4);
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = objc_msgSend_storage(self, v6, v7);
      if (objc_msgSend_wpKind(v8, v10, v11) == 3)
      {
        v14 = objc_msgSend_info(self, v12, v13);
        v17 = objc_msgSend_parentInfo(v14, v15, v16);

        if (!v17)
        {
          return 1;
        }

        v8 = objc_msgSend_parent(self, v18, v19);
        v9 = v8 == 0;
        goto LABEL_9;
      }
    }

    v9 = 1;
LABEL_9:

    return v9;
  }

  return 0;
}

- (_NSRange)restrictedLayoutCharRange
{
  v2 = *MEMORY[0x277D81490];
  v3 = *(MEMORY[0x277D81490] + 8);
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)validate
{
  v4 = objc_msgSend_parent(self, a2, v2);

  if (v4)
  {
    textLayoutValid = self->_textLayoutValid;
    v8 = objc_msgSend_parentAutosizes(self, v5, v6);
    v11 = objc_msgSend_p_wpLayoutParent(self, v9, v10);
    if (objc_msgSend_p_shouldAssertDependenciesAreCorrect(self, v12, v13))
    {
      v16 = self->_textLayoutValid;
      if (!v8)
      {
        if (!v16 && objc_msgSend_invalidGeometry(v11, v14, v15))
        {
          v47 = MEMORY[0x277D81150];
          v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSWPLayout validate]");
          v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
          v53 = objc_msgSend_wpKind(self->_storage, v51, v52);
          v54 = objc_opt_class();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v55, v48, v50, 402, 0, "For an non-autosizing TSWPLayout, the parent's geometry should be valid if _textLayoutValid == NO. wpKind: %u, parent layout: %{public}@", v53, v54);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
        }

LABEL_19:
        v62.receiver = self;
        v62.super_class = TSWPLayout;
        [(TSWPLayout *)&v62 validate];
        if (v8)
        {
          if ((objc_msgSend_autosizeFlags(self, v58, v59) & 0x20) == 0 || textLayoutValid)
          {
            goto LABEL_24;
          }

          objc_msgSend_p_invalidateTextLayout(self, v60, v61);
        }

        objc_msgSend_i_validateTextLayout(self, v58, v59);
LABEL_24:

        return;
      }

      if (v16)
      {
LABEL_9:
        if (!v16 && objc_msgSend_invalidGeometry(self, v14, v15))
        {
          v28 = objc_opt_respondsToSelector();
          v31 = 10.0;
          v32 = 10.0;
          if (v28)
          {
            objc_msgSend_initialTextSize(v11, v29, v30, 10.0, 10.0);
          }

          objc_msgSend_autosizedFrameForTextLayout_textSize_(v11, v29, self, v31, v32);
          v37 = v36;
          if (v36 > 0.0)
          {
            v38 = v33;
            v39 = v34;
            v40 = v35;
            v41 = objc_alloc(MEMORY[0x277D80300]);
            v44 = objc_msgSend_initWithFrame_(v41, v42, v43, v38, v39, v37, v40);
            objc_msgSend_setGeometry_(self, v45, v44);
          }
        }

        objc_msgSend_i_validateTextLayout(self, v14, v15);
        goto LABEL_19;
      }

      if ((objc_msgSend_invalidGeometry(v11, v14, v15) & 1) == 0)
      {
        v17 = MEMORY[0x277D81150];
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPLayout validate]");
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
        v23 = objc_msgSend_wpKind(self->_storage, v21, v22);
        v24 = objc_opt_class();
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v25, v18, v20, 401, 0, "For an autosizing TSWPLayout, the parent's geometry should be invalid if _textLayoutValid == NO. wpKind: %u, parent layout: %{public}@", v23, v24);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      }
    }

    else if (!v8)
    {
      goto LABEL_19;
    }

    v16 = self->_textLayoutValid;
    goto LABEL_9;
  }
}

- (CGPoint)capturedInfoPositionForAttachment
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)computeLayoutGeometry
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBF398];
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v9 = objc_msgSend_p_wpLayoutParent(self, a2, v2);
  v11 = v9;
  if (v9)
  {
    if (objc_msgSend_autosizeFlagsForTextLayout_(v9, v10, self))
    {
      x = *v4;
      y = v4[1];
      width = v4[2];
      height = v4[3];
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v17 = self->_columns;
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v77, v81, 16);
      if (v21)
      {
        v22 = *v78;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v78 != v22)
            {
              objc_enumerationMutation(v17);
            }

            objc_msgSend_frameBounds(*(*(&v77 + 1) + 8 * i), v19, v20, v77);
            v86.origin.x = v24;
            v86.origin.y = v25;
            v86.size.width = v26;
            v86.size.height = v27;
            v84.origin.x = x;
            v84.origin.y = y;
            v84.size.width = width;
            v84.size.height = height;
            v85 = CGRectUnion(v84, v86);
            x = v85.origin.x;
            y = v85.origin.y;
            width = v85.size.width;
            height = v85.size.height;
          }

          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v77, v81, 16);
        }

        while (v21);
      }

      v29 = objc_msgSend_columnMetricsForCharIndex_outRange_(self, v28, 0x7FFFFFFFFFFFFFFFLL, 0);
      objc_msgSend_adjustedInsetsForTarget_(v29, v30, self);
      objc_msgSend_autosizedFrameForTextLayout_textSize_(v11, v35, self, width - (-v32 - v33), height - (-v31 - v34));
      v5 = v36;
      v6 = v37;
      v7 = v38;
      v8 = v39;
    }

    else
    {
      objc_msgSend_nonAutosizedFrameForTextLayout_(v11, v12, self);
      v5 = v61;
      v6 = v62;
      v7 = v63;
      v8 = v64;
    }
  }

  else
  {
    objc_opt_class();
    v42 = objc_msgSend_parent(self, v40, v41);
    v43 = TSUDynamicCast();

    if (v43)
    {
      v46 = objc_msgSend_info(v43, v44, v45);
      v49 = objc_msgSend_geometry(v46, v47, v48);
      objc_msgSend_boundsBeforeRotation(v49, v50, v51);
      v7 = v52;
      v8 = v53;

      v56 = objc_msgSend_geometry(v43, v54, v55);
      objc_msgSend_frame(v56, v57, v58);
      TSUSubtractPoints();
      v5 = v59;
      v6 = v60;
    }

    else
    {
      v65 = MEMORY[0x277D81150];
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSWPLayout computeLayoutGeometry]");
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v69, v66, v68, 470, 0, "TSWPLayout requires a parent");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71);
    }
  }

  v72 = objc_alloc(MEMORY[0x277D80300]);
  v75 = objc_msgSend_initWithFrame_(v72, v73, v74, v5, v6, v7, v8);

  return v75;
}

- (void)initialLayoutState
{
  v4 = objc_msgSend_p_wpLayoutParent(self, a2, v2);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = objc_msgSend_info(self, v5, v6);

  if (v7)
  {
    objc_msgSend_descendersCannotClip(self, v5, v6);
    objc_msgSend_textIsVertical(self, v8, v9);
    if (objc_msgSend_initialCharIndex(v4, v10, v11) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0uLL;
      v24 = 0;
      sub_276E30470(*MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), 0, &v23);
      operator new();
    }

    objc_msgSend_i_setTextLayoutValid_(self, v12, 1);
    objc_msgSend_resetDirtyRange(self->_layoutManager, v13, v14);
    goto LABEL_5;
  }

LABEL_6:
  if (objc_msgSend_restrictedLayoutCharRange(self, v5, v6) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = objc_msgSend_info(self, v15, v16);

    if (v17)
    {
      objc_msgSend_descendersCannotClip(self, v18, v19);
      objc_msgSend_textIsVertical(self, v20, v21);
      operator new();
    }
  }

  return v7;
}

- (void)invalidateTextLayout
{
  objc_msgSend_p_invalidateTextLayout(self, a2, v2);

  objc_msgSend_invalidate(self, v4, v5);
}

- (void)invalidateForcingFullReLayOut
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_frame(v4, v5, v6);
  objc_msgSend_setNeedsDisplayInTargetRect_(self, v7, v8);

  objc_msgSend_removeAllObjects(self->_columns, v9, v10);

  objc_msgSend_invalidateSize(self, v11, v12);
}

- (void)invalidateForFootnoteNumberingChange
{
  objc_msgSend_removeAllObjects(self->_columns, a2, v2);

  objc_msgSend_invalidateSize(self, v4, v5);
}

- (BOOL)invalidateForPageCountChange
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  columns = self->_columns;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276DA16B4;
  v10[3] = &unk_27A6F4428;
  v10[4] = &v11;
  objc_msgSend_enumerateObjectsUsingBlock_(columns, a2, v10);
  if (*(v12 + 24) == 1)
  {
    objc_msgSend_removeAllObjects(self->_columns, v4, v5);
    objc_msgSend_invalidateSize(self, v6, v7);
    v8 = *(v12 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v8 & 1;
}

- (void)invalidateParentForAutosizing
{
  v5 = objc_msgSend_p_wpLayoutParent(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_invalidateForAutosizingTextLayout_(v5, v4, self);
  }
}

- (Class)repClassOverride
{
  v4 = objc_msgSend_p_wpLayoutParent(self, a2, v2);
  repClassOverride = objc_msgSend_repClassForTextLayout_(v4, v5, self);

  if (!repClassOverride)
  {
    v8.receiver = self;
    v8.super_class = TSWPLayout;
    repClassOverride = [(TSWPLayout *)&v8 repClassOverride];
  }

  return repClassOverride;
}

- (CGSize)p_maximumFrameSizeForChild:(id)child foundInColumn:(id *)column
{
  v83 = *MEMORY[0x277D85DE8];
  childCopy = child;
  *column = 0;
  objc_opt_class();
  v9 = objc_msgSend_info(childCopy, v7, v8);
  v12 = objc_msgSend_owningAttachment(v9, v10, v11);
  v13 = TSUDynamicCast();

  if (!v13)
  {
    goto LABEL_30;
  }

  if (!objc_msgSend_isAnchored(v13, v14, v15))
  {
    if (self->_columns)
    {
      goto LABEL_7;
    }

LABEL_30:
    v72.receiver = self;
    v72.super_class = TSWPLayout;
    [(TSWPLayout *)&v72 maximumFrameSizeForChild:childCopy];
    v68 = v43;
    v70 = v44;
    goto LABEL_31;
  }

  objc_opt_class();
  v18 = TSUDynamicCast();
  if ((objc_msgSend_isHTMLWrap(v18, v19, v20) & 1) == 0)
  {

    goto LABEL_30;
  }

  columns = self->_columns;

  if (!columns)
  {
    goto LABEL_30;
  }

LABEL_7:
  CharIndex = objc_msgSend_findCharIndex(v13, v16, v17);
  if (objc_msgSend_count(self->_columns, v23, v24))
  {
    v71 = childCopy;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v25 = self->_columns;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v77, v82, 16);
    if (v29)
    {
      v30 = *v78;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v78 != v30)
          {
            objc_enumerationMutation(v25);
          }

          v32 = *(*(&v77 + 1) + 8 * i);
          if ((objc_msgSend_layoutResultFlags(v32, v27, v28) & 0x80000000) != 0)
          {
            v47 = v32;
            childCopy = v71;
            *column = v32;
            objc_msgSend_frameBounds(v32, v48, v49);
            v51 = v50;
            v70 = v52;
            v55 = objc_msgSend_parentStorage(v13, v53, v54);
            v57 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v55, v56, CharIndex, 0);

            objc_msgSend_floatValueForProperty_(v57, v58, 81);
            v60 = v59;
            objc_msgSend_floatValueForProperty_(v57, v61, 82);
            v63 = v62;

            v68 = v51 - (v60 + v63);
            goto LABEL_31;
          }
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v77, v82, 16);
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    childCopy = v71;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v33 = self->_columns;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v73, v81, 16);
    if (v37)
    {
      v38 = *v74;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v74 != v38)
          {
            objc_enumerationMutation(v33);
          }

          v40 = *(*(&v73 + 1) + 8 * j);
          v41 = objc_msgSend_range(v40, v35, v36);
          if (CharIndex >= v41 && CharIndex - v41 < v35)
          {
            v64 = v40;
            childCopy = v71;
            *column = v40;
            objc_msgSend_frameBounds(v40, v65, v66);
            v68 = v67;
            v70 = v69;

            goto LABEL_31;
          }
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v73, v81, 16);
        childCopy = v71;
      }

      while (v37);
    }

    goto LABEL_30;
  }

  v68 = *MEMORY[0x277D814F0];
  v70 = *(MEMORY[0x277D814F0] + 8);
LABEL_31:
  if (v68 < 18.0)
  {
    v68 = 18.0;
  }

  v45 = v68;
  v46 = v70;
  result.height = v46;
  result.width = v45;
  return result;
}

- (CGSize)p_maximumFrameSizeForChild:(id)child
{
  v82 = *MEMORY[0x277D85DE8];
  childCopy = child;
  objc_opt_class();
  v7 = objc_msgSend_info(childCopy, v5, v6);
  v10 = objc_msgSend_owningAttachment(v7, v8, v9);
  v11 = TSUDynamicCast();

  if (!v11)
  {
    goto LABEL_31;
  }

  if (!objc_msgSend_isAnchored(v11, v12, v13))
  {
    if (self->_columns)
    {
      goto LABEL_7;
    }

LABEL_31:
    v71.receiver = self;
    v71.super_class = TSWPLayout;
    [(TSWPLayout *)&v71 maximumFrameSizeForChild:childCopy];
    v68 = v49;
    v70 = v50;
    goto LABEL_32;
  }

  objc_opt_class();
  v16 = TSUDynamicCast();
  if ((objc_msgSend_isHTMLWrap(v16, v17, v18) & 1) == 0)
  {

    goto LABEL_31;
  }

  columns = self->_columns;

  if (!columns)
  {
    goto LABEL_31;
  }

LABEL_7:
  CharIndex = objc_msgSend_findCharIndex(v11, v14, v15);
  if (objc_msgSend_count(self->_columns, v21, v22))
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v23 = self->_columns;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v76, v81, 16);
    if (v27)
    {
      v28 = *v77;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v77 != v28)
          {
            objc_enumerationMutation(v23);
          }

          v30 = *(*(&v76 + 1) + 8 * i);
          if ((objc_msgSend_layoutResultFlags(v30, v25, v26) & 0x80000000) != 0)
          {
            objc_msgSend_frameBounds(v30, v25, v26);
            v54 = v53;
            v70 = v55;
            v58 = objc_msgSend_parentStorage(v11, v56, v57);
            v60 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v58, v59, CharIndex, 0);

            objc_msgSend_floatValueForProperty_(v60, v61, 81);
            v63 = v62;
            objc_msgSend_floatValueForProperty_(v60, v64, 82);
            v66 = v65;

            v68 = v54 - (v63 + v66);
            goto LABEL_32;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v76, v81, 16);
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v31 = self->_columns;
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v72, v80, 16);
    if (v35)
    {
      v36 = *v73;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v73 != v36)
          {
            objc_enumerationMutation(v31);
          }

          v38 = *(*(&v72 + 1) + 8 * j);
          v39 = objc_msgSend_range(v38, v33, v34);
          if (CharIndex >= v39 && CharIndex - v39 < v33)
          {
            objc_msgSend_frameBounds(v38, v33, v34);
            v68 = v67;
            v70 = v69;

            goto LABEL_32;
          }
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v33, &v72, v80, 16);
      }

      while (v35);
    }

    v43 = objc_msgSend_lastObject(self->_columns, v41, v42);
    v46 = v43;
    if (v43)
    {
      objc_msgSend_frameBounds(v43, v44, v45);
      v68 = v47;
      v70 = v48;

      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v68 = *MEMORY[0x277D814F0];
  v70 = *(MEMORY[0x277D814F0] + 8);
LABEL_32:
  if (v68 < 18.0)
  {
    v68 = 18.0;
  }

  v51 = v68;
  v52 = v70;
  result.height = v52;
  result.width = v51;
  return result;
}

- (CGSize)maximumFrameSizeForChild:(id)child
{
  childCopy = child;
  v7 = objc_msgSend_storage(self, v5, v6);
  if (objc_msgSend_wpKind(v7, v8, v9) == 5)
  {
    v12 = objc_msgSend_parent(self, v10, v11);

    if (v12)
    {
      v15 = objc_msgSend_parent(self, v13, v14);
      objc_msgSend_maximumFrameSizeForChild_(v15, v16, self);
      v18 = v17;
      v20 = v19;

      goto LABEL_21;
    }
  }

  else
  {
  }

  v21 = objc_msgSend_storage(self, v13, v14);
  v24 = objc_msgSend_wpKind(v21, v22, v23);

  if (v24 == 2)
  {
    objc_msgSend_maxSize(self, v25, v26);
    v18 = v27;
    v20 = v28 * 0.800000012;
  }

  else
  {
    v29 = objc_msgSend_autosizeFlags(self, v25, v26);
    IsVertical = objc_msgSend_textIsVertical(self, v30, v31);
    if (IsVertical)
    {
      v34 = v29;
    }

    else
    {
      v34 = v29 >> 2;
    }

    if (IsVertical)
    {
      v35 = v29 >> 2;
    }

    else
    {
      v35 = v29;
    }

    if (v34 & 1) != 0 && (v35)
    {
      v20 = 1.79769313e308;
      v18 = 1.79769313e308;
    }

    else
    {
      objc_msgSend_p_maximumFrameSizeForChild_(self, v33, childCopy);
      v39 = v38;
      v20 = v40;
      if ((v29 & 0x40) != 0)
      {
        objc_msgSend_maxSize(self, v36, v37);
        v45 = v44;
        v47 = v46;
        v49 = objc_msgSend_columnMetricsForCharIndex_outRange_(self, v48, 0x7FFFFFFFFFFFFFFFLL, 0);
        objc_msgSend_adjustedInsetsForTarget_(v49, v50, self);
        v18 = v45 - (v51 + v52);
        v41 = v47 - (v53 + v54);

        if (v34)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v41 = 1.79769313e308;
        v18 = 1.79769313e308;
        if (v34)
        {
          goto LABEL_21;
        }
      }

      if (v35)
      {
        v20 = v41;
      }

      v18 = v39;
    }
  }

LABEL_21:

  v42 = v18;
  v43 = v20;
  result.height = v43;
  result.width = v42;
  return result;
}

- (double)textScaleForChild:(id)child
{
  v38 = *MEMORY[0x277D85DE8];
  childCopy = child;
  objc_opt_class();
  v7 = objc_msgSend_info(childCopy, v5, v6);
  v10 = objc_msgSend_owningAttachment(v7, v8, v9);
  v11 = TSUDynamicCast();

  v14 = 1.0;
  if (v11)
  {
    if (!objc_msgSend_isAnchored(v11, v12, v13) || (objc_opt_class(), TSUDynamicCast(), v17 = objc_claimAutoreleasedReturnValue(), isHTMLWrap = objc_msgSend_isHTMLWrap(v17, v18, v19), v17, isHTMLWrap))
    {
      CharIndex = objc_msgSend_findCharIndex(v11, v15, v16);
      if (CharIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v22 = self->_columns;
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v33, v37, 16);
        if (v26)
        {
          v27 = *v34;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v34 != v27)
              {
                objc_enumerationMutation(v22);
              }

              v29 = *(*(&v33 + 1) + 8 * i);
              if ((objc_msgSend_layoutResultFlags(v29, v24, v25, v33) & 0x80000000) == 0)
              {
                v30 = objc_msgSend_range(v29, v24, v25);
                if (CharIndex < v30 || CharIndex - v30 >= v24)
                {
                  continue;
                }
              }

              v14 = objc_msgSend_scaleTextPercent(v29, v24, v25) / 100.0;
              goto LABEL_20;
            }

            v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v33, v37, 16);
            if (v26)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
      }
    }
  }

  return v14;
}

- (void)willLayoutIntoTarget
{
  if (self->_isLayingOutIntoTarget)
  {
    TSUSetCrashReporterInfo();
    v2 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSWPLayout willLayoutIntoTarget]", "[TSWPLayout willLayoutIntoTarget]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm", 816);
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v7, v4, v6, 816, 1, "Mismatch in willLayoutIntoTarget/didLayoutIntoTarget.");

    TSUCrashBreakpoint();
    abort();
  }

  self->_isLayingOutIntoTarget = 1;
}

- (void)didLayoutIntoTarget
{
  if (!self->_isLayingOutIntoTarget)
  {
    TSUSetCrashReporterInfo();
    v2 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSWPLayout didLayoutIntoTarget]", "[TSWPLayout didLayoutIntoTarget]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm", 821);
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v7, v4, v6, 821, 1, "Mismatch in calls willLayoutIntoTarget/didLayoutIntoTarget.");

    TSUCrashBreakpoint();
    abort();
  }

  self->_isLayingOutIntoTarget = 0;
}

- (void)willBeAddedToLayoutController:(id)controller
{
  v4 = objc_msgSend_parent(self, a2, controller);

  if (v4)
  {
    lastLayoutMgrChangeCount = self->_lastLayoutMgrChangeCount;
    if (lastLayoutMgrChangeCount != objc_msgSend_changeCount(self->_storage, v5, v6))
    {
      objc_msgSend_removeAllObjects(self->_columns, v8, v9);
      objc_msgSend_i_setTextLayoutValid_(self, v10, 0);
    }

    v11 = objc_msgSend_layoutManager(self, v8, v9);
  }
}

- (void)willBeRemovedFromLayoutController:(id)controller
{
  controllerCopy = controller;
  if (self->_layoutManager)
  {
    objc_msgSend_p_clearOutLayoutManager(self, v4, v5);
  }

  v7.receiver = self;
  v7.super_class = TSWPLayout;
  [(TSWPLayout *)&v7 willBeRemovedFromLayoutController:controllerCopy];
}

- (id)p_wpLayoutParent
{
  WeakRetained = objc_loadWeakRetained(&self->_wpLayoutParent);

  return WeakRetained;
}

- (void)parentWillChangeTo:(id)to
{
  toCopy = to;
  objc_msgSend_p_clearOutLayoutManager(self, v5, v6);
  v8.receiver = self;
  v8.super_class = TSWPLayout;
  [(TSWPLayout *)&v8 parentWillChangeTo:toCopy];
  objc_opt_class();
  v7 = TSUClassAndProtocolCast();
  objc_storeWeak(&self->_wpLayoutParent, v7);
}

- (void)p_clearOutLayoutManager
{
  objc_msgSend_clearOwner(self->_layoutManager, a2, v2);
  layoutManager = self->_layoutManager;
  if (layoutManager)
  {
    v7 = objc_msgSend_dirtyRanges(layoutManager, v4, v5);
    isEmpty = objc_msgSend_isEmpty(v7, v8, v9);

    if ((isEmpty & 1) == 0)
    {
      objc_msgSend_removeAllObjects(self->_columns, v11, v12);
      objc_msgSend_i_setTextLayoutValid_(self, v13, 0);
    }

    v14 = self->_layoutManager;
    if (v14)
    {
      self->_layoutManager = 0;
    }
  }
}

- (void)parentDidChange
{
  v4 = objc_msgSend_parent(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_layoutManager(self, v5, v6);
  }
}

- (void)wrappableChildInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  if (objc_msgSend_parentAutosizes(self, v4, v5))
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    v9 = objc_msgSend_info(v6, v7, v8);
    isInlineWithText = objc_msgSend_isInlineWithText(v9, v10, v11);

    if (isInlineWithText)
    {
      v15 = objc_msgSend_wrapInvalidationParent(self, v13, v14);
      v17 = v15;
      if (v15 != self)
      {
        objc_msgSend_wrappableChildInvalidated_(v15, v16, invalidatedCopy);
      }
    }
  }
}

- (CGRect)p_protectedRectWithinLayoutForSelectionRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ((TSURectIsFinite() & 1) == 0)
  {
    v10 = objc_msgSend_geometry(self, v8, v9);
    objc_msgSend_size(v10, v11, v12);
    v14 = v13;
    y = v15;

    x = v14 * 0.5;
    width = 0.0;
    height = 0.0;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)isOverflowing
{
  v4 = objc_msgSend_storage(self, a2, v2);
  if ((objc_msgSend_wpKind(v4, v5, v6) == 1 || objc_msgSend_wpKind(v4, v7, v8) == 3) && objc_msgSend_length(v4, v7, v8))
  {
    v11 = objc_msgSend_columns(self, v9, v10);
    v14 = objc_msgSend_lastObject(v11, v12, v13);

    if (v14)
    {
      v17 = (objc_msgSend_layoutResultFlags(v14, v15, v16) >> 1) & 1;
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (CGPoint)p_calculateReferencePointFromSelection:(id)selection
{
  selectionCopy = selection;
  v7 = 0.0;
  if (selectionCopy)
  {
    v8 = 0.0;
    if (objc_msgSend_count(self->_columns, v4, v5))
    {
      v9 = [TSWPSelection alloc];
      v12 = objc_msgSend_start(selectionCopy, v10, v11);
      v14 = objc_msgSend_initWithRange_(v9, v13, v12, 0);
      objc_msgSend_searchPositionCaretRectForInsertionPoint_withColumns_(TSWPColumn, v15, v14, self->_columns);
      objc_msgSend_p_protectedRectWithinLayoutForSelectionRect_(self, v16, v17);
      objc_msgSend_rectInRoot_(self, v18, v19);
      v8 = v20;
      v7 = v21;
    }
  }

  else
  {
    v8 = 0.0;
  }

  v22 = v8;
  v23 = v7;
  result.y = v23;
  result.x = v22;
  return result;
}

- (id)columnMetricsForCharIndex:(unint64_t)index outRange:(_NSRange *)range
{
  if (range)
  {
    v6 = objc_msgSend_layoutManager(self, a2, index);
    v9 = objc_msgSend_storage(v6, v7, v8);
    range->location = objc_msgSend_range(v9, v10, v11);
    range->length = v12;
  }

  v13 = objc_msgSend_parent(self, a2, index);
  v14 = TSUProtocolCast();

  return v14;
}

- (TSWPFootnoteHeightMeasurer)footnoteHeightMeasurer
{
  v3 = objc_msgSend_parent(self, a2, v2);
  v4 = TSUProtocolCast();

  return v4;
}

- (TSWPFootnoteMarkProvider)footnoteMarkProvider
{
  v3 = objc_msgSend_parent(self, a2, v2);
  v4 = TSUProtocolCast();

  return v4;
}

- (CGSize)minSize
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v4, v5, v6);
  v8 = v7;
  v10 = v9;

  IsVertical = objc_msgSend_textIsVertical(self, v11, v12);
  if (IsVertical)
  {
    v16 = v10;
  }

  else
  {
    v16 = v8;
  }

  if (!IsVertical)
  {
    v8 = v10;
  }

  v17 = objc_msgSend_p_wpLayoutParent(self, v14, v15);
  v19 = v17;
  if (v17)
  {
    v20 = objc_msgSend_autosizeFlagsForTextLayout_(v17, v18, self);
    if ((v20 & 8) != 0)
    {
      v16 = 0.0;
    }

    if ((v20 & 2) != 0)
    {
      v8 = 0.0;
    }
  }

  v21 = v16;
  v22 = v8;
  result.height = v22;
  result.width = v21;
  return result;
}

- (CGSize)maxSize
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v4, v5, v6);
  v8 = v7;
  v10 = v9;

  v15 = objc_msgSend_p_wpLayoutParent(self, v11, v12);
  if (v15)
  {
    IsVertical = objc_msgSend_textIsVertical(self, v13, v14);
    v18 = objc_msgSend_autosizeFlagsForTextLayout_(v15, v17, self);
    if ((v18 & 4) != 0)
    {
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_maxAutoGrowLineWidthForTextLayout_(v15, v19, self);
      }

      else
      {
        v20 = 4000.0;
      }

      if (IsVertical)
      {
        v10 = v20;
      }

      else
      {
        v8 = v20;
      }
    }

    if (v18)
    {
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_maxAutoGrowBlockHeightForTextLayout_(v15, v21, self);
      }

      else
      {
        v22 = 16000.0;
      }

      if (IsVertical)
      {
        v8 = v22;
      }

      else
      {
        v10 = v22;
      }
    }
  }

  v23 = v8;
  v24 = v10;
  result.height = v24;
  result.width = v23;
  return result;
}

- (CGSize)currentSize
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGPoint)position
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_frame(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)anchorPoint
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (unint64_t)autosizeFlags
{
  v4 = objc_msgSend_p_wpLayoutParent(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    v7 = objc_msgSend_autosizeFlagsForTextLayout_(v4, v5, self);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)verticalAlignment
{
  v4 = objc_msgSend_p_wpLayoutParent(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    v7 = objc_msgSend_verticalAlignmentForTextLayout_(v4, v5, self);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)naturalAlignment
{
  v4 = objc_msgSend_p_wpLayoutParent(self, a2, v2);
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = objc_msgSend_naturalAlignmentForTextLayout_(v4, v5, self);
  }

  else
  {
    v6 = 4;
  }

  return v6;
}

- (CGRect)targetRectForCanvasRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  objc_msgSend_frameInRoot(self, a2, v3);
  v9 = -v8;
  v11 = -v10;
  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;

  return CGRectOffset(*&v12, v9, v11);
}

- (TSDCanvas)canvas
{
  v3 = objc_msgSend_layoutController(self, a2, v2);
  v6 = objc_msgSend_canvas(v3, v4, v5);

  return v6;
}

- (id)layoutForInlineDrawable:(id)drawable
{
  drawableCopy = drawable;
  v7 = objc_msgSend_layoutController(self, v5, v6);
  v9 = objc_msgSend_layoutForInfo_childOfLayout_(v7, v8, drawableCopy, self);

  if (!v9)
  {
    v12 = objc_alloc(objc_msgSend_layoutClass(drawableCopy, v10, v11));
    v9 = objc_msgSend_initWithInfo_(v12, v13, drawableCopy);
    if (v9)
    {
      objc_msgSend_addChild_(self, v14, v9);
    }
  }

  return v9;
}

- (id)validatedLayoutForAnchoredDrawable:(id)drawable
{
  drawableCopy = drawable;
  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPLayout validatedLayoutForAnchoredDrawable:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
  v12 = objc_msgSend_wpKind(self->_storage, v10, v11);
  v13 = objc_opt_class();
  objc_opt_class();
  v14 = TSUDynamicCast();
  v17 = objc_msgSend_exteriorTextWrap(v14, v15, v16);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v18, v7, v9, 1397, 0, "Anchored attachments not supported in non-body text: %u %{public}@ %{public}@", v12, v13, v17);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  return 0;
}

- (id)addPartitionableAttachmentLayout:(id)layout
{
  layoutCopy = layout;
  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPLayout addPartitionableAttachmentLayout:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
  v12 = objc_msgSend_wpKind(self->_storage, v10, v11);
  v13 = objc_opt_class();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v14, v7, v9, 1402, 0, "Partitioned attachments not yet supported in non-body text: %u %{public}@", v12, v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  return 0;
}

- (double)maxAnchorInBlockDirection
{
  objc_msgSend_position(self, a2, v2);
  v5 = v4;
  objc_msgSend_maxSize(self, v6, v7);
  return v5 + v8;
}

- (id)p_firstAncestorRespondingToSelector:(SEL)selector
{
  v3 = objc_msgSend_parent(self, a2, selector);
  if (v3)
  {
    do
    {
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      v6 = objc_msgSend_parent(v3, v4, v5);

      v3 = v6;
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)pageNumber
{
  v2 = objc_msgSend_p_firstAncestorRespondingToSelector_(self, a2, sel_pageNumber);
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_pageNumber(v2, v3, v4);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (unint64_t)pageCount
{
  v2 = objc_msgSend_p_firstAncestorRespondingToSelector_(self, a2, sel_pageCount);
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_pageCount(v2, v3, v4);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (BOOL)textIsVertical
{
  v4 = objc_msgSend_p_wpLayoutParent(self, a2, v2);
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    ShouldLayoutVertically = objc_msgSend_textLayoutShouldLayoutVertically_(v4, v5, self);
  }

  else
  {
    ShouldLayoutVertically = 0;
  }

  return ShouldLayoutVertically;
}

- (CGRect)maskRect
{
  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  v8 = objc_msgSend_p_wpLayoutParent(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_maskRectForTextLayout_(v8, v9, self);
    v4 = v10;
    v5 = v11;
    v6 = v12;
    v7 = v13;
  }

  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)isLayoutOffscreen
{
  v3 = objc_msgSend_layoutController(self, a2, v2);
  isLayoutOffscreen = objc_msgSend_isLayoutOffscreen(v3, v4, v5);

  return isLayoutOffscreen;
}

- (BOOL)shouldWrapAroundExternalDrawables
{
  v4 = objc_msgSend_p_wpLayoutParent(self, a2, v2);
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    ShouldWrapAroundExternalDrawables = objc_msgSend_textLayoutShouldWrapAroundExternalDrawables_(v4, v5, self);
  }

  else
  {
    ShouldWrapAroundExternalDrawables = 0;
  }

  return ShouldWrapAroundExternalDrawables;
}

- (void)layoutManagerNeedsLayout:(id)layout
{
  layoutCopy = layout;
  v6 = objc_msgSend_layoutManager(self, v4, v5);

  if (v6 != layoutCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPLayout layoutManagerNeedsLayout:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1495, 0, "bad layout manager");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  objc_msgSend_invalidateTextLayout(self, v7, v8);
  if (objc_msgSend_parentAutosizes(self, v16, v17))
  {
    objc_msgSend_invalidateSize(self, v18, v19);
    objc_msgSend_invalidateParentForAutosizing(self, v20, v21);
  }
}

- (void)didLayoutWithLayoutManager:(id)manager
{
  managerCopy = manager;
  if (self->_layoutManager != managerCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPLayout didLayoutWithLayoutManager:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1517, 0, "wrong layout manager");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  self->_lastLayoutMgrChangeCount = objc_msgSend_changeCount(self->_storage, v4, v5);
}

- (id)textWrapper
{
  v3 = objc_msgSend_parent(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_textWrapperForExteriorWrap(v3, v4, v5);
LABEL_5:
    v9 = v6;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_textWrapper(v3, v7, v8);
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (CGRect)rectInRootForSelectionPath:(id)path
{
  objc_msgSend_p_rectInRootForSelectionPath_useParagraphModeRects_forZoom_forAnchorRect_(self, a2, path, 1, 0, 0);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rectInRootForZoomingToSelectionPath:(id)path
{
  objc_msgSend_p_rectInRootForSelectionPath_useParagraphModeRects_forZoom_forAnchorRect_(self, a2, path, 1, 1, 0);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rectInRootForSelectionAnchorRectOfSelectionPath:(id)path
{
  objc_msgSend_p_rectInRootForSelectionPath_useParagraphModeRects_forZoom_forAnchorRect_(self, a2, path, 1, 1, 1);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path
{
  v3 = objc_msgSend_geometryInRoot(self, a2, path);
  objc_msgSend_frame(v3, v4, v5);
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

- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)path
{
  objc_msgSend_p_rectInRootForSelectionPath_useParagraphModeRects_forZoom_forAnchorRect_(self, a2, path, 0, 0, 0);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ((TSURectIsFinite() & 1) == 0)
  {
    objc_msgSend_p_protectedRectWithinLayoutForSelectionRect_(self, v12, v13, v5, v7, v9, v11);
    objc_msgSend_rectInRoot_(self, v14, v15);
    v5 = v16;
    v7 = v17;
    v9 = v18;
    v11 = v19;
  }

  v20 = v5;
  v21 = v7;
  v22 = v9;
  v23 = v11;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)containedPencilAnnotations
{
  if (!objc_msgSend_textLayoutValid(self, a2, v2) || ((v6 = objc_msgSend_containedTextRange(self, v4, v5), v6 == *MEMORY[0x277D81490]) ? (v9 = v7 == *(MEMORY[0x277D81490] + 8)) : (v9 = 0), v9))
  {
    v14 = 0;
  }

  else
  {
    v10 = v6;
    v11 = v7;
    v12 = objc_msgSend_storage(self, v7, v8);
    v14 = objc_msgSend_pencilAnnotationsInContainedTextRange_(v12, v13, v10, v11);
  }

  return v14;
}

- (id)unscaledContentRectsToAvoidPencilAnnotationOverlap
{
  v4 = objc_msgSend_storage(self, a2, v2);
  if (objc_msgSend_wpKind(v4, v5, v6) == 1 && !objc_msgSend_length(v4, v7, v8))
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v9 = objc_msgSend_columns(self, v7, v8);
    v11 = objc_msgSend_contentRectsToAvoidPencilAnnotationOverlapWithColumns_(TSWPColumn, v10, v9);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_276DA400C;
    v15[3] = &unk_27A6F4450;
    v15[4] = self;
    v13 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v11, v12, v15);
  }

  return v13;
}

- (id)pageAnchorDetailsForPencilAnnotationAtSelectionPath:(id)path attachedType:(int64_t)type
{
  pathCopy = path;
  v5 = objc_opt_class();
  objc_msgSend_mostSpecificSelectionOfClass_(pathCopy, v6, v5);

  return 0;
}

- (BOOL)containsStartOfPencilAnnotation:(id)annotation
{
  annotationCopy = annotation;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();
  v8 = objc_msgSend_storage(self, v6, v7);
  v10 = objc_msgSend_rangeForPencilAnnotation_(v8, v9, v5);
  v12 = v11;

  LOBYTE(self) = objc_msgSend_containsStartOfRange_(self, v13, v10, v12);
  return self;
}

- (BOOL)containsStartOfRange:(_NSRange)range
{
  location = range.location;
  v4 = objc_msgSend_containedTextRange(self, a2, range.location, range.length);
  return location >= v4 && location - v4 < v5;
}

- (CGRect)p_rectForSelectionPath:(id)path useParagraphModeRects:(BOOL)rects
{
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)p_rectInRootForSelectionPath:(id)path useParagraphModeRects:(BOOL)rects forZoom:(BOOL)zoom forAnchorRect:(BOOL)rect
{
  v10.receiver = self;
  v10.super_class = TSWPLayout;
  [(TSWPLayout *)&v10 rectInRootForSelectionPath:path, rects, zoom, rect];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)styleProvider
{
  v4 = objc_msgSend_p_styleProvidingAncestor(self, a2, v2);
  v6 = objc_msgSend_styleProviderForTextLayout_(v4, v5, self);
  v9 = v6;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v11 = objc_msgSend_layoutManager(self, v7, v8);
    v14 = objc_msgSend_storage(v11, v12, v13);
    v10 = objc_msgSend_styleProviderForStorage_(TSWPStorageStyleProvider, v15, v14);
  }

  return v10;
}

- (id)styleProviderForTextLayout:(id)layout
{
  layoutCopy = layout;
  if (!layoutCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPLayout styleProviderForTextLayout:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 1719, 0, "invalid nil value for '%{public}s'", "textLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_p_styleProvidingAncestor(self, v4, v5);
  v16 = objc_msgSend_styleProviderForTextLayout_(v14, v15, layoutCopy);
  v19 = v16;
  if (v16)
  {
    v20 = v16;
  }

  else
  {
    v21 = objc_msgSend_layoutManager(layoutCopy, v17, v18);
    v24 = objc_msgSend_storage(v21, v22, v23);
    v20 = objc_msgSend_styleProviderForStorage_(TSWPStorageStyleProvider, v25, v24);
  }

  return v20;
}

- (id)styleProviderForCells
{
  v3 = objc_msgSend_p_styleProvidingAncestor(self, a2, v2);
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = objc_msgSend_styleProviderForCells(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)p_styleProvidingAncestor
{
  v3 = objc_msgSend_p_wpLayoutParent(self, a2, v2);
  do
  {
    v11 = &unk_288638918;
    v4 = TSUProtocolCast();
    v7 = v4;
    if (!v4)
    {
      goto LABEL_6;
    }

    if ((objc_msgSend_wantsToProvideStylesForTextLayout_(v4, v5, 0, &unk_288638918) & 1) == 0)
    {

LABEL_6:
      v8 = 0;
      goto LABEL_7;
    }

    v8 = v7;
LABEL_7:
    v9 = objc_msgSend_parent(v3, v5, v6, v11);

    if (v8)
    {
      break;
    }

    v3 = v9;
  }

  while (v9);

  return v8;
}

- (TSUBezierPath)interiorClippingPath
{
  v3 = objc_msgSend_parent(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_interiorClippingPath(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)clearHiddenInlineDrawableLayoutMarks
{
  markedHiddenInlineDrawableLayouts = self->_markedHiddenInlineDrawableLayouts;
  self->_markedHiddenInlineDrawableLayouts = 0;
}

- (void)markHiddenInlineDrawableLayout:(id)layout
{
  layoutCopy = layout;
  markedHiddenInlineDrawableLayouts = self->_markedHiddenInlineDrawableLayouts;
  v8 = layoutCopy;
  if (!markedHiddenInlineDrawableLayouts)
  {
    v6 = objc_opt_new();
    v7 = self->_markedHiddenInlineDrawableLayouts;
    self->_markedHiddenInlineDrawableLayouts = v6;

    markedHiddenInlineDrawableLayouts = self->_markedHiddenInlineDrawableLayouts;
    layoutCopy = v8;
  }

  objc_msgSend_addObject_(markedHiddenInlineDrawableLayouts, layoutCopy, layoutCopy);
}

@end